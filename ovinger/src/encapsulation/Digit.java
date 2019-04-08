package encapsulation;

public class Digit {
	
	// hindre direkte tilgang til tilstandene, digit skal kun økes gjennom increment()
	private int numeralSystem, digit;
	private String alphabeticString = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	
	
	public Digit(int numeralSystem) {
		// feil ved et ulogisk numeralsystem
		if (numeralSystem < 1) {
			throw new IllegalArgumentException();
		} else {
			this.numeralSystem = numeralSystem;
			this.digit = 0;	
		}
	}
	
	public int getValue() {
		return digit;
	}
	
	public boolean increment() {
		if (digit < numeralSystem - 1) {
			digit += 1;
			return false;
		}
		
		else {
			digit = 0;
			return true;
		}
	}
	
	public int getBase() {
		return numeralSystem;
	}
	
	@Override
	public String toString() {
		
		char numChar = alphabeticString.charAt(digit);
		System.out.println(numChar);
		return String.format("%s", numChar);
		
	}
}
