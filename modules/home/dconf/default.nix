# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "apps/seahorse/listing" = {
      keyrings-selected = [ "secret-service:///org/freedesktop/secrets/collection/login" ];
    };

    "apps/seahorse/windows/key-manager" = {
      height = 792;
      width = 766;
    };

    "ca/desrt/dconf-editor" = {
      saved-pathbar-path = "/org/gnome/shell/extensions/window-list/";
      saved-view = "/org/gnome/shell/";
      show-warning = false;
      window-height = 500;
      window-is-maximized = false;
      window-width = 696;
    };

    "org/blueman/general" = {
      window-properties = [ 614 473 0 0 ];
    };

    "org/blueman/plugins/powermanager" = {
      auto-power-on = "@mb true";
    };

    "org/blueman/plugins/recentconns" = {
      recent-connections = "[{'adapter': '94:F6:D6:24:9E:13', 'address': '12:34:C0:0E:9E:33', 'alias': 'MI Mouse BT3.0', 'icon': 'input-mouse', 'name': 'Audio and input profiles', 'uuid': '00000000-0000-0000-0000-000000000000', 'time': '1675663655.9366188'}]";
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "6fb03af4-4ef5-49fd-b8e6-9ebb51611ff6" "b7953d8a-9aa5-43fd-ac24-b7228a5df778" "03ce591a-01dc-4a68-8cce-a1fd8633cc9a" ];
    };

    "org/gnome/desktop/app-folders/folders/03ce591a-01dc-4a68-8cce-a1fd8633cc9a" = {
      apps = [ "ca.desrt.dconf-editor.desktop" "qt5ct.desktop" "org.gnome.Settings.desktop" "org.gnome.Extensions.desktop" "org.gnome.tweaks.desktop" "org.gnome.seahorse.Application.desktop" ];
      name = "设置";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/6fb03af4-4ef5-49fd-b8e6-9ebb51611ff6" = {
      apps = [ "fcitx5-configtool.desktop" "nvim.desktop" "ranger.desktop" "org.kde.kwrite.desktop" "mpv.desktop" "org.gnome.Calendar.desktop" "vlc.desktop" "org.gnome.Logs.desktop" "com.nextcloud.desktopclient.nextcloud.desktop" "umpv.desktop" "org.pwmt.zathura.desktop" "kbd-layout-viewer5.desktop" "org.fcitx.Fcitx5.desktop" "org.fcitx.fcitx5-migrator.desktop" "xterm.desktop" "nixos-manual.desktop" "fish.desktop" "nm-connection-editor.desktop" "org.qutebrowser.qutebrowser.desktop" ];
      name = "杂";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.eog.desktop" "org.gnome.font-viewer.desktop" "org.gnome.Console.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      excluded-apps = [ "org.gnome.tweaks.desktop" "org.gnome.seahorse.Application.desktop" "nm-connection-editor.desktop" "picom.desktop" "org.gnome.Logs.desktop" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/b7953d8a-9aa5-43fd-ac24-b7228a5df778" = {
      apps = [ "impress.desktop" "draw.desktop" "calc.desktop" "math.desktop" "writer.desktop" "base.desktop" "startcenter.desktop" "wemeetapp-force-x11.desktop" "wemeetapp.desktop" ];
      name = "办公";
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "ctrl:swapcaps" ];
    };

    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      cursor-size = 24;
      cursor-theme = "breeze_cursors";
      document-font-name = "Noto Sans CJK SC 11";
      enable-animations = true;
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      font-name = "Noto Sans CJK SC 10";
      gtk-theme = "WhiteSur-Dark";
      icon-theme = "Papirus-Dark";
      monospace-font-name = "Noto Sans Mono CJK SC 10";
      toolbar-style = "text";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-kde-dolphin" "gnome-power-panel" "gnome-network-panel" "org-gnome-tweaks" "org-gnome-nautilus" ];
      show-banners = true;
      show-in-lock-screen = false;
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-tweaks" = {
      application-id = "org.gnome.tweaks.desktop";
    };

    "org/gnome/desktop/notifications/application/org-kde-dolphin" = {
      application-id = "org.kde.dolphin.desktop";
    };

    "org/gnome/desktop/notifications/application/org-telegram-desktop" = {
      application-id = "org.telegram.desktop.desktop";
    };

    "org/gnome/desktop/notifications/application/qq" = {
      application-id = "qq.desktop";
    };

    "org/gnome/desktop/peripherals/mouse" = {
      natural-scroll = false;
      speed = 6.1404e-2;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      natural-scroll = false;
      send-events = "enabled";
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [ "org.gnome.Contacts.desktop" "org.gnome.Documents.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 300;
    };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Alt>q" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "icon:minimize,maximize,close";
      titlebar-font = "Noto Sans CJK SC Bold 11";
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/gnome-system-monitor" = {
      maximized = false;
      network-total-in-bits = false;
      show-dependencies = false;
      show-whose-processes = "user";
      window-state = mkTuple [ 700 500 ];
    };

    "org/gnome/gnome-system-monitor/disktreenew" = {
      col-6-visible = true;
      col-6-width = 0;
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      dynamic-workspaces = true;
      edge-tiling = true;
      focus-change-on-pointer-rest = true;
      workspaces-only-on-primary = true;
    };

    "org/gnome/nautilus/compression" = {
      default-compression-format = "zip";
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/nautilus/window-state" = {
      initial-size = mkTuple [ 890 550 ];
      maximized = false;
    };

    "org/gnome/nm-applet/eap/5a239281-7659-4be1-8d8f-5893ae717f43" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/8f09e647-4a72-44ce-8928-cd1494d80ab4" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/nm-applet/eap/9f35fa3e-e822-4e13-80b4-f2baa4577be0" = {
      ignore-ca-cert = false;
      ignore-phase2-ca-cert = false;
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/" "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/" ];
      help = [];
      www = [ "<Alt>c" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Alt>e";
      command = "dolphin";
      name = "文件管理器";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Alt>Return";
      command = "st";
      name = "启动终端";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "<Alt>z";
      command = "zotero";
      name = "zotero";
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" = {
      binding = "<Alt>p";
      command = "keepassxc";
      name = "keepassxc";
    };

    "org/gnome/shell" = {
      app-picker-layout = "[{'b7953d8a-9aa5-43fd-ac24-b7228a5df778': <{'position': <0>}>, '03ce591a-01dc-4a68-8cce-a1fd8633cc9a': <{'position': <1>}>, '6fb03af4-4ef5-49fd-b8e6-9ebb51611ff6': <{'position': <2>}>, 'org.kde.ark.desktop': <{'position': <3>}>, 'cantata.desktop': <{'position': <4>}>, 'org.kde.gwenview.desktop': <{'position': <5>}>, 'org.kde.kate.desktop': <{'position': <6>}>, 'org.keepassxc.KeePassXC.desktop': <{'position': <7>}>, 'org.kde.konsole.desktop': <{'position': <8>}>, 'org.kde.ktorrent.desktop': <{'position': <9>}>, 'org.kde.okular.desktop': <{'position': <10>}>, 'org.telegram.desktop.desktop': <{'position': <11>}>}]";
      disable-user-extensions = false;
      disabled-extensions = [ "windowsNavigator@gnome-shell-extensions.gcampax.github.com" "apps-menu@gnome-shell-extensions.gcampax.github.com" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "window-list@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" "bluetooth-quick-connect@bjarosze.gmail.com" "blur-my-shell@aunetx" "caffeine@patapon.info" "command-menu@arunk140.com" "dash-to-dock@micxgx.gmail.com" "gnome-fuzzy-app-search@gnome-shell-extensions.Czarlie.gitlab.com" "just-perfection-desktop@just-perfection" "ProxySwitcher@flannaghan.com" "todo.txt@bart.libert.gmail.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "kimpanel@kde.org" "drive-menu@gnome-shell-extensions.gcampax.github.com" "replaceActivitiesText@pratap.fastmail.fm" "launch-new-instance@gnome-shell-extensions.gcampax.github.com" "extension-list@tu.berry" "soft-brightness@fifi.org" ];
      favorite-apps = [ "org.kde.dolphin.desktop" "st-256color.desktop" "qq.desktop" "google-chrome.desktop" "zotero-6.0.20.desktop" "code.desktop" ];
      last-selected-power-profile = "power-saver";
      welcome-dialog-last-shown-version = "43.2";
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = false;
    };

    "org/gnome/shell/extensions/bluetooth-quick-connect" = {
      bluetooth-auto-power-on = true;
      debug-mode-on = true;
      keep-menu-on-toggle = true;
      refresh-button-on = true;
      show-battery-value-on = true;
    };

    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = 1;
    };

    "org/gnome/shell/extensions/dash-to-dock" = {
      background-opacity = 0.8;
      click-action = "launch";
      dash-max-icon-size = 48;
      dock-position = "BOTTOM";
      height-fraction = 0.9;
      preferred-monitor = -2;
      preferred-monitor-by-connector = "HDMI-1";
      show-trash = false;
    };

    "org/gnome/shell/extensions/extension-list" = {
      button-icon = mkUint32 0;
      hide-disabled = true;
      toggle-unpin = false;
      unpin-list = [ "gsconnect@andyholmes.github.io" ];
    };

    "org/gnome/shell/extensions/gsconnect" = {
      enabled = false;
      id = "f820adc3-fa5d-47dc-864b-105e8fd86fb8";
      name = "nixos";
    };

    "org/gnome/shell/extensions/gsconnect/preferences" = {
      window-maximized = false;
      window-size = mkTuple [ 640 440 ];
    };

    "org/gnome/shell/extensions/just-perfection" = {
      calendar = true;
      dash = true;
      dash-separator = true;
      events-button = false;
      startup-status = 0;
      weather = false;
      window-demands-attention-focus = true;
      workspace-switcher-should-show = true;
      workspace-switcher-size = 15;
      workspace-wrap-around = true;
      world-clock = false;
    };

    "org/gnome/shell/extensions/kimpanel" = {
      font = "Noto Sans CJK SC 13";
    };

    "org/gnome/shell/extensions/replaceActivitiesText" = {
      icon-path = "";
      icon-size = 1.365854;
      text = "活动";
    };

    "org/gnome/shell/extensions/soft-brightness" = {
      clone-mouse = false;
      current-brightness = 0.700532;
      use-backlight = false;
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "WhiteSur-Dark";
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-size = mkTuple [ 777 419 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = false;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 161;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 0 28 ];
      window-size = mkTuple [ 1097 823 ];
    };

    "system/proxy" = {
      mode = "manual";
    };

    "system/proxy/http" = {
      host = "127.0.0.1";
      port = 15777;
    };

    "system/proxy/https" = {
      host = "127.0.0.1";
      port = 15777;
    };

    "system/proxy/socks" = {
      host = "127.0.0.1";
      port = 15778;
    };

  };
}
