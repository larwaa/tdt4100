package delegering;

public class Kokk1 implements Chef {


	@Override
	public String makeSauce() {
		return "brun saus";
	}

	@Override
	public String makeMain() {
		return "pannekaker";
	}

	@Override
	public String makePotatoes() {
		return "hasselbackpoteter";
	}

}
