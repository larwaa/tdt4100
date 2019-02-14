package of6;

import java.util.ArrayList;
import java.util.List;

public class CleaningRotation {
	
	
	private List<Person> persons;
	private List<Room> rooms;
	
	
	
	private int currentRotation = 0;

	
	public CleaningRotation(List<Person> persons, List<Room> rooms) {
		this.persons = new ArrayList<>(persons);
		this.rooms = new ArrayList<>(rooms);
	}

	public List<Person> getPersons() {
		return persons;
	}



	public void setPersons(List<Person> persons) {
		this.persons = persons;
	}



	public List<Room> getRooms() {
		return rooms;
	}



	public void setRooms(List<Room> rooms) {
		this.rooms = rooms;
	}



	public int getCurrentRotation() {
		return currentRotation;
	}
	
	public void incrementRotation() {
		this.currentRotation += 1;
		if (this.currentRotation == this.rooms.size()) {
			this.currentRotation = 0;
		}
		this.assignRooms();
	}
	
	public void assignRooms() {
		for(Person person: persons) {
			person.setAssignedRoom(null);
		}
		for(Room room: rooms) {
			room.setCleaned(false);
		}
		for(int i = currentRotation; i<currentRotation+this.rooms.size(); i++) {
			persons.get(i%this.persons.size()).setAssignedRoom(rooms.get(i-currentRotation));
		}
	}
	
	
	
}
