package rain.service;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BoardVO {

	private int boardNo;
	private String userId;
	private String title;
	private String content;
	private Date createDate;
	
	//페이징
	private int viewPage = 1;
	private int startIndex = 1;
	private int endIndex = 10;
	
	public BoardVO(String userId, String title, String content, Date createDate, int viewPage, int startIndex,
			int endIndex) {
		super();
		this.userId = userId;
		this.title = title;
		this.content = content;
		this.createDate = createDate;
		this.viewPage = viewPage;
		this.startIndex = startIndex;
		this.endIndex = endIndex;
	}
	

	
}
