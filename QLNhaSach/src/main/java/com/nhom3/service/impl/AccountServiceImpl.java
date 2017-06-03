package com.nhom3.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nhom3.dao.AccountDAO;
import com.nhom3.entity.Account;
import com.nhom3.service.AccountService;

@Service
@Transactional
public class AccountServiceImpl implements AccountService {

	public AccountServiceImpl() {
		System.out.println("AccountServiceImpl()");
	}

	@Autowired
	private AccountDAO accountDAO;

	@Override
	public long createAccount(Account account) {
		return accountDAO.createAccount(account);
	}

	@Override
	public Account updateAccount(Account account) {
		return accountDAO.updateAccount(account);
	}

	@Override
	public void deleteAccount(long id) {
		accountDAO.deleteAccount(id);
	}

	@Override
	public List<Account> getListAccount() {
		return accountDAO.getListAccount();
	}

	@Override
	public Account getAccount(String accountName, String pass) {
		return accountDAO.getAccount(accountName, pass);
	}

	@Override
	public Account getAccount(long id) {
		return accountDAO.getAccount(id);
	}

	@Override
	public List<Account> getListAccount(String Name) {
		return accountDAO.getListAccount(Name);
	}

	@Override
	public List<Account> getListAccountByPages(int firstResult, int maxResult, String role) {
		return accountDAO.getListAccountByPages(firstResult,maxResult, role);
	}
	
	@Override
	public boolean CheckAccount(String accountName) {
		return accountDAO.CheckAccount(accountName);
	}
}
