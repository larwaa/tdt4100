package minesweeper;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class Highscore implements Iterable<Person> {
	
	private List<Person> highscore = new ArrayList<>();
	
	public boolean addPerson(Person person) {
		if (! isHighscore(person)) {
			return false;
		}
		
		highscore.add(person);
		Collections.sort(highscore);
		if (highscore.size() > 10) {
			highscore.remove(highscore.size() - 1);

		}
		return true;
	}
	
	private boolean isHighscore(Person person) {
		for (Person p : this) {
			if (p.compareTo(person) < 0) {
				return true;
			}
		}
		if (highscore.size() < 10) {
			return true;
		}
		return false;
	}
	
	@Override
	public String toString() {
		String s = "";
		for (Person p : this) {
			s += p.toString() + "\n";
		}
		return s;
	}

	@Override
	public Iterator<Person> iterator() {
		return highscore.iterator();
	}

	public static void main(String[] args) {
		Person p1 = new Person("Lars", 20);
		Person p2 = new Person("Lars", 50);
		Person p3 = new Person("Jars", 20);
		Person p4 = new Person("Kars", 10);
		Person p5 = new Person("Bars", 100);
		Person p6 = new Person("Bars", 100);
		Person p7 = new Person("Bars", 100);
		Person p8 = new Person("Bars", 100);
		Person p9 = new Person("Bars", 100);
		Person p10 = new Person("Bars", 100);
		Person p11 = new Person("Bars", 100);
		
		Highscore highscore = new Highscore();
		highscore.addPerson(p1);
		highscore.addPerson(p2);
		highscore.addPerson(p3);
		highscore.addPerson(p4);
		highscore.addPerson(p5);
		highscore.addPerson(p6);
		highscore.addPerson(p7);
		highscore.addPerson(p8);
		highscore.addPerson(p9);
		highscore.addPerson(p10);
		highscore.addPerson(p11);
		System.out.println(highscore);
		
		
	}
		

	

}
