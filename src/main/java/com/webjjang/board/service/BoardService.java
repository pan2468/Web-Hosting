package com.webjjang.board.service;

import java.util.List;

import com.webjjang.board.vo.BoardVO;




public interface BoardService {

	public List<BoardVO>list();
	
	
	
	public void write(BoardVO vo);
	
	
	public BoardVO view(int no,int inc);
	public BoardVO view2(int no,int inc);	
	
	public void update(BoardVO vo);
	
	public void delete(BoardVO vo);
	
	
	
}
