#!/bin/sh
    # Replace the Numix Pink/Red with Arch Linux Blue,
    # also replace Nero (#2d2d2d) with Montana (#333333)
    #  - https://www.archlinux.org/art/
    for FILE in gtk-2.0/gtkrc \
            gtk-3.0/gtk-dark.css \
            gtk-3.0/gtk-widgets-assets.css \
            gtk-3.0/gtk-widgets.css \
            gtk-3.0/gtk.css \
            gtk-3.0/settings.ini \
            gtk-3.0/apps/gnome-applications.css \
            gtk-3.0/apps/granite-widgets.css \
            gtk-3.0/apps/lightdm-gtk-greeter.css \
            gtk-3.0/apps/nemo.css \
            gtk-3.0/apps/synaptic.css \
            gtk-3.0/apps/unity.css \
            gtk-3.0/apps/xfce.css \
            gtk-3.0/assets/*.svg \
            metacity-1/metacity-theme-2.xml \
            metacity-1/metacity-theme-3.xml \
            openbox-3/themerc \
            xfce-notify-4.0/gtkrc \
            xfwm4/themerc \
            index.theme
    do
        sed -i 's/#fc6f5d/#1793d1/g' "${FILE}"
        sed -i 's/#d64937/#1793d1/g' "${FILE}"
        sed -i 's/#2d2d2d/#333333/g' "${FILE}"
        sed -i 's/Numix/Numix-ArchBlue/' "${FILE}"
    done
