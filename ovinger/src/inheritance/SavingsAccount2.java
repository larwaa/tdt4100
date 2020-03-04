package inheritance;

public class SavingsAccount2 extends AbstractAccount{
	
	private int withdrawals;
	private double fee;

	
	public SavingsAccount2(int withdrawals, double fee) {
		this.withdrawals = withdrawals;
		this.fee = fee;
	}


	@Override
	protected void internalWithdraw(double amount) {
		checkWithdrawal(amount);
		
		if (withdrawals <= 0) {
			checkWithdrawal(amount + fee);
			withdrawals++;
			withdraw(fee);
		} else {
			withdrawals--;
		}
	}
	
	private void checkWithdrawal(double amount) {
		if (getBalance() - amount < 0) {
			throw new IllegalStateException();
		}
	}
	
	
	
	
}
