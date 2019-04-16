REM Modify this port number first !!!

set PORT=COM5

windows\esptool.exe --chip esp32 --port %PORT% --baud 1500000 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 80m --flash_size detect 0xe000 boot_app0.bin 0x1000 bootloader_dio_80m.bin 0x10000 StickWatch2.ino.bin 0x8000 StickWatch2.ino.partitions.bin