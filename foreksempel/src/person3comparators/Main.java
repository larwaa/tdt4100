package person3comparators;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Main {
	public static void main(String[] args) {
		List<Person> persons = new ArrayList<Person>();
		persons.add(new Person("Arne", "Tåsen-Moe", 12));
		persons.add(new Person("Bob", "Hansen", 3));
		persons.add(new Person("Camilla", "Hansen", 112));

		// Første sortering gjøres med en ekstern Comparator:
		// Kallet på sort roter med rekkefølgen i listen persons selv
		// om en ikke har noe persons = osv, akkurat som liste.sort() i python.
		Collections.sort(persons, new NameComparator());
		System.out.println("Ekstern fnavn+enavn alfabetisk:\t"+persons);

		// Neste sortering gjøres ved å lage en ny Comparator,
		// og så kalle den i sort: Dette er en anonym klasse!
		Collections.sort(persons, new Comparator<Person>() {

			@Override
			public int compare(Person p1, Person p2) {
				return p1.getFamilyName().compareTo(p2.getFamilyName());
			}

		});
		System.out.println("Anonym enavn alfabetisk: \t"+persons);


		// Tredje variant gjøres ved å bruke en lambdafunksjon.
		// Dette er funksjonelle grensesnitt.
		Collections.sort(persons, (p1, p2) -> {
			return p1.getGivenName().
					compareTo(p2.getGivenName());
		});
		System.out.println("Lambda fornavn alfabetisk: \t"+persons);        

	
		// Denne varianten gjør det lekende lett å sortere på
		// ulike ting, ikke noe mikkmakk! Som lengde på etternavn.
		Collections.sort(persons, (p1, p2) -> {
			return p1.getFamilyName().length()
					- p2.getFamilyName().length();
		});
		System.out.println("Lambda lengde etternavn: \t"+persons);        

	
		// Eller hva med alderen til folka?
		Collections.sort(persons, (p1, p2) -> {
			return p1.getAge()- p2.getAge();
		});
		System.out.println("Lambda alder: \t\t\t"+persons);        
	}
}