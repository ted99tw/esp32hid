deps_config := \
	/Users/liented/Desktop/esp/esp-idf/components/I2Cbus/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/app_trace/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/aws_iot/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/bt/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/driver/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/efuse/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/esp32/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/esp_event/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/esp_http_client/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/esp_http_server/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/esp_https_ota/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/espcoredump/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/ethernet/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/fatfs/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/freemodbus/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/freertos/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/heap/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/libsodium/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/log/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/lwip/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/mbedtls/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/mdns/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/mqtt/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/nvs_flash/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/openssl/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/pthread/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/spi_flash/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/spiffs/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/unity/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/vfs/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/wear_levelling/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/wifi_provisioning/Kconfig \
	/Users/liented/Desktop/esp/esp-idf/components/I2Cbus/Kconfig.projbuild \
	/Users/liented/Desktop/esp/esp-idf/components/app_update/Kconfig.projbuild \
	/Users/liented/Desktop/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/Users/liented/Desktop/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/Users/liented/Desktop/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/Users/liented/Desktop/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_TARGET)" "esp32"
include/config/auto.conf: FORCE
endif
ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
