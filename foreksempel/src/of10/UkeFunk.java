package of10;

public class UkeFunk implements UkeArbeider{
	
	private String name;
	
	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return name;
	}

	@Override
	public void work(String task) {
		System.out.println("Jeg er en ukefunk som gjør oppgaven: " + task);
		
	}

}
