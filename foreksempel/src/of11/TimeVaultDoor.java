package of11;

import java.time.LocalDateTime;

public class TimeVaultDoor extends Door{
	
	
	@Override
	public void open() {
		int hour = LocalDateTime.now().getHour(); 
		
		if (hour > 7 && hour < 19) {
			super.open();
		}

	}
	
	public static void main(String[] args) {
		TimeVaultDoor door = new TimeVaultDoor();
		door.open();
		System.out.println(door.isOpen());
	}
}
