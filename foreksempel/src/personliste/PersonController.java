package personliste;

import java.util.ArrayList;
import java.util.List;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;

public class PersonController {

	@FXML
	TextField innnavn;
	@FXML
	TextField innalder;
	@FXML
	Button innknapp;
	@FXML
	TextField velgnavn;
	@FXML
	Button velgknapp;
	@FXML
	Label utalder;
	@FXML
	Label status;
	
	List<Person> persons = new ArrayList<>();
	
	public void handleAddPerson() {
		String tmpname = innnavn.getText();
		int tmpage = Integer.parseInt(innalder.getText());
		Person p = new Person(tmpname,tmpage);
		persons.add(p);
		status.setText("Added person "+p.getName());
	}
	
	
	public void handleChosenName() {
		String tmpname = velgnavn.getText();
		for (Person person : persons) {
			
			if (person.getName().equals(tmpname)) {
				utalder.setText(""+person.getAge());
			}
		}
	}
	
}
