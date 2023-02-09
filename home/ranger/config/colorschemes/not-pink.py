# Colorsheme Based on Jungle
# But it may not be Jungle anymore.

from __future__ import (absolute_import, division, print_function)

from ranger.colorschemes.default import Default

from ranger.gui.color import (
    black, blue, cyan, green, magenta, red, white, yellow, default,
    normal, bold, reverse, dim, BRIGHT,
    default_colors, blink
)

from os import environ

class Scheme(Default):
    progress_bar_color = green

    def use(self, context):
        fg, bg, attr = Default.use(self, context)

        if context.directory and not context.marked and not context.link and not context.inactive_pane:
            # Set Color Mainly for Directories
            fg = magenta
            # fg = blue
            # fg = 25
            fg += BRIGHT
            
        # Set color for Link files.
        elif context.link:
            fg = cyan

        # Set color for Executable files.
        elif context.executable and not any((context.media, context.container, context.fifo, context.socket)):
            attr |= bold
            fg = green
            fg += BRIGHT

        # Set color for Marked files.
        if context.tag_marker and not context.selected:
            attr |= bold
            fg = yellow
            

        #  Color for Selected and Marked files.
        if context.main_column:
            if context.selected:
                attr |= bold
            if context.marked:
                attr |= bold
                fg = yellow

        # Color for files to be Cut and Copied.
        #  if not context.selected and (context.cut or context.copied):
        if context.cut:
            fg = red
            attr |= bold
            attr |= blink
            if context.marked:
                fg += BRIGHT
        elif context.copied:
            fg = white
            attr |= blink
            attr |= bold
            if context.marked:
                fg += BRIGHT

        if context.bad:
            fg = red

        if context.in_titlebar:
            if context.hostname:
                fg = red if context.bad else blue
            else:
                fg = 25


        return fg, bg, attr
