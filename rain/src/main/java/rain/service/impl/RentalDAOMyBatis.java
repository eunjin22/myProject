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

	//대여확인
	@Override
	public int rentalCheck(RentalVO rentalVO) throws Exception {
		int count = selectOne("rentalCheck", rentalVO);
		return count;
	}

	//본인 대여내역조회
	@Override
	public List<RentalVO> myrentalList(RentalVO rentalVO) throws Exception {
		return selectList("myrentalList", rentalVO);
	}

	//qr로 해당아이디 정보조회
	@Override
	public RentalVO findByQr(String userId) throws Exception {
		return selectOne("findByQr", userId);
	}

	//본인대여내역삭제
	@Override
	public void deleteMyRental(RentalVO rentalVO) throws Exception {
		delete("deleteMyRental", rentalVO);
		
	}

}
