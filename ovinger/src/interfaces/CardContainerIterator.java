package interfaces;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class CardContainerIterator implements Iterator<CardContainer> {
	
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
	public CardContainer next() {
		if (! hasNext()) {
			throw new NoSuchElementException();
		}
		count++;
		return (CardContainer) o.getCard(count);
	}
}
