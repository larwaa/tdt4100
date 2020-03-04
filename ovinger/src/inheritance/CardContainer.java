package inheritance;

import java.util.Iterator;

public interface CardContainer extends Iterable<Card>{
	
	int getCardCount();
	Card getCard(int n);
	Iterator<Card> iterator();

}
