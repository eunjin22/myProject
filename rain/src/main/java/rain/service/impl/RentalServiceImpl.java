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

	//대여확인
	@Override
	public int rentalCheck(RentalVO rentalVO) throws Exception {	
		return rentalDAO.rentalCheck(rentalVO);
	}

	//본인 대여내역조회
	@Override
	public List<RentalVO> myrentalSelect(String userId) throws Exception {
		return rentalDAO.myrentalSelect(userId);
	}

}