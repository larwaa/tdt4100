package patterns.delegation;

import java.util.HashMap;
import java.util.Map;

public class DistributingLogger implements ILogger {
	
	private Map<String, ILogger> loggers = new HashMap<>();

	public DistributingLogger(ILogger errorLogger, ILogger warningLogger, ILogger infoLogger) {
		loggers.put(ERROR, errorLogger);
		loggers.put(INFO, infoLogger);
		loggers.put(WARNING, warningLogger);
	}

	@Override
	public void log(String severity, String message, Exception exception) {
		if (loggers.containsKey(severity)) {
			loggers.get(severity).log(severity, message, exception);
		}
	}
	
	public void setLogger(String severity, ILogger logger) {
		if (loggers.containsKey(severity)) {
			loggers.put(severity, logger);
		}
	}
	
	

}
