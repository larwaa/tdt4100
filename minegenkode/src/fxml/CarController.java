package fxml;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class CarController {
	
	@FXML
	TextField name;
	@FXML
	TextField age;
	@FXML
	Button button;
	@FXML
	Label carLabel;
	
	Car2 car = new Car2("MX34323", 15);
	
	public void handleClick() {
		int tmpage = Integer.parseInt(age.getText());
		Person p = new Person(name.getText(), tmpage);
		car.placePerson(p);
		carLabel.setText(car.toString());
		if (car.isFull()) {
			button.setDisable(true);
		}
	}
	
	public static void main(String[] args) {
		
	}
}
