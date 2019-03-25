package of11;


public class Dog extends Animal{
	
	public Dog(String name) {
		super(name);
		System.out.println(super.hungry);
		
	}
	
	public Dog() {
		this("Fido");
	}

	private boolean sitting;
	

	public void bark() {
		System.out.println("Woof");
	}
	
	public static void main(String[] args) {
		Animal dog = new Dog("Pluto");
		dog.talk();
		
	}


	public void talk() {
		this.bark();
		
	}
	
	
	
}
