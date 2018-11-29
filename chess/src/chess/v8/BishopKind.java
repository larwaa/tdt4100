package chess.v8;

public class BishopKind extends PieceKind {

	@Override
	public String toString() {
		return "Bishop";
	}

	@Override
	public void checkMove(Piece piece, char toLine, int toRow, Chess chess) {
		var dl = toLine - piece.getLine();
		var adl = Math.abs(dl);
		var dr = toRow - piece.getRow();
		var adr = Math.abs(dr);
		if (adl != adr) throw new IllegalArgumentException("A Bishop must move diagonally");
		else checkNoPieceInBetween(piece, toLine, toRow, chess);
	}
}
