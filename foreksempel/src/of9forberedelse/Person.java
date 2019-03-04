package of9forberedelse;

public class Person {
	
	private int workYears, delayedCount;
	
	public Person() {
		
	}
	
	public Person(int workyears, int delayedCount) {
		this.workYears = workyears;
		this.delayedCount = delayedCount;
	}

	public int getWorkYears() {
		return workYears;
	}

	public void setWorkYears(int workYears) {
		this.workYears = workYears;
	}

	public int getDelayedCount() {
		return delayedCount;
	}

	public void incrementDelayed() {
		delayedCount ++;
	}
	
	
	
	
	
}
