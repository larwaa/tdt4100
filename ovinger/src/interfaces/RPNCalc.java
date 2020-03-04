package interfaces;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BinaryOperator;

public class RPNCalc {
	
	private Map<Character, BinaryOperator<Double>> operators = new HashMap<>();
	private Stack stack = new Stack();
	
	public void push(double d) {
		this.stack.push(d);
	}
	
	public double pop() {
		return this.stack.pop();
	}
	
	public double peek(int i) {
		return this.stack.peek(i);
	}
	
	public int getSize() {
		return this.stack.getSize();
	}
	
	public boolean addOperator(char operatorSign, BinaryOperator<Double> binaryOperator) {
		if (!operators.containsKey(operatorSign)) {
			operators.put(operatorSign, binaryOperator);
			return true;
		}
		return false;
	}
	
	public void performOperation(char c) {
		
		if (!operators.containsKey(c)) {
			throw new UnsupportedOperationException();
		}
		
		if (this.getSize() < 2) {
			throw new IllegalStateException("Operation requires two numbers.");
		}
		
		double temp1 = this.pop();
		double temp2 = this.pop();
		BinaryOperator<Double> binaryOperator = operators.get(c);
		this.push(binaryOperator.apply(temp2, temp1));
	}
	
	public void removeOperator(char c) {
		operators.remove(c);
	}
	
	private void checkOperator(char c) {
		List<Character> legalChars = List.of('+', '-', '/', '*', '~', '^');
		
		if (! (legalChars.contains(c))) {
			throw new IllegalArgumentException("Only supports +, -, *, /");
		}
	}
	
	public static void main(String[] args) {
		RPNCalc calc = new RPNCalc();
		calc.push(2);
		calc.push(3);
		calc.performOperation('^');
		System.out.println(calc.peek(0));

	}

}
