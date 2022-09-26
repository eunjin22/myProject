package tp.service;

import java.util.List;
import org.springframework.stereotype.Service;

@Service
public interface BoardService {

   void insertBoard(BoardVO boardVO) throws Exception;

   void updateBoard(BoardVO boardVO) throws Exception;

   void deleteBoard(BoardVO boardVO) throws Exception;

   BoardVO selectBoard(BoardVO boardVO) throws Exception;

   List<BoardVO> selectBoardList(BoardSearchVO searchVO) throws Exception;
   
   int selectBoardTotal(BoardSearchVO search) throws Exception;
   
   void reset1();
   
   void reset2();
   
   
}