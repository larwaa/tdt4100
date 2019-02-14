package of5;

import javafx.fxml.FXML;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

public class LanekassenController {
	
	
	@FXML private TextField effectiveInterest, loanAmount, downpaymentYears, workYears;
	@FXML private TextArea output;
	
	private LanekassenKalkulator calculator;
	private Person person;
	
	@FXML
	public void initialize() {
		calculator = new LanekassenKalkulator();
		person = new Person();
	}
	
	public void calculatePaymentPlan() {
		try {
			int years = Integer.parseInt(downpaymentYears.getText());
			int amount = Integer.parseInt(loanAmount.getText());
			double interest = Double.parseDouble(effectiveInterest.getText());
			
			calculator.setDownpaymentYears(years);
			calculator.setLoanAmount(amount);
			calculator.setEffectiveInterest(interest);
			
			double total = Math.round(calculator.calculateTotalPayment());
			double monthly = Math.round(calculator.calculateMonthlyPayment());
			
			String result = "Du må betale " + monthly + " kr i måneden \n\n"
					+ "Totalt over" + years + " blir dette kr: " + total;
			
			 output.setText(result);
		}
		catch(Exception e) {
			output.setText("Noe gikk galt, du klarer åpenbart ikke å bruke programmet. Se manualen\n" + e.getMessage());
		}
			
	}
	
	public void askForDelayedPayment() {
		int years = Integer.parseInt(workYears.getText());
		person.setWorkYears(years);
		
		boolean result = calculator.askForDelayedMent(person);
		
		if (result) {
			output.setText("Gratulerer! Du har fått utsatt betalingen");
			person.incrementDelayed();
		}
		else {
			output.setText("Åh:(");
		}
	}
	
	
	
}
