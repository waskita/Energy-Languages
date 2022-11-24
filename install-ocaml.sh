add-apt-repository ppa:avsm/ppa
apt update
apt install opam

bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"
opam init
opam install ocaml.4.14.0