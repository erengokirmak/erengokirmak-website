{
  description = "drgokirmak.com dev environment flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in
  {
    devShells.x86_64-linux.default = pkgs.mkShell {
      nativeBuildInputs = with pkgs; [
        hugo
        go       # Used by Hugo in build process
        rsync    # Syncing 'public' with server
        git      # Used to clone hugo-modules
        sshpass  # Used to authenticate for rsync
      ];
    };
  };
}
