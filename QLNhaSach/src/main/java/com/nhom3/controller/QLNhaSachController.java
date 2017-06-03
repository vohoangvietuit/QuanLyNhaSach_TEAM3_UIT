package com.nhom3.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.nhom3.entity.Account;
import com.nhom3.entity.Bill;
import com.nhom3.entity.BillDetail;
import com.nhom3.entity.Book;
import com.nhom3.entity.Cart;
import com.nhom3.entity.Category;
import com.nhom3.entity.Item;
import com.nhom3.entity.Statistic;
import com.nhom3.service.BookService;
import com.nhom3.service.CategoryService;
import com.nhom3.service.AccountService;
import com.nhom3.service.BillDetailService;
import com.nhom3.service.BillService;
import com.nhom3.tool.SendMail;

@Controller
public class QLNhaSachController {

	private static final Logger logger = Logger.getLogger(QLNhaSachController.class);

	public QLNhaSachController() {
		System.out.println("QLNhaSachController()");
	}

	@Autowired
	private CategoryService categoryService;
	@Autowired
	private BookService bookService;
	@Autowired
	private AccountService accountService;
	@Autowired
	private BillService billService;
	@Autowired
	private BillDetailService billDetailService;

	private Cart cartItems = new Cart();
	Account accountLogin = new Account();

	// Trang chu
	@RequestMapping(value = { "index", "/" })
	public ModelAndView index(ModelMap mm) {
		// thông tin đăng nhập
		mm.put("statusLogin", accountLogin);
		// Hien thi so item trong card len header
		mm.put("totalBook", cartItems.countItem());

		logger.info("Welcom to eshop");
		List<Book> listBook = bookService.getListBookNew(6);// lay 6 sach moi
															// nhat
		mm.put("listBook", listBook);

		List<Category> listCategory = categoryService.getListCategory();

		return new ModelAndView("index", "listCategory", listCategory);
	}

	// Account user
	// Trang Đăng nhập
	@RequestMapping("account")
	public ModelAndView account(ModelMap mm) {
		// thông tin đăng nhập
		mm.put("statusLogin", accountLogin);
		Account account = new Account();
		account.setAccountId(0);
		return new ModelAndView("account", "account", account);
	}

	// Đăng ký tk
	@RequestMapping("createAccount")
	public ModelAndView createAccount(@ModelAttribute Account account, ModelMap mm) {
		// thông tin đăng nhập
		mm.put("statusLogin", accountLogin);
		if (accountService.CheckAccount(account.getAccountName())) {
			accountService.createAccount(account);
			return new ModelAndView("account", "account", account);
		}
		return new ModelAndView("account", "warring", "Tên tài khoản đã tồn tại");

	}

	// Đăng nhập
	@RequestMapping("login")
	public ModelAndView login(@ModelAttribute Account account, ModelMap mm) {
		// thông tin đăng nhập
		mm.put("statusLogin", accountLogin);
		accountLogin = accountService.getAccount(account.getAccountName(), account.getPass());
		if (accountLogin.getAccountId() != 0) {
			if (accountLogin.getStatusAccount().equals("Banned"))
				return new ModelAndView("account", "error", "Tài khoản này đã bị khóa");
			else
				return new ModelAndView("redirect:index");
		}
		return new ModelAndView("account", "error", "Sai thông tin đăng nhập");
	}

	// Đăng xuất
	@RequestMapping("logout")
	public ModelAndView logout() {
		accountLogin.Logout();
		return new ModelAndView("redirect:index");
	}

	// xem thong tin tk
	@RequestMapping("accountInfomation")
	public ModelAndView accountInfomation(ModelMap mm) {
		// thông tin đăng nhập
		mm.put("statusLogin", accountLogin);
		return new ModelAndView("accountInfomation", "account", accountLogin);
	}

