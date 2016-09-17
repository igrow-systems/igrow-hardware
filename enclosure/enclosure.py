#!/usr/bin/env python


import svgwrite

from svgwrite import mm
from svgwrite import pt

MARGIN = 5 #mm

ENCLOSURE_SURROUND = 2.5          # mm
ENCLOSURE_WIDTH    = 49.784 + ENCLOSURE_SURROUND * 2 # mm
ENCLOSURE_HEIGHT   = 39.497 + ENCLOSURE_SURROUND * 2 # mm

MOUNT_HOLE_RADIUS   = 1.5 + 0.1       # mm
MOUNT_HOLE_PITCH    = [43.18, 33.02]  # mm

BATTERY_CENTRE  = [13.97, 28.067]   # mm
BATTERY_RADIUS  = 10.414            # mm

JTAG_CONNECTOR_SIZE     = [6.731, 6.35]     # mm
JTAG_CONNECTOR_LOCATION = [17.0815, 9.017]  # mm
JTAG_CUTOUT_EPSILON     = 1.0 # mm
JTAG_CUTOUT_SIZE        = [4.0 + JTAG_CUTOUT_EPSILON,
                           10.5 + JTAG_CUTOUT_EPSILON]  # mm 
JTAG_CUTOUT_LOCATION    = [JTAG_CONNECTOR_LOCATION[0]
                           - (JTAG_CUTOUT_SIZE[0]
                              - JTAG_CONNECTOR_SIZE[0]) / 2.0,
                           JTAG_CONNECTOR_LOCATION[1]
                           - (JTAG_CUTOUT_SIZE[1]
                              - JTAG_CONNECTOR_SIZE[1]) / 2.0]  # mm

SWITCH_LOCATION = [28.702, 31.242]  # mm
SWITCH_RADIUS   = 1.75              # mm

TEXT_BRANDING = 'iGrow 101'
TEXT_BRANDING_LOCATION  = [-200.0, 100.0]   # mm
TEXT_BRANDING_FONT_SIZE = 32                # pt
TEXT_BRANDING_STYLE = ("font-style:normal;font-weight:bold;"
                       "line-height:125%;font-family:sans-serif;"
                       "letter-spacing:0px;word-spacing:0px;"
                       "fill-opacity:1;stroke:none;stroke-width:1px;"
                       "stroke-linecap:butt;stroke-linejoin:miter;"
                       "stroke-opacity:1")

TEXT_MANUFACTURER_1 = '(c) 2016 iGrow Systems Limited'
TEXT_MANUFACTURER_2 = 'Designed and manufactured in UK'
TEXT_MANUFACTURER_LOCATION  = [-210.0, 300.0]   # mm
TEXT_MANUFACTURER_FONT_SIZE = 8                 # pt

LED_ADVERTISING = [45.847, 29.90]  # mm, relative to the PCB!
LED_CONNECTED   = [40.767, 29.90]  # mm
LED_RADIUS      = 1.0              # mm

TEXT_LED_ADVERTISING = 'visible'
TEXT_LED_CONNECTED   = 'connected'
TEXT_LED_ADVERTISING_LOCATION  = [-160.0, -195.0]   # mm
TEXT_LED_CONNECTED_LOCATION    = [-160.0, -175.0]   # mm
TEXT_LED_FONT_SIZE = 6                # pt
TEXT_LED_STYLE = ("font-style:normal;font-weight:bold;"
                  "line-height:125%;font-family:sans-serif;"
                  "letter-spacing:0px;word-spacing:0px;"
                  "fill-opacity:1;stroke:none;stroke-width:1px;"
                  "stroke-linecap:butt;stroke-linejoin:miter;"
                  "stroke-opacity:1")

STROKE_WIDTH    = 0.025 # mm

MOUNT_HOLE_AUTO_CENTRE = True


def panel(dwg, offset):

    if MOUNT_HOLE_AUTO_CENTRE:
        for i in range(0,2):
            for j in range(0,2):

                centre_x = offset[0]                                         \
                           + ((ENCLOSURE_WIDTH - MOUNT_HOLE_PITCH[0]) / 2)   \
                           + i * MOUNT_HOLE_PITCH[0]
                centre_y = offset[1]                                         \
                           + ((ENCLOSURE_HEIGHT - MOUNT_HOLE_PITCH[1]) / 2)  \
                           + j * MOUNT_HOLE_PITCH[1]

                dwg.add(dwg.circle(center = (centre_x * mm, centre_y * mm),
                                   r = MOUNT_HOLE_RADIUS * mm, fill = 'none',
                                   stroke = 'black',
                                   stroke_width = STROKE_WIDTH * mm))

    else:
        print ('Oh dear!')
        
    dwg.add(dwg.rect(((offset[0]) * mm, (offset[1]) * mm),
                     (ENCLOSURE_WIDTH * mm,
                      ENCLOSURE_HEIGHT * mm),
                     rx = 2.5 * mm, ry = 2.5 * mm,
                     fill='none', stroke='black',
                     stroke_width = STROKE_WIDTH * mm))
    
