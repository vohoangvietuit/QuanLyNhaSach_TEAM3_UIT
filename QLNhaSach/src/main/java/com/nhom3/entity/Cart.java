package com.nhom3.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Cart {

	private HashMap<Long, Item> cartItems;

	public Cart() {
		cartItems = new HashMap<>();
	}

	public Cart(HashMap<Long, Item> cartItems) {
		this.cartItems = cartItems;
	}

	public HashMap<Long, Item> getCartItems() {
		return cartItems;
	}

	public void setCartItems(HashMap<Long, Item> cartItems) {
		this.cartItems = cartItems;
	}

	public List<Item> getListItem() {
		List<Item> listItem = new ArrayList<Item>();
		Item item = new Item();

		for (Map.Entry<Long, Item> cart : cartItems.entrySet()) {
			item = cart.getValue();
			listItem.add(item);
		}
		return listItem;
	}

	// insert to cart
	public void insertToCart(Long key, Item item) {
		boolean check = cartItems.containsKey(key);
		if (check) {
			int quantity_old = cartItems.get(key).getQuantity();
			item.setQuantity(quantity_old + item.getQuantity());
			cartItems.put(key, item);
		} else {
			cartItems.put(key, item);
		}
	}

	// sub to cart
	public void subToCart(Long key, Item item) {
		boolean check = cartItems.containsKey(key);
		if (check) {
			int quantity_old = item.getQuantity();
			if (quantity_old <= 1)
				cartItems.remove(key);
			else {
				item.setQuantity(quantity_old - 1);
				cartItems.put(key, item);
			}
		}
	}

	// remove item
	public void removeToCart(Long book) {
		boolean check = cartItems.containsKey(book);
		if (check) {
			cartItems.remove(book);
		}
	}

	// count item
	public int countItem() {
		return cartItems.size();
	}

	// tinh tong tien
	public double total() {
		int total = 0;
		for (Map.Entry<Long, Item> cart : cartItems.entrySet()) {
			total += cart.getValue().getTotalMoney();
		}
		return total;
	}

	// xóa giỏ hàng
	public void clear() {
		cartItems.clear();
	}
}
