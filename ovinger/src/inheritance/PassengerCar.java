package inheritance;

public class PassengerCar extends TrainCar{
	
	private int passengerCount, averageWeight = 80;

	public PassengerCar(int deadWeight, int passengerCount) {
		super(deadWeight);
		this.passengerCount = passengerCount;
	}
	
	public int getPassengerCount() {
		return passengerCount;
	}
	
	public void setPassengerCount(int passengerCount) {
		this.passengerCount = passengerCount;
	}
	
	@Override
	public int getTotalWeight() {
		return getPassengerCount() * averageWeight + getDeadWeight();
	}
}
