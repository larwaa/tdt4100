package of7;

import java.util.ArrayList;
import java.util.Collection;

public class Item {	

	private String name;
	private int price, quantity;
	
	private Collection<ShoppingCart> carts = new ArrayList<>();
	
	public Item(String name, int price, int quantity) {
		this.name = name;
		this.price = price;
		this.quantity = quantity;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public int getQuantityOfItem() {
		int sum = 0;
		for (ShoppingCart cart : carts) {
			sum += cart.getItemQuantity(this);
		}
		return sum;
	}
	
	public void addShoppingCart(ShoppingCart shoppingCart) {
		if (! carts.contains(shoppingCart)) {
			carts.add(shoppingCart);
		}
		if (this.getQuantityOfItem() > this.quantity) {
			throw new IllegalArgumentException("Too many items, we can't sell more");
		}
		
	}
	
	
}
