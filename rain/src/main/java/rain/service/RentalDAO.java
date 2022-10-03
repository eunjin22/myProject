package rain.service;

import java.util.List;

public interface RentalDAO {

	//대여 신청
	void insertRental(RentalVO rentalVO) throws Exception;

	//본인 대여내역조회
	List<RentalVO> myrentalList(RentalVO rentalVO) throws Exception;
	
	//관리자 대여전체 내역조회
	List<RentalVO> adminRentalList(RentalVO rentalVO) throws Exception;
	
	//총 대여건수
	int selectrentalTotal(RentalVO rentalVO) throws Exception;
	
	//재정렬식
	void listArray1();
	
	void listArray2();
	
	//우산 총 개수
	int umbrellaCount(RentalVO rentalVO) throws Exception;
	
	//우산 개수 업데이트
	void umbrellaRental(RentalVO rentalVO) throws Exception;
	
	//대여취소
	void umbrellaCancel(RentalVO rentalVO) throws Exception;
	
	//우산반납
	void umbrellaReturn(RentalVO rentalVO) throws Exception;
	
	//대여=>대여중
	void updateRentaling(RentalVO rentalVO) throws Exception;
	
	//대여=> 취소
	void updateCancel(RentalVO rentalVO) throws Exception;
	
	//대여=> 반납
	void updateReturn(RentalVO rentalVO) throws Exception;

	//총 대여 갯수
	List<RentalVO> totalCount(RentalVO rentalVO) throws Exception;
	
	//반납장소 변경
	void updateReturnPlace(RentalVO rentalVO) throws Exception;
	
	//대여번호 세션
	int selectRentalNo(RentalVO rentalVO) throws Exception;
}
