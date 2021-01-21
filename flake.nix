{
  description = "A useless flake by berberman";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs, flake-utils }:
    let
      genPkg = f: name: {
        inherit name;
        value = f name;
      };
      pkgDir = ./packages;
      broken = (import ./broken.nix).broken;
      names = with builtins;
        nixpkgs.lib.subtractLists broken (attrNames (readDir pkgDir));
      withContents = f: with builtins; listToAttrs (map (genPkg f) names);
    in with flake-utils.lib;
    {
      overlay = final: prev:
        withContents (name:
          let
            pkg = import (pkgDir + "/${name}");
            override = builtins.intersectAttrs (builtins.functionArgs pkg) {
              pythonPackages = final.python3.pkgs;
            };
          in final.callPackage pkg override);
    }
    // eachSystem (nixpkgs.lib.subtractLists [ "x86_64-darwin" ] defaultSystems)
    (system:
      let
        pkgs = import nixpkgs {
          inherit system;
          overlays = [ self.overlay ];
        };
      in { packages = withContents (name: pkgs.${name}); });

}
