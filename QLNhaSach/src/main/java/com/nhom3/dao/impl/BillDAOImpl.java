package com.nhom3.dao.impl;

import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nhom3.dao.BillDAO;
import com.nhom3.entity.Account;
import com.nhom3.entity.Bill;
import com.nhom3.entity.Statistic;
import com.nhom3.util.HibernateUtil;

@Repository
public class BillDAOImpl implements BillDAO {

	public BillDAOImpl() {
		System.out.println("BillDAOImpl");
	}

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public long createBill(Bill bill) {
		return (Long) hibernateUtil.create(bill);
	}

	@Override
	public Bill updateBill(Bill bill) {
		return hibernateUtil.update(bill);
	}

	@Override
	public void deleteBill(long id) {
		Bill bill = new Bill();
		bill.setBillId(id);
		hibernateUtil.delete(bill);
	}

	@Override
	public List<Bill> getListBill() {
		return hibernateUtil.fetchAll(Bill.class);
	}

	@Override
	public Bill getBill(long id) {
		return hibernateUtil.fetchById(id, Bill.class);
	}

	private Bill convertObject(Object[] billObject) {
		Account account = new Account();
		Bill bill = new Bill(account);
		long billId = ((BigInteger) billObject[0]).longValue();
		String address = (String) billObject[1];
		Timestamp date = (Timestamp) billObject[2];
		String payStatus = (String) billObject[3];
		String payment = (String) billObject[4];
		double total = (double) billObject[5];
		long accountId = ((BigInteger) billObject[6]).longValue();

		bill.setBillId(billId);
		bill.setAddress(address);
		bill.setDate(date);
		bill.setPayStatus(payStatus);
		bill.setPayment(payment);
		bill.setTotal(total);
		bill.getAccount().setAccountId(accountId);
		return bill;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Bill getNewBill() {
		String query = "SELECT b.* FROM Bills b order by b.billId DESC";
		List<Object[]> listBillObject = hibernateUtil.fetchAll(query);
		List<Bill> listBill = new ArrayList<Bill>();
		for (Object[] billObject : listBillObject) {
			listBill.add(convertObject(billObject));
		}
		System.out.println(listBill);
		return listBill.get(0);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Bill> getListBill(String address) {
		String query = "SELECT b.* FROM Bills b WHERE b.address like '%" + address + "%'  order by b.billId DESC";
		List<Object[]> listBillObject = hibernateUtil.fetchAll(query);
		List<Bill> listBill = new ArrayList<Bill>();
		for (Object[] billObject : listBillObject) {
			listBill.add(convertObject(billObject));
		}
		System.out.println(listBill);
		return listBill;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Bill> getListBillByPages(int firstResult, int maxResult, String payStatus) {
		String query = "SELECT b.* FROM Bills b WHERE b.payStatus = '" + payStatus+"'  order by b.billId DESC";
		List<Object[]> listBillObject = hibernateUtil.fetchAll(query, firstResult, maxResult);
		List<Bill> listBill = new ArrayList<Bill>();
		for (Object[] billObject : listBillObject) {
			listBill.add(convertObject(billObject));
		}
		System.out.println(listBill);
		return listBill;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Statistic> getListStatisticBill(){
		String query = "SELECT b.accountId, SUM(b.total) FROM Bills b WHERE b.payStatus = 'Paid' group by b.accountId order by b.accountId DESC";
		List<Object[]> listBillObject = hibernateUtil.fetchAll(query,10);
		List<Statistic> listStatisticBill = new ArrayList<Statistic>();
		for (Object[] billObject : listBillObject) {
			Statistic statisticBill = new Statistic();
			
			long accountId = ((BigInteger) billObject[0]).longValue();
			double total = (double) billObject[1];
			
			statisticBill.setStatisticId(accountId);
			statisticBill.setStatisticValue(total);
			listStatisticBill.add(statisticBill);
		}
		System.out.println(listStatisticBill);
		return listStatisticBill;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Bill> getListBillByPayStatus(String payStatus) {
		String query = "SELECT b.* FROM Bills b WHERE b.payStatus = '" + payStatus+"'";
		List<Object[]> listBillObject = hibernateUtil.fetchAll(query);
		List<Bill> listBill = new ArrayList<Bill>();
		for (Object[] billObject : listBillObject) {
			listBill.add(convertObject(billObject));
		}
		System.out.println(listBill);
		return listBill;
	}

}
