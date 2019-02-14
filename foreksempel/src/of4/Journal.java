package of4;

import java.util.ArrayList;
import java.util.List;

public class Journal {
	
	
	private int numberOfArticles;
	
	private List<Article> articles = new ArrayList<>();

	public int getNumberOfArticles() {
		return numberOfArticles;
	}

	public void setNumberOfArticles(int numberOfArticles) {
		this.numberOfArticles = numberOfArticles;
	}
	
	public void addArticle(Article article) {
		//Må ha plass til flere artikler og ikke legge til en artikkel flere ganger
		if (articles.size() < this.numberOfArticles && !articles.contains(article)) {
			articles.add(article);
			//Passer på art article sitt journal-felt også peker hit
			// this er objektet som utfører metoden
			article.setJournal(this);
		}
		
		
	}
	public void removeArticle(Article article) {
		articles.remove(article);
		//Fjerner også journal referansen fra article
		article.setJournal(null);
	}
	
	public static void main(String[] args) {
		Journal journal = new Journal(); 
		journal.setNumberOfArticles(2);
		Article article = new Article("Java Weekly", "Børge"); 
		Article article2 = new Article("Java monthly", "Vegard");
		Article article3 = new Article("Gløshaugen news", "Gunnar Bovim");
		
		journal.addArticle(article);
		journal.addArticle(article2);
		journal.addArticle(article3);

	}
	
	
}
