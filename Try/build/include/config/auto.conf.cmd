deps_config := \
	/home/m0rt/esp/esp-idf/components/app_trace/Kconfig \
	/home/m0rt/esp/esp-idf/components/aws_iot/Kconfig \
	/home/m0rt/esp/esp-idf/components/bt/Kconfig \
	/home/m0rt/esp/esp-idf/components/esp32/Kconfig \
	/home/m0rt/esp/esp-idf/components/ethernet/Kconfig \
	/home/m0rt/esp/esp-idf/components/fatfs/Kconfig \
	/home/m0rt/esp/esp-idf/components/freertos/Kconfig \
	/home/m0rt/esp/esp-idf/components/log/Kconfig \
	/home/m0rt/esp/esp-idf/components/lwip/Kconfig \
	/home/m0rt/esp/esp-idf/components/mbedtls/Kconfig \
	/home/m0rt/esp/esp-idf/components/openssl/Kconfig \
	/home/m0rt/esp/esp-idf/components/spi_flash/Kconfig \
	/home/m0rt/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/m0rt/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/m0rt/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/m0rt/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/m0rt/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
