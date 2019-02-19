package filmvisning;

public class Film2 {

	private String filmtittel;
	private int aldersgrense;
	private String nasjonalitet;
	
	
	public String getFilmtittel() {
		return filmtittel;
	}


	public int getAldersgrense() {
		return aldersgrense;
	}


	public String getNasjonalitet() {
		return nasjonalitet;
	}


	public Film2(String filmtittel, int aldersgrense, String nasjonalitet) {
		if (aldersgrense < 0) {
			throw new IllegalArgumentException("Filmen må ha en reell aldersgrense.");
		}
		
		if (filmtittel.length() == 0) {
			throw new IllegalArgumentException("Filmen må ha en reelt navn.");
		}

		if (nasjonalitet.length() == 0) {
			throw new IllegalArgumentException("Filmen må komme fra en plass.");
		}

		this.filmtittel = filmtittel;
		this.aldersgrense = aldersgrense;
		this.nasjonalitet = nasjonalitet;
		
	}

}
