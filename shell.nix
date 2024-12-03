{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    packages = [ pkgs.pico-sdk
                 pkgs.gcc-arm-embedded
                 pkgs.gcc
                 pkgs.cmake
                 pkgs.luarocks
                 pkgs.python3
                 pkgs.fd
                 pkgs.ripgrep
                ];

    shellHook = ''
      echo "Development environment for raspberry pi pico"
      git clone https://github.com/rredha/rpico.git .
    '';
    PICO_SDK_PATH= "/nix/store/ix5hvl0zj34x32v4navyw0v6lgzvjl6h-pico-sdk-1.5.1/lib/pico-sdk/";
}
