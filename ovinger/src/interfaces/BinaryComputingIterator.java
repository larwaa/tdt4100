package interfaces;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.function.BinaryOperator;

public class BinaryComputingIterator implements Iterator<Double>{
	
	private Iterator<Double> iterator1, iterator2;
	private Double default1, default2;
	private BinaryOperator<Double> operator;
	
	public BinaryComputingIterator(Iterator<Double> iterator1, Iterator<Double> iterator2, Double default1,
			Double default2, BinaryOperator<Double> operator) {
		super();
		this.iterator1 = iterator1;
		this.iterator2 = iterator2;
		this.default1 = default1;
		this.default2 = default2;
		this.operator = operator;
	}

	public BinaryComputingIterator(Iterator<Double> iterator1, Iterator<Double> iterator2,
			BinaryOperator<Double> operator) {
		this.iterator1 = iterator1;
		this.iterator2 = iterator2;
		this.operator = operator;
	}

	@Override
	public boolean hasNext() {
		if (default1 == null && default2 == null) {
			return (iterator1.hasNext() && iterator2.hasNext());
		} else if (default1 != null && default2 == null) {
			return (iterator2.hasNext());
		} else if (default2 != null && default1 == null) {
			return (iterator1.hasNext());
		} else {
			return (iterator1.hasNext() || iterator2.hasNext());
		}
	}

	@Override
	public Double next() {
		if (! this.hasNext()) {
			throw new NoSuchElementException();
		}
		
		if (iterator1.hasNext() && iterator2.hasNext()) {
			return this.operator.apply(iterator1.next(), iterator2.next());
		} else if (default1 != null) {
			return this.operator.apply(default1, iterator2.next());
		} else if (default2 != null) {
			return this.operator.apply(iterator1.next(), default2);
		}
		throw new UnknownError("Noe har gått galt!");
		
		
	}
	
	public static void main(String[] args) {
		BinaryOperator<Double> operator = (a, b) -> a + b;
		System.out.println(operator.apply(2.5, 2.4));
	}

}
