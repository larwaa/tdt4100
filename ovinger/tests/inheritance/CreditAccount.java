package inheritance;

public class CreditAccount extends AbstractAccount {
	
	private double creditLine;

	public CreditAccount(double creditLine) {
		setCreditLine(creditLine);
	}
	
	@Override
	protected void internalWithdraw(double amount) {
		if (getBalance() - amount < -creditLine) {
			throw new IllegalStateException();
		}
	}
	
	public double getCreditLine() {
		return creditLine;
	}
	
	public void setCreditLine(double creditLine) {
		if (creditLine < 0) {
			throw new IllegalArgumentException();
		}
		
		if (getBalance() < -creditLine) {
			throw new IllegalStateException();
		}
		
		this.creditLine = creditLine;
	}

}
