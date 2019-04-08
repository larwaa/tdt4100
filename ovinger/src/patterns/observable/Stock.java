package patterns.observable;

import java.util.ArrayList;
import java.util.List;

public class Stock {
	
	private String ticker;
	private double price;
	private List<StockListener> stockListeners = new ArrayList<>();
	
	
	public Stock(String ticker, double price) {
		this.ticker = ticker;
		this.setPrice(price);
	}
	
	public void setPrice(double price) {
		this.checkDouble(price);
		
		for (StockListener stockListener : stockListeners) {
			stockListener.stockPriceChanged(this, this.price, price);
		}
		
		this.price = price;
	}
	
	public String getTicker() {
		return this.ticker;
	}
	
	public double getPrice() {
		return this.price;
	}
	
	public void addStockListener(StockListener stockListener) {
		stockListeners.add(stockListener);
	}
	
	public void removeStockListener(StockListener stockListener) {
		stockListeners.remove(stockListener);
	}
	
	protected void checkDouble(double d) {
		if (d <= 0) {
			throw new IllegalArgumentException("Må være større enn 0.");
		}
	}
	
	public static void main(String[] args) {
		Stock s1 = new Stock("Kul", 200);
		Stock s2 = new Stock("Eple", 400);
		StockListener sl1 = new StockIndex("Lars", s1, s2);
		s1.setPrice(700);
		
	}
}
