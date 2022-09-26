package tp.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import tp.service.BoardDAO;
import tp.service.BoardSearchVO;
import tp.service.BoardService;
import tp.service.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
   
   @Resource(name="boardMyBatis")
   private BoardDAO boardDAO;

   
   //작동체크
   public BoardServiceImpl() throws Exception{
      System.out.println("BoardServiceImpl 작동");
   }

   //게시판 등록
   @Transactional
   @Override
   public void insertBoard(BoardVO boardVO) throws Exception {
      System.out.println("insert 작동");
      boardVO.setCreateDate("now()");
      boardDAO.insertBoard(boardVO);
   }
   //게시판 수정
   @Override
   public void updateBoard(BoardVO boardVO) throws Exception {
      System.out.println("update 작동");
      boardDAO.updateBoard(boardVO);
      
   }
   //게시판 삭제
   @Override
   public void deleteBoard(BoardVO boardVO) throws Exception {
      System.out.println("delete 작동");
      boardDAO.deleteBoard(boardVO);
      
   }
   
   @Override
   public BoardVO selectBoard(BoardVO boardVO) throws Exception {
      System.out.println("select 작동");
      return boardDAO.selectBoard(boardVO);
   }

   @Override
   public List<BoardVO> selectBoardList(BoardSearchVO search) throws Exception {
      
      return boardDAO.selectBoardList(search);
   }

   @Override
   public int selectBoardTotal(BoardSearchVO search) throws Exception {
      
      return boardDAO.selectBoardTotal(search);
   }

   @Override
   public void reset1() {
      boardDAO.reset1();
      
   }

   @Override
   public void reset2() {
      boardDAO.reset2();
      
   }

   
}