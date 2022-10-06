.. include:: /settings/media.rst
.. _View-license-doc:

******************************
Viewing your Hyperview license
******************************

The License page (*Settings → License*) lets you view Hyperview license thresholds, existing feature licenses, and general information.

.. note:: The License page is read-only and Administrator-only. Please contact your Hyperview account manager if you wish to upgrade or modify your existing license (refer to |pricing|).

.. |pricing| raw:: html

   <a href="https://www.hyperviewhq.com/pricing/" class="external-link" target="_blank">Hyperview pricing plans</a>

|license|

================================
Understanding license thresholds
================================
The following license thresholds apply:

* Assets
* Sensors
* Max Storage Size (GB)
* Raw Sensor Data (Days)
* Sensor Daily Summary (Days)

The first three thresholds are presented visually on the page to help you gauge usage versus threshold limits. If you exceed a certain threshold, you will need to upgrade your license or reduce usage to stay within your current licensing threshold.

.. note:: There is no restriction on the number of users or locations that you can have. As of Hyperview 2.5, Monitored IP Addresses is no longer considered a license threshold.

What counts as an "asset"?
---------------------------------------
An asset is any physical or virtual device within your digital infrastructure that you discover (if network-connected) or manually add, manage, and/or monitor with Hyperview. These include racks, operational technology assets, such as generators, UPSs, PDUs, CRACs, CRAHs, RPPs, chillers, and IT assets, such as servers, storage, network devices, sensors/IoT, patch panels, firewalls, and virtual machines.

What kinds of sensors are supported?
------------------------------------
Hyperview currently supports direct, computed, linked and manual sensors for assets (see :ref:`Managing sensors<Managing-sensors-doc>`). What sensors are available for a given asset depends on the asset itself.

What is "Max Storage Size (GB)"?
--------------------------------
The Document Management license, which is a feature add-on, increases document management capacity to 50MB per asset from 5MB. The Threshold indicates how much space you have to store document files for your assets. For more information see :ref:`Document Management<Document-management-doc>`.

What is "Raw Sensor Data (Days)" and "Sensor Daily Summary (Days)"?
-------------------------------------------------------------------
Sensor readings create raw data points. They are listed in Sensors grids and appear for sensor graphs showing up to the last three days' data. The Raw Sensor Data (Days) threshold indicates the retention period for raw sensor data.

Daily summary data points are generated based on raw data for a given day (UTC). They are listed in Sensor grids and appear in sensor graphs for a seven-day time frame or longer. The Sensor Daily Summary (Days) threshold indicates how long daily summary data will be retained.

======================================
General information about your license
======================================
The General Information section of the License page lists:

* Your hostname (typically in the form of *instancename.hyperviewhq.com*)
* The product version you are using (starting with the major and minor version numbers)
* Your unique Hyperview tenant ID

|license_2|

================================
About Hyperview feature licenses
================================
The Features section lists what Hyperview feature licenses you have. Available licenses are:

* :ref:`AssetTracker<AssetTracker-doc>` (add-on)
* :ref:`Document Management<Document-management-doc>` (add-on)
* :ref:`Firmware Management<Firmware-management-doc>` (add-on)
* Infrastructure Management (default application license)
* :ref:`Rack Security<Rack-security-doc>` (add-on)
* :ref:`ServiceNow CMDB Integration<Integrations-doc>` (add-on)
