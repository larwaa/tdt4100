package minesweeper;

public class Piece implements Comparable<Piece>{

    private boolean bomb;
    private boolean concealed = true;
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
    	this.concealed = covered;
    	this.flagged = flagged;
    	this.setCoordinates(x, y);
    }

    public boolean isBomb(){
        return this.bomb;
    }
    
    public boolean equals(Piece piece) {
    	return isBomb() == piece.isBomb() 
    			&& isFlagged() == piece.isFlagged() 
    			&& isConcealed() == piece.isConcealed()
    			&& getNumBombs() == piece.getNumBombs()
    			&& getX() == piece.getX()
    			&& getY() == piece.getY();
    }

    void setBomb(Boolean b) {
    	this.bomb = b;
    }
    
    void resetNumBombs() {
    	this.numBombs = 0;
    }
    
    public boolean isConcealed(){
        return this.concealed;
    }
    
    public boolean isFlagged() {
    	return this.flagged;
    }
    
    public int getNumBombs(){
        return this.numBombs;
    }

    public void reveal(){
        if (! isFlagged() && isConcealed()){
            this.concealed = false;
        }
    }

    public void flag(){
        if (isFlagged() && isConcealed()){
            this.flagged = false;
        } else if (isConcealed()){
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
    	if (this.isConcealed()) {
    		return "H";
    	} else if (this.isBomb()) {
    		return "*";
    	} else if (this.getNumBombs() == 0) {
    		return " ";
    	} else {
    		return Integer.toString(this.getNumBombs());
    	}

    	//For debugging
//    	return "row: " + this.getY() + " column: " + this.getX();
    }

	@Override
	public int compareTo(Piece o) {
		if (this.getY() == o.getY()) {
			return this.getX() - o.getX();
		}
		return this.getY() - o.getY();
	}

}
