package tp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import tp.service.ReserveDAO;
import tp.service.ReserveService;
import tp.service.ReserveVO;

@Service("reserveService")
public class ReserveServiceImpl implements ReserveService {

	@Resource(name = "ReservedaoMybatis")
	private ReserveDAO reserveDAO;
	
	public ReserveServiceImpl() {
		System.out.println("===> ReserveServiceImpl 생성");
	}

	@Override
	public void insertReserve(ReserveVO vo) throws Exception {
		System.out.println("===> insertReserve Impl 실행");
		reserveDAO.insertReserve(vo);
	}

	@Override
	public ReserveVO selectUser(String userId) throws Exception {
		return reserveDAO.selectUser(userId);
	}

	@Override
	public ReserveVO reserveSelect(ReserveVO vo) throws Exception {		
		return reserveDAO.reserveSelect(vo);
	}

	@Override
	public int reserveCheck(ReserveVO vo) throws Exception {
		return reserveDAO.reserveCheck(vo);
	}

	@Override
	public ReserveVO reserveConfirm(ReserveVO vo) throws Exception {
		return reserveDAO.reserveConfirm(vo);
	}

	@Override
	public List<ReserveVO> selectReserveList(String userId) throws Exception {		
		return reserveDAO.selectReserveList(userId);
	}

	@Override
	public List<ReserveVO> adminReserveList(ReserveVO vo) throws Exception {
		return reserveDAO.adminReserveList(vo);
	}

	@Override
	public void reserveDelete(int reserveNo) throws Exception {
		reserveDAO.reserveDelete(reserveNo);		
	}

	@Override
	public void reserveUpdate(int reserveNo) throws Exception {
		reserveDAO.reserveUpdate(reserveNo);		
	}

	@Override
	public List<ReserveVO> admin1ReserveList(ReserveVO vo) throws Exception {
		return reserveDAO.admin1ReserveList(vo);
	}

	@Override
	public List<ReserveVO> admin2ReserveList(ReserveVO vo) throws Exception {
		return reserveDAO.admin2ReserveList(vo);
	}

	@Override
	public int selectreserveTotal(ReserveVO vo) throws Exception {
		return reserveDAO.selectreserveTotal(vo);
	}

	@Override
	public int selectreserveUserTotal(String userId) throws Exception {
		return reserveDAO.selectreserveUserTotal(userId);
	}

	@Override
	public List<ReserveVO> myPageReserveList(String userId) throws Exception {
		return reserveDAO.myPageReserveList(userId);
	}

	@Override
	public void insertBranch(ReserveVO vo) throws Exception {
		System.out.println("===> insertBranch Impl 실행");
		reserveDAO.insertBranch(vo);		
	}
	
}
