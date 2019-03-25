package of11;

public class Door {
	
	protected boolean isOpen;
	
	public boolean isOpen() {
		return isOpen;
	}
	
	public void close() {
		this.isOpen = false;
	}
	
	public void open() {
		this.isOpen = true;
	}
	

}
