package minesweeper;

import javafx.scene.control.Button;

public class MyButton extends Button {
	
	private Piece piece;
	private int index;
	private boolean concealed = true;
	private boolean flagged = false;
	
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
	
	public boolean isConcealed() {
		return this.concealed;
	}
	
	public void reveal() {
		if (! piece.isConcealed()) {
			this.concealed = false;
			this.setText(piece.toString());
			this.setStyle("-fx-background-color: #E2E2E2; ");
		}
	}
	
	public void flag(Boolean flagged) {
		if (flagged) {
			this.flagged = true;
			setText("▲");
			setStyle("-fx-text-fill: #ff0000; ");
		} else {
			flagged = false;
			setText(null);
			setStyle(null);
		}
	}

}
