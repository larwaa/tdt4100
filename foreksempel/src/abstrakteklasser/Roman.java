package abstrakteklasser;

public class Roman extends Bok {

	private String forfatter;
	
	public Roman(String tittel, int antallSider) {
		super(tittel, antallSider);
	}

	public Roman(String tittel, int antallSider, String forfatter) {
		super(tittel, antallSider);
		this.forfatter = forfatter;
	}

	protected String getSjanger() {
		return "Roman";
	}

	protected String toStringHelper() {
		return "forfatter=" + forfatter + ", " + super.toStringHelper();
	}

	public static void main(String[] args) {
		var roman = new Roman("Kurt koker hodet", 65);
		System.out.println(roman);
	}
}
