.. include:: /using-hyperview/layout-management/media.rst
.. _Location-layouts-doc:

****************
Location layouts
****************

The Location Layout page is typically used in the following contexts:

* You want to view data center locations on a map (Map Mode).
* You want to view and customize a data center's floor plan layout to be able to visually interact with it (Floor Plan Mode).

By default the Layout page is empty — an Administrator, Data Center Manager, or Power User must add the necessary information to generate a map or floor plan layout.

==================
Editing the layout
==================
#. Browse to the location (*Assets → Overview → Asset Hierarchy →* location).
#. Click the *Layout* tab to open the Layout page.
#. Click *Edit*. Alternatively, if there is currently no layout, click *Edit layout*.

Once in Edit Mode, the Layout page shows the following top-level commands:

* *Cancel* (cancels your current changes and exits Edit Mode)
* *Save* (saves changes)
* *Mode* (lets you specify Floor Plan Mode or Map Mode; the former is the default selection)
* *View* (opens a panel with relevant visual controls, such as the ability to toggle layers; available controls vary by Mode)
* *Alignment* (Floor Plan Mode only; lets you align objects within the grid)
* *Tools* (Floor Plan Mode only; shows a list of tools to customize the grid)

==============
Using Map Mode
==============
Map Mode displays child locations in an embedded Google Maps view. For instance, if each top-level location in the Asset Hierarchy under All represents a data center, you can set up the All location to display those data centers on a map.

Setting up Map Mode
-------------------
#. Browse to a data center location (*Assets → Overview → Asset Hierarchy →* location).
#. Open the location's Properties page (*Information → Properties*).
#. Make sure the Address field (under Contact) is populated. If it is empty or needs to be updated, click on the pen icon for the field and start typing the location's street address.
#. Matching addresses will appear in the dropdown list as you type. Select the correct address.
#. Click off the field to save the new value. A success message will appear.
#. (Optional) You can fine-tune the data center's geographic location by updating the Latitude and Longitude values on the Properties page (under Contact).
#. Repeat the previous steps for additional child locations. Note that they must all have the same parent location.
#. Click the parent location in the Asset Hierarchy.
#. Click *Layout → Edit → Mode → Map Mode*. A map will appear showing gray pins for child locations.
#. Click *Save*. Pin colors will be updated to reflect the corresponding alarm event status (normal: green; warning: yellow; critical: red) for each child location.

Once the map is saved, you can click a pin to see the child location's name and status.

Navigating to child location layouts
------------------------------------
You can access the Layout page of a child location by double-clicking its pin. This can be quite handy if you want to get quickly look up a data center's floor plan layout, then use the Back button on your browser to return to the map and look up another floor plan layout, and so on.

Using the View menu
-------------------
You can use the View menu in Map Mode to change the map type:

* Click *View →* select the type (Road Map, Satellite, or Hybrid).

Note that the *Location Data → Status* radio button is read-only. It implies that while not in Edit Mode, the pin color indicates a location's alarm event status in Hyperview (Normal, Warning, or Critical).

Additional visual controls
--------------------------
You can also interact with a location map as follows:

* Clicking the full-screen button (on the top-right corner of the map) expands the map to full-screen size. Click the button again to return to the previous size.
* Dragging the person icon onto the map opens Street View for that particular geographic location.
* The plus and minus buttons let you zoom in and out. You can also use your mouse's scroll wheel to the same effect.

Furthermore, you can click the "Keyboard shortcuts" in the bottom-right of the map to view Google Maps keyboard shortcuts.

=====================
Using Floor Plan Mode
=====================
Floor Plan Mode displays a location's floor plan. For example, you can add a background image, grids, tiles, shapes, and labels to a location layout until you arrive at an accurate representation of your data center floor's plan. You can also add racks, select a particular asset data view (such as Rack Space Utilization), and visualize heatmaps and environmental sensors.

Setting up Floor Plan Mode
--------------------------
#. Browse to a data center location (*Assets → Overview → Asset Hierarchy →* location).
#. Click *Layout → Edit → Mode → Floor Plan Mode*. You can proceed to add a background image, a grid, and other objects as needed.
#. Click *Save* when you are done.

Once the floor plan layout is saved, you can interact with it by switching from 2D to 3D, showing or hiding toggles and layers, looking up assets contained in racks, and so on (provided you have saved relevant data).
