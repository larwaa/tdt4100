package arv;

public class SluttTegneseriealbum extends SluttBok {
	
	int antallStriper;

	@Override
	public String toString() {
		return "Tegneseriealbum [tittel=" + tittel + 
				",antallStriper=" + antallStriper +"]";
	}

	public SluttTegneseriealbum(String tittel, int antallStriper) {
		super(tittel);
		this.antallStriper = antallStriper;
	}

	public int getAntallStriper() {
		return antallStriper;
	}

	public void setAntallStriper(int antallStriper) {
		this.antallStriper = antallStriper;
	}
	
}
