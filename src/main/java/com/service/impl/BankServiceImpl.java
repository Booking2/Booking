package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.entity.Bank;
import com.mapper.BankMapper;
import com.service.BankService;

@Service("bankService")
public class BankServiceImpl implements BankService {
     
	@Autowired
    private BankMapper bankMapper;
	
	@Override
	public List<Bank> getBankList() {
		// TODO Auto-generated method stub
		return bankMapper.getBankList();
	}

}
