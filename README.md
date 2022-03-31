# M5Stack Example

## Environment

* WSL(Version 1) Ubuntu 20.04
* [**ESP-IDF v3.3.6**](https://docs.espressif.com/projects/esp-idf/en/v3.3.6/get-started/linux-setup.html)

## Process 
### Setup project

```
# Download
git clone https://github.com/renakim/m5stack-azure-example
cd m5stack-azure-example/

# Update submodule
git submodule update --init

# Patch
chmod +x apply_patch.sh
./apply_patch.sh
```

### Setup com port number

```
make menuconfig

# Select menu
Serial flasher config -> Default serial port
```
* /dev/ttyS[N]
  * Enter com port number
  * If using `COM3` -> `/dev/ttyS3`

* Save setting
  * Select \<Yes\> in `Do you wish to save your new configuration?` Pop-up


### Write settings

`main/iot_configs.h`

Refer to [readme file](main/readme.md) in main directory.


## Build and Flash
```
# Build
make -j4

* G0 - GND 연결하여 동작모드 변경

# Flash
make flash

# Monitor
* GND 연결 해제
make monitor
```
