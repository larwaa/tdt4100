package interfaces;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.junit.Test;

public class CardTest {
	
	Card c1 = new Card('S', 1);
	Card c2 = new Card('S', 6);
	Card c3 = new Card('S', 4);

	Card c4 = new Card('H', 5);
	Card c5 = new Card('H', 6);
	Card c6 = new Card('H', 4);

	Card c7 = new Card('C', 5);
	Card c8 = new Card('C', 6);
	Card c9 = new Card('C', 4);

	Card c10 = new Card('D', 5);
	Card c11 = new Card('D', 6);
	Card c12 = new Card('D', 4);
	
	List<Card> cardList = new ArrayList<>();
	
	
	@Test
	public void testComparatorSort() {
		cardList.add(c1);
		cardList.add(c2);
		cardList.add(c4);
		cardList.add(c7);
		cardList.add(c10);
		Collections.sort(cardList, new CardComparator(true, 'D'));
		
		List<Card> sortedList = new ArrayList<>();
		
		sortedList.add(c7);
		sortedList.add(c4);
		sortedList.add(c2);
		sortedList.add(c1);
		sortedList.add(c10);

		
		if (! sortedList.equals(cardList)) {
			fail("Not sorted correctly!");
		} 	
	}
	
	@Test
	public void testComparableSort() {
		cardList.add(c1);
		cardList.add(c2);
		cardList.add(c4);
		cardList.add(c7);
		cardList.add(c10);
		Collections.sort(cardList);
		List<Card> sortedList = new ArrayList<>();
		
		sortedList.add(c7);
		sortedList.add(c10);
		sortedList.add(c4);
		sortedList.add(c1);
		sortedList.add(c2);
		
		if (! sortedList.equals(cardList)) {
			fail("Not sorted correctly!");
		}

		/*
		
		for (int i=0; i<5; i++) {
			if (cardList.get(i) != sortedList.get(i)){
				fail("Not sorted correctly!");
			}
		}
		*/		
	}

}
