package com.bestaone.meishi.front.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bestaone.meishi.core.orm.mybatis.Page;
import com.bestaone.meishi.core.page.ViewData;
import com.bestaone.meishi.core.page.ViewDataStatus;
import com.bestaone.meishi.front.web.commom.Constant;
import com.bestaone.meishi.model.UserImpl;
import com.bestaone.meishi.service.UserImplService;


@Controller
public class CommonController {
	
	@Autowired
	private UserImplService userImplService;
	
	@RequestMapping(value="/")
	public String root(HttpSession httpSession, Model model){
		return index(httpSession,model);
	}
	
	@RequestMapping(value="/index")
	public String index(HttpSession httpSession, Model model){
		model.addAttribute("currentUser", httpSession.getAttribute(Constant.CURRENT_USER));
		return "index";
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
	
	@RequestMapping(value="/logout")
	public String logout(HttpSession httpSession, Model model){
		httpSession.removeAttribute(Constant.CURRENT_USER);
		return "redirect:/index";
	}
	
	@RequestMapping(value="/loginValidation")
	public String loginValidation(HttpServletRequest request, HttpServletResponse response, HttpSession httpSession, Model model){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserImpl user = userImplService.quaryByUsernameAndPassword(username, password);
		if(user!=null){
			httpSession.setAttribute(Constant.CURRENT_USER, user);
			return "redirect:/index";
		}else{
			return "redirect:/login?error=1";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="/ajaxLoginValidation")
	public ViewData ajaxLoginValidation(HttpServletRequest request, HttpServletResponse response, HttpSession httpSession, Model model){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserImpl user = userImplService.quaryByUsernameAndPassword(username, password);
		if(user!=null){
			httpSession.setAttribute(Constant.CURRENT_USER, user);
			return new ViewData(ViewDataStatus.SUCCESS, "success", user);
		}else{
			return null;
		}
	}

	/**
	 * 登录校验
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/home")
	public String home(Model model){
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
