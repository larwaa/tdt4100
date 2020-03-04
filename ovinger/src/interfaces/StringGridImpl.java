package interfaces;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class StringGridImpl implements StringGrid {
	
	List<List<String>> grid;
	
	public StringGridImpl(int rows, int columnCount) {
		this.grid = new ArrayList<>(rows);
		for (int i = 0; i < rows; i++) {
			grid.add(Arrays.asList(new String[columnCount]));
		}
	}

	@Override
	public int getRowCount() {
		return grid.size();
	}

	@Override
	public int getColumnCount() {
		return grid.get(0).size();
	}

	@Override
	public String getElement(int row, int column) {
		return grid.get(row).get(column);
	}

	@Override
	public void setElement(int row, int column, String element) {
		grid.get(row).set(column, element);
	}
	
	public static void main(String[] args) {
		StringGridImpl g1 = new StringGridImpl(10, 20);
		
		for (String s : g1) {
			System.out.println(s);
		}
	}

	@Override
	public Iterator<String> iterator() {
		return new StringGridIterator(this, true);
	}
	

}
