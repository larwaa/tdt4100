package inheritance;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

public class CardDeck implements CardContainer {
	
	private List<Card> cardDeck = new ArrayList<Card>();
	
	public CardDeck(int n) {
		this.setCardDeck(n);

	}
	
	private void setCardDeck(int n) {
		if (n < 1) {
			throw new IllegalArgumentException();
		}
		
		List<Character> legalChars = List.of('S', 'H', 'D', 'C');
		
		for (Character suit : legalChars) {
			for (int face=1; face<=n; face++) { 
				this.cardDeck.add(new Card(suit, face));
			}
		}
	}
	
	public int getCardCount() {
		return this.cardDeck.size();
	}
	
	public Card getCard(int n) {
		if (n < 0 || n >= getCardCount()) {
			throw new IllegalArgumentException();
		}
		return this.cardDeck.get(n);
	}
	
	public void shufflePerfectly() {
		List<Card> newDeck = new ArrayList<Card>();
		for (int i=0; i<this.getCardCount()/2; i++) {
			newDeck.add(getCard(i));
			newDeck.add(getCard(i + this.getCardCount()/2));
		}
		this.cardDeck = newDeck;
	}
	
	public void deal(CardHand cardHand, int n) {
		if (n < this.getCardCount()) {
			int length = this.getCardCount() - 1;
			for (int i=length; i>length-n; i--) {
				cardHand.addCard(this.cardDeck.remove(i));
			}
		}
	}
	
	public boolean hasCard(Predicate<Card> predicate) {
		for (Card card : cardDeck) {
			if (predicate.test(card)) {
				return true;
			}
		}
		return false;
	}
	
	public int getCardCount(Predicate<Card> predicate) {
		int count = 0;
		for (Card card : cardDeck) {
			if (predicate.test(card)) {
				count++;
			}
		}
		return count;
	}
	
	public List<Card> getCards(Predicate<Card> predicate){
		List<Card> cardList = new ArrayList<>();
		
		for (Card card : cardDeck) {
			if (predicate.test(card)) {
				cardList.add(card);
			}
		}
		return cardList;
	}
	
	@Override
	public String toString() {
		String s = "";
		for (Card card : cardDeck) {
			s += card + "\n";
		}
		return s;
	}
	
	public static void main(String[] args) {
		Predicate<Card> QueenPredicate = (c) -> c.getFace() == 12 && c.getSuit() == 'S';
		Predicate<Card> HeartPredicate = (c) -> c.getSuit() == 'H';
		Predicate<Card> AcePredicate = (c) -> c.getFace() == 1;
		CardDeck d1 = new CardDeck(1);
		
		System.out.println(d1.hasCard(QueenPredicate));
		System.out.println(d1.getCardCount(HeartPredicate));
		System.out.println(d1.getCards(AcePredicate));
	}
}
