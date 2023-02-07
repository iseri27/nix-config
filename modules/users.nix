{ config, pkgs, ... }:
{
    users.users.root.initialHashedPassword = "$6$i2v4NG/EXlnxB8EL$UUNO0x6t0LZMuygh7TjeOgYO1rzkofwO8sZInY0vCXvxmewgubjHBTsWUuwbxOnbH904YV896Afekm/Q42aJy0";
    users.users.corona = {
        initialHashedPassword = "$6$i2v4NG/EXlnxB8EL$UUNO0x6t0LZMuygh7TjeOgYO1rzkofwO8sZInY0vCXvxmewgubjHBTsWUuwbxOnbH904YV896Afekm/Q42aJy0";
        isNormalUser = true;
        home = "/home/corona";
        extraGroups = [ "wheel" "video" ];
    };
}
