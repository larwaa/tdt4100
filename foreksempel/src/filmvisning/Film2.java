package filmvisning;

import java.util.ArrayList;
import java.util.List;

public class Film2 {

	private String filmtittel;
	private int aldersgrense;
	private String nasjonalitet;
	List<Filmvisning2> visninger = new ArrayList<>();
	
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


	public String getFilmtittel() {
		return filmtittel;
	}


	public int getAldersgrense() {
		return aldersgrense;
	}


	public String getNasjonalitet() {
		return nasjonalitet;
	}

	public Filmvisning2 getVisningPaaTid(int tid) {
		for (Filmvisning2 filmvisning2 : visninger) {
			if (filmvisning2.getTid() == tid) {
				return filmvisning2;
			}
		}
		
		return null;
	}


	public void addVisning(Filmvisning2 filmvisning2) {
		visninger.add(filmvisning2);
	}


	public int getAntallVisninger() {
		return visninger.size();
	}


	public void removeVisning(Filmvisning2 filmvisning2) {
		// Ikke laget på forelesning, men enkel nok!
		visninger.remove(filmvisning2);
	}

}
