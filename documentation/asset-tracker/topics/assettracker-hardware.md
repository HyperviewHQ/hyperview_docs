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

### Network requirements

:::{important}
You must [contact our support team](https://system.hyperviewhq.com/helpdesk) to get access to the latest vendor configuration software and documentation.
:::

- The Gateway uses port 5656/TCP for management and configuration. The configuration must be done using the supplied tool. It is strongly recommended that the tool be one the same network segment as the gateway to minimize network related issues. A copy of the configuration tool will be provided as part of the license activation and onboarding process.

- The Gateway communicates with the data collector over port 1883/TCP. Communication is from the gateway to the Data Collector. The {ref}`Data Collector setup documentation<Setting-up-data-collectors-doc>` has more information on the network requirements.

### Rack RU Configuration

AssetTracker modules come in a 5U and 6U modular design that can be connected for configuration on any rack RU size. Based on the rack size, use a combination of the 5U and 6U modules to fit exactly, or close to the rack height.

### Selecting an Installation Location in the Rack

#### Installing on the rack side panel

- Verify there is enough space for the modules and 3M adhesive.
- Verify there is enough space to mount and remove equipment from the rack.

#### Installing on the rack door

- Verify there is enough space for the modules and 3M adhesive.
- Verify the door can be opened and closed without interference.

#### Installing on the rack front panel

- Verify there is enough space for the modules and 3M adhesive.
- Verify there is enough space to mount and remove equipment from the rack.

### Selecting a Configuration

AssetTracker can be installed in two different configurations:

1. One-to-One: One Hub to one Gateway
2. Serial Bus: Up to 5 Hubs to one Gateway

```{image} /asset-tracker/media/assettracker_diagram2.png
:alt: AssetTracker deployment diagram 3
:class: border-black
```

For installing AssetTracker in multiple racks in a row, you may daisy-chain up to 5 (five) Hubs to a single gateway. The maximum length of the cables from the Gateway to the last Hub in the chain must not exceed _20 meters (65 feet)_.

Each Master Module has an address between 1 (one) and 5 (five). Each Master module must have a unique address in the Serial Bus configuration. The address specification is printed on the Master Module tag.

```{image} /asset-tracker/media/master_modules_1.png
:alt: Master Modules image 1
:class: border-black
```

### Assembling Modules

Identify the Master Module. The Master module has a SATA port above the top-most magnet position. The Extension Modules have male connectors on the top-end.

```{image} /asset-tracker/media/master_module_and_cable.png
:alt: Master Module and cable
:class: border-black
```

Lay the modules on a flat surface and snap the male connector Extension Module to the female connector of the Master Module. Continue connecting Extension Modules ensuring that the Master Module is the top-most module in the chain.

```{image} /asset-tracker/media/master_and_extension.png
:alt: Master Module and Extension
:class: border-black
```
