package inheritance;

import java.util.ArrayList;
import java.util.List;

public class Train {
	
	private List<TrainCar> train = new ArrayList<>();
	
	public void addTrainCar(TrainCar trainCar) {
		train.add(trainCar);
	}
	
	public boolean contains(TrainCar trainCar) {
		return train.contains(trainCar);
	}
	
	public int getTotalWeight() {
		return train.stream()
				.map((tc) -> tc.getTotalWeight())
				.reduce((sum, i) -> sum += i)
				.orElse(0);
	}
	
	public int getPassengerCount() {
		return train.stream()
				.filter((tc) -> (tc instanceof PassengerCar))
				.map((tc) -> ((PassengerCar) tc).getPassengerCount())
				.reduce((sum, i) -> sum += i)
				.orElse(0);
	}

	public int getCargoWeight() {
		return train.stream()
				.filter((tc) -> (tc instanceof CargoCar))
				.map((tc) -> ((CargoCar) tc).getCargoWeight())
				.reduce((sum, i) -> sum += i)
				.orElse(0);
	}
	
	public String toString() {
		String s = "";
		for (TrainCar tc : train) {
			s += "\nCar type: " + tc.getClass() + "Total weight: " + tc.getTotalWeight();
			if (tc instanceof PassengerCar) {
				s += "Passenger count: " + ((PassengerCar) tc).getPassengerCount();
			} else if (tc instanceof CargoCar) {
				s += "Cargo weight: " + ((CargoCar) tc).getCargoWeight();
			}
		}
		return s;
	}
	
}
