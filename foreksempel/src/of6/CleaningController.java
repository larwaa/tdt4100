package of6;



import java.util.Arrays;
import java.util.List;

import javafx.collections.FXCollections;
import javafx.fxml.FXML;
import javafx.scene.control.CheckBox;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;

public class CleaningController {
	
	@FXML private ListView<Person> personList;
	@FXML private ListView<Room> roomList;
	
	@FXML private Label label;
	@FXML private CheckBox cleanedCheckbox;
	
	private CleaningRotation cleaningRotation;
	private Person selectedPerson;
	
	@FXML
	public void initialize() {
		List<Room> rooms = Arrays.asList(new Room("Stue"), new Room("Kjøkken"), new Room("Bad"), new Room("Gang"));
		List<Person> persons = Arrays.asList(new Person("Vegard"), new Person("Per Anders"), new Person("Simen"), new Person("Eirik"));
		cleaningRotation = new CleaningRotation(persons, rooms);
		
		label.setVisible(false);
		cleanedCheckbox.setVisible(false);
		
		
		personList.getSelectionModel().selectedItemProperty()
				.addListener((observable, oldValue, newValue) -> {
			this.selectedPerson = newValue;
			if (newValue == null) {
				return;
			}
			
			String room = "Ingen ansvar";
			cleanedCheckbox.setVisible(false);
			
			if (this.selectedPerson.getAssignedRoom() != null) {
				room = this.selectedPerson.getAssignedRoom().getName();
				cleanedCheckbox.setVisible(true);
				cleanedCheckbox.setSelected(this.selectedPerson.getAssignedRoom().isCleaned());
			}
			label.setVisible(true);
			label.setText(this.selectedPerson.getName() + " har ansvar for å vaske: " + room);
			
			
		});
		
		
		
		this.updateView();
	}
	
	public void updateView() {
		this.roomList.setItems(FXCollections.observableArrayList(this.cleaningRotation.getRooms()));
		this.personList.setItems(FXCollections.observableArrayList(this.cleaningRotation.getPersons()));
	}
	
	public void haveCleaned() {
		this.selectedPerson.getAssignedRoom().setCleaned(cleanedCheckbox.isSelected());
		this.updateView();
	}
	
	public void newCleaningRotation() {
		cleaningRotation.incrementRotation();
		this.updateView();
	}
}
