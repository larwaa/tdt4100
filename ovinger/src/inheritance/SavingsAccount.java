package inheritance;

public class SavingsAccount implements Account{
	
	private double balance, interestRate;
	
	public SavingsAccount(double interestRate) {
		this.balance = 0;
		this.interestRate = interestRate;
	}
	
	@Override
	public void deposit(double amount) {
		checkDouble(amount);
		balance += amount;
	}

	@Override
	public void withdraw(double amount) {
		checkWidthdraw(amount);
		balance -= amount;
	}

	@Override
	public double getBalance() {
		return balance;
	}
	
	public void endYearUpdate() {
		balance *= (1 + interestRate);
	}
	
	protected void checkDouble(double d) {
		if (d < 0) {
			throw new IllegalArgumentException();
		}
	}
	
	protected void checkWidthdraw(double amount) {
		checkDouble(amount);
		if (balance - amount < 0) {
			throw new IllegalStateException();
		}
	}

}
