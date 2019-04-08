package cinema;

import java.util.ArrayList;
import java.util.List;

public class Stage {
	
	private String name;
	private int seats;
	private List<MovieScreening> movieScreenings = new ArrayList<>();
	
	public Stage(String name, int seats) {
		
		if (name.length() < 1) {
			throw new IllegalArgumentException();
		}
		
		if (seats < 1) {
			throw new IllegalArgumentException();
		}
		
		this.name = name;
		this.seats = seats;
	}
	
	

	public String getName() {
		return name;
	}

	public int getSeats() {
		return seats;
	}

	public void addMovieScreening(MovieScreening newMovieScreening) {
		for (MovieScreening movieScreening : this.movieScreenings) {
			if (movieScreening.getTime() == newMovieScreening.getTime()) {
				throw new IllegalArgumentException();
			}
		}
		this.movieScreenings.add(newMovieScreening);
	}
	
	public MovieScreening getScreeningFromStage(Stage stage) {
		for (MovieScreening movieScreening : movieScreenings) {
			if (movieScreening.getStage() == stage) {
				return movieScreening;
			}
		}
		return null;
	}
		

}
