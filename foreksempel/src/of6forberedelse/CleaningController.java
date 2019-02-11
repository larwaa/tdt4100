package of6forberedelse;

import java.util.Arrays;

import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.CheckBox;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.Pane;

public class CleaningController {
	
	@FXML private ListView<Person> personList;
	@FXML private ListView<Room> roomList;
	
	@FXML private Label cleaningLabel;
	@FXML private CheckBox cleanCheckbox;
	
	@FXML private Pane pane;
	@FXML private TextField name;
	
	
	
	private CleaningRotation cleaningRotation; 
	private Person selectedPerson;
	private ObservableList<Person> listViewData;
	private ObservableList<Room> tableViewData;
	


	
	@FXML
	public void initialize() {

		listViewData = FXCollections.observableArrayList(new Person("Vegard"), new Person("Eirik"), new Person("Per Anders"), new Person("Simen"));
		personList.setItems(listViewData);
		
		
		tableViewData = FXCollections.observableArrayList(new Room("Stue"), new Room("Kjøkken"), new Room("Gang"), new Room("Bad", true));
		
		cleaningRotation = new CleaningRotation(listViewData, tableViewData);
		
		roomList.setItems(tableViewData);
		
		
		
		
		personList.getSelectionModel().selectedItemProperty().addListener((observable, oldValue, newValue) -> {
		    this.selectedPerson = newValue;
		    cleaningLabel.setVisible(true);
		    cleanCheckbox.setVisible(false);
		    if(newValue == null) {
		    	return;
		    }
		    
		    String room = "Ingenting så langt";
		    if(this.selectedPerson.getAssignedRoom() != null) {
		    	room = newValue.getAssignedRoom().getName();
			    cleanCheckbox.setVisible(true);
			    cleanCheckbox.setSelected(newValue.getAssignedRoom().isCleaned());
		    }
		    cleaningLabel.setText(newValue.getName() + " har ansvar for å vaske: " + room);
		});
		this.updateView();
		
	}
	
	public void updateView() {
		this.roomList.setItems(null);
		this.roomList.setItems(FXCollections.observableArrayList(this.cleaningRotation.getRooms()));
		this.personList.getSelectionModel().select(-1);
		this.personList.setItems(null);
		this.personList.setItems(FXCollections.observableArrayList(this.cleaningRotation.getPersons()));

	}
	
	public void generateNewCleaingRotation() {
		this.cleanCheckbox.setVisible(false);
		this.cleaningLabel.setVisible(false);
		cleaningRotation.incrementRotation();

		updateView();

	}
	
	public void haveCleaned(ActionEvent event) {
		if (this.selectedPerson.getAssignedRoom() != null) {
			this.selectedPerson.getAssignedRoom().setCleaned(cleanCheckbox.isSelected());
		}
		this.updateView();
	}
	
	public void addPerson() {
		Person p = new Person(name.getText());
		cleaningRotation.addPerson(p);
		pane.setVisible(false);
		this.updateView();
	}
	
	public void getPersonPane() {
		pane.setVisible(true);
	}
}
