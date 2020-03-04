package inheritance;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class CardContainerIterator implements Iterator<Card> {
	
	CardContainer o;
	int count = -1;
	
	public CardContainerIterator(CardContainer o) {
		this.o = o;
	}
	
	@Override
	public boolean hasNext() {
		return o.getCardCount() > count + 1;
	}

	@Override
	public Card next() {
		if (! hasNext()) {
			throw new NoSuchElementException();
		}
		count++;
		return o.getCard(count);
	}
}
