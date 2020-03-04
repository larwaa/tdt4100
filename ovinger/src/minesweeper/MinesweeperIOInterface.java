package minesweeper;

import java.io.IOException;

public interface MinesweeperIOInterface {
	
	public void save(String filename, Grid grid) throws IOException;
	
	public MinesweeperObjectLoader load(String filename) throws IOException;

}
