package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.Bank;
import com.service.BankService;


@Controller
public class BankController {
    
	@Autowired
	private BankService bankService;
	
	@RequestMapping("/getlist")
	public String getlist(Model model) {
		System.out.println("ok");
		List<Bank> bankList = bankService.getBankList();
		model.addAttribute("bankList", bankList);
		return "BK_MiddleTop";
	}
}
