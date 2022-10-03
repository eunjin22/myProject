package rain.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import rain.service.BoardDAO;
import rain.service.BoardService;
import rain.service.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService{

	@Resource(name = "BoarddaoMybatis")
	private BoardDAO boardDAO;

	//게시글 등록
	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		boardDAO.insertBoard(boardVO);
	}

	//게시글 조회
	@Override
	public List<BoardVO> selectBoardList(BoardVO boardVO) throws Exception {
		return boardDAO.selectBoardList(boardVO);
	}

	//게시글 수정
	@Override
	public void updateMyBoard(BoardVO boardVO) throws Exception {
		boardDAO.updateMyBoard(boardVO);
		
	}

	//게시글 삭제
	@Override
	public void deleteMyBoard(BoardVO boardVO) throws Exception {
		boardDAO.deleteMyBoard(boardVO);
		
	}

	//게시글 정렬
	@Override
	public void autoIncrement(int boardNO) {
		boardDAO.autoIncrement(boardNO);
		
	}

	//게시글 정렬
	@Override
	public void autoIncrement2(int boardNO) {
		boardDAO.autoIncrement2(boardNO);
		
	}

	//특정게시글 조회
	@Override
	public BoardVO selectBoardByNo(int boardNO) {
		return boardDAO.selectBoardByNo(boardNO);
	}

	//총 게시글 건수
	@Override
	public int selectBoardTotal(BoardVO boardVO) throws Exception {
		return boardDAO.selectBoardTotal(boardVO);
	}

	//마이페이지-내게시글 조회
	@Override
	public List<BoardVO> selectMyBoard(BoardVO boardVO) throws Exception {
		return boardDAO.selectMyBoard(boardVO);
	}

}
