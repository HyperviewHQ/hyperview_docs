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

