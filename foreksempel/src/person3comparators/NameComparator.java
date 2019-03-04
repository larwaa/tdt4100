package person3comparators;
import java.util.Comparator;

public class NameComparator implements Comparator<Person> {

	public int compare(Person p1, Person p2) {
		// parameter are of type Object, so we have to downcast it to Employee objects
		String p1Name = p1.toString();
		String p2Name = p2.toString();
		return p1Name.compareTo(p2Name);

	}
}