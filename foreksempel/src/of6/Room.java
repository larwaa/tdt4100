package of6;

public class Room {
	
	
	private String name;
	private boolean cleaned = false;
	
	
	
	public Room(String name) {
		super();
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isCleaned() {
		return cleaned;
	}
	public void setCleaned(boolean cleaned) {
		this.cleaned = cleaned;
	}
	
	public String toString() {
		if (cleaned) {
			return this.name + " - rent";
		}
		return this.name + " - skittent";
	}
	
	
}
