.. include:: /auto-discovery/media.rst

***********************
Configuring discoveries
***********************

.. raw :: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/519754796" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>


1. Click the *Details* button for the discovery in the Discoveries grid. The Basic Settings page will open.
2. Proceed to configure the discovery as per the following subsections. At a minimum, you will need to specify IP addresses and protocol credentials.

=======================
Updating basic settings
=======================
The Basic Settings page lets you update the base record for the discovery. You can:

* Update the Discovery Name
* Update the Data Collector for the discovery
* Update the Location where discovered assets will be added
* Toggle a setting to "Monitor newly discovered assets by default"

Click the Save button to retain your changes.

.. note:: You cannot update the Discovery Type (General, VMware, or IxOS). Updating the Location value will have no effect on already-discovered assets — they will remain at their current location.

===================
Adding IP addresses
===================
Click the *IP Addresses* tab to open the IP Addresses page for your discovery. By default, no IP addresses are added to new discovery records.

You can specify IP addresses to include or exclude from your discovery as follows:

1. Click on the corresponding *Add* button.
2. Provide details as follows:

  * Specify the Type (Single IP Address, IP Range, CIDR Range, or List).
  * Provide a Description (optional).
  * Specify the IP address or range using relevant Type-specific fields.

.. note:: We recommend keeping the total number of IP addresses in a discovery under 1,000 to keep the discovery runtime manageable. It is also best practice to separate discoveries by asset type and protocol to keep discoveries organized and simplify any troubleshooting scenarios.

==========================
Updating protocol settings
==========================
Click *Protocol Settings → Protocols* to open the Protocol Settings page. By default, all discovery-supported protocols are enabled.

* To disable a certain protocol, click the toggle switch.

To open protocol-specific settings pages for IPMI, SNMP, SSH, or WMI, click on the corresponding Edit button on the Protocol Settings page. Alternatively, click on the page link from the *Protocol Settings* dropdown. You will need to provide protocol access credentials.

* Click *Add* → provide protocol-specific credential values → *Save*.
* Alternatively, click *Add → Existing Credential* → select credentials → *Save*.

.. tip:: You can also add protocol credentials from *Discoveries → Credentials*, which you can select for subsequent discoveries.

Relevant port numbers are automatically added for each protocol upon discovery creation (note: not relevant to WMI as it uses dynamic ports).

* To add a different port, click *Add* → enter port number → *Save*.
* To delete a port, click *Delete → Delete*.

===========================
Adding a discovery schedule
===========================
Click the *Schedules* tab to open the Schedule page, which lets you specify a runtime schedule for your discovery. By default the Schedule value is set to None, which implies that the discovery will only be run manually.

1. Select Daily, Weekly, or Monthly from the Schedule dropdown.
2. Provide values and click *Save*.

.. note:: Discovery runtime schedules are in UTC.
