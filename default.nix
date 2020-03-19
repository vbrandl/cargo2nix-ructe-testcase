{ sources ? import ./nix/sources.nix
, system ? builtins.currentSystem
}:

let
  rustOverlay = import "${sources.nixpkgs-mozilla}/rust-overlay.nix";
  cargo2nixOverlay = import "${sources.cargo2nix}/overlay";

  pkgs = import sources.nixpkgs {
    inherit system;
    overlays = [ cargo2nixOverlay rustOverlay ];
  };

  rustPkgs = pkgs.rustBuilder.makePackageSet' {
    rustChannel = "stable";
    packageFun = import ./Cargo.nix;
  };
in
  rustPkgs.workspace.cargo2nix-ructe-testcase {}
