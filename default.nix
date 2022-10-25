{ stdenv, pandoc, texlive }: stdenv.mkDerivation {
  pname = "listas";
  version = "0.1.0";
  buildInputs = [ texlive.combined.scheme-small ];
  src = ./.;

  installPhase = ''
    mkdir -p $out
    cp build/*.pdf $out
  '';
}
