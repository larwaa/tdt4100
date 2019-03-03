package accountinterface;

public class ATMController {

	public static void main(String[] args) {
		// Dette kunne jeg hatt i main i ATM.java, men se for dere at 
		// denne koden ligger og snakker med FXML. Da må ting skrives
		// om så ATM.java returnerer strenger i stedet for å syso dem!
		
		ATM atm = new ATM();
		BonusAccount ba = new BonusAccount();
		RegularAccount ra = new RegularAccount();
		SavingsAccount sa = new SavingsAccount();
		atm.deposit(ra,500);
		atm.deposit(ra,500);
		atm.deposit(ra,500);
		atm.withdraw(ra,1200);
		
		atm.deposit(ba,  600);
		atm.withdraw(ba, 333);
		atm.withdraw(ba, 1033);
		atm.withdraw(ba, 1333);
		atm.deposit(sa, 300);
		atm.withdraw(sa, 100);
		atm.withdraw(sa, 100);
		atm.withdraw(sa, 100);
	}

}
