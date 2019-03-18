package of10forberedelse;

public class EnthusiasticSkier implements PudderListener{

	@Override
	public void pudderAlarm(SkiResort resort, int oldCM, int newCM) {
		if (newCM > oldCM) {
			System.out.println("Nå skal jeg stå på ski på " + resort);
		}
		
	}
	
	
	
}
