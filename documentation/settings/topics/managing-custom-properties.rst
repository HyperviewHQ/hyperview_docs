.. include:: /settings/media.rst
.. _Managing-custom-properties-doc:

**************************
Managing custom properties
**************************

Custom properties are user-defined asset properties that can be applied to any number and any type of asset. Usage patterns for custom properties vary across organizations, but typically they are used to classify certain groups of assets and make them easier to find.

A custom property must belong to a custom property group. For example, you can have a "Management" custom property group for assets that belong to or are managed by particular groups.

To distinguish assets owned or operated by specific groups, you can add custom properties called "Owner", "Managed By", or "Maintained By". Finally, the custom properties themselves can have values like "Group 1", "Group 2", and so forth, corresponding to the exact level of detail needed.

You can manage custom property groups and custom properties from *Settings → Custom Properties → Groups* and *Settings → Custom Properties → Properties*, respectively.

==============================
Adding a custom property group
==============================

1. Go to *Settings → Custom Properties → Groups*.
2. Click *Add*. Alternatively, if there are no custom property groups, click *Add new group.*
3. Provide a name for the custom property group → *Save*.

A success message will appear, and the custom property group will be listed in the grid. Repeat the steps to add additional custom property groups as needed.

|custom_properties_1|

========================
Adding a custom property
========================

1. Go to *Settings → Custom Properties → Properties*.
2. Click *Add*. Alternatively, if there are no custom properties, click *Add new property.*
3. Provide values for Name, Group, Type, Asset Types, and Default Value (optional). Additionally:

	* If you selected "Number" as the custom property type, you can specify a Unit value (optional).
	* If you selected "Choices" as the custom property type, you must provide Choices values.

4. Save your changes.

A success message will appear, and the custom property will be listed in the grid. Repeat the steps to add additional custom properties as needed.

|custom_properties_2|

.. tip:: Power Users and above can add and specify values for custom properties for a given asset (browse to asset → *Information → Custom Properties*).

================================
Updating a custom property group
================================

1. Go to *Settings → Custom Properties → Groups*.
2. Click *Edit* → update the custom property group name → *Save*.

A success message will appear, and the current page will reload to reflect your changes.

==========================
Updating a custom property
==========================

1. Go to *Settings → Custom Properties → Properties*.
2. Click *Edit* → update custom property values as required → *Save*.

|custom_properties_3|

A success message will appear, and the current page will reload to reflect your changes.

==========================
Deleting a custom property
==========================

1. Go to *Settings → Custom Properties → Properties*.
2. Click *Delete* → *Delete* for the custom property that you want to delete.

A success message will appear, and the current page will reload to reflect your changes. Repeat the steps to delete additional custom properties as needed.

================================
Deleting a custom property group
================================

You cannot delete a custom property group that has custom properties. Once you have deleted the custom properties (see previous subsection), proceed to:

1. Go to *Settings → Custom Properties → Groups*.
2. Click *Delete* → *Delete* for the custom property group that you want to delete.

A success message will appear, and the current page will reload to reflect your changes.
