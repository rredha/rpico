{
  description = "Embedded system devShell : Raspberry Pi Pico (RP2040)";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    #basic-nixvim-flake.url = "github:rredha/neovim-basic/nix?dir=nixvim";
    sdk.url = "github:nixos/nixpkgs?ref=nixos-23.05";
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
              inputs.sdk.legacyPackages.${system}.pico-sdk
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
