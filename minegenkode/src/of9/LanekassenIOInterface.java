package of9;

import java.io.IOException;

public interface LanekassenIOInterface {
	
	public void save(String filename, LanekassenKalkulator calc, Person person) throws IOException;
	
	public LanekassenObjectLoader load(String filename) throws IOException;

}