	// cập nhật tk
	@RequestMapping("updateAccount")
	public ModelAndView updateAccount(@ModelAttribute Account account, ModelMap mm) {
		// thông tin đăng nhập
		mm.put("statusLogin", accountLogin);
		List<Bill> listBill = accountService.getAccount(account.getAccountId()).getListBill();
		accountService.updateAccount(account);
		for (int i = 0; i < listBill.size(); i++) {
			listBill.get(i).setAccount(account);
			billService.updateBill(listBill.get(i));
		}
		return new ModelAndView("account", "account", account);
	}

	// Book user
	@RequestMapping("getListBookByCategory")
	public ModelAndView getListBookByCategory(@RequestParam long id, @RequestParam int indexPage, ModelMap mm) {
		// thông tin đăng nhập
		mm.put("statusLogin", accountLogin);
		// Hien thi so item trong card len header
		mm.put("totalBook", cartItems.countItem());
		List<Category> listCategory = categoryService.getListCategory();
		mm.put("listCategory", listCategory);

		// Phan trang: 12 book tren 1 trang.
		int firstResult = (indexPage - 1) * 12;
		int maxResult = 12;
		List<Book> listBook = bookService.getListBookByPages(id, firstResult, maxResult);
		int count = bookService.getListBookByCategory(id).size();
		List<Integer> listPages = new ArrayList<>();
		for (int i = 0; i <= count / 13; i++)
			listPages.add(i + 1);
		mm.put("listPages", listPages);
		mm.put("categoryId", id);
		mm.put("indexPage", indexPage);
		return new ModelAndView("book", "listBook", listBook);
	}

	// Chi tiet sach
	@RequestMapping("detailsBook")
	public ModelAndView detailBook(@RequestParam long id, ModelMap mm) {
		// thông tin đăng nhập
		mm.put("statusLogin", accountLogin);
		// Hien thi so item trong card len header
		mm.put("totalBook", cartItems.countItem());

		List<Category> listCategory = categoryService.getListCategory();
		mm.put("listCategory", listCategory);
		Book book = bookService.getBook(id);
		Category category = book.getCategory();
		mm.put("category", category);
		return new ModelAndView("details", "book", book);
	}

	// Tìm kiếm sách
	@RequestMapping("userSearchBook")
	public ModelAndView userSearchBook(@RequestParam String searchName, ModelMap mm) {
		// thông tin đăng nhập
		mm.put("statusLogin", accountLogin);
		// Hien thi so item trong card len header
		mm.put("totalBook", cartItems.countItem());
		List<Category> listCategory = categoryService.getListCategory();
		mm.put("listCategory", listCategory);

		List<Book> listBook = bookService.getListBook(searchName);
		List<Integer> listPages = new ArrayList<>();
		mm.put("listPages", listPages);
		mm.put("indexPage", 1);
		return new ModelAndView("book", "listBook", listBook);
	}

	// Gio han user
	// chuyen den trang cart
	@RequestMapping("getListOnCart")
	public ModelAndView getListOnCart(ModelMap mm) {
		// thông tin đăng nhập
		mm.put("statusLogin", accountLogin);
		if (accountLogin.getAccountId() == 0) {
			Account account = new Account();
			mm.put("error", "Bạn cần phải đăng nhập để mua hàng");
			return new ModelAndView("account", "account", account);
		}
		// put thông tin tài khoản mua hàng
		mm.put("user", accountLogin);
		// put thông tin tổng tiền
		mm.put("totalMoney", cartItems.total());
		// Hien thi so item trong card len header
		mm.put("totalBook", cartItems.countItem());
		List<Item> listItem = cartItems.getListItem();
		return new ModelAndView("cart", "listItem", listItem);
	}

	// them san pham vao gio hang
	@RequestMapping("addToCart")
	public ModelAndView addToCart(@RequestParam long bookId, @RequestParam int quantity, ModelMap mm) {
		Book book = bookService.getBook(bookId);
		Item item = new Item(book, quantity);
		cartItems.insertToCart(book.getBookId(), item);
		// Hien thi so item trong card len header
		mm.put("totalBook", cartItems.countItem());

		// Sau khi them item vao cart, tra ve index
		return new ModelAndView("redirect:index");
	}

