package counter1;

public class Counter {
	
	private int count;
	private int max;
	
	public Counter(int max) {
		count = 0;
		this.max = max;
	}
	
	public int getCount() {
		return this.count;
	}
	
	public void count() {
		if (count < max) {
			count++;
		}
	}
	
	public boolean isMax() {
		return count >= max;
	}
	
	public static void main(String[] args) {
		Counter c1 = new Counter(10);
		for (int i=0; i<=12; i++) {
			c1.count();
			System.out.println(c1.getCount());
		}
	}

}
