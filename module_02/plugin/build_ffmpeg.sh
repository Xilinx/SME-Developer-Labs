H=$PWD/XlnxFilter
mkdir -p $H/sources

# Build NASM
echo ======================== BUILDING NASM =========================
cd $H/sources
wget http://www.nasm.us/pub/nasm/releasebuilds/2.13.01/nasm-2.13.01.tar.gz
tar xzvf nasm-2.13.01.tar.gz
cd nasm-2.13.01
./configure --prefix="$H/build" --bindir="$H/bin"
make
make install

# Build YASM
echo ======================== BUILDING YASM =========================
cd $H/sources
wget http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz
tar xzvf yasm-1.3.0.tar.gz
cd yasm-1.3.0
./configure --prefix="$H/build" --bindir="$H/bin"
make
make install  

# Clone ffmpeg
echo ======================== Cloning ffmpeg =========================
cd $H/sources
#rm -rf ffmpeg
git clone https://git.ffmpeg.org/ffmpeg.git ffmpeg -b release/3.3

cd $H
echo ======================== Copying SDAccel Runtime Library =========
cp -r /opt/Xilinx/SDx/2017.1.op/runtime/lib/x86_64 build/lib/
echo ======================== Copying Xilinx OpenCL Library ===========
cp -r /opt/Xilinx/SDx/2017.1.op/runtime/include/1_2/CL build/include/

# Build ffmpeg
echo ======================== BUILDING ffmpeg =========================
cd $H/sources

cd ffmpeg
rm -rf ffmpeg_build

mkdir ffmpeg_build
cd ffmpeg_build

PATH="$H/bin:$PATH" PKG_CONFIG_PATH="$H/build/lib/pkgconfig" ../configure \
  --prefix="$H/build" \
  --pkg-config-flags="--static" \
  --extra-cflags="-I$H/build/include" \
  --extra-ldflags="-L$H/build/lib -L$H/build/lib/x86_64 -ldl" \
  --bindir="$H/bin" \
  --enable-static \
  --enable-gpl \
  --enable-libfreetype \
  --enable-nonfree \
  --enable-opencl \
  --enable-debug 
PATH="$H/bin:$PATH" make -j 4
make install
