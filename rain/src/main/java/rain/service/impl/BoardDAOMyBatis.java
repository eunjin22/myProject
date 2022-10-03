package rain.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;
import rain.service.BoardDAO;
import rain.service.BoardVO;

@Repository("BoarddaoMybatis")
public class BoardDAOMyBatis extends EgovAbstractMapper implements BoardDAO {

	//게시글 등록
	@Override
	public void insertBoard(BoardVO boardVO) throws Exception {
		insert("insertBoard", boardVO);
		
	}

	//게시글 리스트조회
	@Override
	public List<BoardVO> selectBoardList(BoardVO boardVO) throws Exception {
		return selectList("selectBoardList", boardVO);
	}

	//게시글 수정
	@Override
	public void updateMyBoard(BoardVO boardVO) throws Exception {
		update("updateMyBoard", boardVO);
		
	}

	//게시글 삭제
	@Override
	public void deleteMyBoard(BoardVO boardVO) throws Exception {
		delete("deleteMyBoard", boardVO);
		
	}

	//게시글 정렬
	@Override
	public void autoIncrement(int boardNO) {
		selectOne("autoIncrement", boardNO);
		
	}
	//게시글 정렬
	@Override
	public void autoIncrement2(int boardNO) {
		selectOne("autoIncrement2", boardNO);
		
	}

	//특정게시글 조회
	@Override
	public BoardVO selectBoardByNo(int boardNO) {
		return selectOne("selectBoardByNo", boardNO);
	}

	//총 게시글 건수
	@Override
	public int selectBoardTotal(BoardVO boardVO) throws Exception {
		return selectOne("selectBoardTotal", boardVO);
	}

	//마이페이지- 내 게시글 조회
	@Override
	public List<BoardVO> selectMyBoard(BoardVO boardVO) throws Exception {
		return selectList("selectMyBoard", boardVO);
	}
	
	

}
