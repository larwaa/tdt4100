package chess.v8;

public class RookKind extends PieceKind {

	@Override
	public String toString() {
		return "Rook";
	}

	@Override
	public void checkMove(Piece piece, char toLine, int toRow, Chess chess) {
		var dl = toLine - piece.getLine();
		var adl = Math.abs(dl);
		var dr = toRow - piece.getRow();
		var adr = Math.abs(dr);
		if (adl != 0 && adr != 0) throw new IllegalArgumentException("A Rook must move horizontally or vertically");
		else checkNoPieceInBetween(piece, toLine, toRow, chess);
	}
}
