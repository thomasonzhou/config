# Configuration Notes for Jetson Orin AGX 32GB

## L4T Kernel Version

```sh
dpkg -l | grep 'nvidia-l4t-core'
```

ii  nvidia-l4t-core                                   36.4.3-20250107174145                       arm64        NVIDIA Core Package

## Base Install

Host System: Ubuntu Jammy 22.04
1. Installed Host components using SDK Manager
2. Flashed Jetson Linux using SDK Manager

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
sudo apt install nvidia-jetpack
```

## Intel Realsense D435i

Used [prebuilt kernel modules from jetsonhacks](https://github.com/jetsonhacks/jetson-orin-librealsense), enabling modules
- HID_SENSOR_HUB
- HID_SENSOR_ACCEL_3D
- HID_SENSOR_GYRO_3D