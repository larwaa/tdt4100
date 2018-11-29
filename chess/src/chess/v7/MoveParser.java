package chess.v7;

import java.util.ArrayList;
import java.util.List;

public class MoveParser {

	private Chess chess;
	
	public MoveParser(Chess chess) {
		this.chess = chess;
	}

	public Move parse(String move) {
		// Syntax: [<kind>][<lineOrRow>][x]<toLine><toRow>
		// decode backwards, since optional parts come first
		var toLine = move.charAt(move.length() - 2);
		var toRow = move.charAt(move.length() - 1) - '0';
		// firstPos points to first undecoded character
		var lastPos = move.length() - 3;
		boolean isTake = false;
		if (lastPos >= 0 && move.charAt(lastPos) == 'x') {
			isTake = true;
			lastPos--;
		}
		Character lineOrRow = null;
		Character kind = null;
		if (lastPos >= 0) {
			lineOrRow = move.charAt(lastPos);
			if (Piece.allKinds.contains(lineOrRow)) {
				kind = lineOrRow;
				lineOrRow = null;
				lastPos--;
			} else {
				lastPos--;
				if (lastPos >= 0) {
					kind = move.charAt(lastPos);
					if (Piece.allKinds.contains(kind)) {
						lastPos--;
					} else {
						kind = null;
					}
				}
			}
		}
		// are all characters decoded?
		if (lastPos >= 0) {
			throw new RuntimeException("Illegal format");
		}
		List<Piece> candidates = new ArrayList<>();
		for (var piece : chess.canMove(toLine, toRow, kind)) {
			// check correct kind 
			if (kind == null || piece.getKind() == kind) {
				// check line or row constraint 
				if (lineOrRow == null || piece.getLine() == lineOrRow - '0' || piece.getRow() == lineOrRow) {
					// check take
					if (isTake == (chess.findPieceAt(toLine, toRow) != null)) {
						candidates.add(piece);
					}
				}
			}
		}
		if (candidates.size() == 0) {
			throw new RuntimeException("Impossible move");
		} else if (candidates.size() > 1) {
			throw new RuntimeException("Ambiguous move");
		}
		Piece piece = candidates.get(0);
		return new Move(piece, piece.getLine(), piece.getRow(), toLine, toRow, null);
	}
}
