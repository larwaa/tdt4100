package filmvisning;

import static org.junit.Assert.*;

import org.junit.Test;

public class Sal2Test {

	@Test
	public void testSalnavnogAlderUthenting() {
		Sal2 sal = new Sal2("Nova 1", 250);
		assertEquals("Nova 1", sal.getNavn());
	}

	@Test (expected = IllegalArgumentException.class)
	public void testSalKonstruktoerNullPlasser() {
		Sal2 sal = new Sal2("Nova 1", 0);
	}

	@Test (expected = IllegalArgumentException.class)
	public void testSalKonstruktoerTomtNavn() {
		Sal2 sal = new Sal2("", 250);
	}


}
