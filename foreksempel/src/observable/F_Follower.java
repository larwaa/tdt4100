package observable;

import javafx.scene.paint.Color;

public class F_Follower implements IdolFan {

	private Color hairColor;
	private int hairLength;

	public Color getHairColor() {
		return hairColor;
	}

	public void setHairColor(final Color hairColor) {
		this.hairColor = hairColor;
	}

	@Override
	public void idolChanged(final Idol idol, final String propertyName, final Object oldValue, final Object newValue) {

	// TODO
	}

	public void setHairLength(int hairLength) {
		this.hairLength = hairLength;
	}


	public int getHairLength() {
		return this.hairLength;
	}

	public static void main(final String[] args) {
		final Idol idol = new Idol();
		final Follower follower = new Follower();
		idol.addIdolFan(follower);
		idol.setHairColor(Color.BLACK);
		System.out.println("follower haircolour: "+follower.getHairColor());
		idol.setHairLength(220);
		System.out.println("follower hairlength: "+follower.getHairLength());
		idol.setHairLength(10);
		System.out.println("follower hairlength: "+follower.getHairLength());
	}
}
