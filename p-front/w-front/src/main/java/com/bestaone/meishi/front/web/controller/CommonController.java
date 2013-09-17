package com.bestaone.meishi.front.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bestaone.meishi.core.UserContext;
import com.bestaone.meishi.core.orm.mybatis.Page;
import com.bestaone.meishi.core.page.ViewData;
import com.bestaone.meishi.core.page.ViewDataStatus;
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
	
	@ResponseBody
	@RequestMapping(value="/loginFailure")
	public ViewData loginFailure(Model model){
		String msg = "ok";
		Object result = null;
		return new ViewData(ViewDataStatus.SUCCESS, msg, result);
	}
	
	@ResponseBody
	@RequestMapping(value="/loginSuccess")
	public ViewData loginSuccess(Model model){
		String msg = "ok";
		Object result = "{id:\"123\"}";
		return new ViewData(ViewDataStatus.SUCCESS, msg, result);
	}
	
	/**
	 * 登录校验
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/home")
	public String home(Model model){
		Object o = UserContext.getCurrentUser();
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
