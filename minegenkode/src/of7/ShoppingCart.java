package of7;

import java.util.HashMap;
import java.util.Map;

public class ShoppingCart {
	
	private Map<Item, Integer> cart = new HashMap<>();
	
	
	public void addItemQuantity(Item item, int quantity) {
		if (! this.cart.containsKey(item)) {
			this.cart.put(item, quantity);
		}
		else {
			this.cart.put(item, quantity + this.getItemQuantity(item));
		}
		item.addShoppingCart(this);
	}
	
	public int getItemQuantity(Item item) {
		if (cart.containsKey(item)) {
			return this.cart.get(item);
		}
		return 0;
	}
	
	public int getCartCost() {
		int sum = 0;
		
		for (Item item : cart.keySet()) {
			sum += this.getItemCost(item);
		}
		return sum;
	}
	
	public int getItemCost(Item item) {
		return this.getItemQuantity(item) * item.getPrice();
	}
	
	@Override
	public String toString() {
		String s = "Denne handlekurven inneholder: \n";
		for (Item item : cart.keySet()) {
			s += this.getItemQuantity(item) + " av " + item.getName() + " til en pris av " + this.getItemCost(item) + "\n";
		}
		s += "Totalt blir dette " + this.getCartCost();
		return s;
	}
	
	
	public static void main(String[] args) {
		ShoppingCart c1 = new ShoppingCart();
		ShoppingCart c2 = new ShoppingCart();
		
		Item jakke = new Item("Allværsjakke", 999, 4);
		Item sko = new Item("Nike Free", 299, 8);
		Item kalkulator = new Item("FX9860GII", 1299, 1);
		Item skjorte = new Item("Rutete skjorte", 499, 5);
		Item samfundetkort = new Item("Samfundet medlemskap", 7000, 999999);
		
		c1.addItemQuantity(jakke, 2);;
		c1.addItemQuantity(kalkulator, 1);
		c1.addItemQuantity(samfundetkort, 1);
		
		c2.addItemQuantity(jakke, 2);
		c2.addItemQuantity(sko, 7);
		System.out.println(c1);
		System.out.println(c2);
	}
}
