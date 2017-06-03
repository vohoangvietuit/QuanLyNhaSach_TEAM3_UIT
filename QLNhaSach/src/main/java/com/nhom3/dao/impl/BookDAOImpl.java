package com.nhom3.dao.impl;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nhom3.dao.BookDAO;
import com.nhom3.entity.Book;
import com.nhom3.entity.Category;
import com.nhom3.util.HibernateUtil;

@Repository
public class BookDAOImpl implements BookDAO {

	public BookDAOImpl() {
		System.out.println("BookDAOImpl");
	}

	@Autowired
	private HibernateUtil hibernateUtil;

	@Override
	public long createBook(Book book) {
		return (Long) hibernateUtil.create(book);
	}

	@Override
	public Book updateBook(Book book) {
		return hibernateUtil.update(book);
	}

	@Override
	public void deleteBook(long id) {
		Book book = new Book();
		book.setBookId(id);
		hibernateUtil.delete(book);
	}

	@Override
	public List<Book> getListBook() {
		return hibernateUtil.fetchAll(Book.class);
	}

	@Override
	public Book getBook(long id) {
		return hibernateUtil.fetchById(id, Book.class);
	}

	private Book convertObject(Object[] bookObject) {
		Category category = new Category();
		Book book = new Book(category);

		long bookId = ((BigInteger) bookObject[0]).longValue();
		String author = (String) bookObject[1];
		String bName = (String) bookObject[2];
		double buyPrice = (double) bookObject[3];
		String image = (String) bookObject[4];
		String producer = (String) bookObject[5];		
		double salePrice = (double) bookObject[6];
		String statusBook = (String) bookObject[7];
		int yearPublish = (int) bookObject[8];
		long categoryId = ((BigInteger) bookObject[9]).longValue();

		book.setBookId(bookId);
		book.setBookName(bName);
		book.getCategory().setCategoryId(categoryId);
		book.setImage(image);
		book.setAuthor(author);
		book.setProducer(producer);
		book.setYearPublish(yearPublish);
		book.setSalePrice(salePrice);
		book.setBuyPrice(buyPrice);
		book.setStatusBook(statusBook);
		return book;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> getListBook(String bookName) {
		String query = "SELECT b.* FROM Books b WHERE b.bookName like '%" + bookName + "%' order by b.bookId DESC";
		List<Object[]> listBookObject = hibernateUtil.fetchAll(query);
		List<Book> listBook = new ArrayList<Book>();
		for (Object[] bookObject : listBookObject) {
			listBook.add(convertObject(bookObject));
		}
		System.out.println(listBook);
		return listBook;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> getListBookByCategory(long id) {
		String query = "SELECT b.* FROM Books b WHERE b.categoryId = " + id + " order by b.bookId DESC";
		List<Object[]> listBookObject = hibernateUtil.fetchAll(query);
		List<Book> listBook = new ArrayList<Book>();
		for (Object[] bookObject : listBookObject) {
			listBook.add(convertObject(bookObject));
		}
		System.out.println(listBook);
		return listBook;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> getListBookNew(int maxRes) {
		String query = "SELECT b.* FROM Books b order by b.bookId DESC";
		List<Object[]> listBookObject = hibernateUtil.fetchAll(query, maxRes);
		List<Book> listBook = new ArrayList<Book>();
		for (Object[] bookObject : listBookObject) {
			listBook.add(convertObject(bookObject));
		}
		System.out.println(listBook);
		return listBook;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> getListBookByPages(long categoryId, int firstResult, int maxResult) {
		String query = "SELECT b.* FROM Books b WHERE b.categoryId = " + categoryId + " order by b.bookId DESC";
		List<Object[]> listBookObject = hibernateUtil.fetchAll(query, firstResult, maxResult);
		List<Book> listBook = new ArrayList<Book>();
		for (Object[] bookObject : listBookObject) {
			listBook.add(convertObject(bookObject));
		}
		System.out.println(listBook);
		return listBook;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> getListBookByPages(int firstResult, int maxResult) {
		String query = "SELECT b.* FROM Books b order by statusBook ASC, b.bookId DESC";
		List<Object[]> listBookObject = hibernateUtil.fetchAll(query, firstResult, maxResult);
		List<Book> listBook = new ArrayList<Book>();
		for (Object[] bookObject : listBookObject) {
			listBook.add(convertObject(bookObject));
		}
		System.out.println(listBook);
		return listBook;
	}

}
