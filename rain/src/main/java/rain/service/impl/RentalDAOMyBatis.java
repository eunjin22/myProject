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
	public List<RentalVO> myrentalSelect(String userId) throws Exception {
		return selectList("myrentalSelect", userId);
	}

}
