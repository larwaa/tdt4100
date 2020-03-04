package interfaces;

import java.util.Comparator;

public class NamedComparator implements Comparator<Named> {

	@Override
	public int compare(Named o1, Named o2) {
		if (o1.getFamilyName().equals(o2.getFamilyName())) {
			if (o1.getGivenName().equals(o2.getGivenName())) {
				return 0;
			} else {
				return o1.getGivenName().compareTo(o2.getGivenName());
			}
		} else {
			return o1.getFamilyName().compareTo(o2.getFamilyName());
		}
	}

}
