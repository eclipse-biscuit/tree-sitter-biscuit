{ pkgs ? import <unstable> {} }: with pkgs;

mkShell {
  buildInputs = [
    nodejs
    gcc
    tree-sitter
    rustup
  ];
}
