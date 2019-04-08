package interfaces;

public class Person1 implements Named {
	
	private String givenName, familyName;
	
	public Person1(String givenName, String familyName) {
		this.setGivenName(givenName);
		this.setFamilyName(familyName);
	}

	@Override
	public void setGivenName(String givenName) {
		this.givenName = givenName;
	}

	@Override
	public String getGivenName() {
		return givenName;
	}

	@Override
	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}

	@Override
	public String getFamilyName() {
		return familyName;
	}

	@Override
	public void setFullName(String fullName) {
		String[] tempName = fullName.split(" ");
		this.setFamilyName(tempName[1]);
		this.setGivenName(tempName[0]);
	}

	@Override
	public String getFullName() {
		return this.givenName + " " + this.familyName;
	}

}
