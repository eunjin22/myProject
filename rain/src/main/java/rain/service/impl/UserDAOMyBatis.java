package rain.service.impl;

import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import rain.service.UserDAO;
import rain.service.UserVO;

@Repository("daoMyBatis")
public class UserDAOMyBatis extends EgovAbstractMapper implements UserDAO {

	public UserDAOMyBatis() {
		// TODO Auto-generated constructor stub
	}
	
	// 회원가입
	@Override
	public void insertUser(UserVO userVO) throws SQLException {
		insert("insertUser", userVO);

	}

	// 아이디중복체크
	@Override
	public int idCheck(String userId) throws Exception {
		return selectOne("idCheck", userId);
	}

	// 로그인
	@Override
	public int loginUser(UserVO userVO) throws Exception {
		return selectOne("loginUser", userVO);
	}

	// 마이페이지 조회할때 세션값 가져옴
	@Override 
	public UserVO selectUser(String userId) { 
		return selectOne("selectUser", userId); }
	 
	
	@Override
	public String selectUserName(String userId) throws Exception {
		return selectOne("selectUserName", userId);
	}

	@Override
	public String selectUserPhone(String userId) throws Exception {
		return selectOne("selectUserPhone", userId);
	}

	//마이페이지 비밀번호 수정
	@Override
	public void updatePass(UserVO userVO) {
		update("updatePass", userVO);
		
	}

	//마이페이지 핸드폰 번호 수정
	@Override
	public void updatePhone(UserVO userVO) {
		update("updatePhone", userVO);
		
	}

	//마이페이지 정보 수정 후 뷰
	@Override
	public UserVO myPageView(String userId) {
		return selectOne("myPageView", userId);
	}



}
