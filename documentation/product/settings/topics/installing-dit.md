(installing-dit)=

# Downloading the Definition Import Tool

Steps for downloading the Definition Import Tool (DIT), enabling users to import and manage Modbus TCP and BACnet IP definitions in their Hyperview instances. Note the importance of configuring API access, which is crucial for the tool's functionality.

1.  Navigate to
    [<u>https://github.com/HyperviewHQ/</u>](https://github.com/HyperviewHQ/)

```{image} /product/settings/media/installing-dit/image1.jpeg
:class: border-black
```

2.  Click "definition\_import\_tool" repository.

```{image} /product/settings/media/installing-dit/image2.jpeg
:class: border-black
```

3.  Click the latest release under the Releases section.

```{image} /product/settings/media/installing-dit/image3.jpeg
:class: border-black
```

4.  Download either the Linux or Windows zip file based on your OS.

```{image} /product/settings/media/installing-dit/image4.jpeg
:class: border-black
```

5.  Extract the contents of the ZIP file.

```{image} /product/settings/media/installing-dit/image5.jpeg
:class: border-black
```

6.  Execute the dit tool.

```{image} /product/settings/media/installing-dit/image6.jpeg
:class: border-black
```

```{note}
The dit tool uses an API client to communicate with the
Hyperview instance, and following these initial steps does not create
that user for you. Follow the {ref}`Configuring DIT<configuring-dit>` documentation to setup
API access for the tool.
```
