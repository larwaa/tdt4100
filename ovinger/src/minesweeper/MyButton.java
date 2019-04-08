package minesweeper;

import javafx.scene.control.Button;

public class MyButton extends Button {
	
	private Piece piece;
	private int index;
	private boolean covered = true;
	
	public MyButton(Piece piece, int index) {
		this.piece = piece;
		this.index = index;
	}
	
	public int getX() {
		return this.piece.getX();
	}
	
	public int getY() {
		return this.piece.getY();
	}
	
	public Piece getPiece() {
		return this.piece;
	}
	
	public int getIndex() {
		return this.index;
	}
	
	public boolean isCovered() {
		return this.covered;
	}
	
	public void uncover() {
		this.covered = false;
		
	}

}
