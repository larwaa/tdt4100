package person4comparators;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Main {
	public static void main(String[] args) {
		List<Person> players = new ArrayList<Person>();
		players.add(new Person("Jens", "Hansen"));
		players.add(new Person("Ida", "Skår"));
		players.add(new Person("Arne", "Hansen"));
		
		// Første sortering gjøres med en ekstern Comparator:
		//        Collections.sort(players, new NameComparator());
		//        System.out.println(players);
		
		// Neste sortering gjøres ved å lage en ny Comparator,
		// og så kalle den i sort:
		Collections.sort(players, new Comparator<Person>() {

			@Override
			public int compare(Person p1, Person p2) {
				return p1.getGivenName().compareTo(p2.getGivenName());
			}

		});
		System.out.println(players);
		
		// Tredje sortering gjøres ved å lage en anonym indreklasse:
		Collections.sort(players, new Comparator<Person>() {

			@Override
			public int compare(Person p1, Person p2) {
				return (p1.getFamilyName()+ " " + p1.getGivenName()).
						compareTo(p2.getFamilyName()+" "+p2.getGivenName());
			}

		});
		System.out.println(players);        
		
		// Fjerde variant gjøres ved å bruke en lambdafunksjon.
		// Dette er funksjonelle grensesnitt.
		Collections.sort(players, (p1, p2) -> {
			return p1.getGivenName().
					compareTo(p2.getGivenName());
		});
		System.out.println(players);        
	}
}