package com.pks.test.ajax.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pks.test.ajax.model.Booking;

@Repository
public interface BookingDAO {

	
	public List<Booking> selectBooking();
	
}
