package of3;

public class ImperialToMetricConverter {
	
	
	
	public static double inchesToCm(double inches) {
		return inches*2.54;
	}
	
	public static double feetToMeters(double meters) {
		return meters*0.30;

	}
	
	public static void main(String[] args) {
		// ImperialToMetricConverter converter = new ImperialToMetricConverter();
		
		System.out.println(ImperialToMetricConverter.feetToMeters(5));
		System.out.println(ImperialToMetricConverter.inchesToCm(10));
		Character.toString('c');
	}

}
