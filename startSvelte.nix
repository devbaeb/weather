with import <nixpkgs> {};
stdenv.mkDerivation {
    name = "sveltes";
    buildInputs = [
        nodejs
        git
    ];
    shellHook = ''
        npm run dev
    '';
}