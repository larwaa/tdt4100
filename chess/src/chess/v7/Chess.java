package chess.v7;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;

public class Chess implements Iterable<Piece> {

	private List<Piece> allPieces = new ArrayList<>();

	public final static Iterable<String> startPieces = List.of(
			"bRa8", "bNb8", "bBc8", "bQd8", "bKe8", "bBf8", "bNg8", "bRh8",
			"bPa7", "bPb7", "bPc7", "bPd7", "bPe7", "bPf7", "bPg7", "bPh7",
			"wPa2", "wPb2", "wPc2", "wPd2", "wPe2", "wPf2", "wPg2", "wPh2",
			"wRa1", "wNb1", "wBc1", "wQd1", "wKe1", "wBf1", "wNg1", "wKh1"
	);

	@Override
	public Iterator<Piece> iterator() {
		return allPieces.iterator();
	}

	public Chess() {
		this(startPieces);
	}

	public Chess(Iterable<String> startPieces) {
		for (var s : startPieces) {
			allPieces.add(new Piece(s.charAt(0) == 'w', s.charAt(1), s.charAt(2), s.charAt(3) - '0'));
		}
	}
	
	private boolean whitesTurn = true;
	
	public boolean isWhitesTurn() {
		return whitesTurn;
	}

	public Piece findPieceAt(char line, int row) {
		for (var piece : allPieces) {
			if (piece.getLine() == line && piece.getRow() == row) {
				return piece;
			}
		}
		return null;
	}
	
	private Stack<Move> undoStack = new Stack<>();
	private Stack<Move> redoStack = new Stack<>();

	public Move move(char fromLine, int fromRow, char toLine, int toRow, boolean reallyDo) {
		Piece.checkTo(fromLine, fromRow);
		Piece.checkTo(toLine, toRow);
		return move(findPieceAt(fromLine, fromRow), toLine, toRow, reallyDo);
	}
	
	public Move move(Piece fromPiece, char toLine, int toRow, boolean reallyDo) {
		if (fromPiece.isWhite() != whitesTurn) {
			throw new IllegalArgumentException("Cannot move the opponent's piece");
		}
		char fromLine = fromPiece.getLine();
		int fromRow = fromPiece.getRow();
		if (fromLine == toLine && fromRow == toRow) {
			throw new IllegalArgumentException("A piece cannot move to the same square");
		} else {
			var toPiece = findPieceAt(toLine, toRow);
			checkMove(fromPiece, toLine, toRow, toPiece);
			if (toPiece != null) {
				if (fromPiece.isWhite() == toPiece.isWhite()) {
					throw new IllegalArgumentException("A piece cannot capture one of the same color");
				} else if (reallyDo) {
					allPieces.remove(toPiece);
				}
			}
			var move = new Move(fromPiece, fromLine, fromRow, toLine, toRow, toPiece);
			if (reallyDo) {
				fromPiece.moveTo(toLine, toRow);
				whitesTurn = ! whitesTurn;
				undoStack.push(move);
				redoStack.clear();
			}
			return move;
		}
	}

	public boolean move(char fromLine, int fromRow, char toLine, int toRow) {
		try {
			return move(fromLine, fromRow, toLine, toRow, true) != null;
		} catch (Exception e) {
			return false;
		}
	}
	
	public void undoMove() {
		if (canUndoMove()) {
			var move = undoStack.pop();
			move.getMovedPiece().moveTo(move.getFromLine(), move.getFromRow());
			Piece takenPiece = move.getTakenPiece();
			if (takenPiece != null) {
				allPieces.add(takenPiece);
			}
			redoStack.push(move);
		}
	}

	public boolean canUndoMove() {
		return ! undoStack.isEmpty();
	}

	public void redoMove() {
		if (canRedoMove()) {
			var move = redoStack.pop();
			move.getMovedPiece().moveTo(move.getToLine(), move.getToRow());
			var takenPiece = move.getTakenPiece();
			if (takenPiece != null) {
				allPieces.remove(takenPiece);
			}
			undoStack.push(move);
		}
	}

	public boolean canRedoMove() {
		return ! redoStack.isEmpty();
	}
	
	private void checkMove(Piece piece, char toLine, int toRow, Piece takes) {
		var dl = toLine - piece.getLine();
		var adl = Math.abs(dl);
		var dr = toRow - piece.getRow();
		var adr = Math.abs(dr);
		switch (piece.getKind()) {
		case 'K':
			if (adl > 1 || adr > 1) throw new IllegalArgumentException("A King can only move one square in any direction");
			else if (isOnLine(piece, toLine, toRow, takes)) throw new IllegalArgumentException("A King cannot jump over other pieces");
			else return;
		case 'B':
			if (adl != adr) throw new IllegalArgumentException("A Bishop must move diagonally");
			else if (isOnLine(piece, toLine, toRow, takes)) throw new IllegalArgumentException("A Bishop cannot jump over other pieces");
			else return;
		case 'R':
			if (adl != 0 && adr != 0) throw new IllegalArgumentException("A Rook must move horizontally or vertically");
			else if (isOnLine(piece, toLine, toRow, takes)) throw new IllegalArgumentException("A Rook cannot jump over other pieces");
			else return;
		case 'Q':
			if (adl != adr && adl != 0 && adr != 0) throw new IllegalArgumentException("A Queen  must move horizontal, vertically or diagonally");
			else if (isOnLine(piece, toLine, toRow, takes)) throw new IllegalArgumentException("A Queen cannot jump over other pieces");
			else return;
		case 'N':
			if (adl * adr != 2) throw new IllegalArgumentException("A Knight must move one square in one direction and two in the other");
			else return;
		case 'P': {
			if (takes != null) {
				if ((adl != 1) || adr != 1 || (piece.isWhite() != (dr == 1))) throw new IllegalArgumentException("A Pawn can only capture a piece one square ahead and to either side");
				return;
			} else {
				if (adl != 0) {
					throw new IllegalArgumentException("A Pawn must move straight forward");
				} else if (piece.isWhite()) {
					if (dr != 1 && (piece.getRow() != 2 || dr != 2)) throw new IllegalArgumentException("A Pawn must either move one square ahead or two squares from its initial position");
					return;
				} else {
					if (dr != -1 && (piece.getRow() != 7 || dr != -2)) throw new IllegalArgumentException("A Pawn must either move one square ahead or two squares from its initial position");
					return;
				}
			}
		}
		}
	}

	private boolean isOnLine(Piece piece, char toLine, int toRow, Piece takes) {
		for (Piece other : allPieces) {
			if (other != piece && (takes == null || other != takes) && isOnLine(piece.getLine(), piece.getRow(), other.getLine(), other.getRow(), toLine, toRow)) {
				return true;
			}
		}
		return false;
	}

	private boolean isOnLine(char line1, int row1, char line, int row, char line2, int row2) {
		int dl = (int) Math.signum(line2 - line1), dr = (int) Math.signum(row2 - row1);
		while (line1 != line2 || row1 != row2) {
			if (line1 == line && row1 == row) {
				return true;
			}
			line1 += dl;
			row1 += dr;
		}
		return false;
	}
	
	//

	public boolean canMove(Piece piece, char toLine, int toRow) {
		try {
			return move(piece.getLine(), piece.getRow(), toLine, toRow, false) != null;
		} catch (Exception e) {
			return false;
		}
	}

	public Collection<Piece> canMove(char toLine, int toRow, Character kind) {
		var result = new ArrayList<Piece>();
		for (var piece : allPieces) {
			if ((kind == null || kind == piece.getKind()) && canMove(piece, toLine, toRow)) {
				result.add(piece);
			}
		}
		return result;
	}
}
