package of1;

public class Euler {
	
	public int multiples() {
		int sum = 0;
		for (int i=0; i<5000; i++) {
			if (i%3==0 || i%5==0) {
				sum += i;
			}
		}
		return sum;
	}

	public static void main(String[] args) {
		Euler euler = new Euler(); 
		
		System.out.println(euler.multiples());

	}

}
