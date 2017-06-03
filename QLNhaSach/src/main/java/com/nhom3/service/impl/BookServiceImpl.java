package com.nhom3.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nhom3.dao.BookDAO;
import com.nhom3.entity.Book;
import com.nhom3.service.BookService;

@Service
@Transactional
public class BookServiceImpl implements BookService {

	public BookServiceImpl() {
		System.out.println("BookServiceImpl()");
	}

	@Autowired
	private BookDAO bookDAO;

	@Override
	public long createBook(Book book) {
		return bookDAO.createBook(book);
	}

	@Override
	public Book updateBook(Book book) {
		return bookDAO.updateBook(book);
	}

	@Override
	public void deleteBook(long id) {
		bookDAO.deleteBook(id);
	}

	@Override
	public List<Book> getListBook() {
		return bookDAO.getListBook();
	}

	@Override
	public Book getBook(long id) {
		return bookDAO.getBook(id);
	}

	@Override
	public List<Book> getListBook(String bookName) {
		return bookDAO.getListBook(bookName);
	}

	@Override
	public List<Book> getListBookByCategory(long id) {
		return bookDAO.getListBookByCategory(id);
	}

	@Override
	public List<Book> getListBookNew(int maxRes) {
		return bookDAO.getListBookNew(maxRes);
	}

	@Override
	public List<Book> getListBookByPages(long categoryId, int firstResult, int maxResult) {
		return bookDAO.getListBookByPages(categoryId, firstResult, maxResult);
	}
	
	@Override
	public List<Book> getListBookByPages(int firstResult, int maxResult) {
		return bookDAO.getListBookByPages(firstResult, maxResult);
	}
}
