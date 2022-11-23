apt install gcc g++ m4 perl python3 python3-pip python3-venv python3-dev bash make mawk git pkg-config cmake llvm-11-dev llvm-11 llvm-11-tools clang-11 libclang-11-dev libedit-dev
cd ~
wget https://github.com/chapel-lang/chapel/releases/download/1.28.0/chapel-1.28.0.tar.gz
tar -xzf chapel-1.28.0.tar.gz
cd chapel-1.28.0
./configure
source ~/chapel-1.28.0/util/quickstart/setchplenv.bash 
export CHPL_REGEXP=bundled
export CHPL_RE2=bundled 
export CHPL_GMP=system
make clean
make
make install

