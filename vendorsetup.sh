KERNEL=https://github.com/Sleppyiecat/kernel_xiaomi_sm6150
HW=https://github.com/LineageOS/android_hardware_xiaomi
VENDOR=https://github.com/Nezuro-Network/vendor_xiaomi_davinci

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
