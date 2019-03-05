package functional;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.function.Predicate;

public class PersonReg {

	private final Collection<Person> persons = new ArrayList<>();

	public void addPersons(final Person...persons) {
		this.persons.addAll(List.of(persons));
	}

	public Person findPerson(final Predicate<Person> pred) {
		for (final Person person : persons) {
			if (pred.test(person)) {
				return person;
			}
		}
		return null;
	}

	public Collection<Person> findAllPersons(final Predicate<Person> pred) {
		final Collection<Person> result = new ArrayList<>();
		for (final Person person : persons) {
			if (pred.test(person)) {
				result.add(person);
			}
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

		System.out.println(personReg.findAllPersons(new NameStartsWithPredicate("A")));
	}
}
