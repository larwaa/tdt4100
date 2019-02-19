package countertest;

import static org.junit.Assert.*;

import org.junit.Test;

public class CounterTest {


	@Test
	public void testCounter() {
		Counter c = new Counter(10);
		assertEquals(0, c.getCount());
		assertEquals(false, c.isMax());
	}
	
	@Test
	public void testGetCount() {
		Counter c = new Counter(10);
		int i;
		for (i = 0; i < 10; i++) {
			assertEquals(i, c.getCount());
			c.count();
		}
		i++;
		c.count();
		assertFalse(c.getCount() == i);
	}

}
