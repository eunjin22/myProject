package rain.service.impl;

import java.sql.SQLException;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import rain.service.UserDAO;
import rain.service.UserService;
import rain.service.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService{

	// UserDAOMyBatis에서 선언한 repository를 땡겨옴. autowired의 기능
	@Resource(name="daoMyBatis")
	private UserDAO userDAO;
	
	public UserServiceImpl() {
		System.out.println("===> userServiceImpl생성");
	}
	
	//회원가입
	@Transactional
	@Override
	public void insertUser(UserVO userVO) throws SQLException {
		userDAO.insertUser(userVO);
		
	}

	//아이디중복체크
	@Override
	public int idCheck(String userId) throws Exception {
		int cnt = userDAO.idCheck(userId); 
	    System.out.println("cnt: "+ cnt);
	    return cnt; 
	}

	//로그인
	@Override
	public int loginUser(UserVO userVO) throws Exception {
		return userDAO.loginUser(userVO);
	}

	//마이페이지 조회할때 세션값 가져옴
	@Override 
	public UserVO selectUser(String userId) { 
	    return userDAO.selectUser(userId); }
	 

	@Override
	public String selectUserName(String userId) throws Exception {
		return userDAO.selectUserName(userId);
	}

	@Override
	public String selectUserPhone(String userId) throws Exception {
		return userDAO.selectUserPhone(userId);
	}

	//마이페이지 비밀번호 수정
	@Override
	public void updatePass(UserVO userVO) {
		userDAO.updatePass(userVO);	
	}

	//마이페이지 핸드폰번호 수정
	@Override
	public void updatePhone(UserVO userVO) {
		userDAO.updatePhone(userVO);	
	}

	//마이페이지 정보 수정 후 뷰
	@Override
	public UserVO myPageView(String userId) {
		return userDAO.myPageView(userId);
	}

	
}
