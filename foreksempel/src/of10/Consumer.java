package of10;

public class Consumer implements ItemListener{
	
	private String name;
	
	public Consumer(String name) {
		this.name = name;
	}

	@Override
	public void itemPriceChanged(Item item, int oldPrice, int newPrice) {
		if (newPrice < oldPrice) {
			System.out.println("Hmm, kanskje jeg skal kjøpte " + item);
		}
		
	}
	
	
	
}
