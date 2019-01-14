package of2;

public class Book {
	
	String name;
	int numberOfPages;
	int currentPage = 0; 
	
	public Book(String name, int numberOfPages) {
		this.name = name;
		this.numberOfPages = numberOfPages; 
	}
	public Book(String name) {
		this.name = name;
	}
	
	public void flipForward() {
		if (this.currentPage < this.numberOfPages) {
			this.currentPage ++;
			// Ekvivalent med this.currentPage += 1
		}
	}
	public void flipBackward() {
		if (this.currentPage > 0) {
			this.currentPage --;
			// Ekvivalent med this.currentPage -= 1
		}
	}
	
	public void flipToPage(int page) {
		currentPage = page;
	}
	
	public String toString() {
		return "Du er på side " + this.currentPage + " i boka " + this.name;
	}
	
	
	public static void main(String[] args) {
		Book harrypotter = new Book("Harry Potter og de vises stein", 378);
		Book ringenesherre = new Book("Ringens brorskap");
		System.out.println(harrypotter);
		harrypotter.flipForward();
		System.out.println(harrypotter);
		for(int i = 0; i<400; i++) {
			harrypotter.flipForward();
			System.out.println(harrypotter);
		}

	}

}
