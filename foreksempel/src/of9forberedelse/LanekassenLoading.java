package of9forberedelse;

import java.io.IOException;

public interface LanekassenLoading {
	
	public void save(String filename, LanekassenKalkulator calc, Person person) throws IOException;
	
	public LanekassenObjectLoader load(String filename) throws IOException;
	
	

}
