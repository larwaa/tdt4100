package encapsulation;

public class Rectangle {
	
	int maxX;
	int maxY;
	int minX;
	int minY;

	public Rectangle() {
		this.maxX = 0;
		this.maxY = 0;
		this.minX = 0;
		this.minY = 0;
	}
	
	public Rectangle(int maxX, int minX, int maxY, int minY) {
		this.maxX = maxX;
		this.maxY = minX;
		this.minX = maxY;
		this.minY = minY;
	}
	
	public int getWidth() {
		return maxY - minY;
	}
	
	public int getHeight() {
		return maxX - minX;
	}
	
	public boolean isEmpty() {
		return ((maxX == minX) && (maxY == minY));
	}
	
	public int getMaxX() {
		return maxX;
	}

	public int getMaxY() {
		return maxY;
	}

	public int getMinX() {
		return minX;
	}

	public int getMinY() {
		return minY;
	}
	
	public boolean add(int x, int y) {
		if (contains(x, y)) {
			return false;
		} else {
			
			if (this.maxX < x) {
				this.maxX = x;
			}
			
			if (this.minX > x) {
				this.minX = x;
			}
			
			if (this.maxY < y) {
				this.maxY = y;
			}
			
			if (this.minY > y) {
				this.minY = y;
			}
			
			return true;
		}
	}
	
	public boolean add(Rectangle rect) {
		if (contains(rect)){
			return false;
		} else {
			
			if (rect.getMaxX() > this.maxX) {
				this.maxX = rect.getMaxX();
			}
			
			if (rect.getMinX() < this.minX) {
				this.minX = rect.getMinX();
			}
			
			if (rect.getMaxY() > this.maxY) {
				this.maxY = rect.getMaxY();
			}
			
			if (rect.getMinY() < this.minY) {
				this.minY = rect.getMinY();
			}
			
			return true;
		}
	}
	
	public boolean contains(int x, int y) {
		return ((this.maxX >= x && this.minX <= x) && (this.maxY >= y && this.minY <= y));
	}
	
	public boolean contains(Rectangle rect) {
		return ((rect.getMaxX() <= this.maxX) && (rect.getMinX() >= this.minX)
		&& (rect.getMaxY() <= this.maxY) && (rect.getMinY() >= this.minY));
	}
	
	public Rectangle union(Rectangle rect) {
		Rectangle combinedRectangle = new Rectangle();
		Rectangle temp = new Rectangle(maxX, minX, maxY, minY);
		combinedRectangle.add(rect);
		combinedRectangle.add(temp);
		return combinedRectangle;
	}
	
	
	@Override
	public String toString() {
		return String.format("[Rectangle maxX=%s minX=%s maxY=%s minY=%s isEmpty=%s width=%s height=%s]",
				maxX, minX, maxY, minY, isEmpty(), getWidth(), getHeight());
	}
	
	public static void main(String[] args) {
		Rectangle r1 = new Rectangle();
		System.out.println(r1.toString());
		System.out.println(r1.isEmpty());
		System.out.println(r1.contains(2, 4));
		System.out.println(r1.add(2, 4));
		System.out.println(r1.contains(2, 4));
		System.out.println(r1.getHeight());
		System.out.println(r1.getWidth());
		System.out.println(r1.toString());
		System.out.println("#########");
		Rectangle r2 = new Rectangle();
		System.out.println(r2.toString());
		System.out.println("#########");
		System.out.println(r1.add(r2));
		r2.add(5, 10);
		System.out.println(r2.toString());
		System.out.println(r1.contains(r2));
		System.out.println(r1.add(r2));
		System.out.println(r1.contains(r2));
		System.out.println(r1.getHeight());
		System.out.println(r1.getWidth());
		System.out.println(r1.toString());
		System.out.println(r2.toString());
	}

}
