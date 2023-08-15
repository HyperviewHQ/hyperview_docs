.. _Outlet-control-doc:

**************
Outlet Control
**************

.. warning:: Outlet control operations will affect connected devices. These operations have the same effect as the corresponding physical actions. It is the responsibility of the user to assess the situation and act accordingly.

Hyperview Outlet Control has been designed to help you manage and control the power state of compatible Smart Power Distribution Units (rPDUs) while maintaining a detailed record of all actions taken by users.

This feature allows you to:

- Turn on compatible rPDUs - Remotely power up a single or a group of outlets, ensuring that power is allocated only when and where it is required.

- Turn off compatible rPDUs - Remotely power down a single or a group of outlets, allowing you to save energy and reduce operational costs.

- Power cycle compatible rPDUs - Remotely power cycle a single or a group of outlets, enabling you to reset unresponsive equipment and troubleshoot potential issues without the need for onsite intervention.

Work Orders maintain a comprehensive audit trail of all control requests made by users, allowing you to review historical actions and ensure accountability for any changes made.

.. note:: Only licensed instances will have relevant features. To confirm if you have an Outlet Control license, check the License page (*Settings → License*, Administrator-only).

==========================
Supported hardware vendors
==========================
The Outlet Control feature is **definition based** meaning that the system is adaptive and support can be added quickly with the right information.

At the time of release, a large number of device models from the following vendors are supported:

- Schneider Electric/APC
- Avocent
- Baytech
- Eaton
- Enlogic
- Geist
- Liebert
- Panduit
- Raritan
- Server Technology
- Tripp Lite

If you would like Hyperview to add support for a new model or manufacturer please contact Hyperview support.

====================
Using outlet control
====================
For an rPDU, outlet control functions are exposed on the Layout page. Please note the following requirements:

1. A Control license. This enables the Outlet Control, Firmware Management and Rack Security features
2. A supported rack PDU
3. A configured rack PDU. I.e. The rack PDU itself is configured to allow outlet control and the appropriate :ref:`control operations<Control-operations-doc>` parameters set.

.. note:: All user roles can access the Layout page for outlet control, but only Administrator and Data Center Manager users can initiate a control action.

.. image:: media/rpdu-layout.png
   :width: 1912px
   :alt: Rack PDU Layout
   :class: border-black

Powering on outlets
-------------------
A switched outlet that is detected as powered off will allow a user with the appropriate permissions the ability to power on the outlet.

.. image:: media/power-on-modal.png
   :width: 1920px
   :alt: Power On Modal
   :class: border-black

Once a power-on request is made a work order is created and assigned. Progress can be tracked from the Work Orders page.

.. image:: media/power-on-work-order.png
   :width: 1920px
   :alt: Power On Work Order
   :class: border-black

Powering off outlets
--------------------
A switched outlet that is detected as powered on will allow a user with appropriate permissions the ability to power off the outlet.

Once a power-off request is made a work order is created and assigned. Progress can be tracked from the Work Orders page.

.. image:: media/power-off-work-order.png
   :width: 1920px
   :alt: Power Off Work Order
   :class: border-black

Power cycling outlets
---------------------
A switched outlet that is detected as powered on will allow a user with appropriate permissions the ability to power cycle the outlet.

Once a power-cycle request is made a work order is created and assigned. Progress can be tracked from the Work Orders page.

.. image:: media/power-cycle-work-order.png
   :width: 1920px
   :alt: Power Cycle Work Order
   :class: border-black

.. note:: To make sure the latest outlet status is displayed, Outlet Control operations will trigger a sensor refresh on affected rPDU. Due to the distributed nature of the application, the refresh operation may take a few minutes to complete.

====================
Troubleshooting Tips
====================
There can be a lot of hardware, software and configuration variations within an rPDU model family. When troubleshooting issues with Outlet Control please consider the following troubleshooting tips:

- License is enabled. You can verify that the Outlet Control license flag is enabled for your Hyperview instance by navigating to Settings -> License.

- The device supports outlet control. You can consult your device's datasheet or user manual.

- The device has been successfully discovered by Hyperview. Manually added devices cannot be controlled.

- The device is supported for outlet control operations. The system will return an error if the device is not supported. If you believe the device can support outlet control then please contact Hyperview support to help add support for this device.

- The correct :ref:`control operations<Control-operations-doc>` parameters are set.

- The selected data collector is reporting and has network access to the device. This can be checked by navigating to the asset -> Information -> Sensors (list view) and checking the last sensor update time, and the assigned data collector.

- The device is configured to allow outlet control. Some devices allow outlet control to be disabled with a firmware configuration parameter. If that option is set, outlet control operation will not be successful even though the hardware supports it.
