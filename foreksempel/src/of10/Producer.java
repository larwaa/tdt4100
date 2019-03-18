package of10;

public class Producer implements ItemListener{
	
	
	public void itemPriceChanged(Item item, int oldPrice, int newPrice) {
		System.out.println("Hmm, hvordan skal jeg reagere på endringen til "+ item);
		
	}
	
	public static void main(String[] args) {
		Item bigjava = new Item("Big Java");
		bigjava.setPrice(999);
		
		Consumer ola = new Consumer("Ola");
		Producer adlibris = new Producer();
		
		bigjava.addListener(ola);
		bigjava.addListener(adlibris);
		
		bigjava.setPrice(2000);
		bigjava.setPrice(50);
	}
}
