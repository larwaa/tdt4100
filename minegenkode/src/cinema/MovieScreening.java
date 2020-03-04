package cinema;

public class MovieScreening {

	private Stage stage;
	private Movie movie;
	private int time;
	private int price;
	
	public MovieScreening(Stage stage, Movie movie, int time, int price) {
		super();
		this.stage = stage;
		this.movie = movie;
		this.time = time;
		this.price = price;
		
		try {
			stage.addMovieScreening(this);
			movie.addMoveScreening(this);
		} catch (Exception e) {
			throw e;
		}
	}

	public Stage getStage() {
		return stage;
	}

	public Movie getMovie() {
		return movie;
	}

	public int getTime() {
		return time;
	}

	public int getPrice() {
		return price;
	}
	
	public void changeTime(int time) {
		if (this.stage.getScreeningFromStage(this.stage) == null) {
			this.time = time;
		} else throw new IllegalArgumentException("Salen er allerede booket");
	}
	
	
	
	
	
}
