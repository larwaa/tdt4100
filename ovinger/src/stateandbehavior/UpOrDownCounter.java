package stateandbehavior;

public class UpOrDownCounter {
	
	int start;
	int end;
	int counter;
	
	
	public UpOrDownCounter(int start, int end){
		
		if (start == end){
			throw new IllegalArgumentException("Start and end values must differ");
		} else {
			this.start = start;
			this.end = end;
			this.counter = start;
		}
		
	}
	
	public int getCounter() {
		return this.counter;
	}
	
	public boolean count() {
		if (counter != end) {
			if (start < end) {
				counter += 1;
			} else {
				counter -= 1;
			}
		}
		
		if (counter != end) {
			return true;
		} else {
			return false;
		}
		
	}
	
	public static void main(String[] args) {
		UpOrDownCounter u1 = new UpOrDownCounter(2, 5);
		u1.count();
		u1.count();
		u1.count();
		u1.count();
		u1.count();
		System.out.println(u1.count());
		System.out.println(u1.getCounter());
		UpOrDownCounter u2 = new UpOrDownCounter(2, 2);
		System.out.println(u2);

	}
}
