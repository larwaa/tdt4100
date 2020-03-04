package encapsulation;

public class Location {

	private int x, y;
	
	public Location(int x, int y) {
		this.x = x;
		this.y = y;
	}
	
	public Location() {
		this.x = 0;
		this.y = 0;
	}
	
	public void up() {
		this.y -= 1;
	}
	
	public void down() {
		this.y += 1;
	}
	
	public void left() {
		this.x -= 1;
	}
	
	public void right() {
		this.x += 1;
	}
	
	public int getX() {
		return x;
	}
	
	public int getY() {
		return y;
	}
	
	public void setX(int x) {
		this.x = x;
	}
	
	public void setY(int y) {
		this.y = y;
	}
	
	@Override
	public String toString() {
		return String.format("[Location x = %s y = %s]", x, y);
	}
	
	public static void main(String[] args) {
		
		Location loc = new Location(50, 50);
		loc.down();
		loc.down();
		loc.right();
		loc.right();
		loc.up();
		loc.left();
		System.out.println(loc.toString());
		
	}
	
}
