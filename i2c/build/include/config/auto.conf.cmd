deps_config := \
	/home/vc/esp/esp-idf/components/app_trace/Kconfig \
	/home/vc/esp/esp-idf/components/aws_iot/Kconfig \
	/home/vc/esp/esp-idf/components/bt/Kconfig \
	/home/vc/esp/esp-idf/components/esp32/Kconfig \
	/home/vc/esp/esp-idf/components/ethernet/Kconfig \
	/home/vc/esp/esp-idf/components/fatfs/Kconfig \
	/home/vc/esp/esp-idf/components/freertos/Kconfig \
	/home/vc/esp/esp-idf/components/log/Kconfig \
	/home/vc/esp/esp-idf/components/lwip/Kconfig \
	/home/vc/esp/esp-idf/components/mbedtls/Kconfig \
	/home/vc/esp/esp-idf/components/openssl/Kconfig \
	/home/vc/esp/esp-idf/components/spi_flash/Kconfig \
	/home/vc/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/vc/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/vc/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/vc/eclipse-workspace/i2c/main/Kconfig.projbuild \
	/home/vc/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
