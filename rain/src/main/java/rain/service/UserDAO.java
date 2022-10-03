package rain.service;

import java.sql.SQLException;

public interface UserDAO {

	// 회원가입
    void insertUser(UserVO userVO) throws SQLException;
    
    //아이디 중복체크
    int idCheck(String userId) throws Exception;
    
    // 로그인
    int loginUser(UserVO userVO) throws Exception;
    
    //마이페이지- 조회
    UserVO selectUser(String userId);
    
    String selectUserName(String userId) throws Exception;
    
    String selectUserPhone(String userId) throws Exception;
    
    //마이페이지 비밀번호 수정
    void updatePass(UserVO userVO);
    
    //마이페이지 전화번호 수정
    void updatePhone(UserVO userVO);
    
    //마이페이지 정보수정후 뷰
    UserVO myPageView(String userId);
}
