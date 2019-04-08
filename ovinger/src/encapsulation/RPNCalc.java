package encapsulation;

import java.util.ArrayList;
import java.util.List;

public class RPNCalc {
	
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
	
	public void performOperation(char c) {
		this.checkOperator(c);
		
		if (this.getSize() < 2) {
			throw new IllegalStateException("Operation requires two numbers.");
		}
		
		double temp1 = this.pop();
		double temp2 = this.pop();
		
		if (c == '+') {
			this.push(temp2 + temp1);
		} else if (c == '-') {
			this.push(temp2 - temp1);
		} else if (c == '/') {
			this.push(temp2/temp1);
		} else if (c == '*') {
			this.push(temp2 * temp1);
		} else if (c == '~') {
			this.push(temp1);
			this.push(temp2);
		} else if (c == '^') {
			this.push(Math.pow(temp2, temp1));
		}
		
		
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
