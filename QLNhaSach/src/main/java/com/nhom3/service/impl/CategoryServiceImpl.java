package com.nhom3.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nhom3.service.CategoryService;
import com.nhom3.entity.Category;
import com.nhom3.dao.CategoryDAO;;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {

	public CategoryServiceImpl() {
		System.out.println("CategoryServiceImpl()");
	}

	@Autowired
	private CategoryDAO categoryDAO;

	@Override
	public long createCategory(Category category) {
		return categoryDAO.createCategory(category);
	}

	@Override
	public Category updateCategory(Category category) {
		return categoryDAO.updateCategory(category);
	}

	@Override
	public void deleteCategory(long id) {
		categoryDAO.deleteCategory(id);
	}

	@Override
	public List<Category> getListCategory() {
		return categoryDAO.getListCategory();
	}

	@Override
	public Category getCategory(long id) {
		return categoryDAO.getCategory(id);
	}

	@Override
	public List<Category> getListCategory(String categoryName) {
		return categoryDAO.getListCategory(categoryName);
	}

	@Override
	public List<Category> getListCategoryByPages(int firstResult, int maxResult) {
		return categoryDAO.getListCategoryByPages(firstResult, maxResult);
	}
}