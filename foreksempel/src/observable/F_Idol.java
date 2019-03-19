package observable;

import java.util.ArrayList;
import java.util.Collection;

import javafx.scene.paint.Color;

public class F_Idol {

	private Color hairColor;
	private int hairLength;
	private final Collection<IdolFan> idolFans = new ArrayList<IdolFan>();
	public final static String HAIR_COLOR_PROPERTY = "hairColor";
	public final static String HAIR_LENGTH_PROPERTY = "hairLength";

	public void addIdolFan(final IdolFan idolFan) {
		this.idolFans.add(idolFan);
	}
	public void removeIdolFan(final IdolFan idolFan) {
		this.idolFans.remove(idolFan);
	}

	private void fireIdolChanged(final String propertyName, final Object oldValue, final Object newValue) {
	
	// TODO
	}

	public Color getHairColor() {
		return hairColor;
	}

	public int getHairLength() {
		return hairLength;
	}

	public void setHairColor(final Color hairColor) {
		
		// TODO
	}

	public void setHairLength(final int hairLength) {
		
		// TODO
	}

	public static void main(String[] args) {
		final F_Idol idol = new F_Idol();
		final F_Follower follower = new F_Follower();
		final IdolFan filesave = new F_IdolFileSave();
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
