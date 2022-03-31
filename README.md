# M5Stack Example

## 개발 환경

* WSL Ubuntu 환경에서 테스트
* **ESP-IDF v3.3.6**

## Process 
### Clone
```
git clone https://github.com/renakim/m5stack-azure-app
cd m5stack-azure-app/
```

### 서브모듈 업데이트
```
git submodule update --init
```

### Patch 
```
chmod +x apply_patch.sh
./apply_patch.sh
```


### Port 설정

```
make menuconfig
```

### Build and Flash
```
make -j4

* G0 - GND 연결하여 동작모드 변경

make flash
```

### Monitor
```
* GND 연결 해제
make monitor
```
