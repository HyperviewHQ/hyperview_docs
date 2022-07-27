.. include:: /firmware-management/media.rst
.. _Firmware-management-doc:

*******************
Firmware Management
*******************

Hyperview Firmware Management is a separately licensed set of features that lets you view and interact with firmware records. Firmware Management is powered by the Hyperview Catalog service.

With a Firmware Management license you can, for example:

* Look up assets that have a specific firmware version installed
* Review firmware versions and associated assets
* Download firmware
* View firmware release notes
* Get alerted to outdated firmware
* Update firmware for device models with managed firmware, individually or in bulk

.. note:: Only licensed instances will have relevant features. To confirm if you have a Firmware Management license, check the License page (*Settings → License*, Administrator-only).

|firmware-page|

==========================
Supported hardware vendors
==========================
* Panduit

.. note:: We are actively working to add information to make Firmware Management more useful. If you are a customer who wants to use Firmware Management for certain hardware, please encourage your hardware vendor to reach out to us. If you are a vendor who wants consumers to benefit from Firmware Management, please |contact|.

.. |contact| raw:: html

   <a href="https://www.hyperviewhq.com/contact/" class="external-link" target="_blank">contact Hyperview</a>

===========================
What is "managed firmware"?
===========================
Firmware is considered "managed" if it has the necessary product mappings in Catalog so that Hyperview can surface relevant data and metadata. These include mapped firmware versions, installers, and release notes. At a minimum, managed firmware will have a known firmware version.

Note that firmware can only be managed for discoverable physical devices. These include:

* Blade Enclosure
* Blade Network
* Blade Server
* Blade Storage
* Busway
* Camera
* Chiller
* CRAC
* CRAH
* Environmental
* Fire Control Panel
* Generator
* In Row Cooling
* KVM Switch
* Monitor
* Network Device
* Network Storage
* Node Server
* Other Device
* Patch Panel
* PDU/RPP
* Power Meter
* Rack PDU
* Server
* Small UPS
* Transfer Switch
* UPS
* Utility Breaker

===================================
How are firmware versions detected?
===================================
Hyperview uses the Firmware Version property (asset → *Information → Properties*) to store and identify an asset's current firmware version. Firmware versions are detected in either of the following contexts:

* Upon :ref:`discovering assets<Discoveries-doc>` with discoverable firmware versions
* When a Power User or above updates the Firmware Version property of a manually created asset

In both contexts, an asset is considered to have "managed firmware" only if the asset's firmware group is mapped in Hyperview Catalog. (A "firmware group" consists of firmware versions for a specific product model.)

Upon discovery, the Firmware Version property becomes read-only to prevent human error (it automatically gets updated upon rediscovery if the installed version has changed). If you merge two assets with discovered and manually updated Firmware Version values, the discovered value is retained and rendered read-only. In other words, discovered firmware versions are always preferred.

|fv-property|

.. tip: You should only enter a Firmware Version manually if the property is not discoverable for the device, and you are committed to maintaining firmware versions for it. The Source column in an asset's Properties page indicates if the Firmware Version value was manually entered ("User") or discovered (will mention the protocol used for the discovery, such as "SNMP").

============================================
Who can access Firmware Management features?
============================================
As of Hyperview 3.4, any user can access Firmware Management features as long as you are using a Firmware Management-licensed instance (see :ref:`View license<View-license-doc>`).

====================================
Navigating Firmware Management pages
====================================
Hyperview features two main Firmware Management pages that can be considered "landing pages" for the feature set. These are:

* The Firmware page (*Assets → Firmware*), which opens a grid of managed and unmanaged firmware that is grouped by manufacturer, asset type, and installed firmware version. It features a Details button at the row level to look up assets that have the same firmware version installed.
* The Information → Firmware page (asset → *Information → Firmware*), which opens a grid of installed and available firmware versions, as well as relevant action buttons.

Why is my Firmware page empty?
------------------------------
The Firmware grid (*Assets → Firmware*) only gets populated when there is at least one asset with a firmware version.

* Administrators can run discoveries to detect assets with firmware version metadata.
* Power Users and above can specify a Firmware Version value for manually created assets.

In both cases you must :ref:`have access<Who-can-access-doc>` to the asset records to be able to see them.

=====================================================
Reviewing firmware installations for a firmware group
=====================================================
* Go to *Assets → Firmware → Managed or Unmanaged → Details → Installations* (the Installations tab opens by default).

The grid will show assets that have a relevant firmware version installed. Note that you must have access to the assets in question to be able to see them.

.. tip: Double-clicking an asset row will open its Dashboard page.

|installations|

===========================
Reviewing firmware versions
===========================
For Managed Firmware, to look up versions at the firmware group level:
* Go to *Assets → Firmware → Managed → Details → Versions*.

To look up firmware versions for a given asset:
* Browse to the asset → *Information → Firmware*.

Note that the Information → Firmware page will indicate the currently installed firmware version with a green checkmark in the Installed column.

|info-firmware|

The Unmanaged firmware tab *Assets → Firmware → Unmanaged* will contain a list of all detected firmware, firmware versions and installations.

|unmanaged-firmware|

Updating / Downloading a firmware version / Viewing firmware release notes
--------------------------------------------------------------------------
The Firmware and Information → Firmware pages both feature Update, View Release Notes and Download Firmware buttons, which allow you to update a firmware version, look up its release notes or download it respectively.

|versions|

.. note:: The exact file format of the firmware installer and release notes file depends on the manufacturer. The functions will only be active if the corresponding firmware is mapped in Hyperview Catalog.

==================================
Alarm events for outdated firmware
==================================
An alarm event is generated at the asset level (asset → *Events*) whenever Hyperview detects outdated firmware (see "How are firmware versions detected?" above). The event stays active until one of the following things happen:

* (For all eligible assets) The event is closed manually.
* (For assets with discovered firmware) The latest mapped firmware version is installed.
* (For manually created assets) The asset's Firmware Version is updated to the latest mapped firmware version.
* (For all eligible assets) The asset's Firmware Version is updated to an unmapped firmware version.
* (For manually created assets) The asset's Firmware Version is set to blank.
* (For all eligible assets) The asset's Model value changes.

|events|

If you upgrade to a later, but not the latest firmware version, the alarm event will be automatically updated to reflect the currently installed version.
