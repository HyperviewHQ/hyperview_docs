# Bulk Importing Connections

This guide provides the process for importing and updating connections in Hyperview. It outlines essential and optional properties required for successful data entry, as well as tips for troubleshooting common errors.

1.	Navigate to the Connectivity > Import page.

```{image} /product/connectivity/media/bulk-import-connections/image1.jpeg
:class: border-black
```

2.	Open the Download Template File menu.

```{image} /product/connectivity/media/bulk-import-connections/image2.jpeg
:class: border-black
```

3.	Download the Connections template file.

```{image} /product/connectivity/media/bulk-import-connections/image3.jpeg
:class: border-black
```

4.	Enter the required information in the Import Connections template spreadsheet.

```{image} /product/connectivity/media/bulk-import-connections/image4.jpeg
:class: border-black
```

:::{important}
The template can be used to import new connections or update existing connections.

Required Properties:
- Media Type
- Termination A (Location/Asset) ID
- Termination A Name
- Termination A Port
- Termination B (Location/Asset) ID
- Termination B Name
- Termination B Port

Optional Properties:
- ID (required if updating a connection)
- Name (a name will be automatically populated if left empty)
- Connector Type
- Length
- Business Entity
- Termination A Side (required for patch panel terminations)
- Termination B Side (required for patch panel terminations)

Custom Properties:
- Additional columns containing custom property data can be uploaded with the import. The header of the column should match the custom property name exactly, and the value should match the custom property data type.
:::

5.	Click Select File.

```{image} /product/connectivity/media/bulk-import-connections/image5.jpeg
:class: border-black
```

6.	Open the Template picker and select Connections.

```{image} /product/connectivity/media/bulk-import-connections/image6.jpeg
:class: border-black
```

7.	Click Select File and locate the Import Connections spreadsheet.

```{image} /product/connectivity/media/bulk-import-connections/image7.jpeg
:class: border-black
```

8.	If an assets ports are not populated on the asset already, you may select the Auto Generate Ports option to have Hyperview create the port when importing the connections.

```{image} /product/connectivity/media/bulk-import-connections/image8.jpeg
:class: border-black
```

9.	Click Select.

```{image} /product/connectivity/media/bulk-import-connections/image9.jpeg
:class: border-black
```

10.	The spreadsheet content will appear on the Import page. After verifying the content, click the Import button to initiate the import process.

```{image} /product/connectivity/media/bulk-import-connections/image10.jpeg
:class: border-black
```

11.	Once the import process is complete, validate the Result column to ensure the connections were successfully imported.

```{image} /product/connectivity/media/bulk-import-connections/image11.jpeg
:class: border-black
```

:::{important}
If a connection fails to import, an error will be displayed in the result column. The error message will indicate what the cause of the error was. Typical errors include:
- Termination device does not exist.
- Connection ID does not exist.
- Termination port does not exist (when auto-generate ports option is disabled)
- Custom Property field does not exist.
:::

12.	Export the import results if needed.

```{image} /product/connectivity/media/bulk-import-connections/image12.jpeg
:class: border-black
```

13.	Imported connections can be found in the Connectivity > Connections page.

```{image} /product/connectivity/media/bulk-import-connections/image13.jpeg
:class: border-black
```
