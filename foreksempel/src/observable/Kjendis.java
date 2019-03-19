package observable;


/*
 *  Dette er klassen som viser en 'enkel' binding mellom en kjendis
 *  og en beundrer. Dette blir hardkodet i forhold til når en bruker
 *  et grensesnitt for å koble dem sammen.
 */
public class Kjendis {
	
	private String vesketype;
	private Beundrer beundrer;

	public String getVesketype() {
		return vesketype;
	}

	public void setVesketype(String vesketype) {
		this.vesketype = vesketype;
		beundrer.vesketypeEndret(vesketype);
	}
	
	public void setBeundrer(Beundrer beundrer) {
		this.beundrer = beundrer;
	}
	
	public static void main(String[] args) {
		Kjendis kjendis = new Kjendis();
		Beundrer beundrer = new Beundrer();
		kjendis.setBeundrer(beundrer);
		kjendis.setVesketype("En pose fra Rema");
		System.out.println("Beundrers vesketype: "+beundrer.getVesketype());
		kjendis.setVesketype("Den patetiske lille til ti tusen (min mening, ikke nødvendigvis din).");
		System.out.println("Beundrers vesketype: "+beundrer.getVesketype());
	}

}
