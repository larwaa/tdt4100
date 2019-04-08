package cinema;

import static org.junit.Assert.*;

import org.junit.Test;

public class MovieTest {

	@Test
	public void testNameAgeLimitAndNationality() {
		Movie m1 = new Movie("Navn", 12, "USA");
		assertEquals("Navn", m1.getMovieTitle());
		assertEquals(12, m1.getAgeLimit());
		assertEquals("USA", m1.getNationality());
	}
	
	@Test (expected = IllegalArgumentException.class)
	public void testIllegalAge() {
		Movie m1 = new Movie("Navn", -1, "USA");
	}
	
	@Test (expected = IllegalArgumentException.class)
	public void testNoName() {
		Movie m1 = new Movie("", 12, "USA");
	}
	
	@Test (expected = IllegalArgumentException.class)
	public void testNoNationaltiy() {
		Movie m1 = new Movie("Name", 12, "");
	}

}
