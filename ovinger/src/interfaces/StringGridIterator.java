package interfaces;

import java.util.Iterator;
import java.util.NoSuchElementException;

public class StringGridIterator implements Iterator<String>{
	
	private StringGrid stringGrid;
	private boolean rowMajor;
	private int row, col = 0;

	public StringGridIterator(StringGrid stringGrid, boolean rowMajor) {
		this.stringGrid = stringGrid;
		this.rowMajor = rowMajor;
	}
	
	@Override
	public boolean hasNext() {
		return stringGrid.getRowCount() > row && stringGrid.getColumnCount() > col;
	}

	@Override
	public String next() {
		if (! this.hasNext()) {
			throw new NoSuchElementException();
		}
		String s = stringGrid.getElement(row, col);
		if (rowMajor) {
			col = (col + 1) % stringGrid.getColumnCount();
			System.out.println(col);
			if (col == 0) {
				row++;
			}
		} else {
			row = (row + 1) % stringGrid.getRowCount();
			if (row == 0) {
				col++;
			}
		}
		return s;
	}
	
	public void remove() {
		throw new IllegalArgumentException("Not permitted");
	}

}
