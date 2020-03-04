package uke1;
import java.lang.*;

public class Account {
	String accountName;
	double balance;
	double interestRate;
	
	public Account(double balance, double interestRate, String accountName) {
		super();
		this.balance = balance;
		this.interestRate = interestRate;
		this.accountName = accountName;
	}
	
	public Account() {
		this.balance = 0;
		this.interestRate = 0;
		this.accountName = "N/A";
	}

	public void deposit(double amount) {
		if (amount >= 0) {
			this.balance += amount;
		}
	}
	
	public void addInterest() {
		balance = Math.round(balance * (1 + interestRate));
	}
	
	public double getBalance() {
		return this.balance;
	}
	
	public String getAccountName() {
		return accountName;
	}

	public double getInterestRate() {
		return this.interestRate;
	}
	
	public void setInterestRate(double interestRate) {
		this.interestRate = interestRate;
	}	
	
	@Override
	public String toString() {
		return String.format("[Account accountName = %s balance = %s interestRate = %s]", accountName, balance, interestRate);
	}

	public static void main(String[] args) {
		Account a1 = new Account(1000000, 0.2, "Tur til Italia");
		Account a2 = new Account();
		//System.out.println(a1.getBalance());
		a1.addInterest();
		a1.addInterest();
		a1.addInterest();
		a1.addInterest();
		//System.out.println(a1.getBalance());
		System.out.println(a1.toString());
		System.out.println(a2.toString());

	}
}
