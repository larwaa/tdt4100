package abstrakteklasser;

public class CardHand extends CardList implements CardContainer {

	@Override
	public String toString() {
		return "[Hand " + cards.toString().substring(1);
	}

	public Card play(int i) {
		return cards.remove(i);
	}

	@Override
	protected int getCardCountLimit() {
		return 5;
	}
}
