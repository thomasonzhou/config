# Configuration Notes for M5-Core

## Cannot write to device

```sh
sudo adduser $USER dialout
sudo chmod a+rw /dev/ttyACM0
```

## Using Cybergear motors

### Board manager
esp32 2.0.15 (Newer versions have breaking changes)
M5Stack

### Libraries
arduino-CAN
esp32_can
can_common
MCP_CAN_LIB
cybergear_m5

### Dependencies
```sh
sudo apt install -y python3-serial
```
