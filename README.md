This is a Marlin config for a 1st Makerspace "Steam Engine" 3d Printer.
The hardware has been customized for the REclaimED Makerspace in
Poultney, VT.

You probably do not want to use this fork of Marlin.


# Changes to 1st Makerspace Steam Engine

## Hardware Changes

1. Replaced hot end nozzle, block, thermistor and tube.
2. Hot end fan cools all the time
3. Added part cooler, custom fan mount and blow tip
4. Replaced extruder cable management to make replacing cables possible
5. Moved end stops to be outside of software print area
6. Z axis top bearings shot, printed new holder for more common size.
7. Removed and cleaned z lead screws. Something had gotten on thermal
8. Replaced arduino
9. Replaced Z driver

## Software Changes

Fresh Marlin install, customized by hand.

## Slicer Settings

### New Startup

Adds a wipe similar to Prusa

```
G28 ; home all axes
G1 Z5 F5000 ; lift nozzle

G1 Z0 Y5 X15 F1000.0 ; go outside print area
G92 E0.0
G1 X90.0 E14  F1000.0 ; intro line
G1 X150.0 E18  F1000.0 ; intro line
G92 E0.0
```

# Notes

## Z Axis

2mm pitch
assume 200 Steps
100 per mm

## wires
Endstop order Left to Right
Red Pink Black Green Brown Yellow

E Stepper wires
Blue (marked) Yellow Green Red

# Old Firmware

None of the features to allow us to get the old settings back were enabled.
What Jerks! So I replaced the Arduino so I can keep the old one

## Startup
```
Connecting...
start
Printer is now online.
echo: External Reset
Marlin 2.0.0
echo: Last Updated: Jan 25 2015 15:09:44 | Author: (NagyA)
echo: Free Memory: 5527  PlannerBufferBytes: 1232
Using tool 0.
echo:Active Extruder: 0
```

## M115
```
>>> m115
SENDING:M115
FIRMWARE_NAME:Marlin V1; Sprinter/grbl mashup for gen6 FIRMWARE_URL:http://www.mendel-parts.com PROTOCOL_VERSION:1.0 MACHINE_TYPE:Mendel EXTRUDER_COUNT:1
```
