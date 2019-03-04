package person4comparators;
public class Person {
	
    private String givenName, familyName;
 
    public String getGivenName() {
        return givenName;
    }
 
	public Person(String givenName, String familyName) {
		super();
		this.givenName = givenName;
		this.familyName = familyName;
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
		return "Person [givenName=" + givenName + ", familyName=" + familyName + "]";
	}

	public Person(String name) {
		super();
		this.givenName = name;
	}
}