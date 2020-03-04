package minesweeper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.input.MouseButton;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.GridPane;

public class MinesweeperController2 {
	
	@FXML
	GridPane gridPane = new GridPane();
	@FXML
	Button easy, medium, hard, reset, load, saves, easy1, medium1, hard1;
	@FXML
	AnchorPane anchorPane;
	@FXML
	Label bombs, victory, difficultyText;
	
	MinesweeperIO io = new MinesweeperIO();
	List<MyButton> buttonList;
	Game game;
	int clicks = 0;
	final static char HARD = 'H', MEDIUM = 'M', EASY = 'E', CUSTOM = 'C';
	private char difficulty;
	private Map<Character, int[]> difficultyMap = Map.of(HARD, new int[]{16, 32, 99}, MEDIUM, new int[] {16, 16, 40}, EASY, new int[] {8, 8, 10});
	
	public void handleReset() {
		this.buttonList.clear();
		if (difficulty == EASY) {
			handleEasy();
		} else if (difficulty == MEDIUM) {
			handleMedium();
		} else if (difficulty == HARD){
			handleHard();
		} else if (difficulty == CUSTOM) {
			
		}

		this.refreshGame();
		this.saves.setDisable(false);
		this.victory.setVisible(false);
		this.victory.setDisable(true);
		this.gridPane.setDisable(false);
		
	}
	
	public void handleDifficulty(char difficulty) {
		int verticalSize, horizontalSize, numBombs;
		if (difficultyMap.containsKey(difficulty)){
			verticalSize = difficultyMap.get(difficulty)[0];
			horizontalSize = difficultyMap.get(difficulty)[1];
			numBombs = difficultyMap.get(difficulty)[2];
		} else {
			//TODO
			verticalSize = 0;
			horizontalSize = 0;
			numBombs = 0;
		}
		
		try {
			game = new Game(verticalSize, horizontalSize, numBombs);
			buttonList = new ArrayList<>(game.size());
			initGame();
			//refreshGame();
		} catch (IllegalArgumentException e) {
			e.getMessage();
		}
	}

	private void setButton() {
		int i = 0;
		for (Piece piece : game) {
			MyButton button = new MyButton(piece, i);
			button.setMinWidth(30);
			button.setMinHeight(30);
			button.setOnMouseClicked(e ->{
				if (e.getButton() == MouseButton.PRIMARY) {
					onLeftClick(button);
				} else if (e.getButton() == MouseButton.SECONDARY) {
					onRightClick(button);
				}
			});
			this.setStyle(button);
			this.buttonList.add(button);
			this.gridPane.add(button, button.getX(), button.getY());
			i++;
		}
	}
	
	private void setStyle(MyButton button) {
		Piece piece = button.getPiece();
		
		if (! piece.isCovered()) {
			button.uncover();
			button.setText(piece.toString());
			button.setStyle("-fx-background-color: #E2E2E2; ");
		} else if (piece.isFlagged()){
			button.setText("▲");
			button.setStyle("-fx-text-fill: #ff0000; ");
		}
	}
	
	private void initBoard() {
		this.anchorPane.setPrefHeight(game.getHorizontalSize()*30 + 10);
		this.anchorPane.setPrefWidth(game.getVerticalSize()*30 + 10);
		this.anchorPane.getChildren().remove(easy);
		this.anchorPane.getChildren().remove(medium);
		this.anchorPane.getChildren().remove(hard);
		this.anchorPane.getChildren().remove(difficultyText);
		this.reset.setDisable(false);
		this.saves.setDisable(false);
		this.victory.setVisible(false);
		this.victory.setDisable(true);
		this.gridPane.setDisable(false);
		setRemainingBombText();
	}
	
	private void initGame() {
		initBoard();
		setButton();
	}
	
	private void setRemainingBombText() {
		bombs.setText(Integer.toString(game.getRemainingBombs()));
	}
	
	private void onRightClick(MyButton button) {
		Piece piece = button.getPiece();
		game.flag(piece);
		
		if (piece.isCovered()) {
			clicks++;
		}
		
		if (piece.isFlagged()) {
			button.setText("▲");
			button.setStyle("-fx-text-fill: #ff0000; ");
		} else if (piece.isCovered()){
			button.setText("");
			button.setStyle("-fx-text-fill: #000000; ");
		}
		
		setRemainingBombText();
		checkVictory();
	}
	
	private void onLeftClick(MyButton button) {
		Piece piece = button.getPiece();
		
		if (! piece.isFlagged()){
			game.reveal(piece);
			
			button.uncover();
			button.setText(piece.toString());
			button.setStyle("-fx-background-color: #E2E2E2; ");
			
			/*
			if (! piece.isBomb() && piece.getNumBombs() == 0) {
				int x = piece.getX();
				int y = piece.getY();
				
				for (int i=-1; i<=1; i++) {
					for (int j=-1; j<=1; j++) {
						int tempIndex = getIndex(x + j, y + i);
						if (! (tempIndex < 0 || tempIndex >= grid.getSize())) {
							button = buttonList.get(tempIndex);
							if (button.isCovered() && ! button.getPiece().isCovered()) { 
								this.onLeftClick(button);
							}
						}
					}
				}
			}
			*/
			this.refreshGame();
			this.checkLoss(piece);
			this.checkVictory();
		}
	}
	
	private void refreshGame() {
		gridPane.getChildren().clear();
		for (MyButton button : buttonList) {
			gridPane.add(button, button.getX(), button.getY());
		}
		setRemainingBombText();
	}
	
	private void checkVictory() {
		if (game.checkVictory()) {
			this.gridPane.setDisable(true);
			this.victory.setDisable(false);
			this.victory.setText("😎");
			this.victory.setVisible(true);
			this.saves.setDisable(true);
		}
	}
	
	private void checkLoss(Piece p) {
		if (game.checkLoss(p)) {
			this.gridPane.setDisable(true);
			this.victory.setDisable(false);
			this.victory.setText("😵");
			this.victory.setVisible(true);
		}
	}
	
	//TODO
	/*
	public void save() {
		try {
			io.save("Minesweeper.txt", game);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void load() {
		try {
			this.buttonList.clear();
			this.saves.setDisable(false);
			this.gridPane.setDisable(false);
			this.victory.setVisible(false);
			this.victory.setDisable(true);
			MinesweeperObjectLoader loader = io.load("Minesweeper.txt");
			this.game = loader.grid;
			if (game.getSize() == 512) {
				this.difficulty = 'H';
			} else if (game.getSize() == 256) {
				this.difficulty = 'M';
			} else if (game.getSize() == 64) {
				this.difficulty = 'E';
			}
			initGame();
			this.refreshGrid();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	*/
}	
