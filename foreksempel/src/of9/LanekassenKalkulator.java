package of9;

public class LanekassenKalkulator {
	
	
	private int downpaymentYears, loanAmount;
	private double effectiveInterest;
	public int getDownpaymentYears() {
		return downpaymentYears;
	}
	public void setDownpaymentYears(int downpaymentYears) {
		this.downpaymentYears = downpaymentYears;
	}
	public int getLoanAmount() {
		return loanAmount;
	}
	public void setLoanAmount(int loanAmount) {
		this.loanAmount = loanAmount;
	}
	public double getEffectiveInterest() {
		return effectiveInterest;
	}
	public void setEffectiveInterest(double effectiveInterest) {
		this.effectiveInterest = effectiveInterest;
	}
	
	public double calculateMonthlyPayment() {
		  double interestRate = this.effectiveInterest/100.0;
	       
	      // Monthly interest rate 
	      // is the yearly rate divided by 12
	       
	      double monthlyRate = interestRate / 12.0;
	       
	      // The length of the term in months 
	      // is the number of years times 12
	       
	      int termInMonths = this.downpaymentYears * 12;
	       
	      // Calculate the monthly payment
	      // Typically this formula is provided so 
	      // we won't go into the details
	       
	      // The Math.pow() method is used calculate values raised to a power
	       
	      double monthlyPayment = 
	         (this.loanAmount	*monthlyRate) / 
	            (1-Math.pow(1+monthlyRate, -termInMonths));
	       
	      return monthlyPayment;
	}
	
	public double calculateTotalPayment() {
		return this.calculateMonthlyPayment()*this.downpaymentYears*12;
	}
	
	public boolean askForDelayedMent(Person p) {
		return p.getWorkYears() < 5 && p.getDelayedCount() < 6;
	}
	
	
}
