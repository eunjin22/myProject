package rain.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import rain.service.RentalDAO;
import rain.service.RentalVO;

@Repository("RentaldaoMybatis")
public class RentalDAOMyBatis extends EgovAbstractMapper implements RentalDAO{

	//대여신청
	@Override
	public void insertRental(RentalVO rentalVO) throws Exception {
		insert("insertRental", rentalVO);
	}

	//본인 대여내역조회
	@Override
	public List<RentalVO> myrentalList(RentalVO rentalVO) throws Exception {
		return selectList("myrentalList", rentalVO);
	}

	//관리자 대여전체 내역조회
	@Override
	public List<RentalVO> adminRentalList(RentalVO rentalVO) throws Exception {
		return selectList("adminRentalList", rentalVO);
	}

	//총대여건수
	@Override
	public int selectrentalTotal(RentalVO rentalVO) throws Exception {
		return selectOne("selectrentalTotal", rentalVO);
	}

	//재정렬
	@Override
	public void listArray1() {
		selectOne("listArray1");
	}

	//재정렬
	@Override
	public void listArray2() {
		selectOne("listArray2");
	}

	//우산개수
	@Override
	public int umbrellaCount(RentalVO rentalVO) throws Exception {
		return selectOne("umbrellaCount", rentalVO);
	}

	//우산 개수 대여
	@Override
	public void umbrellaRental(RentalVO rentalVO) throws Exception {
		update("umbrellaRental", rentalVO);	
	}

	//우산반납
	@Override
	public void umbrellaReturn(RentalVO rentalVO) throws Exception {
		update("umbrellaReturn", rentalVO);
	}

	//대여취소
	@Override
	public void umbrellaCancel(RentalVO rentalVO) throws Exception {
		update("umbrellaCancel", rentalVO);
		
	}
	//대여=>대여중
	@Override
	public void updateRentaling(RentalVO rentalVO) throws Exception {
		update("updateRentaling", rentalVO);
		
	}

	//대여=>취소
	@Override
	public void updateCancel(RentalVO rentalVO) throws Exception {
		update("updateCancel", rentalVO);
		
	}

	//대여=>반납
	@Override
	public void updateReturn(RentalVO rentalVO) throws Exception {
		update("updateReturn", rentalVO);
	}

	//총 대여 갯수
	@Override
	public List<RentalVO> totalCount(RentalVO rentalVO) throws Exception {
		return selectList("totalCount", rentalVO);
	}

	//반납 장소변경
	@Override
	public void updateReturnPlace(RentalVO rentalVO) throws Exception {
		update("updateReturnPlace", rentalVO);
		
	}

	//대여번호 세션
	@Override
	public int selectRentalNo(RentalVO rentalVO) throws Exception {
		return selectOne("selectRentalNo", rentalVO);
	}


}
