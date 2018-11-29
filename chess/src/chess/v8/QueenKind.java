package chess.v8;

public class QueenKind extends PieceKind {

	@Override
	public String toString() {
		return "Queen";
	}

	@Override
	public void checkMove(Piece piece, char toLine, int toRow, Chess chess) {
		var dl = toLine - piece.getLine();
		var adl = Math.abs(dl);
		var dr = toRow - piece.getRow();
		var adr = Math.abs(dr);
		if (adl != adr && adl != 0 && adr != 0) throw new IllegalArgumentException("A Queen  must move horizontal, vertically or diagonally");
		else checkNoPieceInBetween(piece, toLine, toRow, chess);
	}
}
