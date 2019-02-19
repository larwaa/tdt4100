package countertest;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class CounterTestForelesning {


	@Test
	public void test() {
		Counter c = new Counter(4);
		assertEquals(0, c.getCount());
		assertEquals(false, c.isMax());
		c.count();
		assertEquals(1, c.getCount());
		assertEquals(false, c.isMax();
		c.count();
		assertEquals(2, c.getCount());
		assertEquals(false, c.isMax());
		c.count();
		assertEquals(3, c.getCount());
		assertEquals(false, c.isMax());
		c.count();
		assertEquals(4, c.getCount());
		assertEquals(true, c.isMax());

	}

}
