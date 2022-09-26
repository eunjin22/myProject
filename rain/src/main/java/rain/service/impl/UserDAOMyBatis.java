package rain.service.impl;

import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import rain.service.UserDAO;
import rain.service.UserVO;

@Repository("daoMyBatis")
public class UserDAOMyBatis extends EgovAbstractMapper implements UserDAO {

	public UserDAOMyBatis() {
		System.out.println("===>userDAOMyBatis생성");
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

}
