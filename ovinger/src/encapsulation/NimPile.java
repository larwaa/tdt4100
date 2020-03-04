package encapsulation;

public class NimPile {
	
	private int pileSize;
	
	public NimPile(int pileSize) {
		checkInt(pileSize);
		this.pileSize = pileSize;
	}
	
	public NimPile() {
		this.pileSize = 10;
	}
	
	private void checkInt(int i) {
		if (i<0) {
			throw new IllegalArgumentException("Negative numbers are not valid.");
		}
	}
	
	public int getPileSize() {
		return this.pileSize;
	}
	
	void removePieces(int number) {
		this.pileSize -= number;
	}
}
