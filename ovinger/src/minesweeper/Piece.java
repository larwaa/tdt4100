package minesweeper;

public class Piece {

    private boolean bomb;
    private boolean covered = true;
    private boolean flagged = false;
    private int numBombs = 0;
    private int x;
    private int y;

    public Piece(boolean bomb, int x, int y) {
        this.bomb = bomb;
        this.setCoordinates(x, y);
    }
    
    public Piece(boolean bomb, boolean covered, boolean flagged, int x, int y) {
    	this.bomb = bomb;
    	this.covered = covered;
    	this.flagged = flagged;
    	this.setCoordinates(x, y);
    }

    public boolean isBomb(){
        return this.bomb;
    }

    void setBomb(Boolean b) {
    	this.bomb = b;
    }
    
    void resetNumBombs() {
    	this.numBombs = 0;
    }
    
    public boolean isCovered(){
        return this.covered;
    }
    
    public boolean isFlagged() {
    	return this.flagged;
    }
    
    public int getNumBombs(){
        return this.numBombs;
    }

    public void uncover(){
        if (! isFlagged() && isCovered()){
            this.covered = false;
        }
    }

    public void flag(){
        if (isFlagged() && isCovered()){
            this.flagged = false;
        } else if (isCovered()){
            this.flagged = true;
        }
    }

    public void iterateBombCount(){
        this.numBombs ++;
    }

    public int getX(){
        return this.x;
    }

    public int getY(){
        return this.y;
    }

    public void setCoordinates(int x, int y){
    	if (x < 0 || y < 0) {
    		throw new IllegalArgumentException();
    	}
    	this.x = x;
    	this.y = y;
    }

    @Override
    public String toString() {
    	if (this.isCovered()) {
    		return "H";
    	} else if (this.isBomb()) {
    		return "*";
    	} else if (this.getNumBombs() == 0) {
    		return " ";
    	} else {
    		return Integer.toString(this.getNumBombs());
    	}
    }
}
