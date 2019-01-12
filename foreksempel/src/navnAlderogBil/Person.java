package navnAlderogBil;

public class Person {

	int age;
	String name;
	
	
	
	public Person(String name, int age) {
		this.age = age;
		this.name = name;
	}
	
	public Person() {
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
		Person p1 = new Person("Thea",47);
		Person p2 = new Person("Didrik",32);
		Person p3 = new Person();
		p1.printInfo();
		p2.printInfo();
		p3.printInfo();
	}

}
