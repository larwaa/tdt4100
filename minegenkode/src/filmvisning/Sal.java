package filmvisning;

public class Sal {

	private String navn;
	private int plasser;
	
	public Sal(String navn, int plasser) {
		this.navn = navn;
		this.plasser = plasser;
	}
	
	@Override
	public String toString() {
		return "Sal [navn=" + navn + ", plasser=" + plasser + "]";
	}
	

	
}
