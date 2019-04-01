package abstrakteklasser;

import java.util.ArrayList;
import java.util.Iterator;

public abstract class CardList implements CardContainer {

	// array to hold Card objects, filled in the constructor
	protected ArrayList<Card> cards;
	
	public CardList() {
		cards = new ArrayList<Card>();
	}

	public Card getCard(int i) {
		if (i < 0 || i >= getCardCount()) {
			throw new IllegalArgumentException(String.format("%s is an illegal card index, when the size of the hand is %s", i, getCardCount()));
		}
		return cards.get(i);
	}

	public void addCard(Card card) {
		if (cards.size() >= getCardCountLimit()) {
			throw new IllegalStateException("Can't add another card");
		}
		this.cards.add(card);
	}

	protected abstract int getCardCountLimit();

	@Override
	public Iterator<Card> iterator() {
		return cards.iterator();
	}
}
