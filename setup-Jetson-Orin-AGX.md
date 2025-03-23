# Configuration Notes for Jetson Orin AGX 32GB


## Software Versions
On the Jetson Orin AGX:

```sh
dpkg-query --show nvidia-l4t-core
dpkg-query --show nvidia-jetpack
```
nvidia-l4t-core	36.4.3-20250107174145
nvidia-jetpack	6.2+b77

## Base Install

Host System: Ubuntu Jammy 22.04
1. Installed Host components using SDK Manager
2. Flashed Jetson Linux using SDK Manager (did not nstall Jetson SDK Components or Jetson Platform Services)

3. Cloned config and ran 
```sh
./setup-ubuntu-jammy.bash
```

4. Installed jtop
```sh
sudo pip3 install -U jetson-stats
```

5.Installed SDK components via apt

```sh
sudo apt update
sudo apt install -y nvidia-jetpack
```

## OpenCV 4.10.

```sh
sudo apt install -y libatlas-base-dev
```

## Intel Realsense D435i

Used [prebuilt kernel modules from jetsonhacks](https://github.com/jetsonhacks/jetson-orin-librealsense), enabling modules
- HID_SENSOR_HUB
- HID_SENSOR_ACCEL_3D
- HID_SENSOR_GYRO_3D