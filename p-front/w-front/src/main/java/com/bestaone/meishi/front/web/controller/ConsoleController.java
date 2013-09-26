package com.bestaone.meishi.front.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bestaone.meishi.service.TenantImplServiceImpl;

@Controller
@RequestMapping("/console")
public class ConsoleController {
	
	@Autowired
	private TenantImplServiceImpl tenantImplServiceImpl;
	
	@RequestMapping({"","/","index"})
	public String console(HttpSession httpSession, Model model){
//		SecurityUser<?> user = UserContext.getCurrentUser();
		return "console/index";
	}
	
	@RequestMapping(value="edit_userinfo")
	public String editUserinfo(HttpSession httpSession, Model model){
		return "console/edit_userinfo";
	}
	
	@RequestMapping(value="edit_tenantinfo")
	public String editTenantinfo(HttpSession httpSession, Model model){
		return "console/edit_tenantinfo";
	}
	
}
