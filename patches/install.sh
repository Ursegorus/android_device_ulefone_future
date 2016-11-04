echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/av"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	#git am $rootdirectory/device/ulefone/future/patches/$dir/*.patch
	git apply $rootdirectory/device/ulefone/future/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
