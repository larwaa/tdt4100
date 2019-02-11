package of6forberedelse;

import java.util.ArrayList;
import java.util.List;

import javafx.collections.ObservableList;

public class CleaningRotation {
	
	
	private List<Person>  persons ;
	private List<Room>  rooms ;
	private int currentRotation = 0;
	
	public CleaningRotation(ObservableList<Person> persons, ObservableList<Room> rooms) {
		this.persons = persons;
		this.rooms = rooms;
	}
	
	public void addPerson(Person p) {
		persons.add(p);
	}
	
	public void addRoom(Room room) {
		rooms.add(room);
	}
	
	public void newCleaningRotation() {
		
	}
	
	public void incrementRotation() {
		this.currentRotation += 1;
		if(this.currentRotation == this.rooms.size()) {
			this.currentRotation = 0;
		}
		this.rooms.forEach(room -> room.setCleaned(false));
		this.assignRooms();
	}
	
	public List<Person> getPersons() {
		return persons;
	}

	public List<Room> getRooms() {
		return rooms;
	}

	public void assignRooms() {
		persons.forEach(person -> person.setAssignedRoom(null));
		for(int i=currentRotation; i<currentRotation + this.rooms.size(); i++) {
			persons.get(i%this.persons.size()).setAssignedRoom(rooms.get(i-currentRotation));
		}
	}
}
