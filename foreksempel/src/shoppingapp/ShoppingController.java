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
	
	//Felter for elementer i FXML
	@FXML Text welcomeText, total;
	@FXML AnchorPane availablePane, cartPane;
	@FXML TextField nameNew, priceNew;
	@FXML Pane newPane;
	
	//Tilstandsvariabler for å holde styr på ledige x- og y-koordinater for Buttons
	private int availX = 0;
	private int availY = 0;
	private int cartX = 0;
	private int cartY = 0;
	
	//HashMap (omtrent som en dictionary i Python) for å holde oversikt over hvilken Item som tilhører en Button
	private HashMap<Button, Item> cartButtonToItem = new HashMap<>();
	private HashMap<Button, Item> availButtonToItem = new HashMap<>();
	
	//Metode som kjøres automatisk ved oppstart (fordi den heter initialize)
	@FXML
	public void initialize() {
		shopping = new Shopping();
		updateBalanceText();
		generateItemButtons();
		updateCartButtons();
		
		//Setter total-tekstfeltet først av alle elementer for å gjøre det synlig
		total.toFront();	
	}
	
	//Genererer knapper for tilgjengelige varer/Items
	public void generateItemButtons() {
		//Generer knapper for hver tilgjengelige Item i angitte x- og y-koordinater
		for (Item item : shopping.getAvailableItems()) {
			generateItemButton(item, availX, availY);	
			
			//Oppdaterer hvilke koordinater som er ledige
			this.availX += 69;
			if (availX >= 269) {
				this.availX = 0;
				this.availY += 69;
			}
		}
		save();
	}
	
	//Genererer én knapp for angitt Item-objekt og koordinater
	public void generateItemButton(Item item, int x, int y) {
		String btnText = item.getName() + "\n" + String.valueOf(item.getPrice()) + ",-";
		Button btn = new Button(btnText);
		
		//Angir hvor på brukergrensesnittet knappen skal være og hvor stor den er
		btn.setLayoutX(x);
	    btn.setLayoutY(y);
	    btn.setMinWidth(69);
	    btn.setMinHeight(69);
	    btn.setMaxWidth(69);
	    btn.setMaxHeight(69);
	    
	    //Setter oppførsel for knappen når man har pekeren over knappen (endrer tekst)
	    btn.hoverProperty().addListener((ov, oldValue, newValue) -> {
	        if (newValue) {
	            btn.setText("Legg i\nkurv");
	            btn.setCursor(Cursor.HAND);
	        } else {
	            btn.setText(btnText);
	        }
	    });
	    availButtonToItem.put(btn, item);		//Mapper Button til Item i HashMap
	    availablePane.getChildren().add(btn);		//Legger knappen til i brukergrensesnittet'
	    
	    //Setter hva som skal skje når knappen trykkes på
	    btn.setOnAction(new EventHandler<ActionEvent>() {
	        @Override public void handle(ActionEvent e) {
	        	Button btn = ((Button)e.getSource());			//Henter knappen som har blitt trykket
	        	Item item = availButtonToItem.get(btn);
				shopping.addToCart(item);			//Oppdaterer modellen (shopping-objektet)
				updateCartButtons();
				total.setText(String.valueOf("Total: " + shopping.getCartTotal() + ",-"));
	        }
	    });
	}
	
	//Fjerner alle knapper og legger dem til på nytt slik at man ikke får hull når man fjerner en knapp
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
	
	//Genererer Buttons for Items som er i handlekurven
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
	
	//Endrer teksten for verdien av handlekurven
	private void updateBalanceText() {
		total.setText(String.valueOf("Total: " + shopping.getCartTotal() + ",-"));
		save();
	}
	
	//Lagrer tilstand
	public void save() {
		shopping.saveState();
		shopping.saveItems();
	}
	
	//Legger til tilgjengelig vare
	@FXML public void addAvailable() {
		var itemName = nameNew.getText();
		
		//Validerer at tekstfeltet har blitt skrevet i
		if (itemName.length() == 0) {
			toggleView();
			throw new IllegalArgumentException("Navnefelt mangler verdi");
		}
		var itemPrice = priceNew.getText();
		
		//Legger til Item-objekt i kurv, og utløser unntak om pris-feltet ikke inneholder gyldig heltall
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
		
		//Fjerner tekst fra tekstfelt når Item er lagt til i tilgjengelige varer
		nameNew.setText("");
		priceNew.setText("");
	}
	
	//Endrer hva som er synlig og mulig å trykke på
	@FXML public void toggleView() {
		if (!newPane.isVisible()) {
			newPane.setVisible(true);
			newPane.toFront();
			
			//forEach går gjennom hvert element (her (key, value)-par) i listen den kalles på
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
