.. _Outlet-control-doc:

**************
Outlet control
**************

Hyperview Outlet Control has been designed to help you manage and control the power state of compatible Smart rack Power Distribution Units (rPDUs) while maintaining a detailed record of all actions taken by users.

This feature allows you to:

- Turn on compatible rPDUs - Remotely power up individual outlets, ensuring that power is allocated only when and where it is required.

- Turn off compatible rPDUs - Remotely power down individual outlets, allowing you to save energy and reduce operational costs.

- Power cycle compatible rPDUs - Remotely perform power cycling on individual outlets, enabling you to reset unresponsive equipment and troubleshoot potential issues without the need for onsite intervention.

Work Orders maintain a comprehensive paper trail of all control requests made by users, allowing you to review historical actions and ensure accountability for any changes made.

.. note:: Only licensed instances will have relevant features. To confirm if you have an Outlet Control license, check the License page (*Settings → License*, Administrator-only).

**************************
Supported hardware vendors
**************************
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

If you would like Hyperview to add support for a new model or manufacturer please contract Hyperview support.

********************
Troubleshooting Tips
********************
There can be a lot of hardware, software and configuration variations within an rPDU model family. When troubleshooting issues with Outlet Control please consider the following troubleshooting tips:

- License is enabled. You can verify that the control license flag is enabled for your Hyperview instance by navigating to Settings -> License.

- The device supports outlet control. You can consult your device's datasheet or user manual.

- The device has been successfully discovered by Hyperview. Manually added devices cannot be controlled.

- The device is supported for outlet control operations. The system will return an error if the device is not supported. If you believe the device can support outlet control then please contact Hyperview support to help add support for this device.

- The correct :ref:`control operations<Control-operations-doc>` parameters are set.

- The selected data collector is reporting and has network access to the device. This can be checked by navigating to the asset -> Information -> Sensors (list view) and checking the last sensor update time, and the assigned data collector.

- The device is configured to allow outlet control. Some devices allow outlet control to be disabled with a firmware configuration parameter. If that option is set, outlet control operation will not be successful even though the hardware supports it.
