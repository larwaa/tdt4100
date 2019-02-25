package personcomparing;

import java.util.Comparator;

class ComparatorAge implements Comparator<Person> 
{

	@Override
	public int compare(Person o1, Person o2) {
		return o1.getAlder() - o2.getAlder();
	} 
	
} 