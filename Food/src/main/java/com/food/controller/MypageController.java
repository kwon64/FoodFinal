package com.food.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {

	
	@RequestMapping("mypage.do")
	public String page() {
		System.out.println("여기로");
		return "redirect:mypage.do";
	}
}
