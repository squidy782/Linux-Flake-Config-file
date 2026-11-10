{ pkgs, inputs, ... }:
let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
in
{
  programs.spicetify = {
    enable = true;
    theme = spicePkgs.themes.dribbblish;
    colorScheme = "custom";
    customColorScheme = {
      text = "fbf1c7";
      subtext = "d5c4a1";
      sidebar-text = "ebe1b7";
      main = "292828";
      sidebar = "3c3836";
      player = "292828";
      card = "3c3836";
      shadow = "202020";
      selected-row = "d5c4a1";
      button = "fb4934";
      button-active = "cc241d";
      button-disabled = "bdae93";
      tab-active = "fb4934";
      notification = "8ec07c";
      notification-error = "d79921";
      misc = "BFBFBF";
    };
    enabledCustomApps = with spicePkgs.apps; [
      marketplace
    ];
  };
}
