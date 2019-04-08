package bilstapping;

public class CarFill {
	
	Car car;
	
	public CarFill() {
		
	}
	
	public void runSystem() {
		Person p1 = new Person("Lars", 22);
		Person p2 = new Person("Jostein", 20);
		Person p3 = new Person("Ida", 40);
		
		car = new Car(2);
		car.addPerson(p1);
		car.addPerson(p2);
		car.addPerson(p3);

		car.printPersons();
	
	}
	
	public static void main(String[] args) {
		CarFill cf = new CarFill();
		cf.runSystem();
	}

}
