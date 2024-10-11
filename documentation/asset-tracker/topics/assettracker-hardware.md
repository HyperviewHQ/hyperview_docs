(assettracker-hardware-doc)=

# AssetTracker hardware

## Supported hardware

The AssetTracker RFID solution is currently certified on [Digitalor](https://www.digitalor.com/en/) asset tracking hardware.

:::{tip}
Hyperview's automated asset tracking system can be tested and certified on additional asset-tracking hardware solutions. We encourage vendors to contact Hyperview if they are interested in having their asset-tracking hardware system certified.
:::

The supported hardware models are:

1. The V5008MQ Smart Gateway (MQTT) running firmware version 3.x
2. The V6800 AIoT Gateway (MQTT) running firmware version 1.x

Please [contact](https://www.hyperviewhq.com/contact/) the Hyperview Sales or Support teams for more information.

## Installation

### Selecting a hardware Configuration

AssetTracker can be installed in two different configurations:

1. One-to-One: One Expansion Hub to one Gateway (V5008MQ)
2. Serial Bus: Up to 5 Expansion Hubs to one Gateway (V5008MQ)
3. One to many: up to 24 Expansion Hubs to one Gateway (V6800)

```{figure} /asset-tracker/media/assettracker_diagram2.png
:alt: AssetTracker deployment diagram 3
:class: border-black

Example Serial Bus Deployment
```

For installing AssetTracker in multiple racks in a row, you may daisy-chain up to 5 (five) Expansion Hubs to a single gateway. The maximum length of the cables from the Gateway to the last Expansion Hub in the chain must not exceed _20 meters (65 feet)_.

Each Master Module has an address between 1 (one) and 5 (five). Each Master module must have a _unique_ address in the Serial Bus configuration. The address specification is printed on the Master Module tag.

```{figure} /asset-tracker/media/master_modules_1.png
:alt: Master Modules image 1
:class: border-black

Master Modules with ID and address (Circled)
```

### Network requirements

:::{important}
You must [contact our support team](https://system.hyperviewhq.com/helpdesk) to get access to the latest vendor configuration software and documentation.
:::

- The Gateway uses port 5656/TCP for management and configuration. The configuration must be done using the supplied tool. It is strongly recommended that the tool be one the same network segment as the gateway to minimize network related issues. A copy of the configuration tool will be provided as part of the license activation and onboarding process.

- The Gateway communicates with the data collector over port 1883/TCP. Communication is from the gateway to the Data Collector. The {ref}`Data Collector setup documentation<Setting-up-data-collectors-doc>` has more information on the network requirements.

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

Use the adhesive where possible and if needed use plastic zip ties for re-enforcement. Take care not to add pressure, puncture the casing or create mechanical stress on the assembled device.

```{figure} /asset-tracker/media/installation_example_1.png
:alt: Master Module and SATA cable
:class: border-black

Rack installation example
```

### Assembling Modules

Identify the Master Module. The Master module has a SATA port above the top-most magnet position. The Extension Modules have male connectors on the top-end.

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

Once the AssetTracker Strip is installed, it needs to be connected to a Expansion Hub. Connect the Master Module (SATA Port) to the Expansion Hub (V5 Port) with the RJ45 to SATA Cable. Take care to connect the Master module _first_.

```{figure} /asset-tracker/media/master_module_to_hub.png
:alt: Master Module to Expansion Hub
:class: border-black

Master Module to Expansion Hub Example
```

## Configuring Modules

Please reference the Configuration Tool User Manual to configure the gateways to communicate with a Hyperview Data Collector. The documentation is available through the Hyperview [help desk](https://system.hyperviewhq.com/helpdesk) upon request.
