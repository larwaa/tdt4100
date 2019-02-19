package filmvisning;

import static org.junit.Assert.*;

import org.junit.Test;

public class Film2Test {
	
	// Tester bare de tingene som ikke trenger å knytte til seg andre
	// klasser. De blir testet fra utsiden.

	@Test // Solskinnshistorietest
	public void testNavnAldersgrenseogLandUthenting() {
		Film2 f1 = new Film2("Alexander",15,"USA");
		assertEquals("Alexander", f1.getFilmtittel());
		assertEquals(15, f1.getAldersgrense());
		assertEquals("USA", f1.getNasjonalitet());
	}

	// Ulike måter å teste exceptions under:
	@Test  // Regnvær, også de under.
	public void testFeilNavn() {

		try {
			Film2 fail1 = new Film2("",15,"USA");
			fail("Tillater film uten navn.");
		} catch (IllegalArgumentException e) {
		} catch (Exception e) {
			fail();
		}

	}

	@Test (expected = IllegalArgumentException.class)
	public void testFeilAlder() {
		Film2 fail1 = new Film2("Alexander",-1,"USA");
	}

	@Test (expected = IllegalArgumentException.class)
	public void testFeilNasjonalitet() {
		Film2 fail1 = new Film2("Alexander",15,"");
	}

}
