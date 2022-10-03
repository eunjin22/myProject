package rain.web;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import rain.service.RentalService;
import rain.service.RentalVO;

@Controller
public class RentalController {

	@Resource(name = "rentalService")
	private RentalService rentalService;

	// 대여 신청
	@ResponseBody
	@RequestMapping(value = "/insertRental.do", method = RequestMethod.GET)
	public String insertRental(RentalVO rentalVO, @RequestParam(name = "rentalDate") Date rentalDate,
			@RequestParam(name = "rentalPlace") String rentalPlace, @RequestParam(name = "umbrellaCnt") int umbrellaCnt,
			@RequestParam(name = "returnPlace") String returnPlace, HttpSession session, HttpServletRequest request)
			throws Exception {

		String data = "";

		rentalVO.setRentalDate(rentalDate); // 대여날짜
		rentalVO.setReturnPlace(returnPlace); // 반납장소
		rentalVO.setUmbrellaCnt(umbrellaCnt); // 우산개수
		rentalVO.setRentalPlace(rentalPlace); // 대여장소

		// 우산개수를 um_count에 저장
		int um_count = rentalService.umbrellaCount(rentalVO); // 개수확인

		if (um_count < 1) { // 우산이 없거나
			data = "fail";
		} else if (um_count - umbrellaCnt < 0) { // 있는 우산보다 더많이 대여
			data = "fail";
		} else {
			data = "ok";
			rentalService.umbrellaRental(rentalVO); // update
			rentalService.insertRental(rentalVO); // insert
			rentalService.listArray1();
			rentalService.listArray2();
		}
		return data;
	}

	// 본인대여취소
	@ResponseBody
	@RequestMapping(value = "/deleteMyRental.do", method = RequestMethod.GET)
	public String deleteMyRental(@RequestParam(name = "rentalNo") int rentalNo,
			@RequestParam(name = "rentalPlace") String rentalPlace, @RequestParam(name = "umbrellaCnt") int umbrellaCnt,
			@RequestParam(name = "rentalState") String rentalState, RentalVO rentalVO) throws Exception {

		String data = "";

		rentalVO.setRentalNo(rentalNo);
		rentalVO.setRentalPlace(rentalPlace);
		rentalVO.setUmbrellaCnt(umbrellaCnt);
		rentalVO.setRentalState(rentalState);

		rentalService.updateCancel(rentalVO); 
		rentalService.umbrellaCancel(rentalVO); 
		rentalService.listArray1();
		rentalService.listArray2();
		
		data = "ok";

		return data;
	}

	// 우산반납
	// @requestParam('가져올데이터의이름')[데이터타입][가져온데이터를 담을변수]
	@ResponseBody
	@RequestMapping(value = "/umbrellaReturn.do", method = RequestMethod.GET)
	public String umreturn(RentalVO rentalVO, @RequestParam(name = "rentalNo") int rentalNo,
			@RequestParam(name = "returnPlace") String rentalPlace, @RequestParam(name = "umbrellaCnt") int umbrellaCnt,
			@RequestParam(name = "rentalState") String rentalState) throws Exception {

		String data = "";

		rentalVO.setRentalNo(rentalNo);
		rentalVO.setRentalPlace(rentalPlace);
		rentalVO.setUmbrellaCnt(umbrellaCnt);
		rentalVO.setRentalState(rentalState);
		rentalService.updateReturn(rentalVO); 
		rentalService.umbrellaReturn(rentalVO); 

		data = "ok";

		return data;
	}

	// 본인 대여내역조회
	@RequestMapping(value = "/myrentList.do")
	public String myrentalList(RentalVO rentalVO, Model model, HttpSession session, HttpServletRequest request)
			throws Exception {

		String userId = "";
		session = request.getSession();

		userId = (String) session.getAttribute("SessionUserID");
		rentalVO.setUserId(userId);

		List<RentalVO> list = rentalService.myrentalList(rentalVO);

		model.addAttribute("myrentalList", rentalService.myrentalList(rentalVO));

		return "user/myrentalList";
	}

	// 관리자 전체대여 내역조회
	@RequestMapping(value = "/adminRentalList.do", method = RequestMethod.GET)
	public String adminRentalList(RentalVO rentalVO, Model model) throws Exception {

		int total = rentalService.selectrentalTotal(rentalVO);
		int totalPage = (int) Math.ceil((double) total / 10); // Math.ceil: 소수점 올림
		int viewPage = rentalVO.getViewPage();
		int startIndex = (viewPage - 1) * 10;
		int endIndex = 10;

		rentalVO.setStartIndex(startIndex);
		rentalVO.setEndIndex(endIndex);

		model.addAttribute("total", total);
		model.addAttribute("viewPage", viewPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("startIndex", startIndex);
		model.addAttribute("endIndex", endIndex);
		model.addAttribute("adminRentalList", rentalService.adminRentalList(rentalVO));

		return "rental/adminRentalList";
	}

	// 대여=>대여중
	@ResponseBody
	@RequestMapping(value = "/updateRentaling.do", method = RequestMethod.GET)
	public String updateRentaling(RentalVO rentalVO, @RequestParam(name = "rentalNo") int rentalNo,
			@RequestParam(name = "rentalState") String rentalState) throws Exception {

		String data = "";
		rentalVO.setRentalNo(rentalNo); 
		rentalVO.setRentalState(rentalState); 
		rentalService.updateRentaling(rentalVO); 
		
		data = "ok"; 

		return data;
	}
	
	
	// 반납장소변경 폼
	@RequestMapping(value = "/rplace.do", method = RequestMethod.GET)
	public String rplaceView() {
		return "rental/updateReturnPlace";
	}
	
	// 반납장소변경 폼
	@ResponseBody
	@RequestMapping(value = "/rplace.do", method = RequestMethod.POST)
	public String rplaceView(@RequestParam(name = "rentalNo") int rentalNo, RentalVO rentalVO, HttpSession session) throws Exception {
		String data = "";
		int rentalNo1 = rentalService.selectRentalNo(rentalVO);
		
		session.setAttribute("SessionRentalNo", rentalNo1);
		
		data = "ok";
		
		return data;
	}

	// 반납장소 변경
	@ResponseBody
	@RequestMapping(value = "/updateReturnPlace.do", method = RequestMethod.POST)
	public String updateReturnPlace(int rentalNo, String returnPlace, RentalVO rentalVO, HttpSession session)
			throws Exception {

		String data = "";

		rentalVO.setRentalNo(rentalNo);
		rentalVO.setReturnPlace(returnPlace);
		rentalService.updateReturnPlace(rentalVO);
		session.removeAttribute("SessionRentalNo");

		data = "ok";

		return data;

	}

}
