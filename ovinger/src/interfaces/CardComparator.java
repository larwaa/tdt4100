package interfaces;

import java.util.Collection;
import java.util.Comparator;
import java.util.List;

public class CardComparator implements Comparator<Card> {
	
	private boolean ace;
	private char trump;

	public CardComparator(boolean ace, char trump) {
		this.setAce(ace);
		this.setTrump(trump);
	}
	
	private void setAce(boolean ace) {
		this.ace = ace;
	}
	
	private void setTrump(char trump) {
		Collection<Character> legalSuits = List.of('S', 'H', 'C', 'D');
		if (legalSuits.contains(trump)) {
			this.trump = trump;
		} 
	}
	
	
	@Override
	public int compare(Card o1, Card o2) {
		int o1Face = o1.getFace();
		int o2Face = o2.getFace();
		
		if (ace && o1Face == 1) {
			o1Face = 14;
		}
		
		if (ace && o2Face == 1) {
			o2Face = 14;
		}
		
		if (o1.getSuit() == o2.getSuit()) {
			return o1Face - o2Face;
		} else if (o1.getSuit() == trump) {
			return 1;
		} else if (o2.getSuit() == trump) {
			return -1;
		} else if (o1.getSuit() == 'S') {
			return 1;
		} else if (o2.getSuit() == 'S') {
			return -1;
		} else if (o1.getSuit() == 'H') {
			return 1;
		} else if (o2.getSuit() == 'H') {
			return -1;
		} else if (o1.getSuit() == 'D') {
			return 1;
		} else {
			return -1;
		}
	}
}
