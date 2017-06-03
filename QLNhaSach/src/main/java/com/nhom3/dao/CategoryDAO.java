package com.nhom3.dao;

import java.util.List;

import com.nhom3.entity.Category;

public interface CategoryDAO {
	public long createCategory(Category category);

	public Category updateCategory(Category category);

	public void deleteCategory(long id);

	public List<Category> getListCategory();

	public Category getCategory(long id);

	public List<Category> getListCategory(String categoryName);

	public List<Category> getListCategoryByPages(int firstResult, int maxResult);
}
