package plab.serial.winx;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Scanner;

import com.fazecast.jSerialComm.SerialPort;

/**
 * @author Adrian Stoica, IDI, NTNU
 * WinXBluetoothHelper is a class which allows detecting the corresponding 
 * COM port for a Bluetooth device in windows 10
 */

public class WinXBluetoothHelper {
	public static String getPLabPort()	{
		PowerShellExecute pse = new PowerShellExecute();
		try {
			pse.executeCommand(PowerShellExecute.PS_BT_CMD);
			System.out.println(pse.getLastOutput());
			ArrayList<BtEntry> btEnumEntries = parseBtCmdOutput(pse.getLastOutput());
			ArrayList<BtEntry> btDevices = new ArrayList<BtEntry>();
			ArrayList<BtEntry> btPorts = new ArrayList<BtEntry>();
			
			for (BtEntry btEntry : btEnumEntries) {
				if(btEntry.PNPClass.equals("Bluetooth")) {
					btDevices.add(btEntry);
				} else if (btEntry.PNPClass.equals("Ports")) {
					btPorts.add(btEntry);
				}
			}
			
			for (BtEntry btEntry : btDevices) {
				if(btEntry.Name.indexOf("PLab")>-1) {
					getOutgoingPortEntry(btEntry, btPorts);
					if(btEntry.outgoing != null) {
						String comPortName = extractCOMPortFromName(btEntry.outgoing.Name);
						
						SerialPort[] serialports = SerialPort.getCommPorts();
				    	int length = serialports.length;
						for(int i=0;i<length;i++) {
							if(serialports[i].getSystemPortName().equals(comPortName)) {
								return serialports[i].getDescriptivePortName();
							}
						};
					}
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	private static void getOutgoingPortEntry(BtEntry btEntry, ArrayList<BtEntry> btPorts) {
		
		String btDeviceId = extractBluetoothDevice(btEntry.PNPDeviceID);
		System.out.println("BT device id to check: " + btDeviceId);
		for (BtEntry btEntryPort : btPorts) {
			String btPortDeviceId = extractDevice(btEntryPort.PNPDeviceID);
			System.out.println("BT port device id: " + btPortDeviceId);
			if(btDeviceId.equals(btPortDeviceId)) {
				btEntry.outgoing = btEntryPort;
				System.out.println(extractCOMPortFromName(btEntryPort.Name));
				break;
			}
		}
	}

	public static ArrayList<BtEntry> parseBtCmdOutput(String output) {
		ArrayList<BtEntry> result = new ArrayList<BtEntry>();
		BtEntry currentItem = null;
		Class<BtEntry> clazz = BtEntry.class;
		
		Scanner scanner = new Scanner(output);
		while (scanner.hasNextLine()) {
		  String line = scanner.nextLine();
		  // process the line
		  int index;
		  String fieldName;
		  String fieldValue;
		  if(line.startsWith("/##")) continue;  //skip commented lines
		  index = line.indexOf(":"); 
		  if( index == -1) {
			  continue; //skip lines without a name value pair
		  } else {
			  fieldName = line.substring(0,index);
			  fieldValue = line.substring(index+1);
			  fieldName = fieldName.trim();
			  fieldValue = fieldValue.trim();
			  if(fieldName.equals("__GENUS")) {
				  if(currentItem != null) result.add(currentItem);
				  currentItem = new BtEntry();
			  }
			  try {
				  Field crtField = clazz.getField(fieldName);
				  crtField.set(currentItem, fieldValue);
			  } catch (Exception e) {
				  // TODO: handle exception
				  e.printStackTrace();
			  }
		  }
		}
		scanner.close();
		if(currentItem != null) result.add(currentItem); // add the last entry
		
		return result;
	}
	
	private static String extractBluetoothDevice(String pnpDeviceID)
    {
		int startPos = pnpDeviceID.lastIndexOf("_") + 1;
        String result = pnpDeviceID.substring(startPos);
        return result;
    }

    private static String extractDevice(String pnpDeviceID)
    {
    	String result;
    	try {
			int startPos = pnpDeviceID.lastIndexOf("&") + 1;
			int length = pnpDeviceID.lastIndexOf("_") - startPos;
			result = pnpDeviceID.substring(startPos, startPos+length);			
		} catch(Exception e){
			result = null;
			e.printStackTrace();
		} 
			return result;	// TODO: handle finally clause
    }

    private static String extractCOMPortFromName(String name)
    {
        int openBracket = name.indexOf("(");
        int closeBracket = name.indexOf(")");
        return name.substring(openBracket + 1, closeBracket);
    }

    private static String extractHardwareID(String fullHardwareID)
    {
        int length = fullHardwareID.lastIndexOf("_");
        return fullHardwareID.substring(0, length);
    }
}
