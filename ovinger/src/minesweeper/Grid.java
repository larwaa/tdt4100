
package minesweeper;

import java.util.*;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class Grid implements Iterable<Piece>{

     private Piece[][] board;
     private int horizontalSize, verticalSize, numBombs, numUncovered, numFlag;
     private List<Piece> bombList;
     private List<Piece> pieceList;

     public Grid(int verticalSize, int horizontalSize, int numBombs) {
    	 this.setVerticalSize(verticalSize);
    	 this.setHorizontalSize(horizontalSize);
    	 this.setNumBombs(numBombs);
    	 this.board = new Piece[verticalSize][horizontalSize];
    	 this.bombList = new ArrayList<>(numBombs);
    	 this.pieceList = new ArrayList<>(this.getSize());
    	 this.generatePieces();
    	 this.countBombs();
     }
     
     public Grid(int verticalSize, int horizontalSize, List<Piece> pieceList, List<Piece> bombList, int numFlag, int numUncovered) {
    	 this.setVerticalSize(verticalSize);
    	 this.setHorizontalSize(horizontalSize);
    	 this.board = new Piece[verticalSize][horizontalSize];
    	 this.pieceList = pieceList;
    	 this.bombList = bombList;
    	 
    	 for (Piece piece : this) {
    		 this.placePiece(piece.getX(), piece.getY(), piece);
    	 }
    	 
    	 this.numFlag = numFlag;
    	 this.numUncovered = numUncovered;
    	 this.setNumBombs(bombList.size());
    	 this.countBombs();
     }

     //Erstattet av array
     public Piece[][] getBoard(){
          return this.board;
     }

     //Implementert
     private int getAttributeCount(Predicate<Piece> predicate) {
    	 return (int) pieceList.stream().filter(predicate).count();
     }
     
     //Implementert
     public int getNumBombs() {
    	 return getAttributeCount((p) -> p.isBomb());
     }
     
     //Implementert
     public int getUncovered() {
    	 return getAttributeCount((p) -> ! p.isCovered());
     }
     
     //Implementert
     public int getNumFlag() {
    	 return getAttributeCount((p) -> p.isFlagged());
     }
     
     //Implementert
     private void setNumBombs(int numBombs) {
    	 this.checkNumBombs(numBombs);
    	 this.numBombs = numBombs;
     }
     
     //Implementert
     public int getSize() {
    	 return this.verticalSize * this.horizontalSize;
     }
     
     //Implementert
     private void checkNumBombs(int numBombs) {
    	 if (numBombs > (this.getSize() / 3) || numBombs < 1) {
    		 throw new IllegalArgumentException();
    	 }
     }
     
     //Implementert
     private void setVerticalSize(int verticalSize) {
    	 this.checkSize(verticalSize);
    	 this.verticalSize = verticalSize;
     }
     
     //Implementert
     private void setHorizontalSize(int horizontalSize) {
    	 this.checkSize(horizontalSize);
    	 this.horizontalSize = horizontalSize;
     }
     
     //Implementert
     private void checkSize(int size) throws IllegalArgumentException {
    	 if (size < 8 || size > 33) {
    		 throw new IllegalArgumentException("Size must be >= 8 and <= 32");
    	 }
     }
     
     //Erstattet
     private void placePiece(int x, int y, Piece piece){
          this.getBoard()[y][x] = piece;
     }
     
     //Erstattet
     public void setPiece(boolean bomb, int x, int y) {
    	 Piece p = new Piece(bomb, x, y);
    	 this.placePiece(x, y, p);
    	 this.pieceList.add(p);
     }

     //Implementert
     private void generatePieces(){
    	 for (int y=0; y<this.verticalSize; y++) {
    		 for (int x=0; x<this.horizontalSize; x++) {
    			 this.setPiece(false, x, y);
    		 }
    	 }
    	 
    	 List<Piece> bombList = new ArrayList<>(this.pieceList);
    	 Collections.shuffle(bombList);
    	 this.bombList = bombList.subList(0, numBombs);
    	 this.bombList.forEach(piece -> piece.setBomb(true));
     }
     
     //Erstattet
     private void updateBombList() {
    	 bombList = pieceList.stream()
    			 .filter(p -> p.isBomb())
    			 .collect(Collectors.toList());
    	 
     }

     //Implementert
     public Piece getPiece(int x, int y){
          if (! ((x < this.horizontalSize && x >= 0) && (y < this.verticalSize && y >= 0))){
               return null;
          }
          return this.board[y][x];
     }

     
     //Implementert
     public void uncover(Piece piece){    	 
    	 if (getUncovered() == 0 && (piece.getNumBombs() != 0 || piece.isBomb())) {
    		 if (this.adjustGrid(piece)) {
    			 this.resetBombCount();
    			 this.countBombs();
    		 };
    	 }
    		 
    	 if (piece != null && ! piece.isFlagged() && piece.isCovered()) {
    		 piece.uncover();
    		 this.numUncovered++;
    		 
    		 if (! piece.isBomb() && piece.getNumBombs() == 0) {
    			 int x = piece.getX();
    			 int y = piece.getY();
    			 
    			 for (int i=-1; i<=1; i++) {
    				 for (int j=-1; j<=1; j++) {
    					 if (i != 0 || j != 0) {
        					 this.uncover(this.getPiece(x + j, y + i));
    					 }
    				 }
    			 }
    		 }
    	 }
     }
          
     //Implementert
     public void flag(Piece piece){
    	 if (piece != null){
    		 if (piece.isFlagged() && piece.isCovered()) {
    			 this.numFlag--;
    		 } else if (! piece.isFlagged() && piece.isCovered()){
    			 this.numFlag++;
    		 }
    		 piece.flag();
    	 }
     }

     //TODO
     private void iterateBombCount(Piece p){
		 int x = p.getX();
		 int y = p.getY();
		 
		 for (int i=-1; i<=1;i++){
	    	 for (int j=-1; j<=1; j++){
    		 	Piece tempP = this.getPiece(x + j, y + i);
			 	if ((tempP != null) && (i != 0 || j != 0)) {
		 			tempP.iterateBombCount();
			 	}
	    	 }
	     }
	 }
     
     //Implementert
     public void countBombs() {
    	 bombList.forEach(this::iterateBombCount);
     }
     
     
     //TODO
     private void resetBombCount() {
    	 pieceList.forEach(Piece::resetNumBombs);
     }
     
     //Implementert?
     private void distributeBombs(List<Piece> pieceList, int numBombs) {
    	 Collections.shuffle(pieceList);
    	 pieceList.stream().limit(numBombs).forEach(piece -> piece.setBomb(true));
    	 this.updateBombList();
     }
     
     //TODO
     public boolean adjustGrid(Piece piece) {
    	 
    	 List<Piece> illegalList = new ArrayList<>(9);
    	 int removedBombs = 0;
    	 int x = piece.getX();
    	 int y = piece.getY();
    	 
    	 for (int j=-1; j<=1; j++) {
    		 for (int k=-1; k<=1; k++) {
    			 
    			 Piece p = this.getPiece(x + k, y + j);
    			 
    			 if (p != null) {
    				 illegalList.add(p);
    				 
    				 if (p.isBomb()) {
    					 p.setBomb(false);
    					 removedBombs++;
    					 this.bombList.remove(p);
    				 }
    			 }
    		 }
    	 }
    	 
    	 List<Piece> tempList = new ArrayList<>(this.pieceList)
    			 					.stream()
    			 					.filter(p -> ! p.isBomb())
    			 					.filter(p -> ! illegalList.contains(p))
    			 					.collect(Collectors.toList());
    	 
    	 
    	 distributeBombs(tempList, removedBombs);
    	 return removedBombs > 0;
     }
     
     
     //implementert
	 public int getHorizontalSize() {
		 return this.horizontalSize;
	 }
	 
	 //Implementert
	 public int getVerticalSize() {
		 return this.verticalSize;
	 }
	 
     //Implementert
	 public boolean checkVictory() {
		 return this.getUncovered() == this.getSize() - this.getNumBombs();
	 }
	 
	 //Implementert
	 public boolean checkLoss(Piece p) {
		 if (p.isBomb() && !p.isCovered()) {
			 return true;
		 }
		 return false;
	 }
	 
	 //Ersttatet
	 public List<Piece> getPieceList(){
		 return this.pieceList;
	 }

     //Implementert
	@Override
	public Iterator<Piece> iterator() {
		return pieceList.iterator();
	}
}


