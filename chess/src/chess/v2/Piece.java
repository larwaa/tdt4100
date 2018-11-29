package chess.v2;

public class Piece {
	// color
	boolean white;
	// R(ook), B(ishop), (k)N(ight), Q(ueen), K(ing), P(awn)
	char kind;
	// a-h
	char x;
	// 1-8
	int y;
	// use unicode symbols, see https://en.wikipedia.org/wiki/Chess_symbols_in_Unicode
	char symbol;

	public Piece(boolean white, final char kind, final char x, final int y, final char symbol) {
		this.white = white;
		this.kind = kind;
		this.x = x;
		this.y = y;
		this.symbol = symbol;
	}

	@Override
	public String toString() {
		return "" + kind + "@" + x + y;
	}
}
