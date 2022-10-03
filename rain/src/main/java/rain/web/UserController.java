package rain.web;

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
import rain.service.UserService;
import rain.service.UserVO;

@Controller
public class UserController {

	@Resource(name = "userService")
	private UserService userService;
	
	@Resource(name = "rentalService")
	private RentalService rentalService;
	
	
	//테스트
	@RequestMapping(value="/home.do")
	public @ResponseBody String home() {
		return "hello world!";
	}
	
	//메인페이지 뷰 + 총대여개수를 메인에 뿌려쥼
	@RequestMapping(value="/main.do")
	public String main(RentalVO rentalVO, Model model) throws Exception {
		model.addAttribute("totalCount", rentalService.totalCount(rentalVO));
		return "main";
	}
	
	//회원가입폼
	@RequestMapping(value="/signUp.do")
	public String signUpForm() {
		return "user/signUp";
	}
	
	//대여하기 폼
	@RequestMapping(value = "/rentalView.do")
	public String rental() {
		return "user/rental";
	}
	
	
	//회원가입 진행
	@ResponseBody
	@RequestMapping(value = "/signUp.do", method = RequestMethod.POST)
	public String signUp(UserVO userVO, String userId) throws Exception{		
		String data = "";
		
		 int userIdResult = userService.idCheck(userId); 
	     if (userIdResult == 0) { 
	    	 userService.insertUser(userVO);
	         data = "ok";
	      } else { 
	         data = "no";
	      }
		return data;
		
	}
	
	// 아이디 중복체크하고 userIdResult에 저장
	// userIdResult=0이면 사용가능한 아이디여서 로그인으로 넘어가고
	// 1이면 회원가입으로
	@ResponseBody 
	@RequestMapping(value = "/idCheck.do", method = RequestMethod.GET)
	public String idCheck(String userId) throws Exception {
	      String data = "";
	      int userIdResult = userService.idCheck(userId); 
	      if (userIdResult == 0) { 
	         data = "ok";
	      } else { 
	         data = "no";
	      }
	      return data;
	   }
	
	//로그인폼
	@RequestMapping(value="/login.do")
	public String loginForm() {
		return "user/login";
	}
	
	 // 로그인 세션
	 // @RequestParam("가져올데이터이름")데이터타입,데이터를담을 변수
	 @ResponseBody
	 @RequestMapping(value = "/login.do", method = RequestMethod.POST)
	 public String loginProcessing(UserVO userVO, HttpSession session, HttpServletRequest request,
	       @RequestParam(name = "userId") String userId, @RequestParam(name = "userPw") String userPw)
	       throws Exception {

	     userVO.setUserId(userId);
	     userVO.setUserPw(userPw);
	     String data = ""; // 변수초기화

	     int count = userService.loginUser(userVO); // db에 값
	     if (count == 1) {
	    	  
	    	 String userName = userService.selectUserName(userId);
	    	 String userPhone = userService.selectUserPhone(userId);
	    	  
	         session.setAttribute("SessionUserID", userVO.getUserId());
	         session.setAttribute("SessionUserPW", userVO.getUserPw());
	         
	         session.setAttribute("SessionUserName", userName);
	         session.setAttribute("SessionUserPhone", userPhone);
	         
	         data = "ok";
	      }
	      return data;
	   }

	   // 로그아웃
	   @RequestMapping("/logout.do")
	   public String logout(HttpSession session) {
	      session.removeAttribute("SessionUserID");
	      session.removeAttribute("SessionUserPW");
	      session.removeAttribute("SessionUserName");
	      session.removeAttribute("SessionUserPhone");
	      return "main";
	   }
	   
	   // 마이페이지- 뷰
	   @RequestMapping(value = "/myPage.do")
	   public String myPageView(UserVO userVO, Model model, HttpSession session, HttpServletRequest request)
	         throws Exception {
	      String userId = "";
	      session = request.getSession();
	      userId = (String) session.getAttribute("SessionUserID");
	      model.addAttribute("user", userService.selectUser(userId)); 
	      return "user/myPage";
	   }
	   
	   
	   // 마이페이지 비밀번호 폼
	   @RequestMapping(value = "/pw.do", method = RequestMethod.GET)
	   public String pwView(UserVO userVO) {
	      return "user/updatePw";
	   }
	   
	   //마이페이지 비밀번호 수정
	   @RequestMapping(value = "/userPw.do", method = RequestMethod.POST)
	   public String updatePw(UserVO userVO, HttpSession session) {
		   userVO.getUserPw();
		   userService.updatePass(userVO);
		   session.removeAttribute("SessionUserID"); 
		   return "user/myPage";
		   
	   }
	   
	   // 마이페이지 전화번호 폼
	   @RequestMapping(value = "/phone.do", method = RequestMethod.GET)
	   public String telView(UserVO userVO) {
	      return "user/updatePhone";
	   }

	   // 마이페이지 전화번호 수정
	   @RequestMapping(value = "/userPhone.do", method = RequestMethod.POST)
	   public String modifyTel(UserVO userVO) {
	      userVO.getUserPhone();
	      userService.updatePhone(userVO);
	      return "user/myPage";
	   }
	   
	   //마이페이지 변경후 보여주는 뷰
	   @RequestMapping(value = "/myPage2.do")
	   public String myPage2View(UserVO userVO, Model model, HttpSession session, HttpServletRequest request)
	   throws Exception{
		   String userId="";
		   session = request.getSession();
		   userId = (String) session.getAttribute("SessionUserID");
		   model.addAttribute("user",userService.myPageView(userId));
		return "user/myPage2";
	   }
}
