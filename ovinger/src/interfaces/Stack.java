package interfaces;

import java.util.ArrayList;
import java.util.List;

public class Stack {
	
	private List<Double> stringList = new ArrayList<Double>();
	
	public void push(Double s) {
		this.stringList.add(0, s);
	}

	public Double pop() {
		if (this.stringList.isEmpty()) {
			return Double.NaN;
		}
		return this.stringList.remove(0);
	}
	
	public Double peek(int i) {
		if (this.getSize() == 0) {
			return Double.NaN;
		}
		if (i < 0 || i >= stringList.size()) {
			return null;
		}
		return stringList.get(i);
	}
	
	public int getSize() {
		return this.stringList.size();
	}
}
