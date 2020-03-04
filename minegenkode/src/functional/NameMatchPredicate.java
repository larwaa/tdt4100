package functional;

import java.util.function.Predicate;

public class NameMatchPredicate implements Predicate<Person>{

	private String name;
	
	public NameMatchPredicate(String name) {
		this.name = name;
	}
	
	@Override
	public boolean test(Person t) {
		return t.getName().equals(name);
	}

}
