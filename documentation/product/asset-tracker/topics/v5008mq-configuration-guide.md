(gateway-configuration-doc)=

# V5008MQ Gateway Configuration

## Prerequisites
- V5008MQ Gateway and AssetTracker Hardware
- Hyperview MQTT Broker Credentials
- Configuration Tools (3.1).exe
:::{important}
You must [contact our support team](https://system.hyperviewhq.com/helpdesk) to get access to the latest vendor configuration software and documentation.
:::

## Obtaining Hyperview MQTT Broker Credentials
1.	Login to the Hyperview Linux Data Collector host.
2.	Navigate to the following directory:
```
/opt/datacollector/bin
```
3.	Run the show_mqtt_broker_credentials.sh shell script.
```
./show_mqtt_broker_credentials.sh
```

## Using the Configuration Tool
1.	Run the Configuration Tool (3.1).exe
2.	Ensure the system running the Configuration Tool is on the same subnet as the V5008MQ gateway.
:::{note}
See {ref}`AssetTracker Hardware documentation<assettracker-network-requirements>` for details on configuring IP address on the same subnet as the AssetTracker gateway.
:::
3.	Connect to the gateway from the configuration tool.
	- Enter the IP Address and Port of the V5008MQ to the “Add gateway device” section. The default IP address is either 192.168.100.100 or 192.168.0.200.
	- Click the Add button (near IP and Port fields).
	```{figure} /product/asset-tracker/media/config_tool_add_button.png
	:alt: Configuration tool add button
	:class: border-black
	```
	- The gateway will appear in the Devices list.
	```{figure} /product/asset-tracker/media/config_tool_device_list.png
	:alt: Gateway added to device list
	:class: border-black
	```
	- Right-Click the gateway device from the Devices list to open the Settings for it.
	```{figure} /product/asset-tracker/media/config_tool_gateway_settings.png
	:alt: Open gateway settings
	:class: border-black
	```
4.	Add the configuration settings to the gateway device.
	- Click the Get button to populate the existing gateway settings.
	```{figure} /product/asset-tracker/media/config_tool_get_settings.png
	:alt: Get current gateway settings
	:class: border-black
	```
	- Update the following parameters:
		- IP Address – The IP address you want to assign the AssetTracker gateway. Default value is either 192.168.100.100 or 192.168.0.200. Value is only modified once the AssetTracker modules have been rebooted which should be performed last.
		:::{note}
		For v3.1 or newer V5008MQ gateway models you may also use the DHCP option to automatically assign an IP address to the gateway.
		:::
		- Subnet Mask – Default value is 255.255.0.0. Can be modified.
		- Default Gateway – Default value is 192.168.0.1. Can be modified.
		- Server IP – The IP address of the Hyperview Data Collector host that the gateway will communicate with. Can be modified.
		- Server Port – The port the gateway will communicate with the Hyperview data collector on. Use 1883 (the standard MQTT port).
		- Username – The MQTT Broker Credentials username from the Hyperview Data Collector.
		- Password – The MQTT Broker Credentials password from the Hyperview Data Collector.
		- Standby Server(s) – Is required for the configuration tool to save but is not used by Hyperview. Copy the Server IP and Server Port values here. Can be modified.
	- Click the Set button to save the configuration to the gateway.
	```{figure} /product/asset-tracker/media/config_tool_set_settings.png
	:alt: Set gateway settings
	:class: border-black
	```
	- Enter the MQTT Broker Credentials to the Username and Password fields. See above section for obtaining the credentials from the Data Collector.
	```{figure} /product/asset-tracker/media/config_tool_mqtt_creds.png
	:alt: Add Hyperview MQTT credentials
	:class: border-black
	```
	- Click Reboot to finalize the configuration. The AssetTracker modules will beep once when rebooting, then twice when back online. The reboot process typically takes up to 30 seconds.
	```{figure} /product/asset-tracker/media/config_tool_reboot.png
	:alt: Reboot gateway
	:class: border-black
	```
