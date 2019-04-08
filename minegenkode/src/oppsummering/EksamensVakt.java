package oppsummering;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class EksamensVakt implements ExamListener {

	Map<Course, Date> jobb = new HashMap<Course, Date>();
	
	public void examDateChanged(Course course, Date date) {
		jobb.put(course, date);
	}

}
