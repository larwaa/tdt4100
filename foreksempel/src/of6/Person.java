package of6;

public class Person {
	
	private String name;
	private Room assignedRoom;
	
	
	
	public Person(String name) {
		super();
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

	@Override
	public String toString() {
		if (this.assignedRoom != null) {
		return "Person [name=" + name + ", assignedRoom=" + assignedRoom.getName() + "]";
		}
		return "Person [name=" + name + ", assignedRoom=" + "fri denne uka" + "]";
	}
	
	
	
	

}
