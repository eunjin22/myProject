package rain.web;

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

import rain.service.BoardService;
import rain.service.BoardVO;
import rain.service.UserVO;

@Controller
public class BoardController {

	@Resource(name = "boardService")
	private BoardService boardService;

	// 게시글 등록 폼
	@RequestMapping(value = "/form.do", method = RequestMethod.GET)
	public String form(BoardVO boardVO, HttpSession session, HttpServletRequest request) throws Exception {

		String userId = "";
		session = request.getSession();
		
		userId = (String) session.getAttribute("SessionUserID");
		if(userId != null) {
			return "board/form";
		}else {
			return "sessionCheck";
		}
		
	}

	// 게시글 등록
	@ResponseBody
	@RequestMapping(value = "/insert.do", method = RequestMethod.GET)
	public String insert(@RequestParam(name = "title") String title, @RequestParam(name = "content") String content,
			BoardVO boardVO, Integer boardNo, UserVO userVO, HttpSession session, HttpServletRequest request)
			throws Exception {

		String data = "";

		String userId = "";
		session = request.getSession();

		userId = (String) session.getAttribute("SessionUserID");
		boardVO.setUserId(userId);

		boardService.insertBoard(boardVO);

		data = "ok";

		return data;
	}

	// 게시글 조회
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public String list(BoardVO boardVO, Model model) throws Exception {
		
		int total = boardService.selectBoardTotal(boardVO); //총게시글 건수
		int totalPage = (int) Math.ceil((double) total / 10); // Math.ceil: 소수점 올림
		int viewPage = boardVO.getViewPage();
		int startIndex = (viewPage - 1) * 10;
		int endIndex = 10;
		
		boardVO.setStartIndex(startIndex);
		boardVO.setEndIndex(endIndex);
		
		model.addAttribute("total", total);
		model.addAttribute("viewPage", viewPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("startIndex", startIndex);
		model.addAttribute("endIndex", endIndex);
		model.addAttribute("boardList", boardService.selectBoardList(boardVO));
		
		return "board/list";

	}
	
	//특정게시글 조회
	@RequestMapping(value = "/viewForm.do")
	public String viewForm(BoardVO boardVO, Model model, int boardNo) {
		model.addAttribute("board", boardService.selectBoardByNo(boardNo));
		return "board/viewForm";
	}
	
	//내게시글 수정
	@ResponseBody
	@RequestMapping(value = "/update.do", method = RequestMethod.GET)
	public String update(String title, String content, int boardNo,
			BoardVO boardVO) throws Exception {
		
		
		String data = "";
		
		boardVO.setBoardNo(boardNo);
		boardVO.setTitle(title);
		boardVO.setContent(content);
		boardService.updateMyBoard(boardVO);
		
		data = "ok";
		
		return data;
	}

	//내 게시글 삭제
	@ResponseBody
	@RequestMapping(value = "/delete.do", method = RequestMethod.GET)
	public String drop(BoardVO boardVO , int boardNo) throws Exception{
		String data = "";
		
		boardVO.setBoardNo(boardNo);
		boardService.deleteMyBoard(boardVO);
		
		data = "ok";
		
		return data;
	}
	
	//마이페이지에서 내 게시글 조회
		@RequestMapping(value = "/myList.do", method = RequestMethod.GET)
		public String myList(BoardVO boardVO, Model model, HttpSession session, HttpServletRequest request) throws Exception {
			
			String userId = "";
			session = request.getSession();
			
			userId = (String) session.getAttribute("SessionUserID");
			boardVO.setUserId(userId);
			
			int total = boardService.selectBoardTotal(boardVO); //총게시글 건수
			int totalPage = (int) Math.ceil((double) total / 10); // Math.ceil: 소수점 올림
			int viewPage = boardVO.getViewPage();
			int startIndex = (viewPage - 1) * 10;
			int endIndex = 10;
			
			boardVO.setStartIndex(startIndex);
			boardVO.setEndIndex(endIndex);
			
			model.addAttribute("total", total);
			model.addAttribute("viewPage", viewPage);
			model.addAttribute("totalPage", totalPage);
			model.addAttribute("startIndex", startIndex);
			model.addAttribute("endIndex", endIndex);
			
			List<BoardVO> list = boardService.selectMyBoard(boardVO);
			model.addAttribute("myBoardList", boardService.selectMyBoard(boardVO));
			
			return "board/myList";
		}

}
