package encapsulation;

public class Account {
	
	// hindre direkte tilgang til balance og interestRate
	// tjenesteorientert / dataorientert
	private double balance, interestRate;

	public Account(double balance, double interestRate) {
		setInterestRate(interestRate);
		checkNegative(balance);
		this.balance = balance;
	}
	
	public double getBalance() {
		return this.balance;
	}
	
	public double getInterestRate() {
		return this.interestRate;
	}
	
	public void setInterestRate(double interestRate) {
		// feil ved negative tall
		checkNegative(interestRate);
		this.interestRate = interestRate;
	}
	
	public void deposit(double d) {
		// feil ved negative tall
		checkNegative(d);
		this.balance += d;
	}
	
	public void withdraw(double w) {
		// feil dersom du tar ut mer penger enn du har
		if (this.balance - w < 0) {
			throw new IllegalArgumentException();
		}
		// feil ved negative tall
		checkNegative(w);
		this.balance -= w;
	}
	
	public void addInterest() {
		this.balance *= (1 + this.interestRate/100);
	}
	
	//lagt til en sjekk for negative tall, som går igjen.
	private void checkNegative(double i) {
		if (i < 0) {
			throw new IllegalArgumentException("Negative tall er ugyldige.");
		}
	}
	
}
