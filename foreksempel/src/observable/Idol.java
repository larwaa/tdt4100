package observable;

import java.util.ArrayList;
import java.util.Collection;

import javafx.scene.paint.Color;

public class Idol {

	private Color hairColor;
	private int hairLength;
	
	/* 
	 * Veldig ofte bruker en å referere til properties. Det ser bedre ut,
	 * en kan endre dem en plass hvis det skal gjøres om, samt at en unngår 
	 * skrivefeil lettere på denne måten. Når HAIR_COLOR_PROPERTY brukes
	 * i annen kode vil strengen "hairColor" settes inn. 
	 */
	public final static String HAIR_COLOR_PROPERTY = "hairColor";
	public final static String HAIR_LENGTH_PROPERTY = "hairLength";

	
	// En samling kan være final. Det betyr at denne Collection aldri kan peke til
	// noe annet enn idolFans. Du kan derimot legge til elementer i selve idolFans.
	// Ikke nødvendig å legge til final for at det skal virke, dog.
	private final Collection<IdolFan> idolFans = new ArrayList<>();
	
	// En kan bruke final, fordi det ikke skal endres på idolf. Det er dog ikke 
	// nødvendig å gjøre det. Noen hevder en bør være slik eksplisitt hele tiden,
	// men det er ikke flertallet. :)
	public void addIdolFan(final IdolFan idolf) {
		this.idolFans.add(idolf);
	}
	
	public void removeIdolFan(final IdolFan idolf) {
		this.idolFans.remove(idolf);
	}

	public Color getHairColor() {
		return this.hairColor;
	}
	
	public int getHairLength() {
		return this.hairLength;
	}
	
	
	public void setHairColor(final Color hairColor) {
		final Color oldValue = this.hairColor;
		this.hairColor = hairColor;
		// Så kalle metoden som oppdaterer alle som lytter på endringer.
		fireIdolChanged(HAIR_COLOR_PROPERTY, oldValue, hairColor);
	}
	
	public void setHairLength(final int hairLength) {
		final int oldValue = this.hairLength;
		this.hairLength = hairLength;
		// Så kalle metoden som oppdaterer alle som lytter på endringer.
		fireIdolChanged(HAIR_LENGTH_PROPERTY, oldValue, hairLength);
	}
	
	// Metoden som kaller alle observatører sin metode (beskrevet i interfacet)
	// for å gi dem beskjed om at det har skjedd en endring.
	private void fireIdolChanged(final String propertyName, final Object oldValue, 
			final Object newValue) {
		idolFans.forEach( i -> i.idolChanged(this, propertyName, oldValue, newValue));
	}
	
	
	/*
	 *  Her ser vi at vi har to ulike følgere, som bruker informasjonen på 
	 *  forskjellige måter.
	 */
	public static void main(String[] args) {
		final Idol idol = new Idol();
		final Follower follower = new Follower();
		final IdolFan filesave = new IdolFileSave();
		idol.addIdolFan(filesave);
		idol.addIdolFan(follower);
		idol.setHairColor(Color.BLACK);
		idol.setHairLength(220);
		// Color.BLACK vil skrives ut som 0x000000ff - husk ITGK!
		System.out.println("follower haircolour: "+follower.getHairColor());
		idol.setHairLength(220);
		System.out.println("follower hairlength: "+follower.getHairLength());
		idol.setHairLength(10);
		System.out.println("follower hairlength: "+follower.getHairLength());
	}
}
