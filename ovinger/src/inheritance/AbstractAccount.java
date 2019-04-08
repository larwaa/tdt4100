package inheritance;

public abstract class AbstractAccount {
	
	private double balance;
	
	public AbstractAccount() {
		balance = 0;
	}
	
	protected void deposit(double amount) {
		checkDouble(amount);
		balance += amount;
		
	}
	
	protected void withdraw(double amount) {
		checkDouble(amount);
		internalWithdraw(amount);
		balance -= amount;
	}
	
	abstract void internalWithdraw(double amount);
	
	protected double getBalance() {
		return balance;
	}
	
	private void checkDouble(double d) {
		if (d < 0) {
			throw new IllegalArgumentException();
		}
	}

}
