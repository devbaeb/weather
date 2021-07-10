with import <nixpkgs> {};
stdenv.mkDerivation {
    name = "sveltes";
    buildInputs = [
        nodejs
        git
    ];
    shellHook = ''
        npm install
        npm run dev
    '';
}