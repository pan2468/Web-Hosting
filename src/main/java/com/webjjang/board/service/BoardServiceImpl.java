package com.webjjang.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.webjjang.board.mapper.BoardMapper;
import com.webjjang.board.vo.BoardVO;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Service
@Log4j
@Qualifier("boardServiceImpl")
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {

	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> list() {
		// TODO Auto-generated method stub
		log.info("--게시판 리스트 service---");
		
		return mapper.list();
	}


	@Override
	public void write(BoardVO vo) {
		// TODO Auto-generated method stub
		mapper.write(vo);
	}
	
	
	
	@Override
	public BoardVO view(int no, int inc) {
		// TODO Auto-generated method stub
		if(inc == 1)mapper.increase(no);
		
		return mapper.view(no);
	}
	
	@Override
	public BoardVO view2(int no, int inc) {
		// TODO Auto-generated method stub
		if(inc == 1)mapper.increase(no);
		
		return mapper.view2(no);
	}

	
	@Override
	public void update(BoardVO vo) {
		// TODO Auto-generated method stub
		mapper.update(vo);
	}

	@Override
	public void delete(BoardVO vo) {
		// TODO Auto-generated method stub
		mapper.delete(vo);
	}


	
	
	
	
	
	
   
	

	
	



}
