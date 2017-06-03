package com.nhom3.service;

import java.util.List;

import com.nhom3.entity.BillDetail;
import com.nhom3.entity.Statistic;

public interface BillDetailService {
	public long createBillDetail(BillDetail billDetail);
    public BillDetail updateBillDetail(BillDetail billDetail);
    public void deleteBillDetail(long id);
    public List<BillDetail> getListBillDetail();
    public BillDetail getBillDetail(long id);	
    public List<Statistic> getListStaticBillDetail();
}
