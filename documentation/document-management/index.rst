.. include:: /document-management/media.rst
.. _Document-management-doc:

*******************
Document Management
*******************

Hyperview Document Management is a separately licensed set of features that let you create and maintain asset-document associations. For example, you can associate device or model-specific documentation, license agreements, maintenance schedules, MIB files, troubleshooting notes, and so on.

.. note:: Only licensed instances will have relevant features. To confirm if you have a Document Management license, check the License page (*Settings → License*, Administrator-only).

====================
Supported file types
====================
A "document" can be a file or a URL. The following file types are supported:

+------------------+------------------------------------------------------------------------------------------+
| **Category**     | **Supported file types**                                                                 |
+------------------+------------------------------------------------------------------------------------------+
| Document format  | .doc, .docx, .odt, .pdf, .rtf, .txt                                                      |
+------------------+------------------------------------------------------------------------------------------+
| Image            | .bmp, .dib, .gif, .ico, .jfi, .jfif, jif, .jpe, .jpeg, .jpg, .png, .svg, .tif, .tiff     |
+------------------+------------------------------------------------------------------------------------------+
| List/Spreadsheet | .csv, .ods, .xls, .xlsx                                                                  |
+------------------+------------------------------------------------------------------------------------------+
| Presentation     | .odp, .pps, .ppsx, .ppt, .pptx                                                           |
+------------------+------------------------------------------------------------------------------------------+
| Visio            | .vsd, .vss, .vst, .vdx, .vsx, .vtx, .vsdx, .vssx, .vstx, .vsdm, .vssm, .vstm, .vsw, .vsl |
+------------------+------------------------------------------------------------------------------------------+
| Other            | .mib, .xml, .zip                                                                         |
+------------------+------------------------------------------------------------------------------------------+

.. note:: The maximum upload size is 10 MB. The default total document storage size is 5 GB.

===================
Accessing documents
===================
All users can access documents, provided they have access privileges (except for Administrators, who have system-wide unrestricted access). You can search for documents, download document files, and view document links.

|docs|

Searching for documents
-----------------------
You can search for documents from:

* The Documents grid (*Assets → Documents*)
* An asset's Documents grid (browse to asset → *Information → Documents*)

Simply search for the document using the Search Documents row at the top of the grid.

Downloading document files
--------------------------
To download a document file, click on the corresponding Download button in the Documents or asset's Documents grid. The file will be downloaded to your browser's default download location.

Power Users and above can also download documents while viewing or updating details.

Viewing document links
----------------------
To view a document link, click on the corresponding View Link button in the Documents or asset's Documents grid. The link will open in a separate tab in your browser.

Power Users and above can also view links while viewing or updating document details.

.. _Document-file-types:

====================
Adding new documents
====================
You must be a Power User, Data Center Manager, or Administrator to be able to add a document. If you are adding documents from *Information → Documents* and are a Data Center Manager or Power User, you must also have access to the underlying asset.

You can add a new document from the Documents grid for all assets (*Assets → Documents*) or an asset's Documents grid (*Information → Documents*). The steps are similar, but the outcome is slightly different:

* Adding a document from *Assets → Documents* will add the document.
* Adding a document from *Information → Documents* will add the document, as well as create the asset-document association.

Adding a document from *Assets → Documents*
-------------------------------------------
1. Go to *Assets → Documents → Add*.
2. Enter details as follows:

	* Specify the Type (File or Link).
	* Provide a name for the document.
	* Provide a brief description.
	* Select or drag-and-drop the file (if uploading a file; see :ref:`Document-file-types`), or enter the full URL, including the protocol (if adding a link).
	* Select an existing Access Policy from the dropdown (note: Power Users and Data Center Managers can only view and select access policies that they are a member of).

3. Click Save. A success message will appear.
4. Proceed to add associations (see :ref:`Adding-associations`).

|add_doc|

