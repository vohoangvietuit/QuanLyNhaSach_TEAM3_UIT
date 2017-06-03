package com.nhom3.dao.impl;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nhom3.dao.CategoryDAO;
import com.nhom3.entity.Category;
import com.nhom3.util.HibernateUtil;

@Repository
public class CategoryDAOImpl implements CategoryDAO {

	public CategoryDAOImpl() {
		System.out.println("CategoryDAOImpl");
	}

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public long createCategory(Category category) {
		return (Long) hibernateUtil.create(category);
	}

	@Override
	public Category updateCategory(Category category) {
		return hibernateUtil.update(category);
	}

	@Override
	public void deleteCategory(long id) {
		Category category = new Category();
		category.setCategoryId(id);
		hibernateUtil.delete(category);
	}

	@Override
	public List<Category> getListCategory() {
		return hibernateUtil.fetchAll(Category.class);
	}

	@Override
	public Category getCategory(long id) {
		return hibernateUtil.fetchById(id, Category.class);
	}

	private Category convertObject(Object[] object) {
		Category category = new Category();

		long id = ((BigInteger) object[0]).longValue();
		String name = (String) object[1];
		String statusCategory = (String) object[2];

		category.setCategoryId(id);
		category.setCategoryName(name);
		category.setStatusCategory(statusCategory);
		
		return category;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Category> getListCategory(String categoryName) {
		String query = "SELECT c.* FROM Categorys c WHERE c.categoryName like '%" + categoryName + "%' order by c.categoryId DESC";
		List<Object[]> listCategoryObject = hibernateUtil.fetchAll(query);
		List<Category> listCategory = new ArrayList<Category>();
		for (Object[] categoryObject : listCategoryObject) {
			listCategory.add(convertObject(categoryObject));
		}
		System.out.println(listCategory);
		return listCategory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Category> getListCategoryByPages(int firstResult, int maxResult) {
		String query = "SELECT c.* FROM Categorys c order by statusCategory ASC, c.categoryId DESC";
		List<Object[]> listCategoryObject = hibernateUtil.fetchAll(query, firstResult, maxResult);
		List<Category> listCategory = new ArrayList<Category>();
		for (Object[] categoryObject : listCategoryObject) {
			listCategory.add(convertObject(categoryObject));
		}
		System.out.println(listCategory);
		return listCategory;
	}
}
