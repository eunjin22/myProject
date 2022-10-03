package rain.service;

import java.util.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class RentalVO {

	private int rentalNo;
	private String userId;
	private String userName;
	private String userPhone;
	private String rentalPlace;
	private String returnPlace;
	private int umbrellaCnt;
	private Date rentalDate;
	private Date returnDate;
	private String rentalState;
	
	//페이징
	private int viewPage = 1;
	private int startIndex = 1;
	private int endIndex = 10;
	
	//대여 인서트
	private int umbrellaTotalCount;
	
	public RentalVO(String userId, String userName, String userPhone, String rentalPlace, String returnPlace,
			int umbrellaCnt, Date rentalDate, Date returnDate, String rentalState, int viewPage, int startIndex,
			int endIndex, int umbrellaTotalCount) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPhone = userPhone;
		this.rentalPlace = rentalPlace;
		this.returnPlace = returnPlace;
		this.umbrellaCnt = umbrellaCnt;
		this.rentalDate = rentalDate;
		this.returnDate = returnDate;
		this.rentalState = rentalState;
		this.viewPage = viewPage;
		this.startIndex = startIndex;
		this.endIndex = endIndex;
		this.umbrellaTotalCount = umbrellaTotalCount;
	}

	
	
	
}
