package functional;

import java.util.Comparator;

public class NameComparator implements Comparator<Person> {

	@Override
	public int compare(final Person p1, final Person p2) {
		// parameter are of type Object, so we have to downcast it to Employee objects
		final String p1Name = p1.toString();
		final String p2Name = p2.toString();
		return p1Name.compareTo(p2Name);

	}
}