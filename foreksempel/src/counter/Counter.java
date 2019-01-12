package counter;

public class Counter {

	int end;
	int counter = 1;
	
	public Counter(int i) {
		end = i;
	}
	
	boolean count() {
		if (counter == end)
			return true;
		else {
			counter++;
			return false;
		}
	}
	
	public int getCounter() {
		return counter;
	}



	public static void main(String[] args) {

		Counter c = new Counter(3);
		System.out.println(c.getCounter());
		System.out.println(c.count());
		System.out.println(c.getCounter());
		System.out.println(c.count());
		System.out.println(c.getCounter());
		System.out.println(c.count());
		System.out.println(c.getCounter());
		System.out.println(c.count());
	}

}
