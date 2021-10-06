package com.bitacademy.myportal.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class BoardDaoImpl implements BoardDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardVo> selectAll() {
		List<BoardVo> list = sqlSession.selectList("board.selectAll");
		return list;
	}

	@Override
	public int insert(BoardVo boardVo) {
		//	TODO: 예외처리
		int insertedCount = sqlSession.insert("board.insert", boardVo);
		return insertedCount;
	}

	@Override
	public BoardVo getContent(Long no) {
		BoardVo vo = sqlSession.selectOne("board.getContent",no);
//		sqlSession.update("board.increaseHitCount",no);
		return vo;
	}

	@Override
	public int update(BoardVo boardVo) {
		int updatedCount = sqlSession.update("board.update",boardVo);
		return updatedCount;
	}


	@Override
	public int delete(BoardVo boardVo) {
		int deletedCount = sqlSession.delete("board.delet", boardVo);
		return deletedCount;
	}

}