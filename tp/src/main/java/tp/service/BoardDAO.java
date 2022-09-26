package tp.service;

import java.util.List;

public interface BoardDAO {

   void insertBoard(BoardVO boardVO) throws Exception;

   void updateBoard(BoardVO boardVO) throws Exception;

   void deleteBoard(BoardVO boardVO) throws Exception;

   BoardVO selectBoard(BoardVO boardVO) throws Exception;

   List<BoardVO> selectBoardList(BoardSearchVO search) throws Exception;
   
   int selectBoardTotal(BoardSearchVO search) throws Exception;
   
   void reset1();
   
   void reset2();
   
}