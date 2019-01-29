package of4;

public class CountingGame {
	
	
	//Hvor mye som skal telles oppover
	private int countTo; 
	
	//Hvor mye som er telt
	private int currentCount = 0;
	
	public CountingGame(int countTo) {
		this.countTo = countTo;
	}
	
	public CountingGame() {
		// this.countTo = 10;
		//Kaller den andre konstruktøren. Tilsvarende som å skrive new CountingGame(10);
		this(10);
	}
	
	public void count(int number) {
		
		if (this.isGameOver()) {
			throw new IllegalStateException("Game is over");
		}
		if (!this.checkValidMove(number)) {
			throw new IllegalArgumentException("Invalid move");
		};
		//Teller opp med number
		this.currentCount += number;
		
	}
	
	public boolean checkValidMove(int number) {
		// Kun lov å telle 1, 2 eller 3. 
		if (number >= 1 && number <= 3) {
			return true;
		}
		return false;
	}
	
	public boolean isGameOver() {
		//Spiller er over hvis en har telt over eller lik der en skal telle
		return this.currentCount >= this.countTo;
	}
	
	public static void main(String[] args) {
		CountingGame game = new CountingGame(5);
		game.count(2);
		game.count(1);
		game.count(4);
		game.count(3);
	}
	
	
}
