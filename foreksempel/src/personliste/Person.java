package personliste;

public class Person {

	String name;
	int age;
	
	
	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}


	public String getName() {
		return this.name;
	}


	public int getAge() {
		return age;
	}
	
	public String toString() {
		return name + " er " + age + " år gammel!";
	}
	
	public void printInfo() {
		System.out.println(name + " er " + age + " år gammel.");
	}
	
	public static void main(String[] args) {
//		System.out.println(getType());
		Person p1 = new Person("Åge", 23);
		Person p2 = new Person("Per", 33);
		Person p3 = new Person("Ida", 43);
		p1.printInfo();
		p2.printInfo();
		p3.printInfo();
	}
	
}
