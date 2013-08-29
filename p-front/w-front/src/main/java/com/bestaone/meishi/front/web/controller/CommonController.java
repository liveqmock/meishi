package com.bestaone.meishi.front.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bestaone.meishi.core.orm.mybatis.Page;
import com.bestaone.meishi.model.UserImpl;
import com.bestaone.meishi.service.UserImplService;


@Controller
public class CommonController {
	
	@Autowired
	private UserImplService userImplService;

	/**
	 * 登录
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/login")
	public String login(Model model){
		return "login";
	}
	
	/**
	 * 登录校验
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/home")
	public String loginValidation(Model model){
		Page<UserImpl> page = new Page<UserImpl>(1,10);
		userImplService.quaryAll(page);
		model.addAttribute("usersPage", page);
		return "home";
	}
	
	/**
	 * 注册
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/register")
	public String register(Model model){
		return "register";
	}
	
}
