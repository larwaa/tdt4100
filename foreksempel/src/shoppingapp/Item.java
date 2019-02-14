package shoppingapp;

public class Item {
	
	private String name;
	private int price;
	private int quantity;

	public Item(String name, int price) {
		if (price <= 0) {
			throw new IllegalArgumentException("Negative price for " + name);
		}
		this.name = name;
		this.price = price;
		this.quantity = 1;
	}
	
	public int getPrice() {
		return price;
	}
	
	public String getName() {
		return name;
	}
	
	public int getQuanity() {
		return quantity;
	}
	
	public void setQuantity(int qty) {
		if (qty < 0) {
			throw new IllegalArgumentException("Negative quantity for " + this.name);
		}
		this.quantity = qty;
	}
	
	public int getTotalPrice() {
		return price * quantity;
	}
	
	@Override
	public String toString() {
		return "" + this.quantity + ": " + this.name + " " + this.price;
	}

}