def front_panel(dwg):
    panel(dwg, [MARGIN, MARGIN])

    # LED ADVERTISING
    dwg.add(dwg.circle(center = ((MARGIN + ENCLOSURE_SURROUND
                                  + LED_ADVERTISING[0]) * mm,
                                 (MARGIN + ENCLOSURE_SURROUND
                                  + LED_ADVERTISING[1]) * mm),
                       r = LED_RADIUS * mm, fill = 'blue',
                       stroke = 'none',
                       stroke_width = STROKE_WIDTH * mm))

    text_led_advertising = dwg.text(text = TEXT_LED_ADVERTISING,
                                    #rotate = [90],
                                    font_family = 'sans-serif',
                                    font_size = TEXT_LED_FONT_SIZE * pt,
                                    fill = 'blue',
                                    style = TEXT_BRANDING_STYLE)
    text_led_advertising.rotate(90)
    text_led_advertising.scale([-1, 1])
    text_led_advertising.translate([(-MARGIN + ENCLOSURE_SURROUND
                                     + TEXT_LED_ADVERTISING_LOCATION[0]),
                                    (MARGIN + ENCLOSURE_SURROUND
                                     + TEXT_LED_ADVERTISING_LOCATION[1])])
    dwg.add(text_led_advertising)

    # LED CONNECTED
    dwg.add(dwg.circle(center = ((MARGIN + ENCLOSURE_SURROUND
                                  + LED_CONNECTED[0]) * mm,
                                 (MARGIN + ENCLOSURE_SURROUND
                                  + LED_CONNECTED[1]) * mm),
                       r = LED_RADIUS * mm, fill = 'blue',
                       stroke = 'none',
                       stroke_width = STROKE_WIDTH * mm))
    
    text_led_connected = dwg.text(text = TEXT_LED_CONNECTED,
#                                  rotate = [90],
                                  font_family = 'sans-serif',
                                  font_size = TEXT_LED_FONT_SIZE * pt,
                                  fill = 'blue',
                                  style = TEXT_BRANDING_STYLE)
    text_led_connected.rotate(90)
    text_led_connected.scale([-1, 1])
    text_led_connected.translate([(-MARGIN + ENCLOSURE_SURROUND
                                   + TEXT_LED_CONNECTED_LOCATION[0]),
                                  (MARGIN + ENCLOSURE_SURROUND
                                   + TEXT_LED_CONNECTED_LOCATION[1])])
    dwg.add(text_led_connected)
    # Switch access
    dwg.add(dwg.circle(center = ((MARGIN + ENCLOSURE_SURROUND
                                  + SWITCH_LOCATION[0]) * mm,
                                 (MARGIN + ENCLOSURE_SURROUND
                                  + SWITCH_LOCATION[1]) * mm),
                       r = SWITCH_RADIUS * mm, fill = 'none',
                       stroke = 'black',
                       stroke_width = STROKE_WIDTH * mm))


    # Branding
    branding = dwg.text(text = TEXT_BRANDING,
                        font_family = 'sans-serif',
                        font_size = TEXT_BRANDING_FONT_SIZE, fill = 'blue',
                        style = TEXT_BRANDING_STYLE)
    branding.scale([-1, 1])
    branding.translate([(-MARGIN + ENCLOSURE_SURROUND
                         + TEXT_BRANDING_LOCATION[0]),
                        (MARGIN + ENCLOSURE_SURROUND
                         + TEXT_BRANDING_LOCATION[1])])

    dwg.add(branding)

def rear_panel(dwg):
    offset = [MARGIN, ENCLOSURE_HEIGHT + 2.0 * MARGIN]
    panel(dwg, offset)

    # JTAG connector cutout
    dwg.add(dwg.rect(((ENCLOSURE_WIDTH - (JTAG_CUTOUT_LOCATION[0]
                                          + ENCLOSURE_SURROUND)
                       + offset[0] - JTAG_CUTOUT_SIZE[0]) * mm,
                      (JTAG_CUTOUT_LOCATION[1] + offset[1]
                       + ENCLOSURE_SURROUND) * mm),
                     (JTAG_CUTOUT_SIZE[0] * mm,
                      JTAG_CUTOUT_SIZE[1] * mm),
                     rx = 1.0 * mm, ry = 1.0 * mm,
                     fill='none', stroke='black',
                     stroke_width = STROKE_WIDTH * mm))


    # Company details
    text_manufacturer = dwg.text(text = '', font_family = 'sans-serif',
                                 font_size = TEXT_MANUFACTURER_FONT_SIZE,
                                 fill = 'blue',
                                 style = TEXT_BRANDING_STYLE)
    text_manufacturer.add(dwg.tspan(TEXT_MANUFACTURER_1))
    text_manufacturer.add(dwg.tspan(TEXT_MANUFACTURER_2, x = ['0mm'],
                                    dy = ['5mm']))
    text_manufacturer.scale([-1, 1])
    text_manufacturer.translate([(MARGIN + ENCLOSURE_SURROUND
                                  + TEXT_MANUFACTURER_LOCATION[0]),
                                 (MARGIN + ENCLOSURE_SURROUND
                                  + TEXT_MANUFACTURER_LOCATION[1])])
    
    dwg.add(text_manufacturer)


def mid_panel_1(dwg):
    panel(dwg, [0, (ENCLOSURE_HEIGHT + MARGIN) * 2])

def mid_panel_2(dwg):
    panel(dwg, [MARGIN * 2, (ENCLOSURE_HEIGHT + MARGIN) * 2 + MARGIN * 2])

def mid_panel_3(dwg):
    panel(dwg, [MARGIN * 4, (ENCLOSURE_HEIGHT + MARGIN) * 2 + MARGIN * 4])
        
def enclosure(name):

    dwg = svgwrite.Drawing(name, ("500mm", "500mm"), debug = True)

    front_panel(dwg)
    rear_panel(dwg)

#    mid_panel_1(dwg)
#    mid_panel_2(dwg)
#    mid_panel_3(dwg)
    
    dwg.save()


if __name__ == '__main__':
    enclosure('enclosure.svg')

