package of4;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class CountingGame2 {
	
	
	//Hvor mye som skal telles til
	private int countTo; 
	//Liste med startverdier (0, 0, 0). Starter å telle på 0 på alle hauger
	private List<Integer> counts = Arrays.asList(0, 0, 0) ;
	
	
	public CountingGame2(int countTo) {
		this.countTo = countTo;
	}
	
	public CountingGame2() {
		// this.countTo = 10;
		//Kaller den andre konstruktøren. Tilsvarende som å skrive new CountingGame(10);

		this(10);
	}
	
	public void count(int target, int number) {
		//Target: Hvilken haug en skal telle
		// Number: hvor mye en skal telle
		if (this.isGameOver()) {
			throw new IllegalStateException("Game is over");
		}
		if (!this.checkValidMove(number, target)) {
			throw new IllegalArgumentException("Invalid move");
		};
		//Oppdaterer haugen med ny verdi. Henter verdi som ligger der og legger til number
		this.counts.set(target, this.counts.get(target)+number);
		
	}
	
	public boolean checkValidMove(int number, int target) {
		if (number >= 1 && number <= 3) {
			if (target >= 0 && target <= 2) {
				return true;
			}
		}
		
		return false;
	}
	
	public boolean isGameOver() {
		for(int count: counts) {
			if (count >= this.countTo) {
				return true;
			}
		}
		return false;
	}
	
	public static void main(String[] args) {
		CountingGame2 game = new CountingGame2(5);
		game.count(0, 2);
		game.count(1, 1);
		game.count(2, 4);
		game.count(1, 3);
	}
	
	
}
