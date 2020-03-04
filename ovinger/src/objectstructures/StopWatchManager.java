package objectstructures;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StopWatchManager {
	
	private Map<String, StopWatch> allWatches = new HashMap<>();
	
	public StopWatch newStopWatch(String name) {
		this.allWatches.put(name, new StopWatch());
		return this.allWatches.get(name);
	}
	
	public void removeStopWatch(String name) {
		this.allWatches.remove(name);
	}
	
	public void tick(int ticks) {
		for (StopWatch stopWatch : this.allWatches.values()) {
			stopWatch.tick(ticks);
		}
	}
	
	public StopWatch getStopWatch(String name) {
		return this.allWatches.get(name);
	}
	
	public Collection<StopWatch> getAllWatches(){
		return this.allWatches.values();
	}
	
	public Collection<StopWatch> getStoppedWatches(){
		List<StopWatch> stoppedWatches = new ArrayList<>();
		for (StopWatch stopWatch : this.allWatches.values()) {
			if (stopWatch.isStopped()) {
				stoppedWatches.add(stopWatch);
			}
		}
		return stoppedWatches;
	}
	
	public Collection<StopWatch> getStartedWatches(){
		List<StopWatch> startedWatches = new ArrayList<>();
		for (StopWatch stopWatch : this.allWatches.values()) {
			if (stopWatch.isStarted()) {
				startedWatches.add(stopWatch);
			}
		}
		return startedWatches;
	}
	

}
