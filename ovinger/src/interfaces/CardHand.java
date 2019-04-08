package interfaces;

import java.util.ArrayList;
import java.util.List;

public class CardHand implements CardContainer {
	
	private List<Card> cardHand = new ArrayList<>();
	
	public int getCardCount() {
		return this.cardHand.size();
	}
	
	public Card getCard(int i) {
		return this.cardHand.get(i);
	}
	
	public void addCard(Card card) {
		this.cardHand.add(card);
	}
	
	public Card play(int n) {
		return this.cardHand.remove(n);
	}
	
	public static void main(String[] args) {
		CardDeck d1 = new CardDeck(10);
		CardHand h1 = new CardHand();
		d1.deal(h1, 5);
	}
	
}
