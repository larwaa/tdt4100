package account;

import javafx.fxml.FXML;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;


public class AccountController {
	
	private Account account;
	
	@FXML private TextField newAccountBalanceTextField;
	@FXML private TextField newAccountInterestRateTextField;
	@FXML private TextField getFilenameTextField;
	
	@FXML private Label setFileInformationLabel;
	
	@FXML private TextField getBalanceTextField;
	@FXML private TextField getInterestRateTextField;
	
	@FXML private TextField depositTextField;
	@FXML private TextField withdrawTextField; 
	@FXML private TextField setInterestRateTextField;
	
	@FXML private Button depositButton;
	@FXML private Button withdrawButton; 
	@FXML private Button setInterestRateButton;
	@FXML private Button addInterestButton;
	
	@FXML private Label setAccountInformationLabel;
	
	@FXML private TextField getFilenameTextField2;
	
	@FXML private Label setFileSavedInformationLabel;

	@FXML
	private void initialize() {
		getBalanceTextField.setDisable(true);
		getInterestRateTextField.setDisable(true);
		account = new Account();
		update();
	}
	
	private void update() {
		getBalanceTextField.setText(Double.toString(account.getBalance()));
		getInterestRateTextField.setText(Double.toString(account.getInterestRate()));
	}
	
	private void clearLabels() {
		setFileInformationLabel.setText("");
		setAccountInformationLabel.setText("");
		setFileSavedInformationLabel.setText("");
	}
	
	private double getDoubleFromTextField(TextField textField, Label label) {
		try {
			return Double.parseDouble(textField.getText());
		}
		catch (NumberFormatException e){
			label.setText("Error: Input must be a double or integer.");
			return 0.0/0;
		}
	}
	
	private boolean isNaN(double d) {
		return Double.isNaN(d);
	}
	
	private void setInfo(Label label) {
		String error = account.getErrormsg();
		if (error.isEmpty()) {
			label.setText(account.getInfo());
		}
		else {
			label.setText(error);
		}
	}
	
	
	@FXML
	private void handleNewAccount() {
		clearLabels();
		double balance = getDoubleFromTextField(newAccountBalanceTextField, setFileInformationLabel);
		double interestRate = getDoubleFromTextField(newAccountInterestRateTextField, setFileInformationLabel);
		if (isNaN(balance) || isNaN(interestRate)) {
			return;
		}
		account =  new Account(balance, interestRate);
		setInfo(setFileInformationLabel);
		update();
	}
	
	@FXML
	private void handleDeposit() {
		clearLabels();
		double amount = getDoubleFromTextField(depositTextField, setAccountInformationLabel);
		if (isNaN(amount)) {
			return;
		}
		account.deposit(amount);
		setInfo(setAccountInformationLabel);
		update();
	}
	
	@FXML
	private void handleSetInterestRate() {
		clearLabels();
		double interestRate = getDoubleFromTextField(setInterestRateTextField, setAccountInformationLabel);
		if (isNaN(interestRate)) {
			return;
		}
		account.setInterestRate(interestRate);
		setInfo(setAccountInformationLabel);
		update();
	}
	
	@FXML
	private void handleAddInterest() {
		clearLabels();
		account.addInterest();
		setInfo(setAccountInformationLabel);
		update();
	}
	
	@FXML
	private void handleWithdrawal() {
		clearLabels();
		double amount = getDoubleFromTextField(withdrawTextField, setAccountInformationLabel);
		if (isNaN(amount)) {
			return;
		}
		account.withdraw(amount);
		setInfo(setAccountInformationLabel);
		update();
	}
	
	@FXML
	private void handleGetExistingAccount() {
		clearLabels();
		String fileName = getFilenameTextField.getText();
		Account a = account.loadAccountFromFile(fileName);
		if (a != null) {
			account = a;
		}
		setInfo(setFileInformationLabel);
		update();
	}
	
	@FXML
	private void handleSaveAccount() {
		clearLabels();
		String fileName = getFilenameTextField2.getText();
		account.saveAccountToFile(fileName);
		setInfo(setFileSavedInformationLabel);
	}
	
}
