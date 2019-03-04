package of9;

import java.io.IOException;

public interface LanekassenIOInterface {
	
	void save(String filename, LanekassenKalkulator calc, Person person) throws IOException;
	
	LanekassenObjectLoader load(String filename) throws IOException;

}
