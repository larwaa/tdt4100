package personcomparing;

import java.util.Comparator;

class ComparatorName implements Comparator<Person> 
{ 
	public int compare(Person p1, Person p2) 
	{ 
		return p1.fornavn.compareTo(p2.fornavn); 
	} 
} 
