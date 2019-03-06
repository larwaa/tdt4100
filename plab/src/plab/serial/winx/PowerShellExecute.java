package plab.serial.winx;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class PowerShellExecute {
	/**
	 * PowerShell command to get version
	 */
	public static final String PS_VERSION_CMD 	= "powershell.exe  $PSVersionTable.PSVersion";
	/**
	 * PowerShell command to get Bluetooth devices and ports
	 */
	public static final String PS_BT_CMD  		= "powershell.exe -Command \"Get-WmiObject -query \\\"SELECT PNPClass, PNPDeviceID, Name, HardwareID FROM Win32_PnPEntity WHERE (Name LIKE '%COM%' AND PNPDeviceID LIKE '%BTHENUM%' AND PNPClass = 'Ports') OR (PNPClass = 'Bluetooth' AND PNPDeviceID LIKE '%BTHENUM\\\\DEV%')\\\"\"";
	
	private String lastOutput=null;
	
	
	/**
	 * Executes a command 
	 * @param command string such as "powershell.exe  your command"
	 * @return command output
	 * @throws IOException
	 */
	public String executeCommand(String command) throws IOException {
		StringBuilder result = new StringBuilder();	
		String lineSeparator = System.getProperty("line.separator");
		// Executing the command
		Process powerShellProcess = Runtime.getRuntime().exec(command);
		// Getting the results
		powerShellProcess.getOutputStream().close();
		String line;
		//System.out.println("Standard Output:");
		result.append("/## Standard Output:");result.append(lineSeparator);
		BufferedReader stdout = new BufferedReader(new InputStreamReader(
	    powerShellProcess.getInputStream()));
		while ((line = stdout.readLine()) != null) {
			//System.out.println(line);
			result.append(line);result.append(lineSeparator);
		}
		stdout.close();
		//System.out.println("Standard Error:");
		result.append("/## Standard Error:");result.append(lineSeparator);
		BufferedReader stderr = new BufferedReader(new InputStreamReader(
				powerShellProcess.getErrorStream()));
		while ((line = stderr.readLine()) != null) {
			//System.out.println(line);
			result.append(line);result.append(lineSeparator);
		}
		stderr.close();
		//System.out.println("Done");
		setLastOutput(result.toString());
		return result.toString();
	}


	/**
	 * @return the lastOutput
	 */
	public String getLastOutput() {
		return lastOutput;
	}


	/**
	 * @param lastOutput the lastOutput to set
	 */
	protected void setLastOutput(String lastOutput) {
		this.lastOutput = lastOutput;
	}

}
