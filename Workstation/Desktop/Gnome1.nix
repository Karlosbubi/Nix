  { config, pkgs, ... }:

  {
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  environment.variables.EDITOR = "gnome-text-editor";

  # Configure keymap in X11
  services.xserver = {
    layout = "de";
    xkbVariant = "";
  };
  
    environment.systemPackages = with pkgs; [
      # Placeholder
    ];

  }