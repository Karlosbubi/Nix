{ config, pkgs, ... }:
{
    programs.hyprland = {
    # Install the packages from nixpkgs
    enable = true;
    # Whether to enable XWayland
    xwayland.enable = true;

    nvidiaPatches = true;
  };

  environment.variables.EDITOR = "nvim";
  environment.variables.TERM = "alacritty";

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    WLR_NO_HARDWARE_CURSORS = "1";
  };

environment.systemPackages = with pkgs; [
  
  #Bar
  (waybar.overrideAttrs (oldAttrs: {
    mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
  })

  # Notifications
  dunst
  libnotify

  # Terminal
  alacritty

  # Launcher
  rofi-wayland

)

xdg.portal.enable = true;
xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];

}