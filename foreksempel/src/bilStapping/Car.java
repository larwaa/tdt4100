package bilStapping;

import java.util.ArrayList;
import java.util.List;

public class Car {

	private int seats;
	
	private List<Person> persons = new ArrayList<Person>();

	
	
	public Car(int i) {
		this.seats = i;
		System.out.println("Ny bil laget, med plass til " + seats + " personer.");
	}

	public void printPersons() {
		for (Person person : persons) {
			person.printInfo();
		}
	}

//	public String toString() {
//		String tmp = "";
//		for (Person person : persons) {
//			tmp = tmp + person.toString()+"\n";
//		}
//		return tmp;
//	}
	
	public boolean placePerson(Person p) {
		
		if (this.seats == persons.size() ) {
			System.out.println("Bilen er full, " + p.getName() + " får ikke plass.");
			return false;
		} else {
			
			persons.add(p);
			System.out.println("Lagt til " + p.getName() + " i bilen.");
			System.out.println("Plass til " + (this.seats - persons.size()) + " til.");
			
			return true;
		}
	}


	public static void main(String[] args) {
		
		Car b = new Car(2);
		b.placePerson(new Person("Ada", 23));
		
		
		
	
		
		
	}

}
