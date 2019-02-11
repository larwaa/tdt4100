package of6forberedelse;

public class Person {
	
	private String name;
	private Room assignedRoom;
	
	public Person(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Room getAssignedRoom() {
		return assignedRoom;
	}
	public void setAssignedRoom(Room assignedRoom) {
		this.assignedRoom = assignedRoom;
	}
	public String toString() {
		String room = this.assignedRoom!=null ? " - " + this.assignedRoom.getName() : "";
		return this.name + room;
	}

}
