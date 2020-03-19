# This file was @generated by cargo2nix 0.8.2.
# It is not intended to be manually edited.

{
  release ? true,
  rootFeatures ? [
    "cargo2nix-ructe-testcase/default"
  ],
  rustPackages,
  buildRustPackages,
  hostPlatform,
  mkRustCrate,
  rustLib,
  lib,
}:
let
  inherit (rustLib) fetchCratesIo fetchCrateLocal fetchCrateGit fetchCrateAlternativeRegistry expandFeatures decideProfile genDrvsByProfile;
  profilesByName = {
  };
  rootFeatures' = expandFeatures rootFeatures;
  overridableMkRustCrate = f:
    let
      drvs = genDrvsByProfile profilesByName ({ profile, profileName }: mkRustCrate ({ inherit release profile; } // (f profileName)));
    in { compileMode ? null, profileName ? decideProfile compileMode release }:
      let drv = drvs.${profileName}; in if compileMode == null then drv else drv.override { inherit compileMode; };
in
{
  cargo2nixVersion = "0.8.2";
  workspace = {
    cargo2nix-ructe-testcase = rustPackages.unknown.cargo2nix-ructe-testcase."0.1.0";
  };
  "registry+https://github.com/rust-lang/crates.io-index".arrayvec."0.4.12" = overridableMkRustCrate (profileName: rec {
    name = "arrayvec";
    version = "0.4.12";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "cd9fd44efafa8690358b7408d253adf110036b88f55672a933f01d616ad9b1b9"; };
    features = builtins.concatLists [
      [ "array-sizes-33-128" ]
      [ "default" ]
      [ "std" ]
    ];
    dependencies = {
      nodrop = rustPackages."registry+https://github.com/rust-lang/crates.io-index".nodrop."0.1.14" { inherit profileName; };
    };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".base64."0.11.0" = overridableMkRustCrate (profileName: rec {
    name = "base64";
    version = "0.11.0";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "b41b7ea54a0c9d92199de89e20e58d49f02f8e699814ef3fdf266f6f748d15c7"; };
    features = builtins.concatLists [
      [ "default" ]
      [ "std" ]
    ];
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".bitflags."1.2.1" = overridableMkRustCrate (profileName: rec {
    name = "bitflags";
    version = "1.2.1";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "cf1de2fe8c75bc145a2f577add951f8134889b4795d47466a54a5c846d691693"; };
    features = builtins.concatLists [
      [ "default" ]
    ];
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".bytecount."0.6.0" = overridableMkRustCrate (profileName: rec {
    name = "bytecount";
    version = "0.6.0";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "b0017894339f586ccb943b01b9555de56770c11cda818e7e3d8bd93f4ed7f46e"; };
  });
  
  "unknown".cargo2nix-ructe-testcase."0.1.0" = overridableMkRustCrate (profileName: rec {
    name = "cargo2nix-ructe-testcase";
    version = "0.1.0";
    registry = "unknown";
    src = fetchCrateLocal ./.;
    buildDependencies = {
      ructe = buildRustPackages."registry+https://github.com/rust-lang/crates.io-index".ructe."0.9.2" { profileName = "__noProfile"; };
    };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".cfg-if."0.1.9" = overridableMkRustCrate (profileName: rec {
    name = "cfg-if";
    version = "0.1.9";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "b486ce3ccf7ffd79fdeb678eac06a9e6c09fc88d33836340becb8fffe87c5e33"; };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".either."1.5.3" = overridableMkRustCrate (profileName: rec {
    name = "either";
    version = "1.5.3";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "bb1f6b1ce1c140482ea30ddd3335fc0024ac7ee112895426e0a629a6c20adfe3"; };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".itertools."0.8.2" = overridableMkRustCrate (profileName: rec {
    name = "itertools";
    version = "0.8.2";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "f56a2d0bc861f9165be4eb3442afd3c236d8a98afd426f65d92324ae1091a484"; };
    features = builtins.concatLists [
      [ "default" ]
      [ "use_std" ]
    ];
    dependencies = {
      either = rustPackages."registry+https://github.com/rust-lang/crates.io-index".either."1.5.3" { inherit profileName; };
    };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".lexical-core."0.6.7" = overridableMkRustCrate (profileName: rec {
    name = "lexical-core";
    version = "0.6.7";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "f86d66d380c9c5a685aaac7a11818bdfa1f733198dfd9ec09c70b762cd12ad6f"; };
    features = builtins.concatLists [
      [ "arrayvec" ]
      [ "correct" ]
      [ "default" ]
      [ "ryu" ]
      [ "static_assertions" ]
      [ "std" ]
      [ "table" ]
    ];
    dependencies = {
      arrayvec = rustPackages."registry+https://github.com/rust-lang/crates.io-index".arrayvec."0.4.12" { inherit profileName; };
      bitflags = rustPackages."registry+https://github.com/rust-lang/crates.io-index".bitflags."1.2.1" { inherit profileName; };
      cfg_if = rustPackages."registry+https://github.com/rust-lang/crates.io-index".cfg-if."0.1.9" { inherit profileName; };
      ryu = rustPackages."registry+https://github.com/rust-lang/crates.io-index".ryu."1.0.3" { inherit profileName; };
      static_assertions = rustPackages."registry+https://github.com/rust-lang/crates.io-index".static_assertions."0.3.4" { inherit profileName; };
    };
    buildDependencies = {
      rustc_version = buildRustPackages."registry+https://github.com/rust-lang/crates.io-index".rustc_version."0.2.3" { profileName = "__noProfile"; };
    };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".md5."0.7.0" = overridableMkRustCrate (profileName: rec {
    name = "md5";
    version = "0.7.0";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "490cc448043f947bae3cbee9c203358d62dbee0db12107a74be5c30ccfd09771"; };
    features = builtins.concatLists [
      [ "default" ]
      [ "std" ]
    ];
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".memchr."2.3.3" = overridableMkRustCrate (profileName: rec {
    name = "memchr";
    version = "2.3.3";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "3728d817d99e5ac407411fa471ff9800a778d88a24685968b36824eaf4bee400"; };
    features = builtins.concatLists [
      [ "std" ]
      [ "use_std" ]
    ];
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".nodrop."0.1.14" = overridableMkRustCrate (profileName: rec {
    name = "nodrop";
    version = "0.1.14";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "72ef4a56884ca558e5ddb05a1d1e7e1bfd9a68d9ed024c21704cc98872dae1bb"; };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".nom."5.1.1" = overridableMkRustCrate (profileName: rec {
    name = "nom";
    version = "5.1.1";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "0b471253da97532da4b61552249c521e01e736071f71c1a4f7ebbfbf0a06aad6"; };
    features = builtins.concatLists [
      [ "alloc" ]
      [ "default" ]
      [ "lexical" ]
      [ "lexical-core" ]
      [ "std" ]
    ];
    dependencies = {
      lexical_core = rustPackages."registry+https://github.com/rust-lang/crates.io-index".lexical-core."0.6.7" { inherit profileName; };
      memchr = rustPackages."registry+https://github.com/rust-lang/crates.io-index".memchr."2.3.3" { inherit profileName; };
    };
    buildDependencies = {
      version_check = buildRustPackages."registry+https://github.com/rust-lang/crates.io-index".version_check."0.9.1" { profileName = "__noProfile"; };
    };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".ructe."0.9.2" = overridableMkRustCrate (profileName: rec {
    name = "ructe";
    version = "0.9.2";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "c85620b8046f88a870d93d90fa56904dec76cc79139bfcc22e71e87f0cd2169f"; };
    dependencies = {
      base64 = rustPackages."registry+https://github.com/rust-lang/crates.io-index".base64."0.11.0" { inherit profileName; };
      bytecount = rustPackages."registry+https://github.com/rust-lang/crates.io-index".bytecount."0.6.0" { inherit profileName; };
      itertools = rustPackages."registry+https://github.com/rust-lang/crates.io-index".itertools."0.8.2" { inherit profileName; };
      md5 = rustPackages."registry+https://github.com/rust-lang/crates.io-index".md5."0.7.0" { inherit profileName; };
      nom = rustPackages."registry+https://github.com/rust-lang/crates.io-index".nom."5.1.1" { inherit profileName; };
    };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".rustc_version."0.2.3" = overridableMkRustCrate (profileName: rec {
    name = "rustc_version";
    version = "0.2.3";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "138e3e0acb6c9fb258b19b67cb8abd63c00679d2851805ea151465464fe9030a"; };
    dependencies = {
      semver = rustPackages."registry+https://github.com/rust-lang/crates.io-index".semver."0.9.0" { inherit profileName; };
    };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".ryu."1.0.3" = overridableMkRustCrate (profileName: rec {
    name = "ryu";
    version = "1.0.3";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "535622e6be132bccd223f4bb2b8ac8d53cda3c7a6394944d3b2b33fb974f9d76"; };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".semver."0.9.0" = overridableMkRustCrate (profileName: rec {
    name = "semver";
    version = "0.9.0";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "1d7eb9ef2c18661902cc47e535f9bc51b78acd254da71d375c2f6720d9a40403"; };
    features = builtins.concatLists [
      [ "default" ]
    ];
    dependencies = {
      semver_parser = rustPackages."registry+https://github.com/rust-lang/crates.io-index".semver-parser."0.7.0" { inherit profileName; };
    };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".semver-parser."0.7.0" = overridableMkRustCrate (profileName: rec {
    name = "semver-parser";
    version = "0.7.0";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "388a1df253eca08550bef6c72392cfe7c30914bf41df5269b68cbd6ff8f570a3"; };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".static_assertions."0.3.4" = overridableMkRustCrate (profileName: rec {
    name = "static_assertions";
    version = "0.3.4";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "7f3eb36b47e512f8f1c9e3d10c2c1965bc992bd9cdb024fa581e2194501c83d3"; };
  });
  
  "registry+https://github.com/rust-lang/crates.io-index".version_check."0.9.1" = overridableMkRustCrate (profileName: rec {
    name = "version_check";
    version = "0.9.1";
    registry = "registry+https://github.com/rust-lang/crates.io-index";
    src = fetchCratesIo { inherit name version; sha256 = "078775d0255232fb988e6fccf26ddc9d1ac274299aaedcedce21c6f72cc533ce"; };
  });
  
}
