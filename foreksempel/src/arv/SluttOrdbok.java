package arv;

public class SluttOrdbok extends SluttBok {

	int antallOrd;

	@Override
	public String toString() {
		return "Ordbok [tittel=" + tittel + ", antallOrd=" + antallOrd+"]";
	}

	public SluttOrdbok(String tittel, int antallOrd) {
		super(tittel);
		System.out.println("Ordbok.Kons, etter super");
		this.antallOrd = antallOrd;
	}

	public int getAntallOrd() {
		return antallOrd;
	}

	public void setAntallOrd(int antallOrd) {
		this.antallOrd = antallOrd;
	}

	public void setTittel(String tittel) {
		System.out.println("Ordbok.setTittel");
		if (! isValidTittel(tittel))
			throw new IllegalArgumentException(tittel +
					" er ikke rett navn på en ordbok");
		this.tittel = tittel; // Men nå tester en ikke for feil tegn...
		//		super.setTittel(tittel);
	}


	public boolean isValidTittel(String tittel) {
		System.out.println("Ordbok.isValidTitle");
		if (! super.isValidTittel(tittel))
			return false;
		return true;
	}

}
