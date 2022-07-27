.. include:: /auto-discovery/media.rst
.. _Discoveries-doc:

**************
Auto Discovery
**************

Hyperview’s agentless auto-discovery detects and monitors devices across your IT infrastructure. This includes servers, network devices, environmental monitors, PDUs, power meters, air handling systems, and any other assets that are connected to your network.

The term *discovery* refers to a single auto-discovery configuration that will scan one or more IP addresses in your network using a certain number of protocols. For example, you can create a discovery to scan IP addresses 192.168.10.15 through 192.168.10.60 using the SNMP v3, IPMI, and SSH protocols, and runs every day at 5:30 PM (UTC).

Upon running the discovery, the Data Collector software will automatically find and organize devices that are connected to the specified IP addresses. Moreover, the application will continuously review and optimize the data to create up-to-date virtual representations of the assets ("digital twins"), complete with device specifications and visual renderings based on the Hyperview Catalog.

.. note:: You must set up Data Collectors before you can discover assets. See :ref:`Setup-data-collectors`. Only Administrators have access to discovery features.

|static|

.. toctree::
   :maxdepth: 2

   topics/protocols
   topics/collected-data
   topics/setting-up-data-collectors
   topics/adding-or-deleting-discoveries
   topics/configuring-discoveries
   topics/running-discoveries
   topics/reviewing-discovery-reports
   topics/maintaining-data-collectors
   topics/best-practices
