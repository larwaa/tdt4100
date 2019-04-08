package patterns.observable;

import java.util.HashMap;
import java.util.Map;
import java.lang.Math;

public class SmartStock extends Stock{
	private Map<StockListener, Double[]> stockListenerInterval = new HashMap<>();
	private Map<StockListener, Double> stockListenerDifference = new HashMap<>();
	private Double oldPrice;

	public SmartStock(String ticker, double price) {
		super(ticker, price);
		this.oldPrice = price;
	}
	
	public void addStockListener(StockListener stockListener, double min, double max) {
		stockListenerInterval.put(stockListener, new Double[] {min, max});
	}
	
	public void removeStockListner(StockListener stockListener) {
		stockListenerInterval.remove(stockListener);
	}
	
	public void addStockListener(StockListener stockListener, double difference) {
		stockListenerDifference.put(stockListener, difference);
	}
	
	public void removeStockListener(StockListener stockListener) {
		stockListenerDifference.remove(stockListener);
	}
	
	public void setPrice(double price) {
		super.checkDouble(price);
		
		if (stockListenerInterval != null) {
			for (StockListener stockListener : stockListenerInterval.keySet()) {
				Double[] stockListenerLimits = stockListenerInterval.get(stockListener);
				if (stockListenerLimits[0] > price || stockListenerLimits[1] < price) {
					stockListener.stockPriceChanged(this, super.getPrice(), price);
				}
			}
		}
		
		if (stockListenerDifference != null) {
			for (StockListener stockListener : stockListenerDifference.keySet()) {
				Double difference = stockListenerDifference.get(stockListener);
				if (Math.abs(this.oldPrice - price) > difference) {
					stockListener.stockPriceChanged(this, this.oldPrice, price);
					this.oldPrice = price;
				}
			}
		}
		
		super.setPrice(price);
	}
	
	public static void main(String[] args) {
		SmartStock s1 = new SmartStock("APPL", 200);
		SmartStock s2 = new SmartStock("GOOG", 50);
		StockIndex sl1 = new StockIndex("Lars Børs", s1, s2);
		s1.addStockListener(sl1, 100, 300);
		s2.addStockListener(sl1, 30, 500);
		
		s1.setPrice(250);
		s1.setPrice(500);
		System.out.println(sl1.getIndex());
	}
}
