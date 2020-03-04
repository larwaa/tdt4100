package uke1;

public class Digit {
	
	int numeralSystem;
	int digit;
	String alphabeticString = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	
	
	public Digit(int numeralSystem) {
		this.numeralSystem = numeralSystem;
		this.digit = 0;
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
		return String.format("[Digit numeralSystem=%s digit=%s numChar=%s]", numeralSystem, digit, numChar);
		
	}
	
	public static void main(String[] args) {
		Digit d1 = new Digit(16);
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.increment());
		System.out.println(d1.toString());
		System.out.println(d1.increment());
		System.out.println(d1.toString());


		
		
	}

}
