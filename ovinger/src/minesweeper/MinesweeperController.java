package minesweeper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseButton;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.Pane;

public class MinesweeperController {
	
	@FXML
	GridPane gridPane = new GridPane();
	@FXML
	Button easy, medium, hard, reset, load, saves, custom, newGame;
	@FXML
	AnchorPane anchorPane;
	@FXML
	Pane topPane, difficultyPane;
	@FXML
	Label bombs, victory, difficultyText, errorMessage;
	@FXML
	TextField rows, columns, numBombs;
	
	private MinesweeperIO io = new MinesweeperIO();
	private List<MyButton> buttonList;
	private Game game;
	private final static char HARD = 'H', MEDIUM = 'M', EASY = 'E', CUSTOM = 'C';
	private char difficulty;
	
	public void handleNewGame() {
		buttonList.clear();
		refreshGame();
		newGame.setDisable(true);
		victory.setVisible(false);
		victory.setDisable(true);
		saves.setDisable(true);
		reset.setDisable(true);
		gridPane.setDisable(false);
		anchorPane.getChildren().add(difficultyPane);
	}
	
	public void handleReset() {
		buttonList.clear();
		handleDifficulty();
		refreshGame();
		saves.setDisable(false);
		victory.setVisible(false);
		victory.setDisable(true);
		gridPane.setDisable(false);
	}

	public void easy() {
		this.difficulty = EASY;
		handleDifficulty();
	}
	
	public void medium() {
		this.difficulty = MEDIUM;
		handleDifficulty();
	}
	
	public void hard() {
		this.difficulty = HARD;
		handleDifficulty();
	}
	
	public void custom() {
		this.difficulty = CUSTOM;
		handleDifficulty();
	}
	
	public void handleDifficulty() {
		int verticalSize, horizontalSize, numBombs;
		
		if (difficulty == HARD || difficulty == MEDIUM || difficulty == EASY) {
			game = new Game(difficulty);
			
			buttonList = new ArrayList<>(game.size());
			initGame();
			setButton();
			setRemainingBombText();
			
		} else if (difficulty == CUSTOM) {
			try {
				verticalSize = Integer.parseInt(rows.getText());
				horizontalSize = Integer.parseInt(columns.getText());
				numBombs = Integer.parseInt(this.numBombs.getText());
				
				try {
					game = new Game(verticalSize, horizontalSize, numBombs);
					buttonList = new ArrayList<>(game.size());
					initGame();
					setButton();
					setRemainingBombText();
					
				} catch (IllegalArgumentException e) {
					e.getMessage();
					errorMessage.setText("Maks dimensjoner: 32 x 32, maks bomber: størrelse / 4");
				}
				
			} catch (NumberFormatException e) {
				e.getMessage();
				errorMessage.setText("Input må være tall!");
			}
			
		} else {
			throw new UnknownError("Unknown Error");
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
			setStyle(button);
			this.buttonList.add(button);
			this.gridPane.add(button, button.getX(), button.getY());
			i++;
		}
	}
	
	private void setStyle(MyButton button) {
		Piece piece = button.getPiece();
		
		if (! piece.isConcealed()) {
			button.reveal();
		} else if (piece.isFlagged()) {
			button.flag(true);
		} else if (!piece.isFlagged()) {
			button.flag(false);
		}
	}
	
	private void initBoard() {
		anchorPane.setPrefHeight(game.getHorizontalSize()*30 + 10);
		anchorPane.setPrefWidth(game.getVerticalSize()*30 + 10);
		anchorPane.getChildren().remove(difficultyPane);
		
		this.reset.setDisable(false);
		newGame.setDisable(false);
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
	
	private void flag(MyButton button) {
		Piece piece = button.getPiece();
		game.flag(piece);
		setStyle(button);
	}
	
	private void reveal(MyButton button) {
		Piece piece = button.getPiece();
		game.reveal(piece);
		button.reveal();
	}
	
	private void onRightClick(MyButton button) {
		flag(button);
		setRemainingBombText();
	}
	
	private void onLeftClick(MyButton button) {
		Piece piece = button.getPiece();
		
		if (! piece.isFlagged() && piece.isConcealed()){
			reveal(button);
			
			this.refreshGame();
			this.checkLoss(piece);
			this.checkVictory();
		} else if (! piece.isConcealed()) {
			reveal(button);
			this.refreshGame();
			this.checkLoss(piece);
			this.checkVictory();
			this.checkLoss();
			}
	}
	
	private void refreshGame() {
		gridPane.getChildren().clear();
		for (MyButton button : buttonList) {
			setStyle(button);
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
	
	private void checkLoss() {
		if (game.checkCompleteLoss()){
			this.gridPane.setDisable(true);
			this.victory.setDisable(false);
			this.victory.setText("😵");
			this.victory.setVisible(true);
		}
	}
	
	public void save() {
		try {
			io.save("Minesweeper.txt", game);
			load.setDisable(false);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void load() {
		try {
			MinesweeperObjectLoader loader = io.load("Minesweeper.txt");
			this.buttonList.clear();
			this.saves.setDisable(false);
			this.gridPane.setDisable(false);
			this.victory.setVisible(false);
			this.victory.setDisable(true);
			this.game = loader.game;
			this.difficulty = game.getDifficulty();
			initGame();
			this.refreshGame();
		} catch (IOException e) {
			e.getMessage();
			load.setDisable(true);
		}
	}
}	
