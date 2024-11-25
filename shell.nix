{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    packages = [ pkgs.neovim
                 pkgs.luarocks
                 pkgs.python3
                 pkgs.fd
                 pkgs.ripgrep
                 pkgs.gcc
                 pkgs.cmake
                 pkgs.pico-sdk
                 pkgs.ccls
                 pkgs.lua-language-server
                 pkgs.gcc-arm-embedded
                ];

    shellHook = ''
      cd $(mktemp -d)
      echo "Neovim Raspberry pi pico"
      git clone https://github.com/rredha/rpico.git .
      cp -rv ~/wrk/ject/programming/nix/neovim/gh .config/gh

      ls
      mkdir hello_world
    '';
    PICO_SDK_PATH=/nix/store/ix5hvl0zj34x32v4navyw0v6lgzvjl6h-pico-sdk-1.5.1/lib/pico-sdk/
    XDG_CONFIG_HOME = "./.config";
    XDG_STATE_HOME = "./.local/state";
    XDG_DATA_HOME = "./.local/share";
}
