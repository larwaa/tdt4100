package personcomparing;

import java.util.Comparator;

class ComparatorAge implements Comparator<Person> 
{ 

	public int compare(Person p1, Person p2) {
		return p1.getAlder() - p2.getAlder(); 
	} 
} 