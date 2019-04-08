package patterns.delegation;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class FilteringLogger implements ILogger {
	
	private List<String> severitiesList;
	private ILogger logger;

	public FilteringLogger(ILogger logger, String...severities) {
		this.severitiesList = new ArrayList<>(Arrays.asList(severities));
		this.logger = logger;
	}
	
	@Override
	public void log(String severity, String message, Exception exception) {
		if (isLogging(severity)) {
			logger.log(severity, message, exception);
		}
	}
	
	public boolean isLogging(String severity) {
		return severitiesList.stream().anyMatch((s) -> s.equals(severity));
	}
	
	public void setIsLogging(String severity, boolean value) {
		if (value && ! isLogging(severity)) {
			severitiesList.add(severity);
		} else if (! value && isLogging(severity)) {
			severitiesList.remove(severity);
		}
	}

}
