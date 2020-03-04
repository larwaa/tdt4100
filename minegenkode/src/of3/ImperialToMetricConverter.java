package of3;

public class ImperialToMetricConverter {
	
	
	public static double inchesToCm(double inches) {
		return inches * 2.54;
	}
	
	public static double feetToMeters(double feet) {
		return feet * 0.3;
	}
	
	public static void main(String[] args) {
		System.out.println(ImperialToMetricConverter.inchesToCm(10));
		System.out.println(ImperialToMetricConverter.feetToMeters(5));
	}
}
