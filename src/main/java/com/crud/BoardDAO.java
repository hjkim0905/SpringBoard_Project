package com.crud;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.crud.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAO {
	@Autowired
	JdbcTemplate jdbcTemplate;
	private final String Board_INSERT = "insert into Board (title, writer, content) values (?,?,?)";
	private final String Board_UPDATE = "update Board set title=?, writer=?, content=? where seq=?";
	private final String Board_DELETE = "delete from Board  where seq=?";
	private final String Board_GET = "select * from Board  where seq=?";
	private final String Board_LIST = "select * from Board order by seq desc";

	public int insertBoard(BoardVO vo) {
		String sql = "insert into Board (title, writer, content, category) values ("
				+ "'" + vo.getTitle() + "',"
				+ "'" + vo.getWriter() + "',"
				+ "'" + vo.getContent() + "',"
				+ "'" + vo.getCategory() + "')";
		return jdbcTemplate.update(sql);
	}

	// 글 삭제
	public int deleteBoard(int seq) {
		String sql = "delete from Board where seq = " + seq;
		return jdbcTemplate.update(sql);
	}

	public int updateBoard(BoardVO vo) {
		String sql = "update Board set title='" + vo.getTitle() + "', "
				+ "writer='" + vo.getWriter() + "', "
				+ "content='" + vo.getContent() + "', "
				+ "category='" + vo.getCategory() + "' where seq=" + vo.getSeq();
		return jdbcTemplate.update(sql);
	}


	public BoardVO getBoard(int seq) {
		String sql = "select * from Board where seq=" + seq;
		return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
	}

	public List<BoardVO> getBoardList() {
		String sql = "select * from Board order by regdate desc";
		return jdbcTemplate.query(sql, new BoardRowMapper());
	}
	class BoardRowMapper implements RowMapper<BoardVO> {
		@Override
		public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
			BoardVO vo = new BoardVO();
			vo.setSeq(rs.getInt("seq"));
			vo.setCategory(rs.getString("category"));
			vo.setTitle(rs.getString("title"));
			vo.setContent(rs.getString("content"));
			vo.setWriter(rs.getString("writer"));
			vo.setRegdate(rs.getDate("regdate"));
			return vo;
		}
	}

}
