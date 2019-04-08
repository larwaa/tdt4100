package abstraktklasse;

import java.util.ArrayList;
import java.util.List;

public abstract class CardList implements CardContainer {
	
	protected List<Card> cards;
	
	public CardList() {
		cards = new ArrayList<>();
	}

	public int getCardCount() {
		return this.cards.size();
	}
	
	protected abstract int getCardCountLimit();

	public void addCard(Card card) {
		if (cards.size() >= getCardCountLimit()) {
			throw new IllegalStateException();
		}
		this.cards.add(card);
	}

	public Card getCard(int n) {
		if (n < 0 || n >= getCardCount()) {
			throw new IllegalArgumentException();
		}
		return this.cards.get(n);
	}
}
