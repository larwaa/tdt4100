package minesweeper;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class Gameboard implements Iterable<Piece> {
	
	private int verticalSize, horizontalSize, bombs;
	private List<Piece> gameboard = new ArrayList<>();
	
	public Gameboard(int verticalSize, int horizontalSize, int bombs) throws IllegalArgumentException {
		checkDimensions(verticalSize);
		checkDimensions(horizontalSize);
		checkInt(bombs, (i) -> i < verticalSize * horizontalSize / 3 && i > 0);
		this.verticalSize = verticalSize;
		this.horizontalSize = horizontalSize;
		this.bombs = bombs;
		initiateGameboard();
	}
	
	public Gameboard(int verticalSize, int horizontalSize, List<Piece> pieceList) {
		checkDimensions(verticalSize);
		checkDimensions(horizontalSize);
		this.gameboard = pieceList;
		this.bombs = (int) gameboard.stream().filter((p) -> p.isBomb()).count();
		this.verticalSize = verticalSize;
		this.horizontalSize = horizontalSize;
		countBombs();
	}
	
	private int indexToRow(int index) {
		return index / horizontalSize;
	}
	
	private int indexToColumn(int index) {
		return index % horizontalSize;
	}
	
	private int coordinatesToIndex(int row, int column) {
		return row * horizontalSize + column;
	}
	
	private void checkInt(int i, Predicate<Integer> predicate) {
		if (! predicate.test(i)) {
			throw new IllegalArgumentException("Ugyldig tall");
		}
	}
	
	private boolean checkIntBoolean(int i, Predicate<Integer> predicate) {
		return predicate.test(i);
	}
	
	private void initiateGameboard() {
		generatePieces();
	}
	
	public Piece getPiece(int row, int column) {
		checkInt(row, (i) -> i < verticalSize || i >= 0);
		checkInt(column, (i) -> i < horizontalSize || i >= 0);
		return gameboard.get(coordinatesToIndex(row, column));
	}
	
	private void checkDimensions(int i) {
		if (i < 4 || i > 32) {
			throw new IllegalArgumentException("Maximum (minimum) dimensions are: 32 x 32 (4 x 4)");
		}
	}
	
	private int getIndex(Piece piece) {
		return gameboard.indexOf(piece);
	}
	
	public Piece getPiece(int index) {
		return gameboard.get(index);
	}
	
	public int size() {
		return verticalSize * horizontalSize;
	}
	
	private int getAttributeCount(Predicate<Piece> predicate) {
		return (int) gameboard.stream()
							.filter(predicate)
							.count();
    }
    
    public int getBombCount() {
    	return getAttributeCount((p) -> p.isBomb());
    }
    
    public int getConcealedCount() {
    	return getAttributeCount((p) -> p.isConcealed());
    }
    
    public int getRevealedCount() {
    	return getAttributeCount((p) -> ! p.isConcealed());
    }
    
    public int getFlagCount() {
    	return getAttributeCount((p) -> p.isFlagged());
    }
    
    public void adjustPieces(Piece piece) {
    	List<Piece> filterList = squareList(piece);
    	int removedBombs = (int) filterList.stream()
				.filter((p) -> p.isBomb())
				.count();
    	
    	if (removedBombs > 0) {
    		List<Piece> pieceList = gameboard.stream()
					.filter((p) -> ! filterList.contains(p))
					.filter((p) -> ! p.isBomb())
					.collect(Collectors.toList());
    		
    		filterList.forEach((p) -> p.setBomb(false));
    		
			distributeBombs(pieceList, removedBombs);
    	}
    }
    
    private void resetBombCount() {
    	iterator().forEachRemaining(Piece::resetNumBombs);
    }
    
    private void countBombs() {
    	resetBombCount();
    	getBombList().stream().forEach((b) -> iterateBombCount(b));
    }
    
    private void iterateBombCount(Piece bomb) {
    	squareList(bomb).forEach(Piece::iterateBombCount);
    }
    
    public List<Piece> squareList(Piece piece){
    	int y = piece.getY();
    	int x = piece.getX();
    	List<Piece> squareList = new ArrayList<>();
    	
    	for (int row = -1; row <= 1; row++) {
    		for (int col = -1; col <= 1; col++) {
    			if (checkIntBoolean(y + row, (n) -> n >= 0 && n < verticalSize) 
    					&& checkIntBoolean(x + col, (n) -> n >= 0 && n < horizontalSize)) {
    				squareList.add(getPiece(row + y, col + x));
    			}
    		}
    	}
    	return squareList;
    }
    
    private void distributeBombs(List<Piece> pieceList, int numBombs) {
    	Collections.shuffle(pieceList);
    	pieceList.stream()
    		.limit(numBombs)
    		.forEach(piece -> piece.setBomb(true));
    	countBombs();
    }
    
    private void generatePieces(){
    	for (int i = 0; i < verticalSize * horizontalSize; i++) {
			gameboard.add(new Piece(false, indexToColumn(i), indexToRow(i)));
    	}
    	Collections.sort(gameboard);
   	 
    	List<Piece> bombList = new ArrayList<>(this.gameboard);
    	distributeBombs(bombList, bombs);
    }
    
    private List<Piece> getBombList(){
    	return gameboard.stream().filter(Piece::isBomb).collect(Collectors.toList());
    }
    
    public int getVerticalSize() {
    	return this.verticalSize;
    }
    
    public int getHorizontalSize() {
    	return this.horizontalSize;
    }
    
    @Override
    public String toString() {
    	String s = "";
    	
    	for (int i = 0; i < this.size(); i++) {
    		if (i % horizontalSize == 0) {
    			s += "\n" + this.getPiece(i);
    		} else {
    			s += this.getPiece(i);
    		}
    	}
    	return s;
    }
    
	@Override
	public Iterator<Piece> iterator() {
		return gameboard.iterator();
	}

}
