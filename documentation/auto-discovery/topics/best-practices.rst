.. include:: /auto-discovery/media.rst

**************
Best practices
**************

* Only configure protocols that are supported for the devices you intend to discover.

* Wherever possible, avoid configuring discoveries with class-C or large IP address ranges. Instead, configure smaller IP address ranges with the goal of keeping the potential number of discovered devices (based on the configured IP address range) to a manageable size. The objective is to have many smaller discoveries as opposed to fewer large discoveries.

* If you know the exact devices you want to discover and monitor within a specific discovery, use the list option to add the exact IP addresses.

* Data Collector servers should located in, or geographically as near as possible to the data centers they are covering.

Note that these recommendations are based on the fact that it is more manageable to troubleshoot a discovery with a small number of unidentified or misidentified devices, as opposed to troubleshooting a discovery containing hundreds (or thousands) of unidentified/misidentified devices.

Additionally, a discovery with hundreds or thousands of devices may take hours to complete.
