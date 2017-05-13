package io.github.daveho.logicsim;

import java.lang.reflect.Constructor;
import java.util.NoSuchElementException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StandardDeviceFactory implements IDeviceFactory {
	private static final Pattern DEV_74_SERIES =
			Pattern.compile("^74(ls|hc|hct)(\\d+)$", Pattern.CASE_INSENSITIVE);

	@Override
	public Device createDevice(String componentName, String name) {
		Matcher m = DEV_74_SERIES.matcher(componentName);
		if (!m.find()) {
			throw new NoSuchElementException("Component name " + componentName + " doesn't follow 74 series naming conventions");
		}
		int suffix = Integer.parseInt(m.group(2));
		try {
			Class<?> cls = Class.forName("io.github.daveho.logicsim.Device74" + suffix);
			// All Device classes should have a constructor that takes a single
			// String parameter (the device name, e.g. "U1")
			Constructor<?> ctor = cls.getConstructor(String.class);
			Object devObj = ctor.newInstance(name);
			return (Device)devObj;
		} catch (ClassNotFoundException ex) {
			throw new NoSuchElementException("No device class for component " + componentName);
		} catch (Exception ex) {
			NoSuchElementException e = new NoSuchElementException("Exception instantiating device " + componentName);
			e.initCause(ex);
			throw e;
		}
	}
}
