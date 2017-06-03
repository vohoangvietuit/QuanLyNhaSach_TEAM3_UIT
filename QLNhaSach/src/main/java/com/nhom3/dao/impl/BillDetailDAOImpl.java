package com.nhom3.dao.impl;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nhom3.dao.BillDetailDAO;
import com.nhom3.entity.BillDetail;
import com.nhom3.entity.Statistic;
import com.nhom3.util.HibernateUtil;

@Repository
public class BillDetailDAOImpl implements BillDetailDAO{
	public BillDetailDAOImpl() {
		System.out.println("BillDetailDAOImpl");
	}

	@Autowired
    private HibernateUtil hibernateUtil;
	
	@Override
	public long createBillDetail(BillDetail billDetail) {
		return (Long) hibernateUtil.create(billDetail);
	}

	@Override
	public BillDetail updateBillDetail(BillDetail billDetail) {
		return hibernateUtil.update(billDetail);
	}

	@Override
	public void deleteBillDetail(long id) {
		BillDetail billDetail = new BillDetail();
    	billDetail.setBillDetailId(id);
        hibernateUtil.delete(billDetail);
	}

	@Override
	public List<BillDetail> getListBillDetail() {
		return hibernateUtil.fetchAll(BillDetail.class);
	}

	@Override
	public BillDetail getBillDetail(long id) {
		return hibernateUtil.fetchById(id, BillDetail.class);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Statistic> getListStaticBillDetail() {
		String query = "SELECT b.bookId, SUM(b.quantity) FROM BillDetails b group by b.bookId order by b.bookId DESC";
		List<Object[]> listBillDetailObject = hibernateUtil.fetchAll(query,10);
		List<Statistic> listStatisticBillDetail = new ArrayList<Statistic>();
		for (Object[] billDetailObject : listBillDetailObject) {
			Statistic statisticBillDetail = new Statistic();
			
			long bookId = ((BigInteger) billDetailObject[0]).longValue();
			double quantity = (double) billDetailObject[1];
			
			statisticBillDetail.setStatisticId(bookId);
			statisticBillDetail.setStatisticValue(quantity);
			listStatisticBillDetail.add(statisticBillDetail);
		}
		System.out.println(listStatisticBillDetail);
		return listStatisticBillDetail;
	}
}
