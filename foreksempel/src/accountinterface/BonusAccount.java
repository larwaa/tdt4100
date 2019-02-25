package accountinterface;

public class BonusAccount implements Account{
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
		if ((balance - amount) >= -1000) { // 1000 i maks kreditt
			balance -= amount;
			return amount;
		}
		return 0;
	}

}
