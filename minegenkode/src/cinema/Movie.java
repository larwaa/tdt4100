package cinema;

import java.util.ArrayList;
import java.util.List;

public class Movie {
	
	private String movieTitle;
	private int ageLimit;
	private String nationality;
	private List<MovieScreening> movieScreenings = new ArrayList<>();
	
	public Movie(String movieTitle, int ageLimit, String nationality) {
		if (ageLimit < 0) {
			throw new IllegalArgumentException();
		}
		
		if (nationality.length() < 1 || movieTitle.length() < 1) {
			throw new IllegalArgumentException();
		}
		
		this.movieTitle = movieTitle;
		this.ageLimit = ageLimit;
		this.nationality = nationality;
	}
	
	public String getMovieTitle() {
		return this.movieTitle;
	}
	
	public int getAgeLimit() {
		return this.ageLimit;
	}
	
	public String getNationality() {
		return this.nationality;
	}

	public void addMoveScreening(MovieScreening movieScreening) {
		this.movieScreenings.add(movieScreening);
	}
	
	public MovieScreening getScreeningFromTime(int time) {
		for (MovieScreening movieScreening : movieScreenings) {
			if (movieScreening.getTime() == time) {
				return movieScreening;
			}
		}
		return null;
	}
	
	public int getNumScreenings() {
		return this.movieScreenings.size();
	}
	

}
