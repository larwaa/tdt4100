package patterns.observable;

public class ObservableHighscoreList extends ObservableList {
	
	private int maxSize;
	
	public ObservableHighscoreList(int maxSize) {
		super();
		this.maxSize = maxSize;
	}
	
	public void addResult(int result) {
		boolean changed = false;
		int index = 0;
		
		while (! changed && index < maxSize) {
			if (index >= size() || result < (int) getElement(index)) {
				changed = true;
				addElement(index, result);
			} else {
				index++;
			}
		}
		
		if (changed) {
			if (size() > maxSize) {
				removeElement(size() - 1);
			}
		}
	}
	


	@Override
	public boolean acceptsElement(Object object) {
		return object instanceof Integer;
	}

}
