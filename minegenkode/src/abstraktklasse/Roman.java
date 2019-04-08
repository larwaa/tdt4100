package abstraktklasse;

public class Roman extends Bok {

	private String forfatter;

	public Roman(String tittel, int antallSider){
		super(tittel, antallSider);
	}

	public Roman(String tittel, int antallSider, String forfatter){
		this(tittel, antallSider);
		this.forfatter = forfatter;
	}

	public String getSjanger(){
		return this.getClass().toString();
	}

	protected String toStringHelper(){
		return "forfatter=" + forfatter + ", " + super.toStringHelper();
	}

	@Override
	public String toString() {
		return "Roman[" + toStringHelper() + "]";
	}

	public static void main(String[] args){
		Bok b1 = new Roman("Kill", 400, "Lars");
		System.out.println(b1);
	}
}
