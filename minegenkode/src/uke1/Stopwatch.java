package uke1;

public class Stopwatch {
	
	int ticks;
	int time = -1;
	int lapTime = -1;
	int lastLapTime = -1;
	boolean stopped = false;
	int totalTicks = 0;
	
	public Stopwatch() {
		this.time = 0;
	}
	
	
	boolean isStarted() {
		return time != -1;
	}
	
	boolean isStopped() {
		return stopped;
	}
	
	int getTicks() {
		return totalTicks;
	}
	
	int getTime() {
		if (! isStarted()) {
			return -1;
		} else {
			return ticks;
		}
	}
	
	int getLapTime() {
		return lapTime;
	}
	
	int getLastLapTime() {
		return lastLapTime;
	}
	
	
	void tick(int ticks) {
		if (! stopped) {
			time += ticks;
			lapTime += ticks;
			totalTicks += ticks;
		}
		
	}
	
	void start() {
		this.time = 0;
		this.lapTime = 0;
	}
	
	void lap() {
		lastLapTime = lapTime;
		lapTime = 0;
	}
	
	void stop() {
		this.stopped = true;
	}

}
