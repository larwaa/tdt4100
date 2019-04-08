package bilstapping;

import java.util.ArrayList;
import java.util.List;

public class Car {
	
	private int seats;
	private List<Person> persons = new ArrayList<Person>();
	
	public Car(int seats) {
		this.seats = seats;
		System.out.println("Ny bil laget med plass til " + seats + " personer.");
	}
	
	public boolean addPerson(Person p) {
		if (this.seats <= persons.size()) {
			System.out.println("Bilen er full, " + p.getName() + " får ikke plass.");
			return false;
		} else {
			
			persons.add(p);
			System.out.println("Lagt til " + p.getName() + " i bilen.");
			
			if (this.seats == persons.size()) {
				System.out.println("Bilen er full!");
			} else {
				System.out.println("Plass til " + (this.seats - persons.size()) + " personer til.");	
			}
			
			return true;
		}
	}
	
	public void printPersons() {
		for (Person person : persons) {
			person.printInfo();
		}
	}
	
	public static void main(String[] args) {
		Car c = new Car(2);
		c.addPerson(new Person("Åge", 23));
		
	}

}
