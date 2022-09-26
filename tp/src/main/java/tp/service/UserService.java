package tp.service;

import java.sql.SQLException;
import java.util.List;

public interface UserService {

   // 회원가입
    void insertUser(UserVO userVO) throws SQLException;
    
    //아이디 중복체크
    int idCheck(String userId) throws Exception;
     
     // 로그인
    int loginUser(UserVO userVO) throws Exception;
    
    //회원탈퇴
    void dropUser(UserVO userVO);
    
    //회원수정
    void updateUser(UserVO userVO) throws Exception;
    
    //마이페이지-조회
    UserVO selectUser(String userId);
    
    String selectUserName(String userId) throws Exception;
    
    String selectUserPhone(String userId) throws Exception;
    
    String selectUserBirth(String userId) throws Exception;
    
    //ADMIN으로 회원 전체 조회  
    List<UserVO> selectUserList(UserVO userVO);
    
    //마이페이지 이름 수정
    void updateName(UserVO userVO);
   
    //마이페이지 전화번호 수정
    void updatePhone(UserVO userVO);
    
    //마이페이지 이메일 수정
    void updateEmail(UserVO userVO);
    
    //마이페이지 비밀번호 수정
    void updatePass(UserVO userVO);
}