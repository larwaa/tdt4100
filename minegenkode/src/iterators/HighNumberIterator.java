package iterators;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public class HighNumberIterator implements Iterator<Integer>{
	
	private int counter = 0;
	private List<Integer> listeMedTall;
	private int highNumber;
	
	public HighNumberIterator(List<Integer> listeMedTall, int highNumber) {
		this.highNumber = highNumber;
		this.listeMedTall = new ArrayList<>(listeMedTall);
	}
	
	@Override
	public boolean hasNext() {
		for (int i = counter; i<listeMedTall.size(); i++) {
			if (listeMedTall.get(i) >= highNumber) {
				return true;
			}
		}
		return false;
	}

	@Override
	public Integer next() {
		if (! hasNext()) {
			throw new NoSuchElementException();
		}
		
		for (int i = counter; i<listeMedTall.size(); i++) {
			if (listeMedTall.get(i) >= highNumber) {
				counter = i + 1;
				return listeMedTall.get(i);
			}
		}
		throw new UnknownError("Dette burde ikke være mulig");
	}
	
	

}
