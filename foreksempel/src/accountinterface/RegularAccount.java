package accountinterface;

public class RegularAccount implements Account {

	int balance;
	
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
		if ((balance - amount) >= 0) { // Har ikke kreditt
			balance -= amount;
			return amount;
		}
		return 0;
	}

}
