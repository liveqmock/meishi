package com.bestaone.meishi.front.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bestaone.meishi.service.TenantImplServiceImpl;

@Controller
@RequestMapping("/console/{username}")
public class ConsoleController {
	
	@Autowired
	private TenantImplServiceImpl tenantImplServiceImpl;
	
	@RequestMapping({"","/","index"})
	public String console(@PathVariable String username, HttpSession httpSession, Model model){
		return "console/index";
	}
	
}
