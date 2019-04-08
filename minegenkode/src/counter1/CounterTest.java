package counter1;

import static org.junit.Assert.*;

import org.junit.Test;

public class CounterTest {

	@Test
	public void test() {
		Counter c = new Counter(4);
		assertEquals(0, c.getCount());
		assertEquals(false, c.isMax());
		c.count();
		assertEquals(1, c.getCount());
		assertEquals(false, c.isMax());
	}

}
