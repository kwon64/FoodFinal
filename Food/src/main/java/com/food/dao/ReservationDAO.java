package com.food.dao;

import java.util.List;

import com.food.domain.PagingVO;
import com.food.domain.ReservationVO;

public interface ReservationDAO {

	public void insertReservation(ReservationVO vo);

	public List<ReservationVO> selectReservation(ReservationVO vo);

	public ReservationVO reservationDetail(ReservationVO vo);

	public int countReserv(PagingVO vo);

	public List<ReservationVO> selectBoard(PagingVO vo);

}
