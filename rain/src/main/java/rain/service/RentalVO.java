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
	private Date rentalDate;
	private Date returnDate;
	
	//페이징
	private int viewPage = 1;
	private int startIndex = 1;
	private int endIndex = 10;
	
	public RentalVO(String userId, String userName, String userPhone, String rentalPlace, String returnPlace,
			Date rentalDate, Date returnDate) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPhone = userPhone;
		this.rentalPlace = rentalPlace;
		this.returnPlace = returnPlace;
		this.rentalDate = rentalDate;
		this.returnDate = returnDate;
	}
	
	
	
	
}
