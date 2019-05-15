package inheritance;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CardContainerImpl implements CardContainer {

	
	protected List<Card> cardDeck = new ArrayList<>();
	private int maxCardCount;
	
	public CardContainerImpl(int maxCardCount) {
		this.maxCardCount = maxCardCount;
	}
	
	public int getMaxCardCount() {
		return maxCardCount;
	}
	
	protected void addCard(Card card) {
		if (getCardCount() >= getMaxCardCount()) {
			throw new IllegalStateException();
		}
		cardDeck.add(card);
	}
	
	
	@Override
	public int getCardCount() {
		return cardDeck.size();
	}

	@Override
	public Card getCard(int n) {
		if (n < 0 || n >= getCardCount()) {
			throw new IllegalArgumentException();
		}
		return this.cardDeck.get(n);
	}

	@Override
	public Iterator<Card> iterator() {
		return new CardContainerIterator(this);
	}
}
