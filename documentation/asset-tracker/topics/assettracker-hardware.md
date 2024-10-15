(assettracker-hardware-doc)=

# AssetTracker hardware

## Supported hardware

The AssetTracker RFID solution is currently certified on [Digitalor](https://www.digitalor.com/en/) asset tracking hardware.

:::{tip}
Hyperview's automated asset tracking system can be tested and certified on additional asset-tracking hardware solutions. We encourage vendors to contact Hyperview if they are interested in having their asset-tracking hardware system certified.
:::

The supported hardware models are:

1. The V5008 AIoT Smart Gateway (MQTT) running firmware version 3.x
2. The V6800 AIoT Gateway (MQTT) running firmware version 1.x

Please [contact](https://www.hyperviewhq.com/contact/) the Hyperview Sales or Support teams for more information.

## Installation

### Selecting a hardware Configuration

AssetTracker can be installed in two different configurations:

1. One-to-One: One Expansion Hub to one Gateway (V5008 AIoT)
2. Daisy Chain: Up to 5 Expansion Hubs to one Gateway (V5008 AIoT)
3. One to many: up to 24 Expansion Hubs to one Gateway (V6800 AIoT)

```{figure} /asset-tracker/media/assettracker_diagram2.png
:alt: AssetTracker deployment diagram 3
:class: border-black

Example Daisy Chain Deployment
```

For installing AssetTracker in multiple racks in a row, you may daisy-chain up to five Expansion Hubs to a single Gateway. The maximum length of the cables from the Gateway to the last Expansion Hub in the chain must not exceed _20 meters (65 feet)_.

Each Master Module has an address between 1 (one) and 5 (five). Each Master Module must have a _unique_ address in the Daisy Chain configuration. The address specification is printed on the Master Module tag.

```{figure} /asset-tracker/media/master_modules_1.png
:alt: Master Modules image 1
:class: border-black

Master Modules with ID and address (Circled)
```

### Network requirements

:::{important}
You must [contact our support team](https://system.hyperviewhq.com/helpdesk) to get access to the latest vendor configuration software and documentation.
:::

- The Gateway uses port 5656/TCP for management and configuration. The configuration must be done using the supplied tool. It is strongly recommended that the tool be on the same network segment as the Gateway to minimize network related issues.

- The Gateway communicates with the data collector over port 1883/TCP. Communication is from the Gateway to the Data Collector. The {ref}`Data Collector setup documentation<Setting-up-data-collectors-doc>` has more information on the network requirements.

### AssetTracker Strip sizing

AssetTracker modules come in a 5U and 6U modular design that can be connected for configuration on any rack RU size. Based on the rack size, use a combination of the 5U and 6U modules to fit exactly, or close to the rack height.

### Installation locations

Typical installation locations include but are not limited to:

- Rack side panel
- Rack door
- Rack front panel

In all these cases please:

- Verify there is enough space for the modules and 3M adhesive.
- Verify there is enough space to mount and remove equipment from the rack.
- Verify the door can be opened and closed without interference.
- Verify that there is not interference with power, network and other infrastructure.
- Verify that the AssetTracker Strip is supported on a flat surface with no mechanical stress or pressure on it.

Use the adhesive where possible and if needed use plastic zip ties for reinforcement. Take care not to add pressure, puncture the casing or create mechanical stress on the assembled device.

```{figure} /asset-tracker/media/installation_example_1.png
:alt: Master Module and SATA cable
:class: border-black

Rack installation example
```

### Assembling Modules

Identify the Master Module. The Master Module has a SATA port above the top-most magnet position. The Extension Modules have male connectors on the top-end.

```{figure} /asset-tracker/media/master_module_and_cable.png
:alt: Master Module and cable
:class: border-black

Master Module and SATA Cable
```

Lay the modules on a flat surface and snap the male connector Extension Module to the female connector of the Master Module. Continue connecting Extension Modules ensuring that the Master Module is the top-most module in the chain.

```{figure} /asset-tracker/media/master_and_extension.png
:alt: Master Module and Extension
:class: border-black

Master Module and Extension Module ends
```

### Installing Modules

Once the AssetTracker Strip is assembled and installed in the selected position, it needs to be connected to a Expansion Hub. Connect the RJ45 to SATA cable to the Master Module (SATA Port) and then to the Expansion Hub (V5 Port) with the RJ45 to SATA Cable. Secure the Expansion Hub to the side using the provided 3M adhesive tape or another appropriate means.

```{figure} /asset-tracker/media/master_module_to_hub_1.png
:alt: Master Module to Expansion Hub example 1
:class: border-black

Master Module to Expansion Hub example 1
```

```{figure} /asset-tracker/media/master_module_to_hub_2.png
:alt: Master Module to Expansion Hub example 2
:class: border-black

Master Module to Expansion Hub example 2
```

Connect the _RS485 In_ interface of the Expansion Hub to the _U Level_ port of the Gateway.

```{figure} /asset-tracker/media/expansion_hub_to_gateway_1.png
:alt: Expansion Hub to Gateway example 1
:class: border-black

Expansion Hub to Gateway example 1
```

```{figure} /asset-tracker/media/expansion_hub_to_gateway_2.png
:alt: Expansion Hub to Gateway example 2
:class: border-black

Expansion Hub to Gateway example 2
```

If the Gateway is a _V5008 AIoT_, Up to five total Hubs can be daisy chained together. Connect the _RS485 Out_ Port from the Hub connected to the Gateway to the _RS485 In_ Port of an additional Hub. Note the following:

- The maximum cable length from the Gateway to the last Hub in the chain must not exceed 20 meters (65 feet).
- Master Module addresses must be unique.

```{figure} /asset-tracker/media/expansion_hub_to_hub_1.png
:alt: Expansion Hub to Expansion Hub
:class: border-black

Expansion Hub Expansion Hub to Expansion Hub
```

If applicable, connect the Gateway to a POE power source.

### Installing Asset Tags

```{image} /asset-tracker/media/asset_tag_1.png
:alt: Asset Tag
:class: border-black
```

- Clean the surface of the asset from dust.
- Remove the adhesive cover from the asset tag.
- Attach the asset tag to the asset. Ensure the tag is firmly attached to the asset in a secure location. Avoid air inlets and outlets, asset serial number, identification tags, chassis LCD screens, etc.
- Connect the magnet of the asset tag to the AssetTracker Strip. Ensure that it is associated to the top-most RU module position for the asset. For example, if you are tagging a 4U device placed between RU 20 and 23, then associate the tag to the RU23 position.

```{figure} /asset-tracker/media/asset_tag_to_asset_tracker_1.png
:alt: Asset Tag to AssetTracker Strip
:class: border-black

Asset Tag to AssetTracker Strip
```

### V5008 AIoT network diagram

```{figure} /asset-tracker/media/v5008_network_diagram_1.png
:alt: V5008 AIoT network diagram
:class: border-black

V5008 AIoT network diagram
```

### V6800 AIoT network diagram

```{figure} /asset-tracker/media/v6800_network_diagram_1.png
:alt: V6800 AIoT network diagram
:class: border-black

V6800 AIoT network diagram
```

## Configuring Modules

Please reference the Configuration Tool User Manual to configure the gateways to communicate with a Hyperview Data Collector. The documentation is available through the Hyperview [help desk](https://system.hyperviewhq.com/helpdesk) upon request.
