package personcomparing;

import java.util.Comparator;

class ComparatorAge implements Comparator<Person> 
{
	@Override
	public int compare(Person o1, Person o2) {
		System.out.println("Hæh?");
		return o2.getAlder() - o1.getAlder();
	} 
	
} 