Adding a document from *Information → Documents*
------------------------------------------------
1. Browse to the intended asset → *Information → Documents → Add*.
2. Enter details under *New Document* as follows:

	* Specify the Type (File or Link).
	* Provide a name for the document.
	* Provide a brief description.
	* Select or drag-and-drop the file (if uploading a file; see :ref:`Document-file-types`), or enter the full URL, including the protocol (if adding a link).
	* Select an Access Policy from the dropdown, or leave as the asset default (note: Power Users and Data Center Managers can only view and select access policies that they are a member of).

3. Click Save. A success message will appear.

.. _Adding-associations:

==============================
Managing document associations
==============================
You must be a Power User, Data Center Manager, or Administrator to be able to manage document associations. If you intend to add or remove document associations from *Information → Documents* and are a Data Center Manager or Power User, you must also have access to the underlying asset.

Adding document associations
----------------------------
1. Go to *Assets → Documents → Edit → Associations*.
2. Click the Add button → select the intended asset from the dropdown → Add.
3. Repeat step 2 to add more associations, as needed.

.. tip:: The Associations tab is also available upon adding a new document from *Assets → Documents*.

|assoc_doc|

Alternatively, to add document associations per asset:

1. Browse to the asset that you want the intended document to be associated with.
2. Go to *Information → Documents → Add → Existing Document*.
3. Select the document from the dropdown, and click Add.
4. Repeat the process for additional associations, as needed.

Removing document associations
------------------------------
1. Go to *Assets → Documents → Edit → Associations*.
2. Click the Remove button for the relevant asset.
3. Repeat step 2 to remove more associations, as needed.

Alternatively, to remove document associations per asset:

1. Browse to the associated asset → *Information → Documents*.
2. Click the Remove button for the relevant document.
3. Repeat step 2 to remove more associations, as needed.

Adding or removing document associations in bulk
------------------------------------------------
You can bulk-add or bulk-remove document associations while accessing assets from an Assets By Type, Assets By Location, or Advanced Search grid. The steps are identical for all three grids.

1. Browse to the Assets By Type or Assets By Location grid, or perform an Advanced Search to find the intended assets. For example, to view all Virtual Servers, open *Assets → Asset Types → Virtual Server*.
2. Select the assets that you want to associate with a certain document.
3. Click *Bulk Actions → Add Document Association* to add associations, or *Bulk Actions → Remove Document Association* to remove them. A corresponding modal will open.
4. Select the checkbox if you want to receive an email notification when the bulk job will have completed.
5. Select the document from the dropdown, and click Add (if you are adding associations) or Remove (if you are removing them).

|bulk_assoc|

A success message will appear confirming that the bulk job has been initiated.

=========================
Updating document details
=========================
You must be a Power User, Data Center Manager, or Administrator to be able to update a document's details (the information that is displayed in the document's Overview page, and in the grid).

1. Go to *Assets → Documents → Edit*.
2. Update details under Overview as needed:

	* Update the document name.
	* Update the description.
	* Replace the file (see :ref:`Document-file-types`) or update the URL (remember to include the protocol), depending on whether the document is a file or a link.

3. Click Save. A success message will appear.

|update_doc|

To update the access policy, proceed to the *Access Control* tab (see :ref:`Updating-access-policy`). To modify document associations, go to the *Associations* tab (see :ref:`Adding-associations`).

.. _Updating-access-policy:

===================================
Updating a document's access policy
===================================
Access policies determine who can access a certain securable object, such as a document. You must be a Power User, Data Center Manager, or Administrator to be able to update a document's access policy. Furthermore, Power Users and Data Center Managers can only view and select access policies that they are a member of.

To update a document's access policy:

1. Go to *Assets → Documents → Edit → Access Control*.
2. Select the intended access policy from the dropdown → Save.
3. Click Save to confirm. A success message will appear.

|access|

Administrators can manage access policies using (*Access Control → Manage Access Policies*). Refer to :ref:`Manage-access-policies-doc` for instructions.

==================
Deleting documents
==================
You must be a Data Center Manager or Administrator to be able to delete documents.

1. Browse to *Assets → Documents*.
2. Click the ellipsis (three dots) for the target document → Delete.
3. Click Delete to confirm. A success message will appear.
