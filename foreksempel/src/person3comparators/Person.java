package person3comparators;

import java.util.Comparator;

public class Person implements Comparable<Person>{

	private String givenName, familyName;
	private int age;

	public int getAge() {
		return age;
	}

	public String getGivenName() {
		return givenName;
	}

	public Person(String givenName, String familyName, int age) {
		super();
		this.givenName = givenName;
		this.familyName = familyName;
		this.age = age;
	}

	public String getFamilyName() {
		return familyName;
	}

	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}

	public void setGivenName(String givenName) {
		this.givenName = givenName;
	}


	@Override
	public String toString() {
		return givenName + " " + familyName +"("+age+")";
	}

	public Person(String name) {
		super();
		this.givenName = name;
	}

	@Override
	public int compareTo(Person o) { // pga implements Comparable
		int sort = this.getFamilyName().compareTo(o.getFamilyName());
		if (sort != 0) 
			return sort;
		else {
			return this.getGivenName().compareTo(o.getGivenName());
		}
	}
}
