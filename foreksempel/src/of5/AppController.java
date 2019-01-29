package of5;

import javafx.fxml.FXML;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;

public class AppController {
	
	@FXML private TextField effectiveInterest;
	@FXML private TextField loan;
	@FXML private TextField years;
	
	@FXML private TextArea output;
	
	NedBetalingsKalkulator calculator;
	
	
	@FXML
	public void initialize() {
		calculator = new NedBetalingsKalkulator();
		
	}
	
	public void calculatePaymentPlan() {
		try {
			calculator.setDownPaymentYears(Integer.parseInt(years.getText())); 
			calculator.setLoan(Integer.parseInt(loan.getText())); 
			calculator.setInterest(Double.parseDouble(effectiveInterest.getText())); 
			
			double totalPayment = Math.round(calculator.calculateTotalPayment());
			
			double monthlyPayment = Math.round(calculator.calculateMonthlyPayments());
			
			String text = "Hver måned må du betale kr: " + monthlyPayment + 
					"\n\nTotalt over " + years.getText() + " blir dette kr: " + totalPayment;
			output.setText(text);

		}
		catch (Exception e) {
			System.out.println(e.getMessage());
			output.setText("Noe er galt med dataen, sjekk at alt er skrevet rett!");
		}
	}

}
