package shoppingapp;

public class User {
	
	private String name;
	private double balance;

	public User(String name, double balance) {
		this.name = name;
		this.balance = balance;
	}
	
	public double getBalance() {
		return balance;
	}
	
	public String getName() {
		return name;
	}
	
	public void deposit(double amount) {
		if (amount < 0) {
			throw new IllegalArgumentException("Negative amount: + " + String.valueOf(amount));
		}
		this.balance += amount;
	}
	
	public void withdraw(double amount) {
		if (amount < 0) {
			throw new IllegalArgumentException("Negative amount: + " + String.valueOf(amount));
		}
		this.balance -= amount;
	}
	
	public void setBalance(double amount) {
		this.balance = amount;
	}

}
