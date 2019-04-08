package filmvisning;

public class Film {
	
	private String filmtittel;
	private int alder;
	private String nasjonalitet;
	
	public Film(String filmtittel, int alder, String nasjonalitet) {
		super();
		this.filmtittel = filmtittel;
		this.alder = alder;
		this.nasjonalitet = nasjonalitet;
	}

	public Film() {
	}

	public String getFilmtittel() {
		return filmtittel;
	}

	public void setFilmtittel(String filmtittel) {
		this.filmtittel = filmtittel;
	}

	public int getAlder() {
		return alder;
	}

	public void setAlder(int alder) {
		this.alder = alder;
	}

	public String getNasjonalitet() {
		return nasjonalitet;
	}

	public void setNasjonalitet(String nasjonalitet) {
		this.nasjonalitet = nasjonalitet;
	}
	
	@Override
	public String toString() {
		return String.format("filmtittel=%s, alder=%s, nasjonalitet=%s", filmtittel, alder, nasjonalitet);
	}
	
	public static void main(String[] args) {
		Film f1 = new Film("Bad Santa", 15, "USA");
		Film f2 = new Film("Alexander", 11, "USA");
		System.out.println(f1);
		System.out.println(f2);
	}
}