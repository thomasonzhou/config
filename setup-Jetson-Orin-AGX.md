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

## OpenCV 4.10.0 with CUDA

Instructions from [jetsonhacks](https://www.youtube.com/watch?v=u0YXzRFXBWM)

To see the CUDA version:
```sh
/usr/local/cuda/bin/nvcc --version
```
Cuda compilation tools, release 12.6, V12.6.68
Build cuda_12.6.r12.6/compiler.34714021_0

Using cu126 directory for CUDA 12.6:
```sh
cd ~/Downloads
wget https://pypi.jetson-ai-lab.dev/jp6/cu126/opencv-contrib-python/4.10.0.86
wget https://pypi.jetson-ai-lab.dev/jp6/cu126/opencv-python/4.10.0
pip3 install opencv_contrib_python-4.10.0.86-cp310-cp310-linux_aarch64.whl
pip3 install opencv_python-4.10.0-py3-none-any.whl 
sudo apt install -y libhdf5-dev libtesseract-dev libatlas-base-dev
echo "export PIP_INDEX_URL=https://pypi.jetson-ai-lab.dev/jp6/cu126" >> ~/.bashrc
```

## Intel Realsense D435i

Used [prebuilt kernel modules from jetsonhacks](https://github.com/jetsonhacks/jetson-orin-librealsense), enabling modules
- HID_SENSOR_HUB
- HID_SENSOR_ACCEL_3D
- HID_SENSOR_GYRO_3D