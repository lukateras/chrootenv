with import <nixpkgs> {};

stdenv.mkDerivation rec {
  name = "chrootenv";
  src = lib.cleanSource ./.;

  nativeBuildInputs = [ meson ninja pkgconfig ];
  buildInputs = [ glib ];
}
