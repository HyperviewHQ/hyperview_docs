# Bulk Importing Circuits

This guide simplifies the bulk importing of circuits, making it easier to manage multiple circuits efficiently. It provides a step-by-step process to download a template, input the necessary data, and import circuits while also allowing for updates to existing ones. Additionally, it highlights required, optional, and custom properties, ensuring users understand what information is needed for successful imports.

1.	Navigate to the Connectivity > Import page.

```{image} /product/connectivity/media/bulk-import-connections/image1.jpeg
:class: border-black
```

2.	Open the Download Template File menu.

```{image} /product/connectivity/media/bulk-import-connections/image2.jpeg
:class: border-black
```

3.	Download the Circuits template file.

```{image} /product/connectivity/media/bulk-import-connections/image3.jpeg
:class: border-black
```

4.	Enter the required information in the Import Circuits template spreadsheet.

```{image} /product/connectivity/media/bulk-import-connections/image4.jpeg
:class: border-black
```

:::{important}
The template can be used to import new circuits or update existing circuits.

Required Properties:
- Circuit Type
- Provisioning Status
- Access Policy

Optional Properties:
- ID (required if updating a circuit)
- Circuit ID (a name will be automatically populated if left empty)
- Business Entity
- Connections (IDs)
- Connection Names
- Side A (Connection ID)
- Side Z (Connection ID)

Custom Properties:
- Additional columns containing custom property data can be uploaded with the import. The header of the column should match the custom property name exactly, and the value should match the custom property data type.
:::

5.	Click Select File.

```{image} /product/connectivity/media/bulk-import-connections/image5.jpeg
:class: border-black
```

6.	Open the Template picker and select Circuits.

```{image} /product/connectivity/media/bulk-import-connections/image6.jpeg
:class: border-black
```

7.	Click Select File and locate the Import Circuits spreadsheet.

```{image} /product/connectivity/media/bulk-import-connections/image7.jpeg
:class: border-black
```

8.	Click Select.

```{image} /product/connectivity/media/bulk-import-connections/image8.jpeg
:class: border-black
```

9.	The spreadsheet content will appear on the Import page. After verifying the content, click the Import button to initiate the import process.

```{image} /product/connectivity/media/bulk-import-connections/image9.jpeg
:class: border-black
```

:::{important}
Once the import process is complete, validate the Result column to ensure the circuits were successfully imported.

If a Circuit fails to import, an error will be displayed in the result column. The error message will indicate what the cause of the error was. Typical errors include:
- Connection does not exist.
- Termination does not exist.
- Custom Property field does not exist.
:::

10.	Export the import results if needed.

```{image} /product/connectivity/media/bulk-import-connections/image10.jpeg
:class: border-black
```

11.	Imported circuits can be found in the Connectivity > Circuits page.

```{image} /product/connectivity/media/bulk-import-connections/image11.jpeg
:class: border-black
```

```{image} /product/connectivity/media/bulk-import-connections/image12.jpeg
:class: border-black
```
