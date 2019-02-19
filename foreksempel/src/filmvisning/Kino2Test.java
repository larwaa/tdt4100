package filmvisning;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class Kino2Test {

	Kino2 kino;
	
	@Before
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

	@Test
	public void testFårFremSalNavn() {
		assertEquals("Nova 3", kino.visninger.get(0).getSal().getNavn());
	}

	@Test
	public void testFårFremFilmNasjonalitet() {
		assertEquals("USA", kino.visninger.get(1).getFilm().getNasjonalitet());
	}
	
	@Test
	public void testKanIkkeLeggeInnSammeSalSammeTid() {
		Sal2 s1 = new Sal2("Nova 3",140);
		Film2 f1 = new Film2("Alexander",15,"USA");
		try {
			kino.addVisning(new Filmvisning2(f1, s1, 4, 85));
		} catch (Exception e) {
		}
	}
	
	@Test
	public void testRemoveVisning() {
		kino.removeFilm("Alexander");
		assertEquals(1, kino.visninger.size());
		assertEquals("Bad Santa", kino.visninger.get(0).getFilm().getFilmtittel());
	}
}
