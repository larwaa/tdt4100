package patterns.observable;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class StockIndex implements StockListener{
	
	private String name;
	private double index;
	private List<Stock> stocks = new ArrayList<>();
	
	public StockIndex(String name, Stock...stocks) {
		this.name = name;
		this.stocks.addAll(Arrays.asList(stocks));
		this.index = 0;
		
		for (Stock stock : stocks) {
			stock.addStockListener(this);
			index += stock.getPrice();
		}
	}
	
	public void addStock(Stock stock) {
		if (! stocks.contains(stock)) {
			stock.addStockListener(this);
			stocks.add(stock);
			index += stock.getPrice();
		}
	}
	
	public void removeStock(Stock stock) {
		if (stocks.contains(stock)) {
			stock.removeStockListener(this);
			stocks.remove(stock);
			index -= stock.getPrice();
		}
	}
	
	public double getIndex() {
		return index;
	}

	public void stockPriceChanged(Stock stock, double oldValue, double newValue) {
		if (stocks.contains(stock)) {
			index += (newValue - oldValue);
		}
	}
}
