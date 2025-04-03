# GR00T N1 Fine Tuning on DGX

```sh
apt install -y ffmpeg libsm6 libxext6
```

## Container creation with pyxis
```sh
srun --nodes 1 --ntasks 1 --gpus 4 \
 --time 24:00:00 \
 --container-remap-root \
 --no-container-mount-home \
 --container-workdir=/root \
 --container-mounts=/mnt/syno128/volume2/$(whoami):/root,/mnt/syno128/volume1/$(whoami):/alt_root \
 --container-image=kdm00:9443#proxy_nvcr/nvidia/pytorch:24.05-py3 \
 --container-save=/mnt/syno128/volume2/$(whoami)/cuda.sqsh \
 --pty bash
 ```

 [Ubuntu 22.04 with CUDA 12.4.1](https://docs.nvidia.com/deeplearning/frameworks/pytorch-release-notes/rel-24-05.html)


## Container relaunching
```sh
srun --nodes 1 --ntasks 1 --gpus 4 \
 --time 48:00:00 \
 --container-remap-root \
 --no-container-mount-home \
 --container-workdir=/root \
 --container-mounts=/mnt/syno128/volume2/$(whoami):/root,/mnt/syno128/volume1/$(whoami):/alt_root \
 --container-image=/mnt/syno128/volume2/$(whoami)/cuda.sqsh \
 --container-save=/mnt/syno128/volume2/$(whoami)/cuda.sqsh \
 --pty bash
 ```
