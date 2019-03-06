package plab.serial.winx;

import java.lang.System;

public class OsInfo {
	private static String osName = System.getProperty("os.name");
	private static String osVersion = System.getProperty("os.version");
	
	public static String getOsName() {
		return osName;
	}
	
	public static String getOsVersion() {
		return osVersion;
	}
	
	public static boolean isWindows() {
		return (osName.indexOf("Windows")>-1);
	}
	
	public static int osMajorVersion() {
		int i = osVersion.indexOf(".");
		String majorVersion = "0";
		if(i>-1) {
			majorVersion = osVersion.substring(0,i);
		}
		try {
			return Integer.parseInt(majorVersion);
		} catch (Exception e) {
			return 0;
		}
	}
	
	public static boolean isWinX() 	{
		if(isWindows()&&(osMajorVersion()>=10)) {
			System.out.println("winx");
			return true;
		}
		return false;
	}

	

	
}
