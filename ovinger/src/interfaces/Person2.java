package interfaces;

public class Person2 implements Named {

	private String fullName;
	
	public Person2(String fullName) {
		this.setFullName(fullName);
	}
	
	@Override
	public void setGivenName(String givenName) {
		this.setFullName(givenName + " " + this.getFamilyName());
	}

	@Override
	public String getGivenName() {
		return this.fullName.split(" ")[0];
	}

	@Override
	public void setFamilyName(String familyName) {
		this.setFullName(this.getGivenName() + " " + familyName);
	}

	@Override
	public String getFamilyName() {
		return this.fullName.split(" ")[1];
	}

	@Override
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	@Override
	public String getFullName() {
		return this.fullName;
	}

}
