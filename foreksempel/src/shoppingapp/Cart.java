package shoppingapp;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	
	List<Item> cart = new ArrayList<>();
	
	public List<Item> getCart() {
		return cart;
	}
	
	public void addToCart(Item item) {
		if (contains(item)) {
			for (Item cartItem : cart) {
				if (cartItem.getName().equals(item.getName())) {
					var newQty = cartItem.getQuanity() + 1;
					cartItem.setQuantity(newQty);
				}
			}
		} else {
			cart.add(item);
		}
	}
	
	public boolean contains(Item item) {
		for (Item cartItem : cart) {
			if (item.getName().equals(cartItem.getName())) {
				return true;
			}
		}
		return false;
	}
	
	//Removes item from cart and returns the total value of the item(s)
	public double removeFromCart(Item item) {
		if (!contains(item)) {
			throw new IllegalArgumentException(item.getName() + " not in cart");
		} else {
			for (Item cartItem : cart) {
				if (cartItem.getName().equals(item.getName())) {
					var qty = cartItem.getQuanity();
					var price = cartItem.getPrice();
					cart.remove(cartItem);
					return qty*price;
				}
			}
			return 0.0;
		}
	}
	
	public double getTotal() {
		var tot = 0.0;
		for (Item cartItem : cart) {
			tot += cartItem.getPrice()*cartItem.getQuanity();
		}
		return tot;
	}

}
