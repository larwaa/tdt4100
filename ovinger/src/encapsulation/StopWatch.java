package encapsulation;

public class StopWatch {
	
	// forhindre direkte tilgang
	private int ticks, time, lastLapTime;
	private boolean started = false;
	private boolean stopped = false;
	
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
		if (ticks < 0) {
			// må være positivt
			throw new IllegalArgumentException();
		} else {
			this.ticks += ticks;
			this.time += ticks;			
		}
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
		if (isStarted() || isStopped()) {
			// får ikke starte dersom den allerede er startet, eller stoppet
			throw new IllegalStateException();
		} else {
			this.time = 0;
			this.started = true;	
		}
	}
	
	public void lap() {
		if (isStopped() || !isStarted()) {
			// får ikke kjøre om den er stoppet, eller ikke startet
			throw new IllegalStateException();
		}
		this.lastLapTime = getLapTime();
	}
	
	public void stop() {
		if (isStopped() || !isStarted()) {
			// kan ikke stoppe om den ikke har startet, eller allerede er stoppet
			throw new IllegalStateException();
		} else {
			this.stopped = true;
		}	
	}
	
	public boolean isStarted() {
		return this.started;
	}
	
	public boolean isStopped() {
		return this.stopped;
	}
	
	
	
}
