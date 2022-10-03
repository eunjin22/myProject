package rain.service;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface BoardService {
	
	//게시글 등록
	void insertBoard(BoardVO boardVO) throws Exception;
	
	//게시글 조회
	List<BoardVO> selectBoardList(BoardVO boardVO) throws Exception;
	
	//게시글 수정
	void updateMyBoard(BoardVO boardVO) throws Exception;
		
	//게시글 삭제
	void deleteMyBoard(BoardVO boardVO) throws Exception;

	//게시글 정렬
	void autoIncrement(int boardNO);
	void autoIncrement2(int boardNO);
	
	//특정게시글 조회
	public BoardVO selectBoardByNo(int boardNo);
	
	//총 게시글 건수
	int selectBoardTotal(BoardVO boardVO) throws Exception;
	
	//마이페이지-내게시글 조회
	List<BoardVO> selectMyBoard(BoardVO boardVO) throws Exception;
}
