# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

let
  mkTuple = lib.hm.gvariant.mkTuple;
  mkInt64 = lib.hm.gvariant.mkInt64;
in

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
      saved-pathbar-path = "/";
      saved-view = "/";
      show-warning = false;
      window-height = 500;
      window-is-maximized = false;
      window-width = 540;
    };

    "com/mattjakeman/ExtensionManager" = {
      last-used-version = "0.4.0";
    };

    "org/blueman/general" = {
      window-properties = [ 982 1074 0 0 ];
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
      apps = [ "org.fcitx.Fcitx5.desktop" "fcitx5-configtool.desktop" "org.fcitx.fcitx5-migrator.desktop" "conky.desktop" "nixos-manual.desktop" "nvim.desktop" "fish.desktop" "xterm.desktop" "ranger.desktop" "org.kde.kwrite.desktop" "nm-connection-editor.desktop" "picom.desktop" "umpv.desktop" "mpv.desktop" "vlc.desktop" "org.pwmt.zathura.desktop" "blueman-manager.desktop" "kbd-layout-viewer5.desktop" "org.gnome.Logs.desktop" ];
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
      icon-theme = "WhiteSur-dark";
      monospace-font-name = "Noto Sans Mono CJK SC 10";
      toolbar-style = "text";
    };

    "org/gnome/desktop/notifications" = {
      application-children = [ "org-kde-dolphin" "gnome-power-panel" "gnome-network-panel" "org-gnome-tweaks" ];
      show-in-lock-screen = false;
    };

    "org/gnome/desktop/notifications/application/gnome-network-panel" = {
      application-id = "gnome-network-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-tweaks" = {
      application-id = "org.gnome.tweaks.desktop";
    };

    "org/gnome/desktop/notifications/application/org-kde-dolphin" = {
      application-id = "org.kde.dolphin.desktop";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      natural-scroll = false;
      tap-to-click = true;
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [ "org.gnome.Contacts.desktop" "org.gnome.Documents.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      button-layout = "icon:minimize,maximize,close";
      titlebar-font = "Noto Sans CJK SC Bold 11";
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      dynamic-workspaces = true;
      edge-tiling = true;
      focus-change-on-pointer-rest = true;
      workspaces-only-on-primary = true;
    };

    "org/gnome/shell" = {
      app-picker-layout = "[{'org.kde.ark.desktop': <{'position': <0>}>, 'cantata.desktop': <{'position': <1>}>, 'org.kde.gwenview.desktop': <{'position': <2>}>, 'org.kde.kate.desktop': <{'position': <3>}>, 'com.nextcloud.desktopclient.nextcloud.desktop': <{'position': <4>}>, 'org.kde.okular.desktop': <{'position': <5>}>, 'code.desktop': <{'position': <6>}>, 'org.kde.ktorrent.desktop': <{'position': <7>}>, 'org.keepassxc.KeePassXC.desktop': <{'position': <8>}>, 'org.telegram.desktop.desktop': <{'position': <9>}>, 'org.gnome.Calendar.desktop': <{'position': <10>}>, 'org.gnome.Software.desktop': <{'position': <11>}>, 'org.gnome.Nautilus.desktop': <{'position': <12>}>, 'gnome-system-monitor.desktop': <{'position': <13>}>, '03ce591a-01dc-4a68-8cce-a1fd8633cc9a': <{'position': <14>}>, 'b7953d8a-9aa5-43fd-ac24-b7228a5df778': <{'position': <15>}>, '6fb03af4-4ef5-49fd-b8e6-9ebb51611ff6': <{'position': <16>}>}]";
      disabled-extensions = [ "windowsNavigator@gnome-shell-extensions.gcampax.github.com" "apps-menu@gnome-shell-extensions.gcampax.github.com" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" "workspace-indicator@gnome-shell-extensions.gcampax.github.com" "window-list@gnome-shell-extensions.gcampax.github.com" ];
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" "bluetooth-quick-connect@bjarosze.gmail.com" "blur-my-shell@aunetx" "caffeine@patapon.info" "command-menu@arunk140.com" "dash-to-dock@micxgx.gmail.com" "gnome-fuzzy-app-search@gnome-shell-extensions.Czarlie.gitlab.com" "just-perfection-desktop@just-perfection" "ProxySwitcher@flannaghan.com" "todo.txt@bart.libert.gmail.com" "user-theme@gnome-shell-extensions.gcampax.github.com" "kimpanel@kde.org" "drive-menu@gnome-shell-extensions.gcampax.github.com" "replaceActivitiesText@pratap.fastmail.fm" ];
      favorite-apps = [ "org.kde.dolphin.desktop" "st.desktop" "org.kde.konsole.desktop" "qq.desktop" "google-chrome.desktop" "zotero-6.0.20.desktop" ];
      welcome-dialog-last-shown-version = "43.2";
    };

    "org/gnome/shell/extensions/TodoTxt" = {
      confirm-delete = true;
      debug-level = 250;
      display-format-string = ''
        {unarchived}
      '';
      donetxt-location = "/home/corona/.local/share/todo.txt/done.txt";
      enable-due-date-extension = true;
      hide-pattern = ''
        {unarchived}
      '';
      keep-open-after-new = true;
      long-tasks-ellipsize-mode = 2;
      long-tasks-max-width = 300;
      order-by-priority = true;
      show-contexts-label = true;
      show-delete-button = true;
      show-done = true;
      show-done-or-archive-button = true;
      show-new-task-entry = true;
      show-number-of-group-elements = true;
      show-open-preferences = true;
      show-projects-label = true;
      show-status-icon = true;
      todotxt-location = "/home/corona/.local/share/todo.txt/todo.txt";
      url-color = 1;
    };

    "org/gnome/shell/extensions/caffeine" = {
      indicator-position-max = 1;
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

    "org/gnome/shell/extensions/replaceActivitiesText" = {
      icon-path = "";
      icon-size = 1.3658536585365852;
      text = "活动";
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "WhiteSur-Dark";
    };

    "org/gnome/shell/world-clocks" = {
      locations = "@av []";
    };

    "org/gnome/software" = {
      check-timestamp = mkInt64 1676335690;
      first-run = false;
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
      window-position = mkTuple [ 168 35 ];
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
