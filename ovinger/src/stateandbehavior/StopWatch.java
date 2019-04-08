package stateandbehavior;

public class StopWatch {
	
	int ticks;
	int time;
	int lastLapTime;
	boolean started = false;
	boolean stopped = false;
	
	public StopWatch() {
		this.ticks = 0;
		this.time = -1;
		this.lastLapTime = -1;
	}
	
	public int getTicks() {
		return ticks;
	}
	
	public int getTime() {
		return time;
	}

	public void tick(int ticks) {
		this.ticks += ticks;
		this.time += ticks;
	}
	
	public int getLapTime() {
		if (getLastLapTime() == -1) {
			return this.time;
		} else {
			return this.time - getLastLapTime();
		}
	}
	
	public int getLastLapTime() {
		return lastLapTime;
	}
	
	public void start() {
		this.time = 0;
		this.started = true;
	}
	
	public void lap() {
		this.lastLapTime = getLapTime();
	}
	
	public void stop() {
		this.stopped = true;
	}
	
	public boolean isStarted() {
		return this.started;
	}
	
	public boolean isStopped() {
		return this.stopped;
	}
	
	
	
}
