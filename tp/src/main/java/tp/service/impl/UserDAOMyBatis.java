package tp.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import tp.service.UserDAO;
import tp.service.UserService;
import tp.service.UserVO;

//db연동처리: 표준프레임워크가 제공하는 EgovAbstractMapper 클래스 상속

@Repository("daoMyBatis")
public class UserDAOMyBatis extends EgovAbstractMapper implements UserDAO {

   public UserDAOMyBatis() {
      System.out.println("===> UserDAOMyBatis 생성");
   }
   
   //회원가입
   @Override
   public void insertUser(UserVO userVO) throws SQLException {
      System.out.println("mybatis로 회원가입");
      userVO.setUserRole("ROLE_USER");
      insert("insertUser", userVO);
   }

   //중복아이디체크
   @Override
   public int idCheck(String userId) throws Exception {
      System.out.println("중복아이디체크");
      return selectOne("idCheck", userId);
   }

   
   //로그인
   @Override
   public int loginUser(UserVO userVO) throws Exception {
      return selectOne("loginUser",userVO);
   }

   //회원탈퇴
   @Override
   public void dropUser(UserVO userVO) {
      delete("dropUser", userVO);
   }

   //회원수정
   @Override
   public void updateUser(UserVO userVO) throws Exception {
      update("updateUser", userVO);
      
   }

   //마이페이지
   @Override
   public UserVO selectUser(String userId) {
      return selectOne("selectUser", userId);
   }

   //이름,전화번호 세션값 가져옴  
   @Override
   public String selectUserName(String userId) throws Exception {
      return selectOne("selectUserName", userId);
   }

   @Override
   public String selectUserPhone(String userId) throws Exception {
      return selectOne("selectUserPhone", userId);
   }
   
   @Override
   public String selectUserBirth(String userId) throws Exception {
      return selectOne("selectUserBirth", userId);
   }

   //ADMIN으로 회원 전체 조회  
   @Override
   public List<UserVO> selectUserList(UserVO userVO) {
      System.out.println("회원조회 하자 ~");
      return selectList("selectUserList", userVO);
   }

   //마이페이지 이름 수정
   @Override
   public void updateName(UserVO userVO) {
      update("updateName", userVO);
      
   }

   //마이페이지 전화번호 수정
   @Override
   public void updatePhone(UserVO userVO) {
      update("updatePhone", userVO);

   }

   //마이페이지 이메일 수정
   @Override
   public void updateEmail(UserVO userVO) {
      update("updateEmail", userVO);
      
   }

   //비밀번호 변경
   @Override
   public void updatePass(UserVO userVO) {
      update("updatePass", userVO);
   
   }


}