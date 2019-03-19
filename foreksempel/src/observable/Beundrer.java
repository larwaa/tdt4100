package observable;

public class Beundrer {
	
	// Følger av et Kjendisobjekt.
	private String vesketype;
	
	public void vesketypeEndret(String vesketype) {
		this.setVesketype(vesketype);
	}

	private void setVesketype(String vesketype) {
		this.vesketype = vesketype;
	}

	public String getVesketype() {
		return vesketype;
	}
	
	
}
