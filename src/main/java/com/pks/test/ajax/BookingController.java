package com.pks.test.ajax;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pks.test.ajax.bo.BookingBO;
import com.pks.test.ajax.model.Booking;

@Controller
@RequestMapping("/ajax/booking")
public class BookingController {

	@Autowired
	private BookingBO bookingBO;
	
	@GetMapping("/home")
	public String booking() {
		return "/ajax/booking/booking";
	}
	
	@GetMapping("/list")
	public String bookingList(Model model) {
		
		List<Booking> bookinglist = bookingBO.getBooking();
		
		model.addAttribute("bookinglist", bookinglist);
		
		return "/ajax/booking/list";
	}
}
