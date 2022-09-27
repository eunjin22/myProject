package rain.web;

import java.sql.SQLException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import rain.service.UserService;
import rain.service.UserVO;

@Controller
public class UserController {

	@Resource(name = "userService")
	private UserService userService;
	
	
	//테스트
	@RequestMapping(value="/home.do")
	public @ResponseBody String home() {
		return "hello world!";
	}
	
	//메인페이지 뷰
	@RequestMapping(value="/main.do")
	public String main() {
		return "main";
	}
	
	//회원가입폼
	@RequestMapping(value="/signUp.do")
	public String signUpForm() {
		return "user/signUp";
	}
	
	//회원가입 진행
	@ResponseBody
	@RequestMapping(value = "/signUp.do", method = RequestMethod.POST)
	public String signUp(UserVO userVO,
			@RequestParam(name = "userPw") String userPw,
			@RequestParam(name = "userPw2") String userPw2) throws SQLException{		
		String data = "";
		
		if(userPw.contentEquals(userPw2)) {
			userService.insertUser(userVO);
			data = "ok";
		}
		return data;
		
	}
	
	// 아이디 중복체크하고 userIdResult에 저장
	// userIdResult=0이면 사용가능한 아이디여서 로그인으로 넘어가고
	// 1이면 회원가입으로
	@ResponseBody // responsebody없으면 안넘어감
	@RequestMapping(value = "/idCheck.do", method = RequestMethod.GET)
	public String idCheck(String userId) throws Exception {
	      String data = "";
	      int userIdResult = userService.idCheck(userId); // id중복체크해서 userIdResultd에 저장..
	      if (userIdResult == 0) { // 아이디가 없으면
	         data = "ok";
	      } else { // 아이디가 있으면
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
	      model.addAttribute("user", userService.selectUser(userId)); // userId를 user에저장해서 뿌림
	      return "user/myPage";
	   }
	   
	   //내 대여내역조회
//		@RequestMapping(value="/myrentList.do")
//		public String myrentList() {
//			return "user/myrentList";
//		}
	   
}
