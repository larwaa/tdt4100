package shoppingapp;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Shopping {

	private User user;
	private List<Item> availableItems;
	private Cart cart;

	public Shopping() {
		this.user = new User("Javagutten", 1000.0);
		this.cart = new Cart();
		this.availableItems = loadItems();
		loadState();
	}
	
	public String getUserName() {
		return this.user.getName();
	}
	
	public double getUserBalance() {
		return this.user.getBalance();
	}
	
	public void withdrawUserBalance(double amount) {
		this.user.withdraw(amount);
	}
	
	public void depositUserBalance(double amount) {
		this.user.deposit(amount);
	}
	
	public double getCartTotal() {
		return this.cart.getTotal();
	}
	
	public List<Item> getAvailableItems() {
		return availableItems;
	}
	
	public List<Item> getCart() {
		return this.cart.getCart();
	}
	
	public void addToCart(Item item) {
		this.cart.addToCart(item);
	}
	
	public double removeFromCart(Item item) {
		return this.cart.removeFromCart(item);
	}
	
	public List<Item> loadItems() {
		try {
			Scanner in = new Scanner(new FileReader("src/shoppingapp/items.txt"));
			List<Item> items = new ArrayList<Item>();
			while (in.hasNext()) {
				String line = in.next();
				String[] parts = line.split(",");
				Item item = new Item(parts[0], Double.valueOf(parts[1]));
				items.add(item);
			}
			in.close();
			return items;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return new ArrayList<Item>();
		}
	}
	
	public void saveState() {
		PrintWriter writer;
		try {
			writer = new PrintWriter("src/shoppingapp/state.txt", "UTF-8");
			writer.println(String.valueOf(getUserBalance()));
			for (Item item : getCart()) {
				writer.println(item.getName() + "," + String.valueOf(item.getPrice()) + "," + item.getQuanity());
			}
			writer.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	
	public void loadState() {
		try {
			Scanner in = new Scanner(new FileReader("src/shoppingapp/state.txt"));
			double balance = Double.valueOf(in.next());
			user.setBalance(balance);
			while (in.hasNext()) {
				String line = in.next();
				String[] parts = line.split(",");
				Item item = new Item(parts[0], Double.valueOf(parts[1]));
				item.setQuantity(Integer.valueOf(parts[2]));
				addToCart(item);
			}
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
}
