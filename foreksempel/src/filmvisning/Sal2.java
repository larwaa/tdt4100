package filmvisning;

import java.util.ArrayList;
import java.util.List;

public class Sal2 {

	private String navn;
	private int antall;
	List<Filmvisning2> visninger = new ArrayList<>();


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

	public void addVisning(Filmvisning2 nyVisning) {
		for (Filmvisning2 filmvisning2 : visninger) {
			if (filmvisning2.getTid() == nyVisning.getTid()) {
				throw new IllegalArgumentException(this.navn + "har allerede booket "+
			filmvisning2.getFilm().getFilmtittel() + " klokken " + nyVisning.getTid());
			}
		}
		visninger.add(nyVisning);
	}

	public Filmvisning2 getVisningPaaTid(int tid) {
		for (Filmvisning2 filmvisning2 : visninger) {
			if (filmvisning2.getTid() == tid) {
				return filmvisning2;
			}
		}
		
		return null;
	}

	// Ikke laget på forelesning. Enkel nok...
	public void removeVisning(Filmvisning2 visning) {
		visninger.remove(visning);
		
	}


}
