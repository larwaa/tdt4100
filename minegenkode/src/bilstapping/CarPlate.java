package bilstapping;

import java.util.ArrayList;
import java.util.List;

public class CarPlate {
	
	private int seats;
	private Plate plate;
	private List<Person> persons = new ArrayList<Person>();
	
	public CarPlate(int seats, String plate) {
		this.seats = seats;
		this.plate = new Plate(plate);
		System.out.println("Ny bil " + plate + " laget med plass til " + seats + " personer.");

	}
	
	public String getPlate() {
		return plate.getPlate();
	}
	
	private void setPlate(String plate) {
		this.plate.setPlate(plate);
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
		CarPlate c = new CarPlate(2, "JD24683");
		c.addPerson(new Person("Åge", 23));
		
	}
}
