{ config, pkgs, ... }:

{

  environment.systemPackages = with pkgs; [
    wget
    neovim
    git
    
  ];



}
