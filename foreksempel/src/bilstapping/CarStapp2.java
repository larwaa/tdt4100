package bilstapping;

public class CarStapp2 {

	Car2 car, car2;
	
	private void runSystem() {
		
		Person p1 = new Person("Jens", 12);
		Person p2 = new Person("Ada", 88);
		Person p3 = new Person("Ida", 23);
		
		
		car = new Car2("AA26375", 2);
		car.placePerson(p1);
		car.placePerson(p2);
		car2 = new Car2("YX74350", 5);
		car2.placePerson(p3);

		System.out.println(car);
		System.out.println(car2);
	}
	
	
	public static void main(String[] args) {
		CarStapp2 cs = new CarStapp2();
		cs.runSystem();
		System.out.println("Slutt!");
		
	}

}
