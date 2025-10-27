(supported-asset-types-doc)=

# Supported asset types

The following asset types are supported in Hyperview.

## Device asset types

### Facilities

- Busway
- Camera
- Chiller
- CRAC
- CRAH
- Environmental
- Fire Control Panel
- In Row Cooling

### Power

- DC Rectifier
- Generator
- PDU/RPP
- Power Meter
- Rack PDU
- Small UPS
- Transfer Switch
- UPS
- Utility Breaker

### IT

- Blade Network
- Blade Server
- Blade Storage
- KVM Switch
- Network Device
- Network Storage
- Node Server
- Patch Panel
- Server
- Virtual Server
- Monitor

## Container types

- Blade Enclosure
- Location
- Rack

## Additional types

- Other Device (for devices that do not belong to any of the other asset types)
- Unknown (discovery-only; cannot be added or imported manually)

:::{tip}
You can use {ref}`the Asset Types tree<Navigating-assets-doc>` to see which asset types (except Location) are present in your system. If you are not an Administrator, you will only see asset types corresponding to devices that you {ref}`have access to<Who-can-access-doc>`.
:::

## Component asset types

The following asset types are only supported as component assets — that is, assets that constitute other assets. Component assets appear on the Components (*asset → Information → Components*) and Network Components (*asset → Information → Network Components*) pages in Hyperview.

:::{note}
Component assets are auto-detected by Hyperview. You can {ref}`search for them<Search-features>`, but you cannot {ref}`add or import them manually<Adding-assets-doc>`.
:::

- Application
- Busway Tap Off
- Cable
- IP Address
- Memory
- NIC
- Operating System
- Outlet
- PDU/RPP Breaker
- Physical Storage
- Power Supply
- Processor
- Transceiver