	// go item trong gio hang
	@RequestMapping("removeToCart")
	public ModelAndView removeToCart(@RequestParam long bookId) {
		cartItems.removeToCart(bookId);
		return new ModelAndView("redirect:getListOnCart");
	}

	// Thanh toán giỏ hàng. Bill & Bill Detail
	@RequestMapping("checkOutCart")
	public ModelAndView checkOutCart(@RequestParam String address, @RequestParam String payment) {
		Bill bill = new Bill();
		BillDetail billDetail = new BillDetail();
		bill.setAddress(address);
		bill.setDate(new Timestamp(new Date().getTime()));
		bill.setPayStatus("UpPaid");
		bill.setPayment(payment);
		bill.setTotal(cartItems.total());
		bill.setAccount(accountLogin);
		billService.createBill(bill);

		bill = billService.getNewBill();
		List<Item> listItem = cartItems.getListItem();
		for (int i = 0; i < listItem.size(); i++) {
			billDetail.setBill(bill);
			billDetail.setBook(listItem.get(i).getBook());
			billDetail.setPrice(listItem.get(i).getTotalMoney());
			billDetail.setQuantity(listItem.get(i).getQuantity());
			billDetailService.createBillDetail(billDetail);
		}
		cartItems.clear();

		SendMail.sendMail(accountLogin.getEmail(), "Hoa don mua hang tai nha sach j2ee", bill.toString());
		return new ModelAndView("redirect:index");
	}

	// ADMIN, trang chu
	@RequestMapping(value = { "adminIndex" })
	public ModelAndView adminIndex() {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		return new ModelAndView("adminIndex");
	}

	// Danh muc, admin
	@RequestMapping("adminManagerCategory")
	public ModelAndView adminManagerCategory(@RequestParam int indexPage, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		int firstResult = (indexPage - 1) * 10;
		int maxResult = 10;
		List<Category> listCategory = categoryService.getListCategoryByPages(firstResult, maxResult);
		int count = categoryService.getListCategory().size();
		List<Integer> listPages = new ArrayList<>();
		for (int i = 0; i <= count / 11; i++)
			listPages.add(i + 1);
		mm.put("listPages", listPages);
		mm.put("indexPage", indexPage);
		return new ModelAndView("adminManagerCategory", "listCategory", listCategory);
	}

