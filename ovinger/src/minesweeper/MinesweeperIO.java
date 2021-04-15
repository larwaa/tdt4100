package minesweeper;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class MinesweeperIO implements MinesweeperIOInterface {

	@Override
	public void save(String filename, Game game) throws IOException {
		PrintWriter writer = new PrintWriter(filename);
		
		String s = String.format("%s,%s,%s\n", game.getVerticalSize(), game.getHorizontalSize(), game.getDifficulty());
		
		for (Piece piece : game) {
			s += String.format("%s,%s,%s;", piece.isBomb(), piece.isConcealed(), piece.isFlagged());
		}
		
		writer.print(s);
		writer.flush();
		writer.close();
	}

	@Override
	public MinesweeperObjectLoader load(String filename) throws IOException {
		Scanner scanner = new Scanner(new File(filename));
		
		String[] gridString = scanner.nextLine().split(",");
		
		int verticalSize = Integer.parseInt(gridString[0]);
		int horizontalSize = Integer.parseInt(gridString[1]);
		char difficulty = gridString[2].charAt(0);

		String[] pieces = scanner.nextLine().split(";");
		List<Piece> pieceList = new ArrayList<>();
		
		for (int i = 0; i < pieces.length; i++) {
			if (pieces[i].length() > 0) {
				String[] pieceString = pieces[i].split(",");
				
				boolean bomb = Boolean.parseBoolean(pieceString[0]);
				boolean covered = Boolean.parseBoolean(pieceString[1]);
				boolean flagged = Boolean.parseBoolean(pieceString[2]);
				int x = i % horizontalSize;
				int y = i / horizontalSize;
				
				Piece piece = new Piece(bomb, covered, flagged, x, y);
				
				pieceList.add(piece);
			}
		}
		
		Game game = new Game(verticalSize, horizontalSize, pieceList, difficulty);
		
		MinesweeperObjectLoader loader = new MinesweeperObjectLoader();
		loader.game = game;
		scanner.close();
		
		return loader;
	}
}
