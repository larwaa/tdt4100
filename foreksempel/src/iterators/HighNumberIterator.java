package iterators;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public class HighNumberIterator implements Iterator<Integer>{
	
	private int counter = 0;
	private List<Integer> tall;
	private int highNumber;
	
	public HighNumberIterator(List<Integer> tall, int highNumber) {
		this.highNumber = highNumber;
		this.tall = new ArrayList<>(tall);
	}
	
	@Override
	public boolean hasNext() {
		
		for(int i = counter; i<tall.size(); i++) {
			if (tall.get(i) >= highNumber) {
				return true;
			}
		}
		
		return false;
	}

	@Override
	public Integer next() {
		if (!hasNext()) {
			throw new NoSuchElementException();
		}
		
		for(int i = counter; i<tall.size(); i++) {
			if (tall.get(i) >= highNumber) {
				this.counter = i+1;
				return tall.get(i);
			}
		}
		return 0;
		
		
	}

}
