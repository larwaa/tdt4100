package shoppingapp;

import java.util.HashMap;

import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.fxml.FXML;
import javafx.scene.Cursor;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.AnchorPane;
import javafx.scene.layout.Pane;
import javafx.scene.text.Text;

public class ShoppingController {
	
	Shopping shopping;
	
	@FXML Text welcomeText, total;
	@FXML AnchorPane availablePane, cartPane;
	
	private int availX = 0;
	private int availY = 0;
	
	private int cartX = 0;
	private int cartY = 0;
	
	private HashMap<Button,Item> cartButtonToItem = new HashMap<>();
	private HashMap<Button,Item> availButtonToItem = new HashMap<>();
	
	@FXML TextField nameNew, priceNew;
	@FXML Pane newPane;
	
	@FXML
	public void initialize() {
		shopping = new Shopping();
		updateBalanceText();
		generateItemButtons();
		updateCartButtons();
		total.toFront();
	}
	
	
	public void generateItemButtons() {
		for (Item item : shopping.getAvailableItems()) {
			generateItemButton(item, availX, availY);
			this.availX += 69;
			if (availX >= 269) {
				this.availX = 0;
				this.availY += 69;
			}
		}
		save();
	}
	
	public void generateItemButton(Item item, int x, int y) {
		String btnText = item.getName() + "\n" + String.valueOf(item.getPrice()) + ",-";
		Button btn = new Button(btnText);
		btn.setLayoutX(x);
	    btn.setLayoutY(y);
	    btn.setMinWidth(69);
	    btn.setMinHeight(69);
	    btn.setMaxWidth(69);
	    btn.setMaxHeight(69);
	    btn.hoverProperty().addListener((ov, oldValue, newValue) -> {
	        if (newValue) {
	            btn.setText("Legg i\nkurv");
	            btn.setCursor(Cursor.HAND);
	        } else {
	            btn.setText(btnText);
	        }
	    });
	    availButtonToItem.put(btn, item);
	    availablePane.getChildren().add(btn);
	    btn.setOnAction(new EventHandler<ActionEvent>() {
	        @Override public void handle(ActionEvent e) {
	        	Button btn = ((Button)e.getSource());
	        	Item item = availButtonToItem.get(btn);
				shopping.addToCart(item);
				updateCartButtons();
				total.setText(String.valueOf("Total: " + shopping.getCartTotal() + ",-"));
	        }
	    });
	}
	
	public void updateCartButtons() {
		cartPane.getChildren().clear();
		cartButtonToItem.clear();
		this.cartX = 0;
		this.cartY = 0;
		for (Item item : shopping.getCart()) {
			generateCartButton(item, cartX, cartY);
			this.cartX += 69;
			if (cartX >= 269) {
				this.cartX = 0;
				this.cartY += 69;
			}
		}
		save();
	}
	
	public void generateCartButton(Item item, int x, int y) {
		String btnText = String.valueOf(item.getQuanity()) + " " + item.getName() + "\n" + String.valueOf(item.getTotalPrice()) + ",-";
		Button btn = new Button(btnText);
		btn.setLayoutX(x);
	    btn.setLayoutY(y);
	    btn.setMinWidth(69);
	    btn.setMinHeight(69);
	    btn.setMaxWidth(69);
	    btn.setMaxHeight(69);
	    cartButtonToItem.put(btn, item);
	    btn.hoverProperty().addListener((ov, oldValue, newValue) -> {
	        if (newValue) {
	            btn.setText("Fjern fra\nkurv");
	            btn.setCursor(Cursor.HAND);
	        } else {
	            btn.setText(btnText);
	        }
	    });
	    cartPane.getChildren().add(btn);
	    btn.setOnAction(new EventHandler<ActionEvent>() {
	        @Override public void handle(ActionEvent e) {
	        	Button btn = ((Button)e.getSource());
				Item item = cartButtonToItem.get(btn);
				shopping.removeFromCart(item);
				updateBalanceText();
	        	updateCartButtons();
	        }
	    });
	}
	
	private void updateBalanceText() {
		total.setText(String.valueOf("Total: " + shopping.getCartTotal() + ",-"));
		save();
	}
	
	public void save() {
		shopping.saveState();
		shopping.saveItems();
	}
	
	@FXML public void addAvailable() {
		var itemName = nameNew.getText();
		if (itemName.length() == 0) {
			toggleView();
			throw new IllegalArgumentException("Navnefelt mangler verdi");
		}
		var itemPrice = priceNew.getText();
		try {
			Item item = new Item(itemName, Integer.valueOf(itemPrice));
			shopping.addAvailableItem(item);
			generateItemButton(item, this.availX, this.availY);
			toggleView();
			save();
		} catch (NumberFormatException e) {
			toggleView();
			throw new NumberFormatException("Ugyldig heltall: " + itemPrice);
		}
		nameNew.setText("");
		priceNew.setText("");
	}
	
	@FXML public void toggleView() {
		if (!newPane.isVisible()) {
			newPane.setVisible(true);
			newPane.toFront();
			cartButtonToItem.forEach((key, value) -> key.setDisable(true));
			availButtonToItem.forEach((key, value) -> key.setDisable(true));
		} else {
			newPane.setVisible(false);
			newPane.toBack();
			cartButtonToItem.forEach((key, value) -> key.setDisable(false));
			availButtonToItem.forEach((key, value) -> key.setDisable(false));
		}
		
	}
	
}
