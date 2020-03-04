package bilstapping;

public class Person {
	
	String name;
	int age;
	
	public Person(String name, int age) {
		super();
		this.age = age;
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public String getName() {
		return name;
	}
	
	public void printInfo() {
		System.out.println(name + " er " + age + " år gammel.");
	}
	
	public static void main(String[] args) {
		Person p = new Person("Åge", 23);
		p.printInfo();
	}
	
}
