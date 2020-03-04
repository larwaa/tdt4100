package person;

public class NameValidationException extends IllegalArgumentException {
	
	private final Person person;
	private final String illegalName;
	
	public NameValidationException(final Person person, final String illegalName) {
		super();
		this.person = person;
		this.illegalName = illegalName;
	}

	@Override
	public String getMessage() {
		return illegalName + " is illegal for " + person;
	}
}