	@RequestMapping("adminAddCategory")
	public ModelAndView adminAddCategory(@ModelAttribute Category category) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		return new ModelAndView("adminCategoryForm", "category", category);
	}

	@RequestMapping("adminEditCategory")
	public ModelAndView adminEditCategory(@RequestParam long categoryId, @ModelAttribute Category category) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		category = categoryService.getCategory(categoryId);
		return new ModelAndView("adminCategoryForm", "category", category);
	}

	@RequestMapping("adminSaveCategory")
	public ModelAndView saveCategory(@ModelAttribute Category category) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		if (category.getCategoryId() == 0) {
			categoryService.createCategory(category);
		} else {
			List<Book> listBook = categoryService.getCategory(category.getCategoryId()).getListBook();
			categoryService.updateCategory(category);
			for (int i = 0; i < listBook.size(); i++) {
				listBook.get(i).setCategory(category);
				bookService.updateBook(listBook.get(i));
			}
		}
		return new ModelAndView("redirect:adminManagerCategory", "indexPage", 1);
	}

	@RequestMapping("adminDeleteCategory")
	public ModelAndView deleteCategory(@RequestParam long categoryId) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		Category category = categoryService.getCategory(categoryId);
		if (category.getStatusCategory().equals("Active"))
			category.setStatusCategory("Deactive");
		else
			category.setStatusCategory("Active");
		List<Book> listBook = category.getListBook();
		categoryService.updateCategory(category);
		for (int i = 0; i < listBook.size(); i++) {
			listBook.get(i).setCategory(category);
			bookService.updateBook(listBook.get(i));
		}
		return new ModelAndView("redirect:adminManagerCategory", "indexPage", 1);
	}

	@RequestMapping("searchCategory")
	public ModelAndView searchCategory(@RequestParam String searchName, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		List<Category> listCategory = categoryService.getListCategory(searchName);
		List<Integer> listPages = new ArrayList<>();
		mm.put("listPages", listPages);
		mm.put("indexPage", 1);
		return new ModelAndView("adminManagerCategory", "listCategory", listCategory);
	}

	// Sach, admin
	@RequestMapping("adminManagerBook")
	public ModelAndView adminManagerBook(@RequestParam int indexPage, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		int firstResult = (indexPage - 1) * 10;
		int maxResult = 10;
		List<Book> listBook = bookService.getListBookByPages(firstResult, maxResult);
		for (int i = 0; i < listBook.size(); i++) {
			listBook.get(i).setCategory(categoryService.getCategory(listBook.get(i).getCategory().getCategoryId()));
		}
		int count = bookService.getListBook().size();
		List<Integer> listPages = new ArrayList<>();
		for (int i = 0; i <= count / 11; i++)
			listPages.add(i + 1);

		mm.put("listPages", listPages);
		mm.put("indexPage", indexPage);
		return new ModelAndView("adminManagerBook", "listBook", listBook);
	}

	@RequestMapping("adminAddBook")
	public ModelAndView adminAddBook(ModelMap mm, Book book) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		List<Category> listCategory = categoryService.getListCategory();
		mm.put("listCategory", listCategory);
		return new ModelAndView("adminBookForm", "book", book);
	}

	@RequestMapping("adminEditBook")
	public ModelAndView adminEditBook(@RequestParam long bookId, @ModelAttribute Book book, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		List<Category> listCategory = categoryService.getListCategory();
		mm.put("listCategory", listCategory);

		book = bookService.getBook(bookId);
		return new ModelAndView("adminBookForm", "book", book);
	}

	@RequestMapping("adminSaveBook")
	public ModelAndView saveBook(@ModelAttribute Book book, @RequestParam long categoryId,
			@RequestParam(value = "fileUpload", required = false) MultipartFile fileUpload) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		Category category = categoryService.getCategory(categoryId);
		book.setCategory(category);
		String fileImage = loadImage(fileUpload);

		if (book.getBookId() == 0) {
			{
				book.setImage(fileImage);
				bookService.createBook(book);
			}
		} else {
			if (fileImage.equals(""))
				fileImage = bookService.getBook(book.getBookId()).getImage();
			book.setImage(fileImage);

			List<BillDetail> listBillDetail = bookService.getBook(book.getBookId()).getListBillDetail();
			bookService.updateBook(book);
			for (int i = 0; i < listBillDetail.size(); i++) {
				listBillDetail.get(i).setBook(book);
				billDetailService.updateBillDetail(listBillDetail.get(i));
			}
		}
		return new ModelAndView("redirect:adminManagerBook", "indexPage", 1);
	}

	@RequestMapping("adminDeleteBook")
	public ModelAndView deleteBook(@RequestParam long bookId) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		Book book = bookService.getBook(bookId);
		if (book.getStatusBook().equals("Active"))
			book.setStatusBook("Deactive");
		else
			book.setStatusBook("Active");
		List<BillDetail> listBillDetail = book.getListBillDetail();
		bookService.updateBook(book);
		for (int i = 0; i < listBillDetail.size(); i++) {
			listBillDetail.get(i).setBook(book);
			billDetailService.updateBillDetail(listBillDetail.get(i));
		}
		return new ModelAndView("redirect:adminManagerBook", "indexPage", 1);
	}

	@RequestMapping("searchBook")
	public ModelAndView searchBook(@RequestParam String searchName, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		List<Book> listBook = bookService.getListBook(searchName);
		List<Integer> listPages = new ArrayList<>();
		mm.put("listPages", listPages);
		mm.put("indexPage", 1);
		return new ModelAndView("adminManagerBook", "listBook", listBook);
	}

	// Hóa đơn, admin
	// Hóa đơn chưa thanh toán
	@RequestMapping("adminManagerBill")
	public ModelAndView adminManagerBill(@RequestParam int indexPage, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		int firstResult = (indexPage - 1) * 10;
		int maxResult = 10;
		List<Bill> listBill = billService.getListBillByPages(firstResult, maxResult, "UpPaid");
		for (int i = 0; i < listBill.size(); i++) {
			listBill.get(i).setAccount(accountService.getAccount(listBill.get(i).getAccount().getAccountId()));
		}
		int count = billService.getListBillByPayStatus("UpPaid").size();
		List<Integer> listPages = new ArrayList<>();
		for (int i = 0; i <= count / 11; i++)
			listPages.add(i + 1);

		mm.put("listPages", listPages);
		mm.put("indexPage", indexPage);
		return new ModelAndView("adminManagerBill", "listBill", listBill);
	}

	// Hóa đơn đã thanh toán
	@RequestMapping("adminManagerPaidBill")
	public ModelAndView adminManagerPaidBill(@RequestParam int indexPage, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		int firstResult = (indexPage - 1) * 10;
		int maxResult = 10;
		List<Bill> listBill = billService.getListBillByPages(firstResult, maxResult, "Paid");
		for (int i = 0; i < listBill.size(); i++) {
			listBill.get(i).setAccount(accountService.getAccount(listBill.get(i).getAccount().getAccountId()));
		}
		int count = billService.getListBillByPayStatus("Paid").size();
		List<Integer> listPages = new ArrayList<>();
		for (int i = 0; i <= count / 11; i++)
			listPages.add(i + 1);

		mm.put("listPages", listPages);
		mm.put("indexPage", indexPage);
		return new ModelAndView("adminManagerPaidBill", "listBill", listBill);
	}

	// Lưu hóa đơn
	@RequestMapping("adminSaveBill")
	public ModelAndView adminSaveBill(@RequestParam long billId) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		Bill bill = billService.getBill(billId);
		bill.setPayStatus("Paid");
		List<BillDetail> listBillDetail = bill.getListBillDetail();
		billService.updateBill(bill);
		for (int i = 0; i < listBillDetail.size(); i++) {
			listBillDetail.get(i).setBill(bill);
			billDetailService.updateBillDetail(listBillDetail.get(i));
		}
		return new ModelAndView("redirect:adminManagerBill", "indexPage", 1);
	}

	// Xóa hóa đơn
	@RequestMapping("adminDeleteBill")
	public ModelAndView deleteBill(@RequestParam long billId) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		Bill bill = billService.getBill(billId);
		List<BillDetail> listBillDetail = bill.getListBillDetail();
		for (int i = 0; i < listBillDetail.size(); i++)
			billDetailService.deleteBillDetail(listBillDetail.get(i).getBillDetailId());
		billService.deleteBill(billId);
		return new ModelAndView("redirect:adminManagerBill", "indexPage", 1);
	}

	@RequestMapping("adminManagerBillDetail")
	public ModelAndView adminManagerBillDetail(@RequestParam long billId, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		Bill bill = billService.getBill(billId);
		mm.put("bi", bill);
		List<BillDetail> listBillDetail = bill.getListBillDetail();
		Account account = bill.getAccount();
		mm.put("ac", account);
		return new ModelAndView("adminManagerBillDetail", "listBillDetail", listBillDetail);
	}

	@RequestMapping("searchBill")
	public ModelAndView searchBill(@RequestParam String searchName, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		List<Bill> listBill = billService.getListBill(searchName);
		for (int i = 0; i < listBill.size(); i++) {
			listBill.get(i).setAccount(accountService.getAccount(listBill.get(i).getAccount().getAccountId()));
		}
		List<Integer> listPages = new ArrayList<>();
		mm.put("listPages", listPages);
		mm.put("indexPage", 1);
		return new ModelAndView("adminManagerBill", "listBill", listBill);
	}

	// Tài khoản, admin
	@RequestMapping("adminManagerUserAccount")
	public ModelAndView adminManagerUserAccount(@RequestParam int indexPage, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		int firstResult = (indexPage - 1) * 10;
		int maxResult = 10;
		List<Account> listAccount = accountService.getListAccountByPages(firstResult, maxResult, "User");
		int count = accountService.getListAccountByPages(0, accountService.getListAccount().size(), "User").size();
		List<Integer> listPages = new ArrayList<>();
		for (int i = 0; i <= count / 11; i++)
			listPages.add(i + 1);
		mm.put("listPages", listPages);
		mm.put("indexPage", indexPage);
		return new ModelAndView("adminManagerUserAccount", "listAccount", listAccount);
	}

	@RequestMapping("searchUserAccount")
	public ModelAndView searchUserAccount(@RequestParam String searchName, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		List<Account> listAccount = accountService.getListAccount(searchName);
		List<Integer> listPages = new ArrayList<>();
		mm.put("listPages", listPages);
		mm.put("indexPage", 1);
		return new ModelAndView("adminManagerUserAccount", "listAccount", listAccount);
	}

	@RequestMapping("adminManagerAdminAccount")
	public ModelAndView adminManagerAdminAccount(@RequestParam int indexPage, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		int firstResult = (indexPage - 1) * 10;
		int maxResult = 10;
		List<Account> listAccount = accountService.getListAccountByPages(firstResult, maxResult, "Admin");
		int count = accountService.getListAccountByPages(0, accountService.getListAccount().size(), "Admin").size();
		List<Integer> listPages = new ArrayList<>();
		for (int i = 0; i <= count / 11; i++)
			listPages.add(i + 1);
		mm.put("listPages", listPages);
		mm.put("indexPage", indexPage);
		return new ModelAndView("adminManagerAdminAccount", "listAccount", listAccount);
	}

	@RequestMapping("adminAddAccount")
	public ModelAndView adminAddAccount(@ModelAttribute Account account) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		return new ModelAndView("adminAcount", "account", account);
	}

	@RequestMapping("adminEditAccount")
	public ModelAndView adminEditAccount(@ModelAttribute Account account) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		account = accountLogin;
		return new ModelAndView("adminAcount", "account", account);
	}

	@RequestMapping("adminSaveAccount")
	public ModelAndView saveCategory(@ModelAttribute Account account, ModelMap mm) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		if (account.getAccountId() == 0) {
			if (accountService.CheckAccount(account.getAccountName())) {
				accountService.createAccount(account);
				return new ModelAndView("redirect:adminManagerAdminAccount", "indexPage", 1);
			}
			mm.put("warring", "Tên tài khoản đã tồn tại");
			return new ModelAndView("adminAcount", "account", account);
		} else {
			accountService.updateAccount(account);
		}
		return new ModelAndView("redirect:adminManagerAdminAccount", "indexPage", 1);
	}

	@RequestMapping("adminLockAccount")
	public ModelAndView adminLockAccount(@RequestParam long accountId) {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		Account account = accountService.getAccount(accountId);
		if (account.getStatusAccount().equals("Active"))
			account.setStatusAccount("Banned");
		else
			account.setStatusAccount("Active");
		accountService.updateAccount(account);
		if (account.getRole().equals("Admin"))
			return new ModelAndView("redirect:adminManagerAdminAccount", "indexPage", 1);
		return new ModelAndView("redirect:adminManagerUserAccount", "indexPage", 1);
	}

	// Thống kê
	// Số lượng sách theo danh mục
	@RequestMapping("adminStatisticBook")
	public ModelAndView adminStatisticBook() {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		List<Statistic> listStatisticBook = new ArrayList<>();
		List<Category> listCategory = categoryService.getListCategory();
		Category category = new Category();

		for (int i = 0; i < listCategory.size(); i++) {
			category = listCategory.get(i);
			Statistic statisticBook = new Statistic();
			statisticBook.setStatisticName(category.getCategoryName());
			statisticBook.setStatisticValue(category.getListBook().size());
			listStatisticBook.add(statisticBook);
		}
		return new ModelAndView("adminStatisticBook", "listStatisticBook", listStatisticBook);
	}

	// Top 10 khách hàng tìm năng
	@RequestMapping("adminStatisticBill")
	public ModelAndView adminStatisticBill() {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		List<Statistic> listStatisticBill = billService.getListStatisticBill();

		for (int i = 0; i < listStatisticBill.size(); i++) {
			Account account = accountService.getAccount(listStatisticBill.get(i).getStatisticId());
			listStatisticBill.get(i).setStatisticName(account.getAccountName());
		}
		return new ModelAndView("adminStatisticBill", "listStatisticBill", listStatisticBill);
	}

	// Top 10 khách hàng tìm năng
	@RequestMapping("adminStatisticBillDetail")
	public ModelAndView adminStatisticBillDetail() {
		if (!CheckAdminLogin())
			return new ModelAndView("redirect:openAdminLogin");

		List<Statistic> listStatisticBillDetail = billDetailService.getListStaticBillDetail();

		for (int i = 0; i < listStatisticBillDetail.size(); i++) {
			Book book = bookService.getBook(listStatisticBillDetail.get(i).getStatisticId());
			listStatisticBillDetail.get(i).setStatisticName(book.getBookName());
		}
		return new ModelAndView("adminStatisticBillDetail", "listStatisticBillDetail", listStatisticBillDetail);
	}

	@RequestMapping("openAdminLogin")
	public ModelAndView openAdminLogin() {
		return new ModelAndView("adminLogin");
	}

	@RequestMapping("adminLogin")
	public ModelAndView adminLogin(ModelMap mm, @RequestParam String accountName, @RequestParam String pass) {
		accountLogin = accountService.getAccount(accountName, pass);
		if (accountLogin.getAccountId() != 0) {
			if (accountLogin.getStatusAccount().equals("Banned")) {
				mm.put("error", "Tài khoản này đã bị khóa");
				return new ModelAndView("adminLogin");
			} else {
				if (accountLogin.getRole().equals("Admin"))
					return new ModelAndView("redirect:adminIndex");
			}

		}
		mm.put("error", "Sai tài khoản hoặc mật khẩu");
		return new ModelAndView("adminLogin");
	}

	//Trang lien he
    @RequestMapping("contact")
    public ModelAndView contact() {
        return new ModelAndView("contact");
    } 
    
  //Trang lien he
    @RequestMapping("sendContact")
    public ModelAndView sendContact(@RequestParam String name, @RequestParam String email, @RequestParam String subject, @RequestParam String message) {
    	SendMail.sendMail("trantanngoc.it@gmail.com", "Gop y kien tu "+ name + " email: " + email,message);
    	return new ModelAndView("redirect:index");
    }
    
    //error page
    @RequestMapping("error4")
    public ModelAndView error4() {
        return new ModelAndView("error4");
    } 

	// Phương thức kiểm tra đăng nhập
	private boolean CheckAdminLogin() {
		if (accountLogin.getAccountId() == 0)
			return false;
		else if (accountLogin.getRole().equals("Admin"))
			return true;
		return false;
	}

	// Phương thức load ảnh
	private String loadImage(MultipartFile fileUpload) {
		String path = "Workspace/QLNhaSach/src/main/webapp/resources/images/upload/";
		String pathImage = path + fileUpload.getOriginalFilename();
		if (fileUpload != null) {
			try {
				FileUtils.forceMkdir(new File(path));
				File upload = new File(pathImage);
				fileUpload.transferTo(upload);
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
		return fileUpload.getOriginalFilename();
	}

}
