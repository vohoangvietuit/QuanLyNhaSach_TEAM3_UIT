package com.nhom3.service;

import java.util.List;

import com.nhom3.entity.Bill;
import com.nhom3.entity.Statistic;

public interface BillService {
	public long createBill(Bill bill);
    public Bill updateBill(Bill bill);
    public void deleteBill(long id);
    public List<Bill> getListBill();
    public Bill getBill(long id);	
    public Bill getNewBill();
	public List<Bill> getListBill(String address);
	public List<Bill> getListBillByPages(int firstResult, int maxResult, String payStatus);
	public List<Statistic> getListStatisticBill();
	public List<Bill> getListBillByPayStatus(String payStatus);
}
