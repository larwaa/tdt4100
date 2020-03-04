package abstraktklasse;

public class CardHand extends CardList {

	public CardHand(){
		super();
	}

	public Card play(int n) {
		return this.cards.remove(n);
	}
	
	public int getCardCountLimit() {
		return 5;
	}
	
	public static void main(String[] args) {
		CardDeck d1 = new CardDeck(10);
		CardHand h1 = new CardHand();
		d1.deal(h1, 5);
	}
	
}
