package com.bestaone.meishi.front.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bestaone.meishi.core.UserContext;
import com.bestaone.meishi.service.TenantImplServiceImpl;

@Controller
@RequestMapping("/tenant/{tenantKey}")
public class TenantController {
	
	@Autowired
	private TenantImplServiceImpl tenantImplServiceImpl;
	
	@RequestMapping({"","/","index"})
	public String tenantIndex(@PathVariable String tenantKey, HttpSession httpSession, Model model){
//		model.addAttribute("currentUser", httpSession.getAttribute(Constant.CURRENT_USER));
		model.addAttribute("currentUser", UserContext.getCurrentUser());
//		TenantImpl tenantImpl = tenantImplServiceImpl.getByKey(tenantKey);
		return "/tenant/index";
	}
	
}
