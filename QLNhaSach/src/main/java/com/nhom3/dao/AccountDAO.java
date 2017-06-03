package com.nhom3.dao;

import java.util.List;

import com.nhom3.entity.Account;

public interface AccountDAO {

	public long createAccount(Account account);

	public Account updateAccount(Account account);

	public void deleteAccount(long id);

	public List<Account> getListAccount();

	public Account getAccount(String accountName, String pass);

	public Account getAccount(long id);

	public List<Account> getListAccount(String Name);

	public List<Account> getListAccountByPages(int firstResult, int maxResult, String role);
	
	public boolean CheckAccount(String accountName);
}
