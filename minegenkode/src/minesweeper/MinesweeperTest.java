package minesweeper;

import static org.junit.Assert.*;

import java.io.IOException;
import java.util.Random;

import org.junit.Before;
import org.junit.Test;

public class MinesweeperTest {
	
	private MinesweeperIO io = new MinesweeperIO();
	private Game game;
	private final static char HARD = 'H', MEDIUM = 'M', EASY = 'E', CUSTOM = 'C';

	@Before
	public void setUp() {
		game = new Game(EASY);
	}
	
	@Test
	public void testReveal() {
		Piece piece = randomPiece();
		game.reveal(piece);
		if (! piece.isFlagged()) {
			assertEquals(piece.isConcealed(), false);
		} else {
			assertEquals(piece.isConcealed(), true);
		}
	}
	
	@Test (expected = IllegalArgumentException.class)
	public void testIllegalCustomSize() {
		Game gc = new Game(20, 20, -200);
	}
	
	@Test
	public void testCustomSize() {
		Game gc = new Game(8, 8, 10);
		assertEquals(gc.equals(game), game.equals(gc));
	}
	
	@Test
	public void testFlag() {
		Piece piece = randomPiece();
		game.flag(piece);
		if (piece.isConcealed()) {
			assertEquals(piece.isFlagged(), true);
		} else {
			assertEquals(piece.isFlagged(), false);
		}
	}
	
	@Test
	public void testDefeat() {
		for (Piece piece : game) {
			piece.reveal();
			if (piece.isBomb()) {
				assertEquals(game.checkLoss(piece), true);
			} else {
				assertEquals(game.checkLoss(piece), false);
			}
		}
	}
	
	@Test
	public void testVictory() {
		for (Piece piece : game) {
			if (! piece.isBomb()) {
				piece.reveal();
			}
		}
		assertEquals(game.checkVictory(), true);
	}
	
	@Test
	public void testSave() {
		testReveal();
		testFlag();
		try {
			io.save("Test.txt", game);
		} catch (IOException e) {
			fail(e.getMessage());
		}
	}
	
	@Test
	public void testSaveLoad() {
		testReveal();
		testFlag();
		try {
			io.save("Test.txt", game);
			MinesweeperObjectLoader loader = io.load("Test.txt");
			assertEquals(game, loader.game);
		} catch (IOException e) {
			fail(e.getMessage());
		}
	}
	
	private Piece randomPiece() {
		Random random = new Random();
		int randIndex = random.nextInt(game.size());
		return game.getPiece(randIndex);
	}
}