package tp.service;

import java.util.List;

public interface ReserveDAO {

	void insertReserve(ReserveVO vo) throws Exception;
	
	ReserveVO selectUser(String userId) throws Exception;
	
	ReserveVO reserveSelect(ReserveVO vo) throws Exception;
	
	int reserveCheck(ReserveVO vo) throws Exception;
	
	ReserveVO reserveConfirm(ReserveVO vo) throws Exception;
	
	List<ReserveVO> selectReserveList(String userId) throws Exception;
	
	List<ReserveVO> adminReserveList(ReserveVO vo) throws Exception;
	
	List<ReserveVO> admin1ReserveList(ReserveVO vo) throws Exception;
	
	List<ReserveVO> admin2ReserveList(ReserveVO vo) throws Exception;
	
	List<ReserveVO> myPageReserveList(String userId) throws Exception;
	
	void reserveDelete(int reserveNo) throws Exception;
	
	void reserveUpdate(int reserveNo) throws Exception;
	
	int selectreserveTotal(ReserveVO vo) throws Exception;
	
	int selectreserveUserTotal(String userId) throws Exception;
	
	void insertBranch(ReserveVO vo) throws Exception;
		
}
