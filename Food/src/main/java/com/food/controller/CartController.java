package com.food.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.food.domain.WishlistVO;
import com.food.service.CartService;

@Controller
public class CartController {

	@Autowired
	private CartService CartService;
	
	// 찜 하기 버튼 누르면 등록
	@RequestMapping("insertCart.do")
	public void insertCart(WishlistVO vo) {
		System.out.println("insertCart controller");
		System.out.println("가게명 :"+vo.getW_store_name());
		System.out.println("주소 :"+vo.getW_address());
		System.out.println("중분류 :"+vo.getW_midpart());
		System.out.println("m_id :"+vo.getM_id());
		CartService.insertCart(vo);	
	}
	
	// 찜 목록 보기
	@RequestMapping("selectCart.do")
	public ModelAndView selectCart(WishlistVO vo,@RequestParam("m_id") String m_id) {
		System.out.println("selectCart controller");
		System.out.println("m_id :"+m_id);
		vo.setM_id(m_id);
		List<WishlistVO> list = CartService.selectCart(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("index/cart");
		return mv;
	};
	
	// 찜 하기 버튼 누르면 등록
	@RequestMapping("deleteCart.do")
	public void deleteCart(WishlistVO vo) {
		System.out.println("deleteCart controller");
		System.out.println("가게명 :"+vo.getW_store_name());
		System.out.println("m_id :"+vo.getM_id());
		CartService.deleteCart(vo);	
	}
	
};