package inheritance;

public class DebitAccount extends AbstractAccount{

	@Override
	protected void internalWithdraw(double amount) {
		if (getBalance() - amount < 0) {
			throw new IllegalStateException();
		}
	}
	
	public static void main(String[] args) {
		DebitAccount a1 = new DebitAccount();
		a1.deposit(20000);
		a1.internalWithdraw(20000);
	}
}
