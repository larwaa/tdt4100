package of5;

public class Person {
	
	
	private int yearsOfWork; 
	private int timesDelayed = 0;
	
	public Person() {
	}

	public int getYearsOfWork() {
		return yearsOfWork;
	}

	public void setYearsOfWork(int yearsOfWork) {
		this.yearsOfWork = yearsOfWork;
	}

	public int getTimesDelayed() {
		return timesDelayed;
	}
	
	public void incrementTimesDelayed() {
		this.timesDelayed++;
	}
	
	
	
	
}
