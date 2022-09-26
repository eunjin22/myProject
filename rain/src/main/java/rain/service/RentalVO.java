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
	
	public RentalVO(String userId, String userName, String userPhone, String rentalPlace, String returnPlace,
			Date rentalDate) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.userPhone = userPhone;
		this.rentalPlace = rentalPlace;
		this.returnPlace = returnPlace;
		this.rentalDate = rentalDate;
	}
	
	
}
