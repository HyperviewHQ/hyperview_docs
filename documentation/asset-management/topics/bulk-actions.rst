.. include:: /asset-management/media.rst
.. _Bulk-actions-doc:

************
Bulk actions
************

A "bulk action" is an action that you can perform against multiple records. For example, you can bulk delete assets instead of having to delete them manually one by one. Bulk action commands appear under the *Bulk Actions* menu on the following (kinds of) pages in Hyperview:

* Advanced Search
* Assets By Type
* Assets By Location

.. note:: This topic does not cover :ref:`bulk importing assets<Adding-assets-doc>` or bulk importing custom properties as they are not available from the *Bulk Actions* menu. Furthermore, bulk actions related to :ref:`user administration<User-administration-doc>` are not covered here.

|bulkactions|

======================
Supported bulk actions
======================
Availability of bulk actions depends on two factors: your :ref:`user role<User-accounts-doc>` and your :ref:`feature licenses<View-license-doc>`. The following bulk actions are currently supported in Hyperview:

.. list-table::
   :header-rows: 1
   :align: left

   * - Bulk Action
     - Description
     - Minimum User Role
     - Relevant Feature License
   * - *Add Document Association*
     - Associates a document with the selected assets
     - Power User
     - Document Management
   * - *Remove Document Association*
     - Removes a document association from the selected assets
     - Power User
     - Document Management
   * - *Add Patch Panel Network Port(s)*
     - Add new ports to selected patch panels
     - Power User
     - Connectivity
   * - *Add Network Port(s)*
     - Add new ports to selected assets
     - Power User
     - Connectivity
   * - *Update Network Ports*
     - Update port properties for selected assets
     - Power User
     - Connectivity
   * - *Delete*
     - Deletes the selected assets
     - Data Center Manager
     - Infrastructure Management
   * - *Enable Monitoring*
     - Turns on asset monitoring for the selected assets
     - Power User
     - Infrastructure Management
   * - *Disable Monitoring*
     - Turns off asset monitoring for the selected assets
     - Power User
     - Infrastructure Management
   * - *Start Watching*
     - Starts watching the selected assets for the current user
     - Read Only
     - Infrastructure Management
   * - *Stop Watching*
     - Stops watching the selected assets for the current user
     - Read Only
     - Infrastructure Management
   * - *Update Access Policy*
     - Updates the access policy for selected assets
     - Administrator
     - Infrastructure Management
   * - *Update Asset Property*
     - Updates a specific property for the selected assets
     - Power User
     - Infrastructure Management
   * - *Update Business Entity*
     - Updates or sets the Business Entity associated with the asset
     - Power User
     - Infrastructure Management 
   * - *Update Custom Property*
     - Updates a specific custom property for the selected assets
     - Power User
     - Infrastructure Management
   * - *Update Lifecycle*
     - Updates asset lifecycle properties of the selected assets
     - Power User
     - Infrastructure Management
   * - *Update Model*
     - Updates the type, model, and manufacturer for selected assets
     - Power User
     - Infrastructure Management
   * - *Update Control Operations Data Collector*
     - Updates the control operations Data Collector for selected assets
     - Administrator
     - Rack Security or Firmware Management
   * - *Update Firmware Control Credentials*
     - Updates firmware control credentials for the selected assets
     - Administrator
     - Rack Security or Firmware Management
   * - *Update SNMP Control Credentials*
     - Updates SNMP control credentials for the selected assets
     - Administrator
     - Rack Security or Firmware Management

========================
Performing a bulk action
========================
The user experience of performing a bulk action is virtually identical (see Bulk Delete example below) except for Update Lifecycle and Update Model (see below). For all bulk actions, **only** the user who initiated it will receive an email notification if the "Receive email notification..." option was selected.

.. note:: You can perform a bulk action against a maximum of 1,000 rows (spread across any number of pages in a multi-page grid).

.. tip:: Clicking the selection checkbox in the grid header selects all rows on the **current** grid page. To select rows on other grid pages, click a page link and proceed to select rows (all or individually, as needed).

Example: Bulk Delete
--------------------
#. Open an Advanced Search, Assets By Type, or Assets By Location grid showing one or more assets as a Data Center Manager or above.
#. Select the intended assets and click *Bulk Actions → Delete*. A modal will appear.
#. (Optional, but strongly recommended) Select the "Receive email notification..." option to receive an email notification when the bulk action is complete.
#. Click *Delete*. The modal will close. A success message will indicate that the bulk action is in the processing queue.

|bulkdelete|

Example: Bulk Update Lifecycle
------------------------------
#. Open an Advanced Search, Assets By Type, or Assets By Location grid showing one or more assets as a Power User or above.
#. Select the intended assets and click *Bulk Actions → Update Lifecycle*. A modal will appear.
#. (Optional, but strongly recommended) Select the "Receive email notification..." option to receive an email notification when the bulk action is complete.
#. (Optional) To specify a State, select the corresponding checkbox and dropdown entry (Active, Planned, Procurement, Staging, or Retired).
#. (Optional) To specify a Commission Date, select the corresponding checkbox and date.
#. (Optional) To specify a Retirement Date, select the corresponding checkbox and date.
#. (Optional) To specify an End of Life Date, select the corresponding checkbox and date.
#. Click *Update*. The modal will close. A success message will indicate that the bulk action is in the processing queue.

|bulkupdatelifecycle|

Example: Bulk Update Model
--------------------------
#. Open an Advanced Search, Assets By Type, or Assets By Location grid showing one or more assets as a Power User or above.
#. Select the intended assets and click *Bulk Actions → Update Model*. A modal will appear.
#. (Optional, but strongly recommended) Select the "Receive email notification..." option to receive an email notification when the bulk action is complete.
#. Select the intended Type. Allowed types are listed in the following subsection.
#. Select the intended Manufacturer.
#. Select the intended Model.
#. Click *Update*. The modal will close. A success message will indicate that the bulk action is in the processing queue.

Interchangeable asset types
~~~~~~~~~~~~~~~~~~~~~~~~~~~
You can change certain asset types to other types. For example, if you selected Blade Server, Server, and Node Server assets in step 2 of bulk updating models (see above), and selected the type as "Server" in step 4, then (assuming there are no errors) all those assets will be converted to servers.

Each line in the following list mentions types that are interchangeable:

   * Small UPS, UPS
   * Blade Server, Server, Node Server
   * Blade Network, Network Device
   * Blade Storage, Network Storage
   * Chiller, CRAC, CRAH, In Row Cooling

Furthermore, you can change an Unknown asset to the following known asset types (note that the reverse is **not** true):

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
   * PDU
   * Power Meter
   * Rack PDU
   * Server
   * Small UPS
   * Transfer Switch
   * UPS
   * Utility Breaker
   * Virtual Server

=================================
Reviewing a completed bulk action
=================================
The processing time for a bulk action ranges from a few seconds to a few hours, depending on the number of assets involved, the state of the job queue, and other performance factors.

If you selected the email notification option, you will receive an email once the bulk action is processed. The subject line of the email will indicate the Hyperview instance where you performed the bulk action (obscured in the screenshot for privacy). Furthermore, the email will mention:

* The bulk action type that was performed
* The start and end times for the bulk job (less than a minute for this example)
* The number of assets affected
* The bulk action status for each selected asset

|bulkdeleteemail|

.. note:: Bulk actions are only executed against assets that are eligible at the time of processing. Therefore, the number of affected assets could be fewer than what you had originally selected. For instance, if you initiated an Update Lifecycle bulk action for a device, but another user manually deleted it before the action could be processed, then that particular bulk action will be invalid.
