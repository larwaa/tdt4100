package filmvisning;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class Kino2Test {

	Kino2 kino;
	
	@Before
	// Dette er det som kjøres forut for hver test. Det betyr at når
	// hver test kjøres kan en forvente at dette er tilstanden.
	public void setUp() throws Exception {
		kino = new Kino2();
		Film2 f1 = new Film2("Alexander",15,"USA");
		Film2 f2 = new Film2("Bad Santa",11,"USA");
		Sal2 s1 = new Sal2("Nova 3",140);
		Sal2 s2 = new Sal2("Prinsen 4",40);
		Sal2 s3 = new Sal2("Prinsen 2",240);

		Filmvisning2 fv1 = new Filmvisning2(f1, s1, 1, 85);
		Filmvisning2 fv2 = new Filmvisning2(f1, s2, 1, 75);
		Filmvisning2 fv3 = new Filmvisning2(f2, s3, 3, 70);
		kino.addVisning(fv1);
		kino.addVisning(fv2);
		kino.addVisning(fv3);
	}

	@Test // Lagt inn tre filmer i setUp
	public void testAntallVisninger() {
		assertEquals(3, kino.antallVisninger());
	}
	
	@Test 
	public void testFaarFremFilmNavn() {
		assertEquals("Alexander", kino.getVisning("Nova 3",1).getFilm().
				getFilmtittel());
		assertEquals("Bad Santa", kino.getVisning("Prinsen 2", 3).
				getFilm().getFilmtittel()); // Phew!
	}

	@Test
	public void testFaarFremFilmNasjonalitet() {
		assertEquals("USA", kino.getVisning("Prinsen 4", 1).getFilm().getNasjonalitet());
	}
	
	@Test
	public void testKanIkkeLeggeInnSammeSalSammeTid() {
		Sal2 s1 = new Sal2("Nova 3",140);
		Film2 f1 = new Film2("Alexander",15,"USA");
		try {
			kino.addVisning(new Filmvisning2(f1, s1, 4, 85));
			kino.addVisning(new Filmvisning2(f1, s1, 4, 85));
			fail("Overbooking av sal er mulig.");
		} catch (IllegalArgumentException e) {
			// Ikke gjøre noe, det er denne vi vil ha.
		} catch (Exception e) {
			// Unntak av typen vi ikke skal ha kontroll over må utløses.
			throw e;
		}
		
	}
	
	@Test // Fjerner to visninger, da er det bare én igjen.
	public void testRemoveVisning() {
		kino.removeFilm("Alexander");
		assertEquals(1, kino.antallVisninger());
		assertEquals("Bad Santa", kino.getVisning(0).getFilm().getFilmtittel());
	}
}
