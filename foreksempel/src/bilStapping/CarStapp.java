package bilStapping;

public class CarStapp {

	Car car;
	
	void RunSystem() {
		
		Person p1 = new Person("Jens", 12);
		Person p2 = new Person("Ada", 88);
		Person p3 = new Person("Ida", 23);
		
		
		car = new Car(2);
		car.placePerson(p1);
		car.placePerson(p2);
		car.placePerson(p3);

		car.printPersons();
	}
	
	
	public static void main(String[] args) {
		CarStapp cs = new CarStapp();
		cs.RunSystem();
	}

}
