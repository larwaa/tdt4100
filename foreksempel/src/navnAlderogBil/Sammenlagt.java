package NavnogAlder;

public class Sammenlagt {

	Person2 p1;
	Person2 p2;
	
	
	public int Total() {
		return p1.getAge()+p2.getAge();
	}
	
	public void printTotal() {
		System.out.println(p1.getName()+" og "+p2.getName()+ " er tilsammen "+
	Total()+ " år gamle.");
	}
	
	public Sammenlagt(Person2 p1, Person2 p2) {
		super();
		this.p1 = p1;
		this.p2 = p2;
	}

	public static void main(String[] args) {

		Person2 p1 = new Person2("Andrea",12);
		Person2 p2 = new Person2("Ole",14);
		Sammenlagt S = new Sammenlagt(p1, p2);
		S.printTotal();
		
	}

}
