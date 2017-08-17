deps_config := \
	/home/mort/esp/esp-idf/components/app_trace/Kconfig \
	/home/mort/esp/esp-idf/components/aws_iot/Kconfig \
	/home/mort/esp/esp-idf/components/bt/Kconfig \
	/home/mort/esp/esp-idf/components/esp32/Kconfig \
	/home/mort/esp/esp-idf/components/ethernet/Kconfig \
	/home/mort/esp/esp-idf/components/fatfs/Kconfig \
	/home/mort/esp/esp-idf/components/freertos/Kconfig \
	/home/mort/esp/esp-idf/components/log/Kconfig \
	/home/mort/esp/esp-idf/components/lwip/Kconfig \
	/home/mort/esp/esp-idf/components/mbedtls/Kconfig \
	/home/mort/esp/esp-idf/components/openssl/Kconfig \
	/home/mort/esp/esp-idf/components/spi_flash/Kconfig \
	/home/mort/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/mort/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/mort/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/mort/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/mort/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
