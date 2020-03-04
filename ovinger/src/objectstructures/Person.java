package objectstructures;

import java.util.ArrayList;
import java.util.List;

public class Person {
	
	private String name;
	private char gender;
	private Person mother, father;
	private List<Person> children = new ArrayList<>();
	
	public Person(String name, char gender) {
		this.name = name;
		if (gender != 'F' && gender != 'M') {
			throw new IllegalArgumentException();
		}
		this.gender = gender;
	}
	
	public Person getMother() {
		return this.mother;
	}
	
	public Person getFather() {
		return this.father;
	}
	
	public char getGender() {
		return this.gender;
	}
	
	public String getName() {
		return this.name;
	}
	
	public int getChildCount() {
		return this.children.size();
	}
	
	public void setMother(Person mother) {
		Person tempMother = this.setParent(mother, 'F');
		this.mother = mother;
		this.updateChildren(mother, tempMother);
	}
	
	private Person setParent(Person parent, char gender) {
		this.checkSelfParent(parent);
		
		if (parent != null && parent.getGender() != gender) {
			throw new IllegalArgumentException();
		}
		Person tempParent;
		
		if (gender == 'F') {
			tempParent = this.mother;
		} else {
			tempParent = this.father;
		}
		
		return tempParent;
	}
	
	private void updateChildren(Person parent, Person tempParent) {
		if (parent != null) {
			parent.addChild(this);
		}
		if (tempParent != null) {
			tempParent.removeChild(this);
		}
	}
	
	private void checkSelfParent(Person person) {
		if (this == person) {
			throw new IllegalArgumentException();
		}
	}
	
	public void setFather(Person father) {
		Person tempFather = this.setParent(father, 'M');
		this.father = father;
		this.updateChildren(father, tempFather);
	}
	
	public Person getChild(int n) {
		if (n < 0) {
			throw new IllegalArgumentException();
		}
		if (n >= this.getChildCount()) {
			throw new IllegalArgumentException();
		}
		return this.children.get(n);
	}
	
	public void addChild(Person child) {
		this.checkSelfParent(child);
		
		if (! this.children.contains(child)) {
			this.children.add(child);
			
			if (this.getGender() == 'F' && child.getMother() != this) {
				child.setMother(this);
			} else if (this.getGender() == 'M' && child.getFather() != this) {
				child.setFather(this);
			}
		}
	}
	
	public void removeChild(Person child) {
		if (this.children.contains(child)) {
			this.children.remove(child);
			
			if (this.getGender() == 'F' && child.getMother() == this) {
				child.setMother(null);
			} else if (this.getGender() == 'M' && child.getFather() == this) {
				child.setFather(null);
			}
		}
	}
	
	@Override
	public String toString() {
		return this.name;
	}
	
	public static void main(String[] args) {
		Person m1 = new Person("Kari", 'F');
		Person p1 = new Person("Bengt", 'M');
		Person c1 = new Person("Kristin", 'F');
		Person c2 = new Person("Jens", 'M');
		Person c3 = new Person("Lars", 'M');
		
		m1.addChild(c3);
		c3.getMother();
		c3.setMother(c1);
	}
	

}
