package com.nhom3.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nhom3.dao.BillDAO;
import com.nhom3.entity.Bill;
import com.nhom3.entity.Statistic;
import com.nhom3.service.BillService;

@Service
@Transactional
public class BillServiceImpl implements BillService {

	public BillServiceImpl() {
		System.out.println("BillServiceImpl()");
	}

	@Autowired
	private BillDAO billDAO;

	@Override
	public long createBill(Bill bill) {
		return billDAO.createBill(bill);
	}

	@Override
	public Bill updateBill(Bill bill) {
		return billDAO.updateBill(bill);
	}

	@Override
	public void deleteBill(long id) {
		billDAO.deleteBill(id);
	}

	@Override
	public List<Bill> getListBill() {
		return billDAO.getListBill();
	}

	@Override
	public Bill getBill(long id) {
		return billDAO.getBill(id);
	}

	@Override
	public Bill getNewBill() {
		return billDAO.getNewBill();
	}

	@Override
	public List<Bill> getListBill(String address) {
		return billDAO.getListBill(address);
	}

	@Override
	public List<Bill> getListBillByPages(int firstResult, int maxResult, String payStatus) {
		return billDAO.getListBillByPages(firstResult, maxResult, payStatus);
	}

	@Override
	public List<Statistic> getListStatisticBill() {
		return billDAO.getListStatisticBill();
	}

	@Override
	public List<Bill> getListBillByPayStatus(String payStatus) {
		return billDAO.getListBillByPayStatus(payStatus);
	}
}
