package NavnogAlder;

public class Person2 {

	int age;
	String name;
	
	
	
	public Person2(String name, int age) {
		this.age = age;
		this.name = name;
	}
	
	public Person2() {
		name = "Dummy";
		age = 0;
	}
	
	int getAge() {
		return age;
	}

	public void printInfo() {
		System.out.println(name + " er "+ age + " år gammel.");

	}
	
	
	public String getName() {
		return name;
	}

	public static void main(String[] args) {
		Person2 p1 = new Person2("Thea",47);
		Person2 p2 = new Person2("Didrik",32);
		Person2 p3 = new Person2();
		p1.printInfo();
		p2.printInfo();
		p3.printInfo();
	}

}
