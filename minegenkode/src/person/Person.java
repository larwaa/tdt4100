package person;

public class Person {
	
	private String name;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		checkName(name);
		this.name = name;
	}
	
	public Person(String name) {
		setName(name);
	}
	
	@Override
	public String toString() {
		return name.toString();
	}
	
	public boolean equals(Object object) {
		return this.toString().equals(object.toString());
	}
	
	private void checkName(String name) {
		for (int i = 0; i < name.length(); i++) {
			char c = name.charAt(i);
			if (! (Character.isLetter(c) || " -".indexOf(c) >= 0)) {
				throw new NameValidationException(this, name);
			}
		}
	}
	
	public static void main(String[] args) {
		Person p1 = new Person("LarsW");
	}
}
