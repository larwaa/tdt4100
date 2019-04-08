package of12;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class AccountTest {

	private Account account;
	
	@Before
	public void setUp() throws Exception {
		account = new Account(100, 3);
	}

	@Test
	public void testDeposit() {
		account.deposit(100);
		assertEquals(200, account.getBalance(), 0);
	}
	
	@Test
	public void testWidthdraw() {
		account.withdraw(50);
		assertEquals(50, account.getBalance(), 0);
	}
	
	@Test
	public void testWithdrawMoreThanAvailable() {
		try {
			account.withdraw(150);
			fail("Cannot withdraw more money than available");
		} catch (IllegalArgumentException e) {
			
		}	
	}
	
	@Test(expected = IllegalArgumentException.class)
	public void testWithdrawNegativeAmount() {
		account.withdraw(-100);
	}

}
