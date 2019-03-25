package of11;

public class SafeDoor extends Door{
	
	private String correctCombination; 
	
	public SafeDoor(String correctCombination) {
		this.correctCombination = correctCombination;
	}
	
	public void open(String combination) {
		if (this.correctCombination.equals(combination)) {
			super.open();
		}
	}
	
	public void open() {
		return;
	}
	
	public static void main(String[] args) {
		SafeDoor safe = new SafeDoor("123");
		safe.open("123");
		System.out.println(safe.isOpen());
	}
	
	
	
}
