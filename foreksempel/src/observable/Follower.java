package observable;

import javafx.scene.paint.Color;

public class Follower implements IdolFan {

	private Color hairColor;
	private int hairLength;

	public void setHairLength(int hairLength) {
		this.hairLength = hairLength;
	}

	public int getHairLength() {
		return this.hairLength;
	}
	public Color getHairColor() {
		return hairColor;
	}

	public void setHairColor(final Color hairColor) {
		this.hairColor = hairColor;
	}

	@Override
	public void idolChanged(final Idol idol, final String propertyName, 
			final Object oldValue, final Object newValue) {
		// Hvis det dreier seg om hårfarge, hent ut be om den.
		// Kunne også vært hentet ut fra newValue, hvis du kjenner strukturen.
		// Ofte er det gjerne også andre ting en ønsker å hente ut når noe utløses.
		if (propertyName.equals(Idol.HAIR_COLOR_PROPERTY)) {
			setHairColor(idol.getHairColor());
		} else if (propertyName.equals(Idol.HAIR_LENGTH_PROPERTY)) {
			setHairLength(idol.getHairLength());
		}
	}


	public static void main(final String[] args) {
		final Idol idol = new Idol();
		final Follower follower = new Follower();
		idol.addIdolFan(follower);
		idol.setHairColor(Color.GREEN);
		System.out.println("follower haircolour: "+follower.getHairColor());
		idol.setHairLength(220);
		System.out.println("follower hairlength: "+follower.getHairLength());
		idol.setHairLength(10);
		System.out.println("follower hairlength: "+follower.getHairLength());
	}
}
