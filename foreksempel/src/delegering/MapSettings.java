package delegering;

import java.util.HashMap;
import java.util.Map;

public class MapSettings implements ISettings {

	private final Map<String, Object> settings = new HashMap<>();

	@Override
	public boolean hasSetting(final String s) {
		return settings.containsKey(s);
	}

	@Override
	public Object getSetting(final String s) {
		return settings.get(s);
	}

	@Override
	public void setSetting(final String s, final Object o) {
		settings.put(s, o);
	}

	public static void main(final String[] args) {
		final ISettings settings = new MapSettings();

		settings.setSetting("font", "Courier");
		settings.setSetting("errorColor", "Rød");

		System.out.println(settings.getSetting("font"));
		System.out.println(settings.getSetting("errorColor"));
	}
}
