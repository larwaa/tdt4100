package of12;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class PartnerTest {
	
	Partner ola;
	Partner kari;
	Partner truls;

	@Before
	public void setUp() throws Exception {
		ola = new Partner("Ola");
		kari = new Partner("Kari");
		truls = new Partner("Truls");
		
	}

	@Test
	public void testSetPartner() {
		ola.setPartner(truls);
		
		assertEquals(truls, ola.getPartner());
		assertEquals(ola, truls.getPartner());
		assertNull(kari.getPartner());
	}
	
	@Test
	public void testChangePartner() {
		ola.setPartner(truls);
		ola.setPartner(kari);
		
		assertNull(truls.getPartner());
		assertEquals(kari, ola.getPartner());
		assertEquals(ola, kari.getPartner());
	}
	
	@Test
	public void testRemovePartner() {
		ola.setPartner(truls);
		truls.setPartner(null);
		
		assertNull(ola.getPartner());
		assertNull(truls.getPartner());
	}

}
