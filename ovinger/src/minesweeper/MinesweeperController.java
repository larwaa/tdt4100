package minesweeper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.input.MouseButton;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.GridPane;

public class MinesweeperController {
	
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
	Grid grid;
	int clicks = 0;
	private char difficulty;

	public void handleReset() {
		this.buttonList.clear();
		if (this.difficulty == 'E') {
			handleEasy();
		} else if (this.difficulty == 'M') {
			handleMedium();
		} else {
			handleHard();
		}

		this.refreshGrid();
		this.saves.setDisable(false);
		this.victory.setVisible(false);
		this.victory.setDisable(true);
		this.gridPane.setDisable(false);
		
	}
	
	public void handleEasy() {
		this.difficulty = 'E';
		int verticalSize = 8;
		int horizontalSize = 8;
		int numBombs = 10;
		this.grid = new Grid(verticalSize, horizontalSize, numBombs);
		this.buttonList = new ArrayList<>(grid.getSize());
		initGame();
		refreshGrid();
	}
	
	public void handleMedium() {
		this.difficulty = 'M';
		int verticalSize = 16;
		int horizontalSize = 16;
		int numBombs = 40;
		this.grid = new Grid(verticalSize, horizontalSize, numBombs);
		this.buttonList = new ArrayList<>(grid.getSize());
		initGame();
		refreshGrid();
	}
	
	public void handleHard() {
		this.difficulty = 'H';
		int verticalSize = 16;
		int horizontalSize = 32;
		int numBombs = 99;
		this.grid = new Grid(verticalSize, horizontalSize, numBombs);
		this.buttonList = new ArrayList<>(grid.getSize());
		initGame();
		refreshGrid();
	}
	
	private void setButton() {
		int i = 0;
		for (Piece piece : grid) {
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
		this.anchorPane.setPrefHeight(grid.getHorizontalSize()*30 + 10);
		this.anchorPane.setPrefWidth(grid.getVerticalSize()*30 + 10);
		this.anchorPane.getChildren().remove(easy);
		this.anchorPane.getChildren().remove(medium);
		this.anchorPane.getChildren().remove(hard);
		this.anchorPane.getChildren().remove(difficultyText);
		this.reset.setDisable(false);
		this.bombs.setText(Integer.toString(grid.getNumBombs() - grid.getNumFlag()));
		this.saves.setDisable(false);
		this.victory.setVisible(false);
		this.victory.setDisable(true);
		this.gridPane.setDisable(false);
	}
	
	private void initGame() {
		initBoard();
		setButton();
	}
	
	private void onRightClick(MyButton button) {
		Piece piece = button.getPiece();
		grid.flag(piece);
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
		
		this.bombs.setText(Integer.toString(grid.getNumBombs() - grid.getNumFlag()));
		this.checkVictory();
	}
	
	private int getIndex(int x, int y) {
		return y * grid.getHorizontalSize() + x;
	}
	
	private void onLeftClick(MyButton button) {
		Piece piece = button.getPiece();
		if (piece.isCovered()) {
			clicks++;
		}
		if (! piece.isFlagged()){
			grid.uncover(piece);
			
			button.uncover();
			button.setText(piece.toString());
			button.setStyle("-fx-background-color: #E2E2E2; ");
			
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
			this.refreshGrid();
			this.checkLoss(piece);
			this.checkVictory();
		}
	}
	
	private void refreshGrid() {
		this.gridPane.getChildren().clear();
		for (MyButton button : this.buttonList) {
			this.gridPane.add(button, button.getX(), button.getY());
		this.bombs.setText(Integer.toString(grid.getNumBombs() - grid.getNumFlag()));
		}
	}
	
	private void checkVictory() {
		if (grid.checkVictory()) {
			this.gridPane.setDisable(true);
			this.victory.setDisable(false);
			this.victory.setText("😎");
			this.victory.setVisible(true);
			this.saves.setDisable(true);
		}
	}
	
	private void checkLoss(Piece p) {
		if (grid.checkLoss(p)) {
			this.gridPane.setDisable(true);
			this.victory.setDisable(false);
			this.victory.setText("😵");
			this.victory.setVisible(true);
		}
	}
	
	public void save() {
		try {
			io.save("Minesweeper.txt", grid);
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
			this.grid = loader.grid;
			if (grid.getSize() == 512) {
				this.difficulty = 'H';
			} else if (grid.getSize() == 256) {
				this.difficulty = 'M';
			} else if (grid.getSize() == 64) {
				this.difficulty = 'E';
			}
			initGame();
			this.refreshGrid();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}	
