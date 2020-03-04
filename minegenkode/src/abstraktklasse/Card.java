package abstraktklasse;

import java.util.List;

public class Card {
	
	private char suit;
	private int face;
	
	public Card(char suit, int face) {
		this.setSuit(suit);
		this.setFace(face);
	}
	
	private void setSuit(char suit) {
		List<Character> legalChars = List.of('S', 'H', 'C', 'D');
		
		if (! (legalChars.contains(suit))) {
			throw new IllegalArgumentException("Illegal color");
		}
		this.suit = suit;
	}

	private void setFace(int face) {
		if (face < 1 || face > 13) {
			throw new IllegalArgumentException("Illegal number");
		}
		
		this.face = face;
	}
	
	public char getSuit() {
		return this.suit;
	}
	
	public int getFace() {
		return this.face;
	}
	
	@Override
	public String toString() {
		return String.format("%s%s", getSuit(), getFace());
	}
	
	public static void main(String[] args) {
		Card c1 = new Card('H', 5);
	}
}
