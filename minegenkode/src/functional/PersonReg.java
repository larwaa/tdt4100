package functional;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public class PersonReg {

	private final Collection<Person> persons = new ArrayList<>();

	public void addPersons(final Person...persons) { //Person...persons gjør at kallet kan være en parameterliste som er så lang du vil. Da blir argumentene behandlet som en array.
		this.persons.addAll(List.of(persons));
	}
	
	public Person forEachPerson(Consumer<Person> consumer) {
		for (Person person : persons) {
			consumer.accept(person);
		}
		return null;
	}
	
	public Person findPerson(Predicate<Person> predicate) {
		for (Person person : persons) {
			if (predicate.test(person)) {
				return person;
			}
		}
		return null;
	}
	
	public Collection<Person> findAllPeople(Predicate<Person> predicate){
		Collection<Person> result = new ArrayList<>();
		for (Person person : persons) {
			if (predicate.test(person)) {
				result.add(person);
			}
		}
		return result;
	}
	
	public Collection<String> getPersonProperties(Function<Person, String> func){
		Collection<String> result = new ArrayList<>();
		for (Person person : persons) {
			result.add(func.apply(person));
		}
		return result;
	}
	

	public static void main(final String[] args) {
		final Person ola = new Person("Ola", 'M');
		final Person tone = new Person("Tone", 'F');
		final Person thorvald = new Person("Thorvald", 'M');
		final Person audun = new Person("Audun", 'M');
		final Person ingeborg = new Person("Ingeborg", 'F');
		ola.addChild(thorvald);
		ola.addChild(audun);
		ola.addChild(ingeborg);
		tone.addChild(thorvald);
		tone.addChild(audun);
		tone.addChild(ingeborg);

		final Person hallvard = new Person("Hallvard", 'M');
		final Person marit = new Person("Marit", 'F');
		final Person jens = new Person("Jens", 'M');
		final Person anne = new Person("Anne", 'F');
		hallvard.addChild(jens);
		hallvard.addChild(anne);
		marit.addChild(jens);
		marit.addChild(anne);

		final PersonReg personReg = new PersonReg();
		personReg.addPersons(ola, tone, thorvald, audun, ingeborg);
		personReg.addPersons(hallvard, marit, jens, anne);
		int childCount = 2;
		
		Predicate<Person> childCountPredicate = (p) -> p.getChildCount() == childCount;
		
		System.out.println(personReg.findPerson((p) -> p.getName().equals("Hallvard")));
		System.out.println(personReg.findPerson(new NameMatchPredicate("Hallvard")));
		System.out.println(personReg.findAllPeople((p) -> p.getChildCount() == 0));
		System.out.println(personReg.findAllPeople(childCountPredicate));
		System.out.println(personReg.findAllPeople((p) -> p.getName().startsWith("A")));
		System.out.println(personReg.findAllPeople((p) -> p.getGender() == p.MALE_GENDER));
		System.out.println("1" + personReg.getPersonProperties(Person::getName));
		personReg.forEachPerson(System.out::println);
		personReg.forEachPerson(new Consumer<Person>() {
			@Override
			public void accept(Person person) {
				System.out.println(person);
			}
		});
		System.out.println(personReg.getPersonProperties(new Function<Person, String>(){

			@Override
			public String apply(Person t) {
				return t.getName();
			}
			
		}));
	}
}
