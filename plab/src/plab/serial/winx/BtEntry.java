package plab.serial.winx;

public class BtEntry {
	public String __GENUS;
	public String __CLASS;
	public String __SUPERCLASS; 
	public String __DYNASTY;
	public String __RELPATH; 
	public String __PROPERTY_COUNT;
	public String __DERIVATION;    
	public String __SERVER;      
	public String __NAMESPACE; 
	public String __PATH;         
	public String HardwareID;      
	public String Name;     
	public String PNPClass;       
	public String PNPDeviceID;     
	public String PSComputerName;  
	public BtEntry device = null;
	public BtEntry incoming = null;
	public BtEntry outgoing = null;
}
