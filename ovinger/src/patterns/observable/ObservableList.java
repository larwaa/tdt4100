package patterns.observable;

import java.util.ArrayList;
import java.util.List;

public abstract class ObservableList {
	
	private List<Object> objectList = new ArrayList<>();
	private List<ObservableListListener> observableListListeners = new ArrayList<>();
	
	public int size() {
		return objectList.size();
	}
	
	public Object getElement(int index) {
		return objectList.get(index);
	}
	
	public void addObservableListListener(ObservableListListener observableListListener) {
		observableListListeners.add(observableListListener);
	}
	
	public void removeObservableListListener(ObservableListListener observableListListener) {
		observableListListeners.remove(observableListListener);
	}
	
	public abstract boolean acceptsElement(Object object);
	
	protected void addElement(int index, Object object) {
		checkElement(object);
		checkIndex(index);
		
		objectList.add(index, object);
		updateListeners(index);
	}
	
	protected void addElement(Object object) {
		checkElement(object);
		objectList.add(object);
		updateListeners(size() - 1);
	}
	
	protected void removeElement(int index) {
		checkIndex(index);
		objectList.remove(index);
	}
	
	private void checkIndex(int index) {
		if (index > size() || index < 0) {
			throw new IndexOutOfBoundsException();
		}
	}
	
	private void checkElement(Object object) {
		if (! acceptsElement(object)) {
			throw new IllegalArgumentException();	
		} 
	}	
	
	protected void updateListeners(int index) {
		for (ObservableListListener listListener : observableListListeners) {
			listListener.listChanged(this, index);
		}
	}

	@Override
	public String toString() {
		return objectList.toString();
	}
	
	public static void main(String[] args) {
		ObservableHighscoreList highscore = new ObservableHighscoreList(3);
		highscore.addElement(5);
		System.out.println(highscore);
		ObservableList list = new ObservableHighscoreList(2);
		list.addElement(0, 5);
		System.out.println(list);
	}
}
