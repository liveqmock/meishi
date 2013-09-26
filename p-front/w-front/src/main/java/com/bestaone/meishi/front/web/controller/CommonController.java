package com.bestaone.meishi.front.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bestaone.meishi.api.user.SecurityUser;
import com.bestaone.meishi.core.UserContext;
import com.bestaone.meishi.core.orm.mybatis.Page;
import com.bestaone.meishi.core.page.ViewData;
import com.bestaone.meishi.core.page.ViewDataStatus;
import com.bestaone.meishi.model.UserImpl;
import com.bestaone.meishi.service.TenantImplServiceImpl;
import com.bestaone.meishi.service.UserImplService;


@Controller
public class CommonController {
	
	@Autowired
	private TenantImplServiceImpl tenantImplServiceImpl;
	
	@Autowired
	private UserImplService userImplService;
	
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
	 * 注册第一步
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/register")
	public String register(Model model){
		return "register";
	}
	
	/**
	 * 注册第二步
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/register2")
	public String register2(HttpServletRequest request, HttpServletResponse response, Model model){
		return "register2";
	}
	
	/**
	 * 注销
	 * @param httpSession
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/logout")
	public String logout(HttpSession httpSession, Model model){
//		httpSession.removeAttribute(Constant.CURRENT_USER);
		return "redirect:/index";
	}

	@ResponseBody
	@RequestMapping(value="/ajaxLoginSuccess")
	public ViewData ajaxLoginSuccess(HttpServletRequest request, HttpServletResponse response, HttpSession httpSession, Model model){
		SecurityUser<?> user = UserContext.getCurrentUser();
		return new ViewData(ViewDataStatus.SUCCESS, "success", user);
	}
	
	@ResponseBody
	@RequestMapping(value="/ajaxLoginFailure")
	public ViewData ajaxLoginFailure(HttpServletRequest request, HttpServletResponse response, HttpSession httpSession, Model model){
		return new ViewData(ViewDataStatus.SUCCESS, "failure", null);
	}

	/**
	 * 登录home
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
	

	
}
