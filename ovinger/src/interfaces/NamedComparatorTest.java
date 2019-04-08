package interfaces;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import org.junit.Test;

public class NamedComparatorTest {

	@Test
	public void test() {
		Person1 p1 = new Person1("Lars", "Waage");
		Person1 p2 = new Person1("Jens", "Waage");
		Person1 p3 = new Person1("Anne", "Gjørvad");
		List<Named> testListPerson1 = new ArrayList<>(Arrays.asList(p1, p2, p3));
		List<Named> sortedListPerson1 = new ArrayList<>(Arrays.asList(p3, p2, p1));
		
		Collections.sort(testListPerson1, new NamedComparator());
		
		Person2 d1 = new Person2("Lars Waage");
		Person2 d2 = new Person2("Jens Waage");
		Person2 d3 = new Person2("Anne Gjørvad");
		List<Named> testListPerson2 = new ArrayList<>(Arrays.asList(d1, d2, d3));
		List<Named> sortedListPerson2 = new ArrayList<>(Arrays.asList(d3, d2, d1));
		
		Collections.sort(testListPerson2, new NamedComparator());
		
		assertEquals(sortedListPerson2, testListPerson2);
		assertEquals(sortedListPerson1, testListPerson1);
		
		if (! testListPerson2.equals(sortedListPerson2)) {
			fail("Person2 feilet");
		}
		if (! testListPerson1.equals(sortedListPerson1)) {
			fail("Person2 feilet");
		}
	}

}
