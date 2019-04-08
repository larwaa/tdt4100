package app;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.control.ChoiceBox;
import javafx.scene.control.CheckBox;


public class StudentController {
	
	@FXML
	TextField firstName;
	@FXML
	TextField surname;
	@FXML
	TextField studentID;
	@FXML
	TextField email;
	@FXML
	ChoiceBox<Integer> year;
	@FXML
	ChoiceBox<String> study;
	@FXML
	CheckBox confirmation;
	
	public void handleClick() {
		String tempName = firstName.getText() + surname.getText();
		Student s = new Student(tempName, study.getValue(), year.getValue(), studentID.getText());
	}
	
	

}
