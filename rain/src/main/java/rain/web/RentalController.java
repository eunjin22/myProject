package rain.web;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;

import rain.service.RentalService;
import rain.service.RentalVO;
import rain.service.UserService;


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
	@RequestMapping(value = "/myrentList.do")
	public String myrentalList(RentalVO rentalVO, Model model, HttpSession session, 
			HttpServletRequest request) throws Exception {
				
		String userId = "";
		session = request.getSession();
		
		userId = (String) session.getAttribute("SessionUserID");
		rentalVO.setUserId(userId);
		
		List<RentalVO> list = rentalService.myrentalList(rentalVO);
		
		model.addAttribute("myrentalList", rentalService.myrentalList(rentalVO));
		
		return "user/myrentalList";
		
	}
	
	//qr코드 뷰?
	 @RequestMapping(value="/qr.do")
	   public String qrCode() {
		 return "qr";
	 }

	 //qr코드
	 @RequestMapping(value = "/qrqr.do", method = RequestMethod.GET)
	    public Object createQr(@RequestParam String url) throws WriterException, IOException {
	        int width = 200;
	        int height = 200;
	        BitMatrix matrix = new MultiFormatWriter().encode(url, BarcodeFormat.QR_CODE, width, height);
	 
	        try (ByteArrayOutputStream out = new ByteArrayOutputStream();) {
	            MatrixToImageWriter.writeToStream(matrix, "PNG", out);
	            return ResponseEntity.ok()
	                    .contentType(MediaType.IMAGE_PNG)
	                    .body(out.toByteArray());
	        }
	    }
	 
	//본인대여내역삭제 //값 안넘어가면 강제로 @requestParam!!!!!
	 @RequestMapping(value = "/deleteMyRental.do", method = RequestMethod.GET)
	 public String deleteMyRental(
			 @RequestParam(name = "rentalNo") int rentalNo, 
			 @RequestParam(name = "userId") String userId,						
			 RentalVO rentalVO) throws Exception{
		 
		 //값확인부터해
		 //System.out.println(rentalNo + userId);
		 
		 rentalVO.setRentalNo(rentalNo);
		 rentalVO.setUserId(userId);
		 rentalService.deleteMyRental(rentalVO);
		 return "user/myPage"; //user/userrentalList 로 바로리턴하면 새로고침 안되는지무러보기
	 }
}
