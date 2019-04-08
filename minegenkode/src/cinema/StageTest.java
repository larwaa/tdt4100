package cinema;

import static org.junit.Assert.*;

import org.junit.Test;

public class StageTest {

	@Test
	public void testGetNameAndSeats() {
		Stage s1 = new Stage("Name", 20);
		assertEquals("Name", s1.getName());
		assertEquals(20, s1.getSeats());
	}

}
