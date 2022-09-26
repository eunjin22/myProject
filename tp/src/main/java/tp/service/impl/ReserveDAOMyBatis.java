package tp.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import tp.service.ReserveDAO;
import tp.service.ReserveVO;

@Repository("ReservedaoMybatis")
public class ReserveDAOMyBatis extends EgovAbstractMapper implements ReserveDAO{

	public ReserveDAOMyBatis() {
		System.out.println("===> ReserveDAOMyBatis 생성");
	}

	@Override
	public void insertReserve(ReserveVO vo) throws Exception {
		System.out.println("===> MyBatis로 insertReserve() 기능 처리");
		insert("insertReserve", vo);		
	}

	@Override
	public ReserveVO selectUser(String userId) {
		return selectOne("selectUser", userId);
	}

	@Override
	public ReserveVO reserveSelect(ReserveVO vo) {
		return selectOne("reserveSelect", vo);
	}

	@Override
	public int reserveCheck(ReserveVO vo) throws Exception {
		int count = selectOne("reserveCheck", vo);
		return count;
	}

	@Override
	public ReserveVO reserveConfirm(ReserveVO vo) {		
		return selectOne("reserveConfirm", vo);
	}

	@Override
	public List<ReserveVO> selectReserveList(String userId) throws Exception {
		System.out.println("===> MyBatis로 selectReserveList() 기능 처리");
		return selectList("selectReserveList", userId);
	}

	@Override
	public List<ReserveVO> adminReserveList(ReserveVO vo) throws Exception {
		System.out.println("===> MyBatis로 adminReserveList() 기능 처리");
		return selectList("adminReserveList", vo);
	}

	@Override
	public void reserveDelete(int reserveNo) throws Exception {
		System.out.println("===> MyBatis로 reserveDelete() 기능 처리");
		delete("reserveDelete", reserveNo);
	}

	@Override
	public void reserveUpdate(int reserveNo) throws Exception {
		System.out.println("===> MyBatis로 reserveUpdate() 기능 처리");
		update("reserveUpdate", reserveNo);
	}

	@Override
	public List<ReserveVO> admin1ReserveList(ReserveVO vo) throws Exception {
		System.out.println("===> MyBatis로 admin1ReserveList() 기능 처리");
		return selectList("admin1ReserveList", vo);
	}

	@Override
	public List<ReserveVO> admin2ReserveList(ReserveVO vo) throws Exception {
		System.out.println("===> MyBatis로 admin2ReserveList() 기능 처리");
		return selectList("admin2ReserveList", vo);
	}

	@Override
	public int selectreserveTotal(ReserveVO vo) throws Exception {
		System.out.println("===> MyBatis로 selectreserveTotal() 기능 처리");
		return selectOne("selectreserveTotal", vo);
	}

	@Override
	public int selectreserveUserTotal(String userId) throws Exception {
		System.out.println("===> MyBatis로 selectreserveUserTotal() 기능 처리");
		return selectOne("selectreserveUserTotal", userId);
	}

	@Override
	public List<ReserveVO> myPageReserveList(String userId) throws Exception {
		System.out.println("===> MyBatis로 myPageReserveList() 기능 처리");
		return selectList("myPageReserveList", userId);
	}

	@Override
	public void insertBranch(ReserveVO vo) throws Exception {
		System.out.println("===> MyBatis로 insertBranch() 기능 처리");
		insert("insertBranch", vo);		
	}

	
	
}
