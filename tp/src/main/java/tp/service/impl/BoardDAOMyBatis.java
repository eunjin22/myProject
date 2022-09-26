package tp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import tp.service.BoardDAO;
import tp.service.BoardSearchVO;
import tp.service.BoardVO;

@Repository("boardMyBatis")
public class BoardDAOMyBatis extends EgovAbstractMapper implements BoardDAO{

   @Override
   public void insertBoard(BoardVO boardVO) throws Exception {
      insert("insertBoard",boardVO);
      System.out.println("mybatis로 insert 기능처리");
   }

   @Override
   public void updateBoard(BoardVO boardVO) throws Exception {
      update("updateBoard",boardVO);
      System.out.println("mybatis로 update 기능처리");
   }

   @Override
   public void deleteBoard(BoardVO boardVO) throws Exception {
      delete("deleteBoard",boardVO);
      System.out.println("mybatis로 delete 기능처리");
   }

   @Override
   public BoardVO selectBoard(BoardVO boardVO) throws Exception {
      System.out.println("mybatis로 select 기능처리");
      return selectOne("selectBoard",boardVO);
   }

   @Override
   public List<BoardVO> selectBoardList(BoardSearchVO search) throws Exception {
      System.out.println("mybatis로 selectList 기능처리");
      return selectList("selectBoardList",search);
   }

   @Override
   public void reset1() {
      System.out.println("mybatis로 reset1 기능처리");
      selectOne("reset1");
   }

   @Override
   public void reset2() {
      System.out.println("mybatis로 reset2 기능처리");
      selectOne("reset2");
   }

   @Override
   public int selectBoardTotal(BoardSearchVO search) {
      System.out.println("mybatis로 selectTotal 기능처리");
      return selectOne("selectBoardTotal",search);
   }


   
   

}