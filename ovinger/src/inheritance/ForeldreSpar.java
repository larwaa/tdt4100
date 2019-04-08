package inheritance;

public class ForeldreSpar extends SavingsAccount {

	private int allowedWithdrawals, remainingWithdrawals;
	
	public ForeldreSpar(double interestRate, int withdrawals) {
		super(interestRate);
		this.allowedWithdrawals = withdrawals;
		this.remainingWithdrawals = withdrawals;
	}

	public int getRemainingWithdrawals() {
		return remainingWithdrawals;
	}
	
	@Override
	public void withdraw(double amount) {
		if (remainingWithdrawals <= 0) {
			throw new IllegalStateException();
		}
		
		super.withdraw(amount);
		remainingWithdrawals--;
	}
	
	@Override
	public void endYearUpdate() {
		remainingWithdrawals = allowedWithdrawals;
		super.endYearUpdate();
	}
}
