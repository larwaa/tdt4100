package bilstapping;

import java.util.ArrayList;
import java.util.List;

public class CarPlate {

	private int seats;
	private Plate plate;
	
	public String getPlate() {
		return plate.getPlate();
	}
	
	private void setPlate(String plate) {
		this.plate = new Plate(plate);
//		this.plate.setPlate(plate); // Sånn var det på mandagsforelesningen
	}
	
	private List<Person> persons = new ArrayList<Person>();

	
	public CarPlate(String plate, int i) {
		this.seats = i;
		System.out.println("Ny bil: "+ plate + ", med plass til " + seats + " personer.");
		this.setPlate(plate);
//		this.plate = new Plate(plate); // Sånn var det på mandagsforelesningen
	}

	public void printPersons() {
		for (Person person : persons) {
			person.printInfo();
		}
	}

	@Override
	public String toString() {
		String tmp = "";
		for (Person person : persons) {
			// Bare person vil tolkes som person.toString()
			tmp = tmp + person+"\n"; 
		}
		return tmp;
	}

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
		
		CarPlate b = new CarPlate("AA43583", 2);
		b.placePerson(new Person("Ada", 23));
		System.out.println(b);
		
		
		
	
		
		
	}

}
