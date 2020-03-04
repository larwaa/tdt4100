package objectstructures;

import java.util.ArrayList;
import java.util.List;

public class CardDeck {
	
	private List<Card> cardDeck = new ArrayList<Card>();
	
	public CardDeck(int n) {
		this.setCardDeck(n);

	}
	
	private void setCardDeck(int n) {
		if (n < 1) {
			throw new IllegalArgumentException();
		}
		
		List<Character> legalChars = List.of('S', 'H', 'D', 'C');
		
		for (Character suit : legalChars) {
			for (int face=1; face<=n; face++) { 
				this.cardDeck.add(new Card(suit, face));
			}
		}
	}
	
	public int getCardCount() {
		return this.cardDeck.size();
	}
	
	public Card getCard(int n) {
		if (n < 0 || n >= getCardCount()) {
			throw new IllegalArgumentException();
		}
		return this.cardDeck.get(n);
	}
	
	public void shufflePerfectly() {
		List<Card> newDeck = new ArrayList<Card>();
		for (int i=0; i<this.getCardCount()/2; i++) {
			newDeck.add(getCard(i));
			newDeck.add(getCard(i + this.getCardCount()/2));
		}
		this.cardDeck = newDeck;
	}
	
	public void deal(CardHand cardHand, int n) {
		if (n < this.getCardCount()) {
			int length = this.getCardCount() - 1;
			for (int i=length; i>length-n; i--) {
				cardHand.addCard(this.cardDeck.remove(i));
			}
		}
	}
	
	public static void main(String[] args) {
		CardDeck d1 = new CardDeck(10);
		CardHand h1 = new CardHand();
		d1.deal(h1, 5);
	}
}
