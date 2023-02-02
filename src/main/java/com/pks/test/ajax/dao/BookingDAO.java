package com.pks.test.ajax.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.pks.test.ajax.model.Booking;

@Repository
public interface BookingDAO {

	
	public List<Booking> selectBooking();
	
	public int insertBooking(
			@Param("name") String name
			, @Param("date") String date
			, @Param("day") int day
			, @Param("headcount") int headcount
			, @Param("phoneNumber") String phoneNumber
			, @Param("state") String state);
	
	public int deleteBooking(@Param("id") int id);
	
	public Booking confirmBooking(
			@Param("name") String name
			, @Param("phoneNumber") String phoneNumber);
	
	
	
}
