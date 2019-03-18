package of10;

import java.util.ArrayList;
import java.util.List;

public class Item {
	
	private String name;
	private int price;
	private List<ItemListener> listeners = new ArrayList<>();
	
	public void addListener(ItemListener listener) {
		listeners.add(listener);
	}
	
	public void removeListener(ItemListener listener) {
		listeners.remove(listener);
	}
	
	public Item(String name) {
		this.name = name;
	}
	
	public String toString() {
		return name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.firePriceChanged(this.price, price);
		this.price = price;
		
	}
	
	public void firePriceChanged(int oldPrice, int newPrice) {
		for (ItemListener listener: listeners) {
			listener.itemPriceChanged(this, oldPrice, newPrice);
		}
		//Med lambda: listeners.forEach(listener -> listener.itemPriceChanged(this, oldPrice, newPrice));
	}
	
	

}
