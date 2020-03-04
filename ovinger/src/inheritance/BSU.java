package inheritance;

public class BSU extends SavingsAccount {
	
	private double yearlyDeposit, remainingDeposit;

	public BSU(double interestRate, double yearlyDeposit) {
		super(interestRate);
		this.remainingDeposit = yearlyDeposit;
		this.yearlyDeposit = yearlyDeposit;
	}

	public double getTaxDeduction() {
		return getYearlyBalance() * 0.2;
		
	}
	
	@Override
	public void deposit(double amount) {
		checkDouble(amount);
		checkDeposit(amount);
		super.deposit(amount);
		remainingDeposit -= amount;
		
	}
	
	private double getYearlyBalance() {
		return yearlyDeposit - remainingDeposit;
	}
	
	private void checkDeposit(double amount) {
		if (remainingDeposit - amount < 0) {
			throw new IllegalStateException();
		}
	}
	
	@Override
	public void endYearUpdate() {
		remainingDeposit = yearlyDeposit;
		super.endYearUpdate();
	}
	
	@Override
	public void withdraw(double amount) {
		checkWithdraw(amount);
		super.withdraw(amount);
	}
	
	private void checkWithdraw(double amount) {
		if (getYearlyBalance() - amount < 0) {
			throw new IllegalStateException();
		}
	}
}
