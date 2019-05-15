package inheritance;


public class CardHand extends CardContainerImpl {
	
	public CardHand(int maxCardCount) {
		super(maxCardCount);
	}
	
	public void addCard(Card card) {
		super.addCard(card);
	}
	
	public Card play(int n) {
		return cardDeck.remove(n);
	}	
}
