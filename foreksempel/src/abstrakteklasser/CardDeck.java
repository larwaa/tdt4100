package abstrakteklasser;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public class CardDeck extends CardList {

	public CardDeck(int suitSize) {
		super();
		for (int i = 0; i < Card.SUITS.length(); i++) {
			for (int face = 1; face <= suitSize; face++) {
				Card card = new Card(Card.SUITS.charAt(i), face);
				cards.add(card);
			}
		}
	}

	public void addCard(Card card) {
		this.cards.add(card);
	}

	@Override
	public String toString() {
		return "[Deck " + cards.toString().substring(1);
	}

	public void deal(CardHand hand, int handSize) {
		for (int i = 0 ; i < handSize ; i++) {
			hand.addCard(cards.remove(cards.size() - 1));
		}
	}
	
	public void shufflePerfectly() {
		int halfSize = cards.size() / 2;
		for (int i = 0; i < halfSize; i++) {
			Card card = cards.remove(halfSize + i);
			cards.add(i * 2 + 1, card);
		}
	}

	// methods using Predicate<Card>

	public boolean hasCard(Predicate<Card> p) {
		for (Card card: cards) {
			if (p.test(card)) {
				return true; 
			}
		}
		return false; 
	}
	
	public int getCardCount(Predicate<Card> p) {
		int count = 0; 
		for (Card card : cards) {
			if (p.test(card)) {
				count++;
			}
		}
		return count; 
	}
	
	public List<Card> getCards(Predicate<Card> p) {
		List<Card> matchingCards = new ArrayList<Card>();
		for (Card card : cards) {
			if (p.test(card)) {
				matchingCards.add(card);
			}
		}
		return matchingCards; 	
	}

	@Override
	protected int getCardCountLimit() {
		return 52;
	}

}

