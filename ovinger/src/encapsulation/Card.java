package encapsulation;

import java.util.Arrays;
import java.util.Collection;

public class Card {
	
	private final char suit;
	private final int face;
	
	public Card(char suit, int face) {
		checkSuit(suit);
		checkFace(face);
		this.suit = suit;
		this.face = face;
	}
	
	private void checkSuit(char suit) {
		Collection<Character> legalChars = Arrays.asList('S', 'H', 'D', 'C');
		
		if (!legalChars.contains(suit)) {
			throw new IllegalArgumentException();
		}
		
	}
	
	private void checkFace(int face) {
		if (face < 1 || face > 13) {
			throw new IllegalArgumentException();
		}
	}
	
	public char getSuit() {
		return suit;
	}
	
	public int getFace() {
		return face;
	}

	public String toString() {
		return String.format("%s%s", getSuit(), getFace());
	}
	
}
