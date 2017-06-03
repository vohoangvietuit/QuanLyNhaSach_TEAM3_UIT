package com.nhom3.dao.impl;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nhom3.dao.AccountDAO;
import com.nhom3.entity.Account;
import com.nhom3.util.HibernateUtil;

@Repository
public class AccountDAOImpl implements AccountDAO {

	public AccountDAOImpl() {
		System.out.println("AccountDAOImpl");
	}

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public long createAccount(Account account) {
		return (Long) hibernateUtil.create(account);
	}

	@Override
	public Account updateAccount(Account account) {
		return hibernateUtil.update(account);
	}

	@Override
	public void deleteAccount(long id) {
		Account account = new Account();
		account.setAccountId(id);
		hibernateUtil.delete(account);
	}

	@Override
	public List<Account> getListAccount() {
		return hibernateUtil.fetchAll(Account.class);
	}

	private Account convertObject(Object[] accountObject) {
		Account account = new Account();
		
		long accountId = ((BigInteger) accountObject[0]).longValue();
		String accountName = (String) accountObject[1];
		String email = (String) accountObject[2];
		String numPhone = (String) accountObject[3];
		String password = (String) accountObject[4];
		String role = (String) accountObject[5];
		String statusAccount = (String) accountObject[6];
		
		account.setAccountId(accountId);
		account.setAccountName(accountName);
		account.setEmail(email);
		account.setNumPhone(numPhone);
		account.setPass(password);
		account.setRole(role);
		account.setStatusAccount(statusAccount);		
		return account;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Account getAccount(String accountName, String pass) {
		String query = "SELECT a.* FROM Accounts a WHERE a.accountName = '" + accountName + "' AND a.pass = '" + pass
				+ "'";
		List<Object[]> listAccountObject = hibernateUtil.fetchAll(query);
		Account account = new Account();
		for (Object[] accountObject : listAccountObject) {
			account = convertObject(accountObject);
		}
		System.out.println(account);
		return account;
	}

	@Override
	public Account getAccount(long id) {
		return hibernateUtil.fetchById(id, Account.class);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Account> getListAccount(String Name) {
		//String query = "SELECT a.* FROM Accounts a WHERE a.accountName like '%" + Name + "%'";
		String query = "SELECT a.* FROM Accounts a WHERE a.role = 'User' AND a.accountName like '%" + Name + "%' order by a.accountId DESC";
		List<Object[]> listAccountObject = hibernateUtil.fetchAll(query);
		List<Account> listAccount = new ArrayList<Account>();
		for (Object[] accountObject : listAccountObject) {			
			listAccount.add(convertObject(accountObject));
		}
		System.out.println(listAccount);
		return listAccount;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Account> getListAccountByPages(int firstResult, int maxResult, String role) {
		String query = "SELECT a.* FROM Accounts a WHERE a.role = '" + role + "' order by a.accountId DESC";
		List<Object[]> listAccountObject = hibernateUtil.fetchAll(query, firstResult, maxResult);
		List<Account> listAccount = new ArrayList<Account>();
		for (Object[] accountObject : listAccountObject) {			
			listAccount.add(convertObject(accountObject));
		}
		System.out.println(listAccount);
		return listAccount;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean CheckAccount(String accountName)
	{
		String query = "SELECT a.* FROM Accounts a WHERE a.accountName = '" + accountName +"'";
		List<Object[]> listAccountObject = hibernateUtil.fetchAll(query);
		Account account = new Account();
		for (Object[] accountObject : listAccountObject) {
			account = convertObject(accountObject);
		}
		if(account.getAccountId() != 0)
			return false;
		return true;
	}
}
