package rain.service;

import java.util.List;

public interface RentalService {

	//대여 신청
	void insertRental(RentalVO rentalVO) throws Exception;
	
	//대여 확인
	int rentalCheck(RentalVO rentalVO) throws Exception;
	
	//본인 대여내역조회
	List<RentalVO> myrentalList(RentalVO rentalVO) throws Exception;
	
	//qr로 해당아이디 정보조회
	RentalVO findByQr(String userId) throws Exception;
	
	//본인 대여내역삭제
	void deleteMyRental(RentalVO rentalVO) throws Exception;
}
