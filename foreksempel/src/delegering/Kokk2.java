package delegering;

public class Kokk2 implements Chef {
	
	// Kanskje kokk2 kan sette bort arbeidet til enda en kokk, skjult for sjefen?
	Chef kokk3 = new Kokk3();
	
	@Override
	public String makeSauce() {
		return kokk3.makeSauce();
	}

	@Override
	public String makeMain() {
		return "entrecôte";
	}

	@Override
	public String makePotatoes() {
		return "potetmos";
	}

}
