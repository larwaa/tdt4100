package of10forberedelse;

import java.util.ArrayList;
import java.util.List;

public class SkiResort {
	
	private List<PudderListener> listeners = new ArrayList<>();
	private int cmOfSnow;
	private String name;
	
	public SkiResort(String name) {
		this.name = name;
	}
	
	public void addListener(PudderListener listener) {
		listeners.add(listener);
	}
	
	public void removeListener(PudderListener listener) {
		listeners.remove(listeners);
	}
	
	public void setAmountOfSnow(int cm) {
		this.fireSnowChanged(this.cmOfSnow, cm);
		this.cmOfSnow = cm;
	}
	
	public void fireSnowChanged(int oldCm, int newCm) {
		for(PudderListener l: listeners) {
			l.pudderAlarm(this, oldCm, newCm);
		}
	}
	
	public String toString() {
		return name;
	}

}
