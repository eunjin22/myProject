package rain.service;

import java.util.List;

public interface RentalDAO {

	//대여 신청
	void insertRental(RentalVO rentalVO) throws Exception;
	
	//대여 확인
	int rentalCheck(RentalVO rentalVO) throws Exception;

	//본인 대여내역조회
	List<RentalVO> myrentalSelect(String userId) throws Exception;
}
