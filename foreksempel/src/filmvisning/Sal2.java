package filmvisning;

public class Sal2 {

	private String navn;
	private int antall;

	public Sal2(String navn, int antall) {
		
		if (navn.length() == 0) {
			throw new IllegalArgumentException("Salen må ha et navn.");
		}
		if (antall < 1) {
			throw new IllegalArgumentException("Salen må ha plass til folk. Seriøst..");
		}
		this.navn = navn;
		this.antall = antall;
	}

	public String getNavn() {
		return navn;
	}

	public int getAntall() {
		return antall;
	}


}
