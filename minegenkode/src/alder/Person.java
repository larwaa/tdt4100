package alder;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;

public class Person {

	private int age;

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Person(int age) {
		super();
		this.age = age;
	}
	
	public static void main(String[] args) {
		Collection<Person> persons = new ArrayList<>();
		Person p1 = new Person(12);
		Person p2 = new Person(32);
		Person p3 = new Person(1);
		persons.add(p1);
		persons.add(p2);
		persons.add(p3);
		
		Comparator<Person> comp = new Comparator<Person>() {

			@Override
			public int compare(Person p1, Person p2) {
				return (int) (p1.getAge()-p2.getAge()); 
			}
			
		}; 
		Collections.sort(persons, comp);
		
	}
	
}
