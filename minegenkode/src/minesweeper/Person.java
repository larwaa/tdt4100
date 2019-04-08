package minesweeper;

public class Person implements Comparable<Person>{
	
	private int clicks;
	private String name;
	
	public Person(String name, int clicks) {
		setName(name);
		setCllicks(clicks);
	}
	
	private void setName(String name) {
		checkName(name);
		this.name = name;
	}

	private void checkName(String name) {
		if (name.length() < 2) {
			throw new IllegalArgumentException("Navn må være minst to tegn lange.");
		}
		
		char[] nameCharArray = name.toCharArray();
		
		for (char c : nameCharArray) {
			if (! Character.isLetter(c)) {
				throw new IllegalArgumentException("Navn kan kun bestå av bokstaver.");
			}
		}
	}
	
	private void setCllicks(int clicks) {
		checkClicks(clicks);
		this.clicks = clicks;
	}
	
	private void checkClicks(int clicks) {
		if (clicks < 0) {
			throw new IllegalArgumentException("Antall trykk kan ikke være negativt.");
		}
	}
	
	public int getClicks() {
		return this.clicks;
	}
	
	public String getName() {
		return this.name;
	}
	
	@Override
	public String toString() {
		return getName() + ": " + getClicks();
	}

	@Override
	public int compareTo(Person o) {
		if (this.getClicks() == o.getClicks()) {
			return (this.getName().compareTo(o.getName()));
		}
		return this.getClicks() - o.getClicks();
	}
}
