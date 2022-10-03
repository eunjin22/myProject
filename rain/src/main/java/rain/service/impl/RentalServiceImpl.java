package rain.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import rain.service.RentalDAO;
import rain.service.RentalService;
import rain.service.RentalVO;

@Service("rentalService")
public class RentalServiceImpl implements RentalService{

	@Resource(name = "RentaldaoMybatis")
	private RentalDAO rentalDAO;
	
	//대여진행
	@Override
	public void insertRental(RentalVO rentalVO) throws Exception {
		rentalDAO.insertRental(rentalVO);
	}

	//본인 대여내역조회
	@Override
	public List<RentalVO> myrentalList(RentalVO rentalVO) throws Exception {
		return rentalDAO.myrentalList(rentalVO);
	}

	//관리자 전체대여 내역조회
	@Override
	public List<RentalVO> adminRentalList(RentalVO rentalVO) throws Exception {
		return rentalDAO.adminRentalList(rentalVO);
	}

	//총 대여건수
	@Override
	public int selectrentalTotal(RentalVO rentalVO) throws Exception {
		return rentalDAO.selectrentalTotal(rentalVO);
	}

	//재정렬식
	@Override
	public void listArray1() {
		rentalDAO.listArray1();
	}

	@Override
	public void listArray2() {
		rentalDAO.listArray2();
	}

	//우산개수
	@Override
	public int umbrellaCount(RentalVO rentalVO) throws Exception {
		return rentalDAO.umbrellaCount(rentalVO);
	}

	//우산 개수 대여
	@Override
	public void umbrellaRental(RentalVO rentalVO) throws Exception {
		rentalDAO.umbrellaRental(rentalVO);
		
	}

	//우산반납
	@Override
	public void umbrellaReturn(RentalVO rentalVO) throws Exception {
		rentalDAO.umbrellaReturn(rentalVO);
	}

	//대여취소
	@Override
	public void umbrellaCancel(RentalVO rentalVO) throws Exception {
		rentalDAO.umbrellaCancel(rentalVO);
	}

	//대여=>대여중
	@Override
	public void updateRentaling(RentalVO rentalVO) throws Exception {
		rentalDAO.updateRentaling(rentalVO);
	}

	//대여=>취소
	@Override
	public void updateCancel(RentalVO rentalVO) throws Exception {
		rentalDAO.updateCancel(rentalVO);	
	}

	//대여=>반납
	@Override
	public void updateReturn(RentalVO rentalVO) throws Exception {
		rentalDAO.updateReturn(rentalVO);
		
	}

	//총 대여 갯수
	@Override
	public List<RentalVO> totalCount(RentalVO rentalVO) throws Exception {
		return rentalDAO.totalCount(rentalVO);
	}

	//반납 장소 변경
	@Override
	public void updateReturnPlace(RentalVO rentalVO) throws Exception {
		rentalDAO.updateReturnPlace(rentalVO);	
	}

	//대여번호 세션
	@Override
	public int selectRentalNo(RentalVO rentalVO) throws Exception {
		return rentalDAO.selectRentalNo(rentalVO);
	}
	

}
