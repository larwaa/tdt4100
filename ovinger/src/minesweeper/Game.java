package minesweeper;

import java.util.Iterator;
import java.util.List;

public class Game implements Iterable<Piece>{
	
	private Gameboard gameboard;
	
	public Game(int verticalSize, int horizontalSize, int numBombs) throws IllegalArgumentException {
		gameboard = new Gameboard(verticalSize, horizontalSize, numBombs);
	}
	
	public void reveal(Piece piece) {
		if (gameboard.getRevealedCount() == 0) {
			gameboard.adjustPieces(piece);
		}
		
		piece.uncover();
		
		if (! checkLoss(piece) && piece.getNumBombs() == 0 ) {
			List<Piece> squareList = gameboard.squareList(piece);
			squareList.stream().filter((p) -> p != piece).forEach((p) -> reveal(p));
		}
	}
	
	public void flag(Piece piece) {
		piece.flag();
	}
	
	public int getRemainingBombs() {
		return gameboard.getBombCount() - gameboard.getFlagCount();
	}
	
	public boolean checkVictory() {
		return gameboard.size() - gameboard.getRevealedCount() == gameboard.getBombCount();
	}
	
	public boolean checkLoss(Piece revealedPiece) {
		return revealedPiece.isBomb() && ! revealedPiece.isCovered();
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

	@Override
	public Iterator<Piece> iterator() {
		return gameboard.iterator();
	}
}
