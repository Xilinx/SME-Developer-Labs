# Build ffmpeg
H=$PWD/XlnxFilter

echo ======================== Replacing allfilters.c=========================
cp $H/sources/ffmpeg/libavfilter/allfilters.c $H/sources/ffmpeg/libavfilter/allfilters.c.old
cp plugin_code/allfilters.c $H/sources/ffmpeg/libavfilter/allfilters.c
echo ======================== Replacing Makefiles===========================
cp $H/sources/ffmpeg/libavfilter/Makefile $H/sources/ffmpeg/libavfilter/Makefile.old
cp plugin_code/Makefile $H/sources/ffmpeg/libavfilter/Makefile

echo ======================== Copying vf_xlnxfilter.c=========================
cp plugin_code/vf_xlnxfilter.c $H/sources/ffmpeg/libavfilter/vf_xlnxfilter.c

echo ======================== Copying Directory xlnxfilter_core========================
rm -rf $H/sources/ffmpeg/libavfilter/xlnxfilter_core
cp -r plugin_code/xlnxfilter_core $H/sources/ffmpeg/libavfilter/.
