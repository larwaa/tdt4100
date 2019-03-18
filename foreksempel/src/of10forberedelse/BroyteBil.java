package of10forberedelse;

public class BroyteBil implements PudderListener{

	@Override
	public void pudderAlarm(SkiResort resort, int oldCM, int newCM) {
		if (newCM < oldCM) {
			System.out.println("Ingenting å tenke på");
		}
		else {
			System.out.println("Ut å måke veien..." + resort);
		}
		
	}
	
	
	
}
