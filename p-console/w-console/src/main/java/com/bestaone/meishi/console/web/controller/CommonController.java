package com.bestaone.meishi.console.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CommonController {
	
	/**
	 * 首页
	 * @param httpSession
	 * @param model
	 * @return
	 */
	@RequestMapping({"","/","index"})
	public String index(HttpSession httpSession, Model model){
		return "index";
	}
	
	@RequestMapping(value="home")
	public String home(HttpSession httpSession, Model model){
		return "home";
	}

	/**
	 * 登录
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/login")
	public String login(Model model){
		return "login";
	}
	
}
