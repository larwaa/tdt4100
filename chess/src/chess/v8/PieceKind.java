package chess.v8;

public abstract class PieceKind {

	public abstract void checkMove(Piece piece, char toLine, int toRow, Chess chess);
	
	protected void checkNoPieceInBetween(Piece piece, char toLine, int toRow, Chess chess) {
		if (chess.isOnLine(piece, toLine, toRow, chess.findPieceAt(toLine, toRow))) {
			throw new IllegalArgumentException("A " + this + " cannot jump over other pieces");
		}
	}

	private static PieceKind
		KING = new KingKind(),
		BISHOP = new BishopKind(),
		QUEEN = new QueenKind(),
		ROOK = new RookKind(),
		KNIGHT = new KnightKind(),
		PAWN = new PawnKind();

	public static PieceKind of(char kind) {
		switch (kind) {
		case 'K' : 
			return KING;
		case 'B' : return BISHOP;
		case 'R' : return ROOK;
		case 'Q' : return QUEEN;
		case 'N' : return KNIGHT;
		case 'P' : return PAWN;
		}
		return null;
	}
}
