package minesweeper;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class Game implements Iterable<Piece>{
	
	private Gameboard gameboard;
	private final static char HARD = 'H', MEDIUM = 'M', EASY = 'E', CUSTOM = 'C';
	private Map<Character, int[]> difficultyMap = Map.of(HARD, new int[]{16, 32, 99}, MEDIUM, new int[] {16, 16, 40}, EASY, new int[] {8, 8, 10});
	private char difficulty;

	
	public Game(int verticalSize, int horizontalSize, int numBombs) throws IllegalArgumentException {
		gameboard = new Gameboard(verticalSize, horizontalSize, numBombs);
		this.difficulty = CUSTOM;
	}
	
	public Game(char difficulty) {
		if (difficultyMap.containsKey(difficulty)) {
			int verticalSize = difficultyMap.get(difficulty)[0];
			int horizontalSize = difficultyMap.get(difficulty)[1];
			int bombs = difficultyMap.get(difficulty)[2];
			this.difficulty = difficulty;
			gameboard = new Gameboard(verticalSize, horizontalSize, bombs);
		}
	}
	
	public Game(int verticalSize, int horizontalSize, List<Piece> pieceList, char difficulty) {
		gameboard = new Gameboard(verticalSize, horizontalSize, pieceList);
		this.difficulty = difficulty;
	}
	
	public char getDifficulty() {
		return this.difficulty;
	}
	
	public void reveal(Piece piece) {
		if (gameboard.getRevealedCount() == 0) {
			gameboard.adjustPieces(piece);
		}
		
		if (piece.isConcealed()) {
			piece.reveal();
			
			if (! checkLoss(piece) && piece.getNumBombs() == 0) {
				List<Piece> squareList = gameboard.squareList(piece);
				squareList.stream().filter((p) -> p != piece).forEach((p) -> reveal(p));
			}
		} else {
			revealSquare(piece);
		}
	}
	
	public void revealSquare(Piece piece) {
		if (! piece.isConcealed()) {
			List<Piece> squareList = squareList(piece);
			int surroundingFlags = (int) squareList.stream().filter((p) -> p.isFlagged()).count();
			if (surroundingFlags == piece.getNumBombs()) {
				squareList.stream().filter((p) -> p.isConcealed()).forEach((p) -> reveal(p));
			}
		}
	}
	
	public void flag(Piece piece) {
		piece.flag();
	}
	
	private List<Piece> squareList(Piece piece) {
		return gameboard.squareList(piece);
	}
	
	public int getRemainingBombs() {
		return gameboard.getBombCount() - gameboard.getFlagCount();
	}
	
	public boolean checkVictory() {
		return gameboard.size() - gameboard.getRevealedCount() == gameboard.getBombCount();
	}
	
	public boolean checkLoss(Piece revealedPiece) {
		return revealedPiece.isBomb() && ! revealedPiece.isConcealed();
	}
	
	public boolean checkCompleteLoss() {
		for (Piece piece : gameboard) {
			if (piece.isBomb() && ! piece.isConcealed()) {
				return true;
			}
		}
		return false;
	}
	
	public int size() {
		return gameboard.size();
	}
	
	public int getHorizontalSize() {
		return gameboard.getHorizontalSize();
	}
	
	public int getVerticalSize() {
		return gameboard.getVerticalSize();
	}
	
	public Piece getPiece(int index) {
		return gameboard.getPiece(index);
	}
	
	@Override
	public boolean equals(Object object) {
		if (! (object instanceof Game)) {
			throw new IllegalArgumentException();
		}
		
		Iterator<Piece> thisIterator = this.iterator();
		Iterator<Piece> compareIterator = ((Game) object).iterator();
		
		while (thisIterator.hasNext() && compareIterator.hasNext()) {
			if (! thisIterator.next().equals(compareIterator.next())) {
				return false;
			}
		}
		return true;
		/*
		for (int i = 0; i < gameboard.size(); i++) {
			if (! this.getPiece(i).equals(((Game) object).getPiece(i))) {
				return false;
			}
		}
		return true;
		*/
	}

	@Override
	public Iterator<Piece> iterator() {
		return gameboard.iterator();
	}
	
	public static void main(String[] args) {
		Game game = new Game(EASY);
//		System.out.println(game.gameboard);
		Piece p = game.gameboard.getPiece(0, 0);
		System.out.println(game.gameboard.squareList(p));
//		game.reveal(p);
//		System.out.println(game.gameboard.squareList(p));
//		System.out.println(p);
//		System.out.println(game.gameboard);
	}
}
