package chess.v2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javafx.fxml.FXML;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class ChessController {

	@FXML Label a1, a2, a3, a4, a5, a6, a7, a8;
	@FXML Label b1, b2, b3, b4, b5, b6, b7, b8;
	@FXML Label c1, c2, c3, c4, c5, c6, c7, c8;
	@FXML Label d1, d2, d3, d4, d5, d6, d7, d8;
	@FXML Label e1, e2, e3, e4, e5, e6, e7, e8;
	@FXML Label f1, f2, f3, f4, f5, f6, f7, f8;
	@FXML Label g1, g2, g3, g4, g5, g6, g7, g8;
	@FXML Label h1, h2, h3, h4, h5, h6, h7, h8;

	List<Label> allLabels;

	List<Piece> allPieces = new ArrayList<>();

	List<String> startPieces = Arrays.asList(
			"bRa8♜", "bNb8♞", "bBc8♝", "bQd8♛", "bKe8♚", "bBf8♝", "bNg8♞", "bRh8♜",
			"bPa7♟", "bPb7♟", "bPc7♟", "bPd7♟", "bPe7♟", "bPf7♟", "bPg7♟", "bPh7♟",
			"wPa2♙", "wPb2♙", "wPc2♙", "wPd2♙", "wPe2♙", "wPf2♙", "wPg2♙", "wPh2♙",
			"wRa1♖", "wNb1♘", "wBc1♗", "wQd1♕", "wKe1♔", "wBf1♗", "wNg1♘", "wKh1♖"
	);

	@FXML
	void initialize() {
		allLabels = List.of(
				a1, a2, a3, a4, a5, a6, a7, a8,
				b1, b2, b3, b4, b5, b6, b7, b8,
				c1, c2, c3, c4, c5, c6, c7, c8,
				d1, d2, d3, d4, d5, d6, d7, d8,
				e1, e2, e3, e4, e5, e6, e7, e8,
				f1, f2, f3, f4, f5, f6, f7, f8,
				g1, g2, g3, g4, g5, g6, g7, g8,
				h1, h2, h3, h4, h5, h6, h7, h8
		);
		for (var s : startPieces) {
			allPieces.add(new Piece(s.charAt(0) == 'w', s.charAt(1), s.charAt(2), s.charAt(3) - '0', s.charAt(4)));
		}
		updateBoard();
	}

	void updateBoard() {
		for (var label : allLabels) {
			label.setText("");
		}
		for (var piece : allPieces) {
			var label = allLabels.get((piece.x - 'a') * 8 + piece.y - 1);
			label.setText("" + piece.symbol);
		}
	}

	@FXML TextField from;
	@FXML TextField to;
	
	@FXML Label message;
	@FXML Label status;
	
	@FXML
	void handleMove() {
		var from = this.from.getText();
		var fromX = from.charAt(0);
		var fromY = from.charAt(1) - '0';
		var fromPiece = findPieceAt(fromX, fromY);
		var to = this.to.getText();
		var toX = to.charAt(0);
		var toY = to.charAt(1) - '0';
		if (fromPiece == null) {
			message.setText("There is not piece at " + from);			
		} else if (fromX == toX && fromY == fromX) {
			message.setText("This is not a move!");
		} else {
			var toPiece = findPieceAt(toX, toY);
			if (! checkMove(fromPiece.white, fromPiece.kind, fromX, fromY, toX, toY, toPiece != null)) {
				message.setText("Illegal move, a " + fromPiece.kind + " cannot move like that");
			} else {
				if (toPiece != null) {
					if (fromPiece.white == toPiece.white) {
						message.setText("Cannot take own piece");
					} else {
						allPieces.remove(toPiece);
					}
				}
				fromPiece.x = toX;
				fromPiece.y = toY;
			}
		}
		updateBoard();
		this.from.setText("");
		this.to.setText("");
		this.from.requestFocus();
	}
	
	boolean checkMove(boolean white, char kind, char fromX, int fromY, char toX, int toY, boolean take) {
		int dx = toX - fromX, adx = Math.abs(dx);
		int dy = toY - fromY, ady = Math.abs(dy);
		switch (kind) {
		case 'K': return adx <= 1 && ady <= 1 && (! isPieceBetween(fromX, fromY, toX, toY));
		case 'B': return adx == ady && (! isPieceBetween(fromX, fromY, toX, toY));
		case 'R': return adx == 0 || ady == 0 && (! isPieceBetween(fromX, fromY, toX, toY));
		case 'Q': return adx == ady || adx == 0 || ady == 0 && (! isPieceBetween(fromX, fromY, toX, toY));
		case 'N': return adx * ady == 2;
		case 'P': {
			if (take) {
				return adx == 1 && ady == 1 && (white == (dy == 1));
			} else {
				if (adx != 0) {
					return false;
				} else if (white) {
					return dy == 1 || (fromY == 2 && dy == 2); 
				} else {
					return dy == -1 || (fromY == 7 && dy == -2); 				
				}
			}
		}
		}
		return false;
	}

	boolean isPieceBetween(char fromX, int fromY, char toX, int toY) {
		// TODO Auto-generated method stub
		return true;
	}

	Piece findPieceAt(char x, int y) {
		for (var piece : allPieces) {
			if (piece.x == x && piece.y == y) {
				return piece;
			}
		}
		return null;
	}
}
