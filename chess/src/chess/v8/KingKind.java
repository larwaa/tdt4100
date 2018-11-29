package chess.v8;

public class KingKind extends PieceKind {

	@Override
	public String toString() {
		return "King";
	}

	@Override
	public void checkMove(Piece piece, char toLine, int toRow, Chess chess) {
		var dl = toLine - piece.getLine();
		var adl = Math.abs(dl);
		var dr = toRow - piece.getRow();
		var adr = Math.abs(dr);
		if (adl > 1 || adr > 1) throw new IllegalArgumentException("A King can only move one square in any direction");
		else if (chess.isOnLine(piece, toLine, toRow, chess.findPieceAt(toLine, toRow))) throw new IllegalArgumentException("A King cannot jump over other pieces");
		else return;
	}
}
