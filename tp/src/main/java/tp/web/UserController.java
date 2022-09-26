package tp.web;

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

import tp.service.UserService;
import tp.service.UserVO;

@Controller
public class UserController {

   @Resource(name = "userService")
   private UserService userService;

   // 최상위경로
   @RequestMapping("/")
   public String home() {
      return "index";
   } 

   // 인덱스타고 들어오는 메인페이지뷰
   @RequestMapping(value = "/main.do")
   public String mainPage() {
      return "main";
   }

   // 회원가입 폼
   @RequestMapping(value = "/signUp.do", method = RequestMethod.GET)
   public String signUpFormView() {
      return "user/signUp";
   }

   // 회원가입 진행
   @ResponseBody
   @RequestMapping(value = "/signUp.do", method = RequestMethod.POST)
   public String signUpForm(UserVO userVo, 
		   @RequestParam(name = "userPw") String userPw,
		   @RequestParam(name = "userPw2") String userPw2) throws SQLException {
      String data = "";
      
      if(userPw.contentEquals(userPw2)) {    	  
    	  userService.insertUser(userVo);
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

   // 로그인폼
   @RequestMapping(value = "/login.do", method = RequestMethod.GET)
   public String loginFormView(UserVO userVO) {
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
         String userBirth = userService.selectUserBirth(userId);

         session.setAttribute("SessionUserID", userVO.getUserId());
         session.setAttribute("SessionUserPW", userVO.getUserPw());

         session.setAttribute("SessionUserName", userName);
         session.setAttribute("SessionUserPhone", userPhone);
         session.setAttribute("SessionUserBirth", userBirth);
         
         System.out.println("나이1=" + userBirth);
         
         data = "ok";
      }
      return data;
   }

   // 로그아웃
   @RequestMapping("/logout.do")
   public String logout(HttpSession session) {
      session.removeAttribute("SessionUserID");
      session.removeAttribute("SessionUserPW");
      session.removeAttribute("SessionUserBirth");
      return "main";
   }

   // 회원탈퇴 폼
   @RequestMapping(value = "/drop.do", method = RequestMethod.GET)
   public String dropFormView(UserVO userVO) {
      return "user/userDrop";
   }

   // 회원탈퇴-탈퇴시 메인화면으로
   @RequestMapping(value = "/dropdrop.do", method = RequestMethod.POST)
   public String dropForm(String userId, String userPw, UserVO userVO, HttpSession session) {
      userService.dropUser(userVO);
      session.removeAttribute("SessionUserID"); // session끊음
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
   
   @RequestMapping(value = "/myPage2.do")
   public String myPage2View(UserVO userVO, Model model, HttpSession session, HttpServletRequest request)
         throws Exception {
      String userId = "";
      session = request.getSession();
      userId = (String) session.getAttribute("SessionUserID");
      model.addAttribute("user", userService.selectUser(userId)); // userId를 user에저장해서 뿌림
      return "user/myPage2";
   }

   // ADMIN 회원목록조회
   @RequestMapping(value = "/userList.do", method = RequestMethod.GET)
   public String list(Model model, UserVO userVO) {
      model.addAttribute("userList", userService.selectUserList(userVO));
      return "user/userList";
   }

   // 마이페이지 이름 수정 폼
   @RequestMapping(value = "/name.do", method = RequestMethod.GET)
   public String nameView(UserVO userVO) {
      return "user/updateName";
   }

   // 마이페이지 이름 수정
   @RequestMapping(value = "/userName.do", method = RequestMethod.POST)
   public String modifyName(UserVO userVO, HttpSession session, HttpServletRequest request) {
      userVO.getUserName();
      userService.updateName(userVO);
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

   // 마이페이지 이메일 폼
   @RequestMapping(value = "/email.do", method = RequestMethod.GET)
   public String emailView(UserVO userVO) {
      return "user/updateEmail";
   }

   // 마이페이지 이메일 수정
   @RequestMapping(value = "/userEmail.do", method = RequestMethod.POST)
   public String modifyEmail(UserVO userVO) {
      userVO.getUserEmail();
      userService.updateEmail(userVO);
      return "user/myPage";
   }

   // 마이페이지 비밀번호 폼
   @RequestMapping(value = "/pw.do", method = RequestMethod.GET)
   public String pwView(UserVO userVO) {
      return "user/updatePw";
   }

   // 마이페이지 비밀번호 수정
   @RequestMapping(value = "/userPw.do", method = RequestMethod.POST)
   public String modifyPw(UserVO userVO, HttpSession session) {
      userVO.getUserPw();
      userService.updatePass(userVO);
      session.removeAttribute("SessionUserID"); // 세션끊음
      return "user/myPage";
   }
}