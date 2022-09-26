package tp.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;
import tp.service.BoardDAO;
import tp.service.BoardSearchVO;
import tp.service.BoardService;
import tp.service.BoardVO;
import tp.service.UserVO;
import tp.service.impl.BoardDAOMyBatis;

@Controller
@RequiredArgsConstructor
public class BoardController {
   
   @Resource(name="boardService")
   private BoardService boardService;
   
   
   
   @RequestMapping(value = "/insertform.do",method=RequestMethod.GET)
   public String form(BoardVO boardVO) throws Exception{
      return "board/form";
   }
   @RequestMapping(value = "/boardSuccess.do",method = RequestMethod.GET)
   public String insertBoard(BoardVO boardVO,UserVO uservo,HttpSession session,HttpServletRequest request) throws Exception{
      String userId = "";
      
      session = request.getSession();
      userId = (String)session.getAttribute("SessionUserID");

      boardVO.setUserId(userId);
      boardService.insertBoard(boardVO);
      boardService.reset1();
      boardService.reset2();
      
      
      return "board/list";
   }
   @RequestMapping(value = "/list.do")
   public String selectBoardList(BoardVO boardVO,Model model,HttpSession session, HttpServletRequest request
         ,@RequestParam(required = false,defaultValue = "1")int page
         ,@RequestParam(required = false,defaultValue = "1")int range
         ,@RequestParam(required = false,defaultValue = "title")String searchType
         ,@RequestParam(required = false)String keyword
         ,@ModelAttribute("search")BoardSearchVO search) throws Exception{
      
      String userId = "";
      session = request.getSession();
      userId = (String) session.getAttribute("SessionUserID");
      boardVO.setUserId(userId);
      //검색기능
      model.addAttribute("search", search);
      search.setSearchType(searchType);
      search.setKeyword(keyword);
      
      int listCnt = boardService.selectBoardTotal(search);
      search.pageInfo(page, range, listCnt);
      model.addAttribute("pagination", search);
      model.addAttribute("list", boardService.selectBoardList(search));
      
      return "board/list";
   }
   
   @RequestMapping(value = "/selectBoard.do")
   public String selectBoard(BoardVO boardVO,Model model) throws Exception{
      
      boardVO = boardService.selectBoard(boardVO);
      model.addAttribute("board", boardVO);

      return "board/selectform";      
   }
   
   @ResponseBody
   @RequestMapping(value = "/updateBoard.do")
   public String updateBoard(BoardVO boardVO,HttpSession session, HttpServletRequest request) throws Exception{
      String userId = "";
      String data="";
      session = request.getSession();
      userId = (String) session.getAttribute("SessionUserID");
      
      session = request.getSession();
      boardVO.getBoardType();
      boardVO.getTitle();
      boardVO.getContent();
      
      if(userId.equals(boardVO.getUserId())|| userId.equals("ADMIN") || userId.equals("ADMIN1") || userId.equals("ADMIN2")) {
         boardService.updateBoard(boardVO);
         
         data = "success";
      }else {
         data = "fail";
      }
      return data;
   }
   
   @ResponseBody
   @RequestMapping(value = "/deleteBoard.do")
   public String deleteBoard(BoardVO boardVO,UserVO userVO, HttpSession session,HttpServletRequest request) throws Exception{
      String userId="";
      String data="";
      session = request.getSession();
      userId = (String) session.getAttribute("SessionUserID");
      
      if(userId.equals(boardVO.getUserId()) || userId.equals("ADMIN") || userId.equals("ADMIN1") || userId.equals("ADMIN2")) {
         boardService.deleteBoard(boardVO);
         boardService.reset1();
         boardService.reset2();
         data = "success";
      }else {
         data = "fail";
      }
      return data;
   }
}