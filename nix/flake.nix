{
  description = "Embedded system devShell : Raspberry Pi Pico (RP2040)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    basic-nixvim-flake.url = "github:rredha/neovim-basic/nix?dir=nixvim";
    pico-sdk-nixpkgs.url = "github:nixpkgs/932fc16b263f26803d3960e4400bc13dde84a972";
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default =
        pkgs.mkShell
          {
            nativeBuildInputs = with pkgs; [
              inputs.pico-sdk-nixpkgs.legacyPackages.${system}.pico-sdk
              gcc-arm-embedded
              gcc
              cmake
              luarocks
              python3
              fd
              ripgrep
              fzf
            ];
          };
      };

}
