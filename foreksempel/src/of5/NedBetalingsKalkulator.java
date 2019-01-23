package of5;

public class NedBetalingsKalkulator {
	
	private double effectiveInterest;
	private int loan;
	private int downPaymentYears;
	public double getInterest() {
		return effectiveInterest;
	}
	public void setInterest(double interest) {
		this.effectiveInterest = interest;
	}
	public int getLoan() {
		return loan;
	}
	public void setLoan(int loan) {
		this.loan = loan;
	}
	public int getDownPaymentYears() {
		return downPaymentYears;
	}
	public void setDownPaymentYears(int downPaymentYears) {
		this.downPaymentYears = downPaymentYears;
	}
	
	public double calculateMonthlyPayments() {
	    
	      double interestRate = this.effectiveInterest/100.0;
	       
	      // Monthly interest rate 
	      // is the yearly rate divided by 12
	       
	      double monthlyRate = interestRate / 12.0;
	       
	      // The length of the term in months 
	      // is the number of years times 12
	       
	      int termInMonths = this.downPaymentYears * 12;
	       
	      // Calculate the monthly payment
	      // Typically this formula is provided so 
	      // we won't go into the details
	       
	      // The Math.pow() method is used calculate values raised to a power
	       
	      double monthlyPayment = 
	         (this.loan	*monthlyRate) / 
	            (1-Math.pow(1+monthlyRate, -termInMonths));
	       
	      return monthlyPayment;
	}
	public double calculateTotalPayment() {
		return this.calculateMonthlyPayments()*this.downPaymentYears*12;
	}
	
	public static void main(String[] args) {
		NedBetalingsKalkulator calc = new NedBetalingsKalkulator();
		calc.setDownPaymentYears(20);
		calc.setInterest(2.167);
		calc.setLoan(500000);
		System.out.println(calc.calculateTotalPayment());
		System.out.println(calc.calculateMonthlyPayments());
	}
	
	
	
	
}
