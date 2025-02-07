{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.git
    pkgs.python3
    pkgs.pre-commit
    pkgs.weidu
  ];
}
