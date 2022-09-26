package tp.service.impl;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tp.service.UserDAO;
import tp.service.UserService;
import tp.service.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService{

   // UserDAOMyBatis에서 선언한 repository를 땡겨옴. autowired의 기능
   @Resource(name="daoMyBatis")
   private UserDAO userDAO;
   
   public UserServiceImpl() {
      System.out.println("===> userServiceImpl 생성");
   }
   
   //회원가입
   
   @Transactional
   @Override
   public void insertUser(UserVO userVO) throws SQLException {
      userDAO.insertUser(userVO);
   }

   //아이디 중복체크
   @Override
   public int idCheck(String userId) throws Exception {
      int cnt = userDAO.idCheck(userId); //db에서 가져와서 cnt에 저장
      System.out.println("cnt: "+ cnt);
      return cnt; //id값 리턴
   }

   //로그인
   @Override
   public int loginUser(UserVO userVO) throws Exception {
      return userDAO.loginUser(userVO);
   }

   //회원탈퇴
   @Override
   public void dropUser(UserVO userVO) {
      userDAO.dropUser(userVO);
      
   }

   //회원수정
   @Override
   public void updateUser(UserVO userVO) throws Exception {
      userDAO.updateUser(userVO);
      
   }

   //마이페이지
   @Override
   public UserVO selectUser(String userId) {
      return userDAO.selectUser(userId);
   }

   //이름,전화번호 세션값 가져옴 
   @Override
   public String selectUserName(String userId) throws Exception {
      return userDAO.selectUserName(userId);
   }

   @Override
   public String selectUserPhone(String userId) throws Exception {
      return userDAO.selectUserPhone(userId);
   }
   
   @Override
   public String selectUserBirth(String userId) throws Exception {
	   return userDAO.selectUserBirth(userId);
   }

   //ADMIN으로 회원 전체 조회  
   @Override
   public List<UserVO> selectUserList(UserVO userVO) {
      System.out.println("회원조회하잣");
      return userDAO.selectUserList(userVO);
   }

   //마이페이지 이름 수정
   @Override
   public void updateName(UserVO userVO) {
      userDAO.updateName(userVO);
      
   }

   //마이페이지 전화번호 수정
   @Override
   public void updatePhone(UserVO userVO) {
      userDAO.updatePhone(userVO);
      
   }

   //마이페이지 이메일 수정
   @Override
   public void updateEmail(UserVO userVO) {
      userDAO.updateEmail(userVO);
      
   }

   //비밀번호 변경
   @Override
   public void updatePass(UserVO userVO) {
    userDAO.updatePass(userVO);
   
   }


}