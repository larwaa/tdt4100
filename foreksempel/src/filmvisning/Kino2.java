package filmvisning;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Kino2 {
	// Aldri gi andre klasser innblikk i dine collections. Du må lage
	// gettere som gir enten element på index eller en iterator.
	// Derav private, og at en må spørre pent...
	private List<Filmvisning2> visninger = new ArrayList<>();

	public void addVisning(Filmvisning2 visning) {
		visninger.add(visning);
	}

	public void listVisninger() {
		for (Filmvisning2 filmvisning2 : visninger) {
			System.out.println(filmvisning2.toString());
		}
	}

	public void removeFilm(String navn) {
		// Den eneste måten å fjerne et element fra en List mens
		// en er inne i en loop er ved å bruke for med Iterator.
		for (Iterator<Filmvisning2> iterator = visninger.iterator(); iterator.hasNext();) {
			Filmvisning2 visning = iterator.next();
			if (visning.getFilm().getFilmtittel() == navn) {
				visning.getSal().removeVisning(visning);
				visning.getFilm().removeVisning(visning);
				iterator.remove();
				// Hva gjør vi med Filmen? Vel - den er ikke med
				// i loopen lenger. Søppelhåndtering fikser det.
			}
		}
		System.out.println("");
	}

	public Filmvisning2 getVisning(String salnavn, int tid) {
		for (Filmvisning2 visning : visninger) {
			if (visning.getSal().getNavn() == salnavn &&
					visning.getTid() == tid) {
				return visning;
			}
		}
		return null;
	}

	int antallVisninger() {
		return visninger.size();
	}

	public Filmvisning2 getVisning(int index) {
		// Lar den utløse problemer og sende videre hvis en spør etter index.
		return visninger.get(index); 
	}
}
