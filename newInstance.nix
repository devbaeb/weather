with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "sveltes";
    buildInputs = [
        nodejs
        git
    ];
    shellHook = ''
        git clone "https://github.com/devbaeb/weather.git"
        cd ./weather
        npm install
        npm run dev
    '';
}