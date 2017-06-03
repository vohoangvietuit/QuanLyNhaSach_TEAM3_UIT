package com.nhom3.service;

import java.util.List;

import com.nhom3.entity.Book;

public interface BookService {
	public long createBook(Book book);
    public Book updateBook(Book book);
    public void deleteBook(long id);
    public List<Book> getListBook();
    public Book getBook(long id);	
	public List<Book> getListBook(String bookName);
	public List<Book> getListBookByCategory(long id);
	public List<Book> getListBookNew(int maxRes);
	public List<Book> getListBookByPages(long categoryId, int firstResult, int maxResult);
	public List<Book> getListBookByPages(int firstResult, int maxResult);
}
