package of11;

public abstract class Animal {
	
	protected boolean hungry;
	private String name;
	
	
	public boolean isHungry() {
		return hungry;
	}
	public void setHungry(boolean hungry) {
		this.hungry = hungry;
	}
	public String getName() {
		return name;
	}
	
	public Animal(String name) {
		this.name = name;
		this.hungry = true;
	}
	
	public abstract void talk();
	
	
	
}
