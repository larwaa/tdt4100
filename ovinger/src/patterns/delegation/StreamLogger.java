package patterns.delegation;

import java.io.IOException;
import java.io.OutputStream;

public class StreamLogger implements ILogger{

    private OutputStream stream;
    private String formatString = "%s: %s (%s)";

    public StreamLogger(OutputStream stream) {
    	this.stream = stream;
    }

    public void setFormatString(String formatString) {
        this.formatString = formatString;
    }

    public void log(String severity, String message, Exception exception) {
        byte[] s = String.format(formatString, severity, message, exception).getBytes();
        try{
            stream.write(s);
            stream.flush();
        } catch (IOException e){
            e.printStackTrace();
        }
    }
    
    public static void main(String[] args) {
    	StreamLogger sl = new StreamLogger(System.out);
    	sl.log(ILogger.INFO, "En testmelding", new IllegalArgumentException());
    }

}
