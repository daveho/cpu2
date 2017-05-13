package io.github.daveho.logicsim;

import java.util.NoSuchElementException;

public interface IDeviceFactory {
	/**
	 * Create {@link Device} for specified component name.
	 * 
	 * @param componentName the component name (e.g., "74hc670")
	 * @param name the device name (e.g., "U1")
	 * @return the new {@link Device}
	 * @throws NoSuchElementException if the component name is unknown or invalid
	 */
	public Device createDevice(String componentName, String name);
}
