package observable;

import java.util.ArrayList;
import java.util.Collection;

import javafx.scene.paint.Color;

public class Idol {

	private Color hairColor;
	private int hairLength;
	public final static String HAIR_COLOR_PROPERTY = "hairColor";
	public final static String HAIR_LENGTH_PROPERTY = "hairLength";

	private final Collection<IdolFan> idolFans = new ArrayList<>();
	
	public void addIdolFan(final IdolFan idolf) {
		this.idolFans.add(idolf);
	}
	
	public void removeIdolFan(final IdolFan idolf) {
		this.idolFans.remove(idolf);
	}
	

	public Color getColor() {
		return this.hairColor;
	}
	
	public int getHairLength() {
		return this.hairLength;
	}
	
	
	public void setHairColor(final Color hairColor) {
		final Color oldValue = this.hairColor;
		this.hairColor = hairColor;
		// Oppdatere følgere
	}
	
	public void setHairLength(final int hairLength) {
		final int oldValue = this.hairLength;
		this.hairLength = hairLength;
		// Oppdatere følgere
	}
	
	private void fireIdolChanged(final String propertyName, final Object oldValue, 
			final Object newValue) {
		
	}
	
	
	public static void main(String[] args) {
		final Idol idol = new Idol();
		final Follower follower = new Follower();
		final IdolFan filesave = new IdolFileSave();
		idol.addIdolFan(filesave);
		idol.addIdolFan(follower);
		idol.setHairColor(Color.BLACK);
		idol.setHairLength(220);
		System.out.println("follower haircolour: "+follower.getHairColor());
		idol.setHairLength(220);
		System.out.println("follower hairlength: "+follower.getHairLength());
		idol.setHairLength(10);
		System.out.println("follower hairlength: "+follower.getHairLength());
	}
}
