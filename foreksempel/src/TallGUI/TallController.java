package TallGUI;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class TallController {

	@FXML 
	TextField tall;
	@FXML 
	Button button;
	@FXML 
	Label squared;
	@FXML 
	Label doubled;
	
	Tall ti = new Tall();
	
	@FXML public void handleClick() {
		ti.setTall(Integer.parseInt(tall.getText()));
		squared.setText(""+ti.getSquared());
		doubled.setText(""+ti.getDoubled());
	}
}
