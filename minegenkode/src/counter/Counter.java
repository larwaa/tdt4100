package counter;

public class Counter {
	
	int end, counter = 0;
	
	public Counter(int end) {
		this.end = end;
		System.out.println(counter);
	}
	
	public int getCounter() {
		return counter;
	}
	
	public boolean count() {
		if (counter < end) {
			counter++;
		}
		
		if (counter < end) {
			return false;
		} else {
			return true;
		}
	}
	
	public static void main(String[] args) {
		Counter c = new Counter(3);
		System.out.println(c.getCounter());
		System.out.println(c.count());
		System.out.println(c.count());
		System.out.println(c.count());
		System.out.println(c.count());
		System.out.println(c.count());
		System.out.println(c.count());
		
	}
	
}
