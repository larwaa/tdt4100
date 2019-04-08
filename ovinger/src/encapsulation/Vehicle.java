package encapsulation;

public class Vehicle {
	
	private char vehicleType;
	private char fuelType;
	private String registrationNumber;
	
	
	public Vehicle(char vehicleType, char fuelType, String registrationNumber) {
		setVehicleType(vehicleType);
		setFuelType(fuelType);
		setRegistrationNumber(registrationNumber);
	}
	
	private void setVehicleType(char vehicleType) {
		if (vehicleType != 'M' && vehicleType != 'C') {
			throw new IllegalArgumentException("'M' for motorcycle, 'C' for car.");
		} else {
			this.vehicleType = vehicleType;
		}
	}
	
	private void setFuelType(char fuelType) {
		
		if (fuelType != 'H' && 
			fuelType != 'E' && 
			fuelType != 'D' && 
			fuelType != 'G') {
			throw new IllegalArgumentException("'H' for hydrogen\n'E' for electric\n'D' for diesel\n'G' for gas.");
		} else if (this.vehicleType == 'M' && fuelType == 'H') {
			throw new IllegalArgumentException("Fuel type 'H' only allowed for vehicle type 'C'");
		} else {
			this.fuelType = fuelType;
		}
	}
	
	public void setRegistrationNumber(String registrationNumber) {
		checkRegistrationNumber(registrationNumber);
		checkElectric(registrationNumber);
		checkHybrid(registrationNumber);
		
		if (this.vehicleType == 'C' && ! Character.isDigit(registrationNumber.charAt(6))) { 
			// sjekker at det siste tegnet for biler er tall
			throw new IllegalArgumentException();
		}
	
		this.registrationNumber = registrationNumber;
	}
	
	private void checkRegistrationNumber(String registrationNumber) {
		if (! ((registrationNumber.length() == 7 && vehicleType == 'C') || 
				(registrationNumber.length() == 6 && vehicleType == 'M'))) {
				// Sjekker lengden
				throw new IllegalArgumentException("Length:\n'M': 6\n'C': 7");
		}
		
		for (int i=0; i<2; i++) {
			if (! (Character.isUpperCase(registrationNumber.charAt(i)))) {
				throw new IllegalArgumentException();
			} else if (registrationNumber.charAt(i) == 'Æ' ||
						registrationNumber.charAt(i) == 'Ø' ||
						registrationNumber.charAt(i) == 'Å') {
				throw new IllegalArgumentException();
			}
		}
		
		for (int i=2; i<6; i++) {
			if (! (Character.isDigit(registrationNumber.charAt(i)))) {
				throw new IllegalArgumentException();
			}
		}
	}
		
	private void checkElectric(String registrationNumber) {
		if (this.fuelType != 'E') {
			if (registrationNumber.charAt(0) == 'E' &&
					(registrationNumber.charAt(1) == 'K' || 
					registrationNumber.charAt(1) == 'L')) {
				throw new IllegalArgumentException();
			}
		}
		
		if (this.fuelType == 'E') {
			if (! (registrationNumber.charAt(0) == 'E' &&
					(registrationNumber.charAt(1) == 'K' || 
					registrationNumber.charAt(1) == 'L'))) {
				throw new IllegalArgumentException();
			}
		}
	}
	
	private void checkHybrid(String registrationNumber) {
		if (this.fuelType != 'H') {
			if (registrationNumber.charAt(0) == 'H' &&
					registrationNumber.charAt(1) == 'Y') {
				throw new IllegalArgumentException();
			}
		}
		
		if (this.fuelType == 'H') {
			if (! (registrationNumber.charAt(0) == 'H' &&
					registrationNumber.charAt(1) == 'Y')) {
				throw new IllegalArgumentException();
			}
		}
	}
	
	public char getVehicleType() {
		return this.vehicleType;
	}
	
	public String getRegistrationNumber() {
		return this.registrationNumber;
	}
	
	public char getFuelType() {
		return this.fuelType;
	}
	
	public static void main(String[] args) {

	}
}
