package com.bitacademy.myportal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bitacademy.myportal.repository.BoardDao;
import com.bitacademy.myportal.repository.BoardVo;
import com.bitacademy.myportal.repository.GuestbookVo;
@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDao boardDaoImpl;
	
	@Override
	public List<BoardVo> getList() {
		List<BoardVo> list = boardDaoImpl.selectAll();
		return list;
	}

	@Override
	public BoardVo getContent(Long no) {
		BoardVo vo = boardDaoImpl.getContent(no);
		return vo;
	}

	@Override
	public boolean write(BoardVo vo) {
		int insertedCount = boardDaoImpl.insert(vo);
		return 1 == insertedCount;
	}

	@Override
	public boolean update(BoardVo vo) {
		int updatedCount =  boardDaoImpl.update(vo);
		return 1 == updatedCount;
	}
	
	@Override
	public boolean delete(BoardVo vo) {
		int deletedCount = boardDaoImpl.delete(vo);
		return 1 == deletedCount;
	}

}