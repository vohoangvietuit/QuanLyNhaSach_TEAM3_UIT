package com.nhom3.service;

import java.util.List;

import com.nhom3.entity.Category;

public interface CategoryService {
	public long createCategory(Category category);
    public Category updateCategory(Category category);
    public void deleteCategory(long id);
    public List<Category> getListCategory();
    public Category getCategory(long id);	
	public List<Category> getListCategory(String categoryName);
	public List<Category> getListCategoryByPages(int firstResult, int maxResult);
}
