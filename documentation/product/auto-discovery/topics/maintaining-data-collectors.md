(maintaining-data-collectors-doc)=

# Maintaining Data Collectors

Data Collectors must be up-to-date and communicate consistently with the Hyperview platform. This is crucial because sensors are assigned to Data Collectors. Using a stale or non-functioning Data Collector will result in incorrect sensor data and therefore an inaccurate representation of your assets in Hyperview.

## Tracking stale and outdated Data Collectors

The Last Communicated column in the Data Collectors grid indicates the date & time when a particular Data Collector last communicated with Hyperview. The Version column shows the Data Collector version number.

```{image} /product/auto-discovery/media/dc_grid.png
:class: border-black
```

Distinct alarm event messages are generated for the **All** location (*Asset Hierarchy → All → Events*) if:

- A Data Collector has not communicated with Hyperview within 2x the usual polling frequency; or
- The Data Collector version is out of date.

Consult your IT department to address any connectivity issues, and/or update the Data Collector accordingly.

```{image} /product/auto-discovery/media/events.png
:class: border-black
```

To receive email notifications if any of these alarm events trigger, simply add the All location to your watched assets.

## Updating Data Collectors

Execute the `update-dc.sh` script located at `/opt/datacollector/bin`. Your existing configuration will be retained. You do not have to uninstall your current Linux Data Collector.

```bash
cd /opt/datacollector/bin
sudo ./update-dc.sh
```

To skip hardware checks.

```bash
cd /opt/datacollector/bin
sudo SKIP_TESTS=YES ./update-dc.sh`
```

## Reconfiguring Data Collectors

Execute the `reconfigure.sh` script located at `/opt/datacollector/bin`.

```bash
cd /opt/datacollector/bin
sudo ./reconfigure.sh
```

To skip hardware checks.

```bash
cd /opt/datacollector/bin
sudo SKIP_TESTS=YES ./reconfigure.sh`
```

## Retiring a Data Collector

You may want to retire a Data Collector for various reasons, such as:

- The server hosting the Data Collector is no longer operational.
- A faster server is available.
- The current Data Collector server needs to temporarily go offline for maintenance.
- A new server has been set up that is geographically closer to the assets you intend to monitor.

Retiring a Data Collector will **permanently** remove it from the system. During the retirement process, you must specify a substitute Data Collector that will take over the responsibilities of the Data Collector you are retiring. If you only have one Data Collector, you cannot retire it unless you add a substitute.

```{image} /product/auto-discovery/media/retire.png
:class: border-black
```

1. Log in to your Hyperview instance as an Administrator.
2. Go to *Discoveries → Data Collectors*.
3. Click the *Retire* button for the intended Data Collector. The "Retire Data Collector" modal will open.
4. Select the substitute Data Collector from the dropdown and click *Save*.
