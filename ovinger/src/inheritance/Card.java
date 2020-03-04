package inheritance;

import java.util.List;

public class Card implements Comparable<Card> {
	
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
		System.out.println("test");
	}

	@Override
	public int compareTo(Card o) {
		Card c = ((Card) o);
		if (this.getSuit() == c.getSuit()) {
			return this.getFace() - c.getFace();
		} else if (this.getSuit() == 'S') {
			return 1;
		} else if (c.getSuit() == 'S') {
			return -1;
		} else if (this.getSuit() == 'H') {
			return 1;
		} else if (c.getSuit() == 'H') {
			return -1; 
		} else if (this.getSuit() == 'D') {
			return 1;
		} else {
			return -1;
		}
	}

}
