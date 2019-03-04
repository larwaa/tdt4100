package account;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.PrintWriter;
import java.util.Scanner;

public class Account {

	private double balance;
	private double interestRate;
	private String errormsg = "";
	private String info = "";

	public Account(double balance, double interestRate) {
		if (isNegative(balance, "Balance")) {
			return;
		}
		this.balance = balance;
		setInterestRate(interestRate);
		info = "Account made.";
	}
	
	public Account(){
		
	}

	protected boolean isNegative(double value, String valueName) {
		if (value < 0) {
			errormsg = ("Error: " + valueName + " cannot be negative: " + value);
			return true;
		}
		return false;
	}

	public String toString() {
		return String.format("Account balance=%f interestRate=%f", balance, interestRate);
	}
	
	public double getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(double interestRate) {
		if (isNegative(interestRate, "Interest rate")) {
			return;
		}
		this.interestRate = interestRate;
		info = "Interestrate set.";
	}

	public double getBalance() {
		return balance;
	}

	public void deposit(double amount) {
		if (isNegative(amount, "Amount")) 
			return;
		balance = balance + amount;
		info = "Deposit made.";
	}
	
	public void withdraw(double amount) {
		if (isNegative(amount, "Amount")) {
			return;
		}
		double newBalance = balance - amount;
		if (newBalance < 0) {
			errormsg = ("Error: The balance cannot become negative: " + newBalance);
			return;
		}
		balance = newBalance;
		info = "Withdrawal made.";
	}
	
	public void addInterest() {
		deposit(balance * interestRate / 100);
		info = "Interest added.";
	}
	
	private Double getBalanceOrInterestRateFromString(String info, boolean isBalance) {
		try{
			info = info.replace(',', '.');
			if (isBalance) {
				return Double.parseDouble(info.substring(info.indexOf('=')+1, info.indexOf('.')+4));
			}
			return Double.parseDouble(info.substring(info.lastIndexOf('=')+1, info.lastIndexOf('.')+4));
		}
		catch (NullPointerException e1) {
			return 0.0/0;
		}
		catch (NumberFormatException e2) {
			return 0.0/0;
		}
	}
	
	public String getErrormsg() {
		String error = errormsg;
		errormsg = "";
		return error;
	}
	
	public String getInfo() {
		return info;
	}
	
	public Account loadAccountFromFile(String fileName) {
		try {
			Scanner scanner = new Scanner(new FileReader(fileName+".txt"));
			String s = "";
			while (scanner.hasNext()) {
				s += scanner.nextLine();
			}
			scanner.close();
			double balance = getBalanceOrInterestRateFromString(s, true);
			double interestRate = getBalanceOrInterestRateFromString(s, false);
			if (Double.isNaN(balance) || Double.isNaN(interestRate)) {
				errormsg = "Error: File does not correspond to an account.";
			}
			Account account = new Account(balance, interestRate);
			account.info = "Account opened.";
			return account;
		} catch (FileNotFoundException e) {
			errormsg = "Error: File '"+fileName+".txt' could not be opened.";
			return null;
		}
	}
	
	public void saveAccountToFile(String fileName) {
		try {
			PrintWriter file = new PrintWriter(fileName+".txt");
			file.println(this.toString());
			file.close();
			info = "Information saved to file.";
		} catch (FileNotFoundException e) {
			errormsg = "Error: File '"+fileName+".txt' could not be opened for writing.";
		}
	}
}
