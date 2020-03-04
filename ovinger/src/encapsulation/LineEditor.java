package encapsulation;

public class LineEditor {
	
	
	// forhindre tilgang, skal kun endres med setters
	private String text;
	private int insertionIndex;
	
	public LineEditor() {
		this.text = "";
		this.insertionIndex = 0;
	}
	
	// dersom pekeren allerede er helt til venstre, gjør ingenting.
	public void left() {
		if (insertionIndex > 0) { 
			insertionIndex -= 1;
		}
	}
	
	// dersom pekeren er helt til høyre, gjør ingenting.
	public void right() {
		if (insertionIndex < text.length()) {
			insertionIndex += 1;
		}
	}
	
	public void insertString(String s) {
		this.text = text.substring(0, insertionIndex) + s + 
					text.substring(insertionIndex, text.length());
		this.insertionIndex = insertionIndex + s.length();
	}
	
	public void deleteLeft() {
		if (this.insertionIndex > 0) {
			this.text = text.substring(0, insertionIndex - 1) + text.substring(insertionIndex, text.length());
			this.insertionIndex -= 1;
		}
	}
	
	public void deleteRight() {
		if (this.insertionIndex < text.length()) {
			this.text = text.substring(0, insertionIndex) + text.substring(insertionIndex + 1, text.length());
		}
	}
	
	public String getText() {
		return text;
	}
	
	public void setText(String s) {
		this.text = s;
	}
	
	public int getInsertionIndex() {
		return insertionIndex;
	}
	
	public void setInsertionIndex(int i) {
		// dersom i er større en lengden til teksten eller negativt så gi en feilmelding.
		if ((i > text.length()) || (i < 0)){
			throw new IllegalArgumentException();
		} else {
			this.insertionIndex = i;
		}
	}
	
	@Override
	public String toString() {
		return text.substring(0, insertionIndex) + "|" + text.substring(insertionIndex, text.length());
	}
	
	public static void main(String[] args) {
		LineEditor l1 = new LineEditor();
		l1.setText("Hello world");
		System.out.println(l1.toString());
		l1.right();
		l1.right();
		System.out.println(l1.toString());
		//l1.insertString("IT WORKS");
		System.out.println(l1.toString());
		l1.deleteLeft();
		System.out.println(l1.toString());
		l1.deleteRight();
		System.out.println(l1.toString());
		l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();
		l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();
		System.out.println(l1.toString());
		l1.deleteRight();
		System.out.println(l1.toString());
		l1.deleteLeft();
		System.out.println(l1.toString());
		l1.insertString(" TDT4100 er verdens beste fag!");
		System.out.println(l1.toString());
		l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();
		l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();l1.right();
		l1.deleteRight();

		System.out.println(l1.toString());






				
	}
}
