package encapsulation;

import java.util.List;

public class Nim {
	
	private List<NimPile> nimList;

	public Nim(int pileSize) {
		NimPile p1 = new NimPile(pileSize);
		NimPile p2 = new NimPile(pileSize);
		NimPile p3 = new NimPile(pileSize);
		this.nimList = List.of(p1, p2, p3);
	}
	
	public Nim() {
		NimPile p1 = new NimPile();
		NimPile p2 = new NimPile();
		NimPile p3 = new NimPile();
		this.nimList = List.of(p1, p2, p3);
	}
	
	private void checkInt(int i) {
		if (i<1) {
			throw new IllegalArgumentException("Negative numbers are not valid.");
		}
	}
	
	public int getPile(int targetPile) {
		return this.nimList.get(targetPile).getPileSize();
	}
	
	public boolean isGameOver() {
		for (NimPile pile : this.nimList) {
			if (pile.getPileSize() == 0) {
				return true;
			}
		}
		return false;
	}
	
	public boolean isValidMove(int number, int targetPile) {
		if ((number < 1) || (! (0 <= targetPile || 2 >= targetPile)) || isGameOver()) {
			return false;
		} else if (number > getPile(targetPile)) {
			return false;
		} else {
			return true;
		}
	}
	
	public void removePieces(int number, int targetPile) {
		if (isGameOver()) {
			throw new IllegalStateException();
		}
		
		if (! isValidMove(number, targetPile)) {
			throw new IllegalArgumentException();
		}
		this.nimList.get(targetPile).removePieces(number);
	}
	
	public String toString() {
		return String.format("Pile 1: %s, Pile 2: %s, Pile 3: %s", this.getPile(0),
																	this.getPile(1),
																	this.getPile(2));
	}
	
	public static void main(String[] args) {
		Nim n1 = new Nim();
		n1.isGameOver();
		System.out.println(n1.getPile(2));
	}
	
	
}
