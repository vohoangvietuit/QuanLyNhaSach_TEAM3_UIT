package com.nhom3.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nhom3.dao.BillDetailDAO;
import com.nhom3.entity.BillDetail;
import com.nhom3.entity.Statistic;
import com.nhom3.service.BillDetailService;

@Service
@Transactional
public class BillDetailServiceImpl implements BillDetailService{

	public BillDetailServiceImpl() {
		System.out.println("BillDetailServiceImpl()");
	}

	@Autowired
	private BillDetailDAO billDetailDAO;

	@Override
	public long createBillDetail(BillDetail billDetail)
	{
		return billDetailDAO.createBillDetail(billDetail);
	}

	@Override
	public BillDetail updateBillDetail(BillDetail billDetail){
		return billDetailDAO.updateBillDetail(billDetail);
	}

	@Override
	public void deleteBillDetail(long id){
		billDetailDAO.deleteBillDetail(id);
	}

	@Override
	public List<BillDetail> getListBillDetail(){
		return billDetailDAO.getListBillDetail();
	}

	@Override
	public BillDetail getBillDetail(long id){
		return billDetailDAO.getBillDetail(id);
	}
	
	@Override
	public List<Statistic> getListStaticBillDetail(){
		return billDetailDAO.getListStaticBillDetail();
	}

}
