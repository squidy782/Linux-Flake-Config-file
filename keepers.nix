{ pkgs, ... }:
{
  programs.fish.enable = true;
  programs.dconf.enable = true;
  security.polkit.enable = true;
  services.gnome.gnome-keyring.enable = true;
  networking.networkmanager.enable = true;
  hardware.bluetooth.enable = true;
  services.upower.enable = true;
  services.pipewire = { enable = true; alsa.enable = true; pulse.enable = true; wireplumber.enable = true; };
  users.users.cbsquid.extraGroups = [ "networkmanager" "video" ];
  fonts.packages = with pkgs; [ nerd-fonts.jetbrains-mono noto-fonts noto-fonts-color-emoji ];
  environment.systemPackages = with pkgs; [ git wget curl ripgrep jq ];
}
