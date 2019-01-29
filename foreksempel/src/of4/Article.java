package of4;

public class Article {
	
	
	private String name, author;
	private Journal journal;
	
	public Article(String name, String author, Journal journal) {
		this.setAuthor(author);
		this.setJournal(journal);
		this.setName(name);
	}
	
	public Article(String name, String author) {
		this.setAuthor(author);
		this.setName(name);
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public Journal getJournal() {
		return journal;
	}
	public void setJournal(Journal journal) {
		this.journal = journal;
		//Passer på at journal også har denne artiklen i listene sine
		journal.addArticle(this);
	}
	
	
}
