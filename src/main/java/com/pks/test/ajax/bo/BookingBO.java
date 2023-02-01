package com.pks.test.ajax.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pks.test.ajax.dao.BookingDAO;
import com.pks.test.ajax.model.Booking;

@Service
public class BookingBO {

	@Autowired
	private BookingDAO bookingDAO;
	
	public List<Booking> getBooking() {
		return bookingDAO.selectBooking();
	}
	
	public int addBooking(
			String name
			, String date
			, int day
			, int headcount
			, String phoneNumber
			) {
		return bookingDAO.insertBooking(name, date, day, headcount, phoneNumber, "대기중");
	}
	
	public int deleteBooking(int id) {
		 return bookingDAO.deleteBooking(id);
	}
	
	
	public Booking confirmBooking(String name, String phoneNubmer) {
		return bookingDAO.confirmBooking();
	}
}
