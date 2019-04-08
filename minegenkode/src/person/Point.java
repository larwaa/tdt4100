package person;

public class Point {
	
	private double x, y;

	public Point(double x, double y) {
		super();
		this.x = x;
		this.y = y;
	}
	
	public double getX() {
		return x;
	}

	public void setX(double x) {
		this.x = x;
	}

	public double getY() {
		return y;
	}

	public void setY(double y) {
		this.y = y;
	}
	
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (! (obj instanceof Point)) {
			return false;
		}
		if (((Point) obj).getX() == this.getX()) {
			return true;
		}
		return false;
	}
	
	public static void main(String[] args) {
		Point p1 = new Point(2.3, 3.4);
		Point p2 = new Point(2.3, 3.7);
		
		System.out.println(p1.equals(p2));
	}

}
