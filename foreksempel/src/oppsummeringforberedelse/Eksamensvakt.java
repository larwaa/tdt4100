package oppsummeringforberedelse;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Eksamensvakt implements ExamListener{
	
	private Map<Course, Date> dates = new HashMap<>();

	@Override
	public void examDateChanged(Course course, Date date) {
		dates.put(course, date);
		
	}
	
	public void listen(Course course) {
		course.addListener(this);
	}
	
	public void unlisten(Course course) {
		course.removeListener(this);
	}


}
