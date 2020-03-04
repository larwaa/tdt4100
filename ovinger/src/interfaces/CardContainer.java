package interfaces;

import java.util.Iterator;

public interface CardContainer extends Iterable<Card>{
	int getCardCount();
	Card getCard(int n);
}
