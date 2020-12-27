package com.webjjang.board.mapper;

import java.util.List;

import com.webjjang.board.vo.BoardVO;




public interface BoardMapper {

	public List<BoardVO>list();
	

	
	public void write(BoardVO vo);
    
	
	public BoardVO view(int no);
	public BoardVO view2(int no);
	public void increase(int no);
	
public void update(BoardVO vo);
	
	public void delete(BoardVO vo);
     
}
