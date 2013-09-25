package com.bestaone.meishi.front.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bestaone.meishi.api.user.SecurityUser;
import com.bestaone.meishi.core.UserContext;
import com.bestaone.meishi.core.orm.mybatis.Page;
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
	 * 注册
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/register")
	public String register(Model model){
		return "register";
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
	
	/**
	 * 用户控制台
	 * @param httpSession
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/console")
	public String console(HttpSession httpSession, Model model){
//		UserImpl user = (UserImpl) httpSession.getAttribute(Constant.CURRENT_USER);
		SecurityUser<?> user = UserContext.getCurrentUser();
		if(user!=null){
			return "redirect:/console/" + user.getUsername();
		}
		return "404";
	}
	
//	/**
//	 * 登录验证
//	 * @param request
//	 * @param response
//	 * @param httpSession
//	 * @param model
//	 * @return
//	 */
//	@RequestMapping(value="/loginValidation")
//	public String loginValidation(HttpServletRequest request, HttpServletResponse response, HttpSession httpSession, Model model){
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		UserImpl user = userImplService.quaryByUsernameAndPassword(username, password);
//		if(user!=null){
//			httpSession.setAttribute(Constant.CURRENT_USER, user);
//			return "redirect:/index";
//		}else{
//			return "redirect:/login?error=1";
//		}
//	}
	
//	/**
//	 * ajax登录验证
//	 * @param request
//	 * @param response
//	 * @param httpSession
//	 * @param model
//	 * @return
//	 */
//	@ResponseBody
//	@RequestMapping(value="/ajaxLoginValidation")
//	public ViewData ajaxLoginValidation(HttpServletRequest request, HttpServletResponse response, HttpSession httpSession, Model model){
//		String username = request.getParameter("username");
//		String password = request.getParameter("password");
//		UserImpl user = userImplService.quaryByUsernameAndPassword(username, password);
//		if(user!=null){
//			httpSession.setAttribute(Constant.CURRENT_USER, user);
//			return new ViewData(ViewDataStatus.SUCCESS, "success", user);
//		}else{
//			return null;
//		}
//	}

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
