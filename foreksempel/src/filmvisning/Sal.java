package filmvisning;

public class Sal {

	String navn;
	int plasser;
	
	
	@Override
	public String toString() {
		return "Sal [navn=" + navn + ", plasser=" + plasser + "]";
	}


	public Sal(String navn, int plasser) {
		super();
		this.navn = navn;
		this.plasser = plasser;
	}
	
	
	
	
}
