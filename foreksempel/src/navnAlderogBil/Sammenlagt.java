package navnAlderogBil;

public class Sammenlagt {

	Person p1;
	Person p2;
	
	
	public int Total() {
		return p1.getAge()+p2.getAge();
	}
	
	public void printTotal() {
		System.out.println(p1.getName()+" og "+p2.getName()+ " er tilsammen "+
	Total()+ " år gamle.");
	}
	
	public Sammenlagt(Person p1, Person p2) {
		super();
		this.p1 = p1;
		this.p2 = p2;
	}

	public static void main(String[] args) {

		Person p1 = new Person("Andrea",12);
	
		// En kan lage nye objekter også inni metodekall...
		Sammenlagt S = new Sammenlagt(p1, new Person("Ole",14));
		S.printTotal();
		
	}

}
