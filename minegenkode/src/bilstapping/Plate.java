package bilstapping;

public class Plate {
	
	private String plate;
	
	public Plate(String plate) {
		setPlate(plate);
	}
	
	public void setPlate(String plate) {
		if (plate.length() != 7) {
			
			throw new IllegalArgumentException("Registreringsskiltet må være 7 tegn langt");
			
		} else if (! (Character.isLetter(plate.charAt(0)) && Character.isLetter(plate.charAt(1)))) {
			
			throw new IllegalArgumentException("De første to tegnene må være bokstaver.");
			
		} else if (! (Character.isDigit(plate.charAt(2)) &&
					Character.isDigit(plate.charAt(3)) && 
					Character.isDigit(plate.charAt(4)) &&
					Character.isDigit(plate.charAt(5)) &&
					Character.isDigit(plate.charAt(6))))
					{
			
			throw new IllegalArgumentException("De siste 5 tegnene må være siffer.");
			
		} else {
			
			this.plate = plate;
			
		}
	}
	
	public String getPlate() {
		return plate;
	}
	
	public static void main(String[] args) {
		Plate p1 = new Plate("AX735422");
		System.out.println(p1.getPlate());
		
	}
	
}
