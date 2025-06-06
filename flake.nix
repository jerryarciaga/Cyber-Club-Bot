{
  description = "Nix flake for Discord Bot for Cybersecurity Club";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs } @ inputs:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        python3
        poetry
      ];

      shellHook = ''
        export PS1="<Cyber-Club-Bot>\n[\w] > "
      '';
    };
  };
}
