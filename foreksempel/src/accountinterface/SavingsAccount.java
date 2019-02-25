package accountinterface;

public class SavingsAccount implements Account{
	int balance;
	int withdrawals;
	int maxWithdrawals = 2;
	
	@Override
	public int getBalance() {
		return balance;
	}

	@Override
	public int deposit(int amount) {
		balance += amount;
		return balance;
	}

	@Override
	public int withdraw(int amount) {
		if (withdrawals == maxWithdrawals) // Maks 2 uttak (
			return 0;
		if ((balance - amount) >= -1000) {
			balance -= amount;
			withdrawals ++;
			System.out.println(withdrawals);
			return amount;
		}
		return 0;
	}
}
