package shoppingapp;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.scene.paint.Color;
import javafx.scene.text.Text;

public class ShoppingController {
	
	Shopping shopping;
	
	@FXML Text welcomeText, balance, total;
	@FXML AnchorPane availablePane, cartPane;
	@FXML TextField amountField;
	@FXML Button withdrawBtn, depositBtn;
	
	private int availX = 0;
	private int availY = 0;
	
	private int cartX = 0;
	private int cartY = 0;
	
	@FXML
	public void initialize() {
		shopping = new Shopping();
		welcomeText.setText(shopping.getUserName() + "s handlekurv");
		updateBalanceText();
		generateItemButtons();
		updateCartButtons();
	}
	
	
	public void generateItemButtons() {
		for (Item item : shopping.getAvailableItems()) {
			generateItemButton(item, availX, availY);
			this.availX += 70;
			if (availX >= 270) {
				this.availX = 0;
				this.availY += 70;
			}
		}
		save();
	}
	
	public void generateItemButton(Item item, int x, int y) {
		Button btn = new Button(item.getName() + "\n" + String.valueOf(item.getPrice()) + ",-");
		btn.setLayoutX(x);
	    btn.setLayoutY(y);
	    btn.setMinWidth(70);
	    btn.setMinHeight(70);
	    btn.setMaxWidth(70);
	    btn.setMaxHeight(70);
	    availablePane.getChildren().add(btn);
	    btn.setOnAction(new EventHandler<ActionEvent>() {
	        @Override public void handle(ActionEvent e) {
	        	String text = ((Button)e.getSource()).getText();
	        	text = text.substring(0,text.length()-2);
	        	String[] parts = text.split("\n");
				Item item = new Item(parts[0], Double.valueOf(parts[1]));
				shopping.addToCart(item);
				updateCartButtons();
				total.setText(String.valueOf("Total: " + shopping.getCartTotal() + ",-"));
	        }
	    });
	}
	
	public void updateCartButtons() {
		cartPane.getChildren().clear();
		this.cartX = 0;
		this.cartY = 0;
		for (Item item : shopping.getCart()) {
			generateCartButton(item, cartX, cartY);
			this.cartX += 70;
			if (cartX >= 270) {
				this.cartX = 0;
				this.cartY += 70;
			}
		}
		save();
	}
	
	public void generateCartButton(Item item, int x, int y) {
		Button btn = new Button(String.valueOf(item.getQuanity()) + " " + item.getName() + "\n" + String.valueOf(item.getPrice()) + ",-");
		btn.setLayoutX(x);
	    btn.setLayoutY(y);
	    btn.setMinWidth(70);
	    btn.setMinHeight(70);
	    btn.setMaxWidth(70);
	    btn.setMaxHeight(70);
	    cartPane.getChildren().add(btn);
	    btn.setOnAction(new EventHandler<ActionEvent>() {
	        @Override public void handle(ActionEvent e) {
	        	Button btn = ((Button)e.getSource());
	        	String text = btn.getText();
				Item item = textToItem(text);
				var price = shopping.removeFromCart(item);
				shopping.withdrawUserBalance(price);
				updateBalanceText();
	        	updateCartButtons();
	        }
	    });
	}
	
	private void updateBalanceText() {
		total.setText(String.valueOf("Total: " + shopping.getCartTotal() + ",-"));
		balance.setText("Balance: " + String.valueOf(shopping.getUserBalance()));
		if (shopping.getUserBalance() < 0) {
			balance.setFill(Color.RED);
		} else {
			balance.setFill(Color.GREEN);
		}
		save();
	}
	
	private Item textToItem(String text) {
		String[] parts = text.split("\n");
		return new Item(parts[0].split(" ")[1],1);
	}
	
	@FXML public void withdraw() {
		try {
			shopping.withdrawUserBalance(Double.valueOf(amountField.getText()));
			updateBalanceText();
		}
		catch (Error err) {
			throw new IllegalArgumentException("Illegal amount");
		}
		save();
	}
	
	@FXML public void deposit() {
		try {
			shopping.depositUserBalance(Double.valueOf(amountField.getText()));
			updateBalanceText();
		}
		catch (Error err) {
			throw new IllegalArgumentException("Illegal amount");
		}
		save();
	}
	
	public void save() {
		shopping.saveState();
	}
	


}
