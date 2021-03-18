KERNEL=https://github.com/Sleppyiecat/android_kernel_xiaomi_davinci
HW=https://github.com/LineageOS/android_hardware_xiaomi
VENDOR=https://github.com/Gabriel260/proprietary_vendor_xiaomi_davinci
ANX=https://github.com/sarveshrulz/android_vendor_aeonax_ANXCamera

if [ ! -d "kernel/xiaomi/sm6150" ]
then
	git clone $KERNEL kernel/xiaomi/sm6150 --depth=1
fi

if [ ! -d "hardware/xiaomi" ]
then
	git clone $HW hardware/xiaomi --depth=1
fi

if [ ! -d "vendor/xiaomi/davinci" ]
then
	git clone $VENDOR vendor/xiaomi/davinci --depth=1
fi

if [ ! -d "vendor/aeonax/ANXCamera" ]
then
	git clone $ANX vendor/aeonax/ANXCamera --depth=1
fi

if [ -d "hardware/qcom/gps/core" ]
then
	cd hardware/qcom/gps
	rm -rf core
	rm -rf loc_api
	rm -rf utils
	cd -
fi
