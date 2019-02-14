package of6forberedelse;

import javafx.beans.property.SimpleBooleanProperty;

public class Room {
	
	private String name;
	private boolean cleaned;
	
	
	public Room(String name) {
		this.name = name;
		this.cleaned = false;
	}
	public Room(String name, boolean cleaned) {
		this(name);
		this.cleaned = cleaned;
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
		String s = cleaned ? "vasket" : "ikke vasket";
		return this.name + " - " + s;
	}
	
	

}
