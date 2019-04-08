package abstraktklasse;

import java.util.ArrayList;
import java.util.List;

public class CardDeck extends CardList {
	
	
	public CardDeck(int n) {
		super();
		this.setCardDeck(n);
	}
	
	private void setCardDeck(int n) {
		if (n < 1) {
			throw new IllegalArgumentException();
		}
		
		List<Character> legalChars = List.of('S', 'H', 'D', 'C');
		
		for (Character suit : legalChars) {
			for (int face=1; face<=n; face++) { 
				this.cards.add(new Card(suit, face));
			}
		}
	}
	
	public int getCardCountLimit() {
		return 52;
	}
	
	public void shufflePerfectly() {
		List<Card> newDeck = new ArrayList<Card>();
		for (int i=0; i<this.getCardCount()/2; i++) {
			newDeck.add(getCard(i));
			newDeck.add(getCard(i + this.getCardCount()/2));
		}
		this.cards = newDeck;
	}
	
	public void deal(CardHand cardHand, int n) {
		if (n < this.getCardCount()) {
			int length = this.getCardCount() - 1;
			for (int i=length; i>length-n; i--) {
				cardHand.addCard(this.cards.remove(i));
			}
		}
	}
	
	public static void main(String[] args) {
		CardDeck d1 = new CardDeck(10);
		CardHand h1 = new CardHand();
		d1.deal(h1, 5);
	}
}
