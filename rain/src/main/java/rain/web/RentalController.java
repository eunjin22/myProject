package rain.web;

import java.util.Date;

import javax.annotation.Resource;
import javax.enterprise.inject.Model;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import rain.service.RentalService;
import rain.service.RentalVO;
import rain.service.UserVO;

@Controller
public class RentalController {

	@Resource(name = "rentalService")
	private RentalService rentalService;

	//대여 신청
	@ResponseBody
	@RequestMapping(value = "/insertRental.do", method = RequestMethod.GET)
	public String insertRental(RentalVO rentalVO, 
			@RequestParam(name = "rentalPlace") String rentalPlace,
			@RequestParam(name = "rentalDate") Date rentalDate, 
			@RequestParam(name = "returnPlace") String returnPlace,
			HttpSession session, HttpServletRequest request) throws Exception {

		String data = "";

		rentalVO.setRentalPlace(rentalPlace);
		rentalVO.setRentalDate(rentalDate);
		rentalVO.setReturnPlace(returnPlace);

		int count = rentalService.rentalCheck(rentalVO);

		if (count == 1) {
			data = "fail";
		} else if (count == 0) {
			data = "ok";
			rentalService.insertRental(rentalVO);
		}
		return data;

	}
	
	//본인 대여내역조회
	public String myrentalList(RentalVO rentalVO, Model model, HttpSession session, 
			HttpServletRequest request) throws Exception {
				
		String userId = "";
		session = request.getSession();
		userId = (String) session.getAttribute("SessionUserID");
		System.out.println(userId);
		
		//깃허브 테스트중 ㅎㅎㅎㅎㅎ
		//나도 깃허브입성ㅎㅎㅎㅎ
		
		return null;
		
	}

}
