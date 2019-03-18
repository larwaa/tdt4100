package delegering;

import javafx.scene.text.Font;

public class DefaultingSettings implements ISettings {

	private final ISettings local, defaults;

	public DefaultingSettings(final ISettings local, final ISettings defaults) {
		this.local = local;
		this.defaults = defaults;
	}

	@Override
	public boolean hasSetting(final String s) {
		return local.hasSetting(s) || (defaults != null && defaults.hasSetting(s));
	}

	@Override
	public Object getSetting(final String s) {
		if (local.hasSetting(s)) {
			return local.getSetting(s);
		}
		if (defaults != null) {
			return defaults.getSetting(s);
		}
		return null;
	}

	@Override
	public void setSetting(final String s, final Object o) {
		local.setSetting(s, o);
	}

	//

	public static void main(final String[] args) {
		final ISettings local = new MapSettings();
		local.setSetting("font", new Font("Courier", 12));
		local.setSetting("errorColor", "localRød");

		final ISettings global = new MapSettings();
		global.setSetting("font", new Font("Times", 12));
		global.setSetting("warningColor", "globalRød");

		final ISettings superGlobal = new MapSettings();
		superGlobal.setSetting("font", new Font("Times", 12));
		superGlobal.setSetting("warningColor", "superglobalRød");

		final ISettings delegating2 = new DefaultingSettings(global, superGlobal);
		final ISettings delegating1 = new DefaultingSettings(local, delegating2);

		System.out.println("Font: "+delegating1.getSetting("font"));
		System.out.println("errorColor: "+delegating1.getSetting("errorColor"));
		System.out.println("warningColor: "+delegating1.getSetting("warningColor"));
		System.out.println("infoColor: "+delegating1.getSetting("infoColor"));
	}
}
