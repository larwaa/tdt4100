package chess.v8;

public class Move {

	private Piece movedPiece;
	private char fromLine;
	private int fromRow;
	private char toLine;
	private int toRow;
	private Piece takenPiece;

	public Move(Piece movedPiece, char fromLine, int fromRow, char toLine, int toRow, Piece takenPiece) {
		super();
		this.movedPiece = movedPiece;
		this.fromLine = fromLine;
		this.fromRow = fromRow;
		this.toLine = toLine;
		this.toRow = toRow;
		this.takenPiece = takenPiece;
	}
	
	public Piece getMovedPiece() {
		return movedPiece;
	}
	
	public char getFromLine() {
		return fromLine;
	}
	
	public int getFromRow() {
		return fromRow;
	}
	
	public char getToLine() {
		return toLine;
	}
	
	public int getToRow() {
		return toRow;
	}
	
	public Piece getTakenPiece() {
		return takenPiece;
	}
}
