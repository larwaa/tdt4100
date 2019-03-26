package arv;

public class SluttBok {

	protected String tittel; // endre til private på foil 45
	private String specialCharacters = " -,.%";
	private String ulovligeBokstaver = "#¤([]) {]}";

	@Override
	public String toString() {
		return "Bok [tittel=" + tittel + "]";
		// return GetToStringAttributes
	}

	public SluttBok(String tittel) {
		System.out.println("Bok.kons");
		setTittel(tittel);
		//		this.tittel = tittel; // frem til slide 50
	}

	public String getTittel() {
		return tittel;
	}

	public void setTittel(String tittel) {
		System.out.println("Bok.setTittel");
		//		this.tittel = tittel; Frem til slide 50
		/*
		for (int i = 0; i < ulovligeBokstaver.length(); i++) {
			if (tittel.indexOf(ulovligeBokstaver.charAt(i)) >= 0) {
				System.out.println("Feil tegn");
				return;
			}
		}
		this.tittel = tittel;
		 */ // Flytter det over her inn i en ny memtode i stedet, og så kalles den fra setTittel

		if (!isValidTittel(tittel)) {
			throw new IllegalArgumentException(tittel+" er ikke en gyldig boktittel.");
		}
		this.tittel = tittel;
	}

	public boolean isValidTittel(String tittel) {
		System.out.println("Bok.isValidTittel");
		for (int i = 0; i < tittel.length(); i++) {
			char c = tittel.charAt(i);
			if (! (Character.isLetter(c) || Character.isDigit(c) || 
					specialCharacters.indexOf(c) >= 0)) {
				return false;
			}
		}
		return true;

	}
}
