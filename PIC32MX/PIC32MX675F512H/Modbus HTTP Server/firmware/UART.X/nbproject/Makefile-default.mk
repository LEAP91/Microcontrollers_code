#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/UART.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/UART.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/crypto/src/crypto.c ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_smsc8720.c ../src/config/default/driver/memory/src/drv_memory.c ../src/config/default/driver/memory/src/drv_memory_file_system.c ../src/config/default/driver/memory/src/drv_memory_nvm.c ../src/config/default/driver/miim/src/dynamic/drv_miim.c ../src/config/default/library/tcpip/src/helpers.c ../src/config/default/library/tcpip/src/common/sys_fs_shell.c ../src/config/default/library/tcpip/src/icmp.c ../src/config/default/library/tcpip/src/tcp.c ../src/config/default/library/tcpip/src/arp.c ../src/config/default/library/tcpip/src/ipv4.c ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c ../src/config/default/library/tcpip/src/tcpip_heap_internal.c ../src/config/default/library/tcpip/src/dhcp.c ../src/config/default/library/tcpip/src/dns.c ../src/config/default/library/tcpip/src/hash_fnv.c ../src/config/default/library/tcpip/src/oahash.c ../src/config/default/library/tcpip/src/tcpip_helpers.c ../src/config/default/library/tcpip/src/tcpip_helper_c32.S ../src/config/default/library/tcpip/src/tcpip_manager.c ../src/config/default/library/tcpip/src/tcpip_notify.c ../src/config/default/library/tcpip/src/tcpip_packet.c ../src/config/default/library/tcpip/src/udp.c ../src/config/default/library/tcpip/src/http_net.c ../src/config/default/library/tcpip/src/nbns.c ../src/config/default/net_pres/pres/src/net_pres.c ../src/config/default/net_pres/pres/net_pres_enc_glue.c ../src/config/default/net_pres/pres/net_pres_cert_store.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/nvm/plib_nvm.c ../src/config/default/peripheral/spi/spi_master/plib_spi4_master.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/fs/mpfs/mpfs.c ../src/config/default/system/fs/src/sys_fs.c ../src/config/default/system/fs/src/sys_fs_media_manager.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/system/sys_time_h2_adapter.c ../src/config/default/system/sys_random_h2_adapter.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/tasks.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c ../src/main.c ../src/app.c ../src/mpfs_net_img.c ../src/custom_http_net_app.c ../src/http_net_print.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c ../src/isoface_drivers.c ../src/config/default/peripheral/spi/spi_master/plib_spi2_master.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1645245335/crypto.o ${OBJECTDIR}/_ext/732082881/drv_ethmac.o ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o ${OBJECTDIR}/_ext/444070925/drv_ethphy.o ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o ${OBJECTDIR}/_ext/992804092/drv_memory.o ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o ${OBJECTDIR}/_ext/438849557/drv_miim.o ${OBJECTDIR}/_ext/1033058136/helpers.o ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o ${OBJECTDIR}/_ext/1033058136/icmp.o ${OBJECTDIR}/_ext/1033058136/tcp.o ${OBJECTDIR}/_ext/1033058136/arp.o ${OBJECTDIR}/_ext/1033058136/ipv4.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1033058136/dhcp.o ${OBJECTDIR}/_ext/1033058136/dns.o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ${OBJECTDIR}/_ext/1033058136/oahash.o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ${OBJECTDIR}/_ext/1033058136/udp.o ${OBJECTDIR}/_ext/1033058136/http_net.o ${OBJECTDIR}/_ext/1033058136/nbns.o ${OBJECTDIR}/_ext/1508031553/net_pres.o ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ${OBJECTDIR}/_ext/298189674/plib_spi4_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/699575981/mpfs.o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ${OBJECTDIR}/_ext/1664057780/arc4.o ${OBJECTDIR}/_ext/1664057780/asm.o ${OBJECTDIR}/_ext/1664057780/asn.o ${OBJECTDIR}/_ext/1664057780/blake2b.o ${OBJECTDIR}/_ext/1664057780/blake2s.o ${OBJECTDIR}/_ext/1664057780/camellia.o ${OBJECTDIR}/_ext/1664057780/chacha.o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ${OBJECTDIR}/_ext/1664057780/cmac.o ${OBJECTDIR}/_ext/1664057780/coding.o ${OBJECTDIR}/_ext/1664057780/compress.o ${OBJECTDIR}/_ext/1664057780/cpuid.o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ${OBJECTDIR}/_ext/1664057780/curve25519.o ${OBJECTDIR}/_ext/1664057780/curve448.o ${OBJECTDIR}/_ext/1664057780/dh.o ${OBJECTDIR}/_ext/1664057780/dsa.o ${OBJECTDIR}/_ext/1664057780/ecc.o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ${OBJECTDIR}/_ext/1664057780/ed25519.o ${OBJECTDIR}/_ext/1664057780/ed448.o ${OBJECTDIR}/_ext/1664057780/error.o ${OBJECTDIR}/_ext/1664057780/fe_448.o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ${OBJECTDIR}/_ext/1664057780/ge_448.o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ${OBJECTDIR}/_ext/1664057780/hash.o ${OBJECTDIR}/_ext/1664057780/hc128.o ${OBJECTDIR}/_ext/1664057780/hmac.o ${OBJECTDIR}/_ext/1664057780/idea.o ${OBJECTDIR}/_ext/1664057780/integer.o ${OBJECTDIR}/_ext/1664057780/logging.o ${OBJECTDIR}/_ext/1664057780/md2.o ${OBJECTDIR}/_ext/1664057780/md4.o ${OBJECTDIR}/_ext/1664057780/md5.o ${OBJECTDIR}/_ext/1664057780/memory.o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ${OBJECTDIR}/_ext/1664057780/poly1305.o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ${OBJECTDIR}/_ext/1664057780/rabbit.o ${OBJECTDIR}/_ext/1664057780/rc2.o ${OBJECTDIR}/_ext/1664057780/ripemd.o ${OBJECTDIR}/_ext/1664057780/rsa.o ${OBJECTDIR}/_ext/1664057780/sha3.o ${OBJECTDIR}/_ext/1664057780/signature.o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ${OBJECTDIR}/_ext/1664057780/sp_int.o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ${OBJECTDIR}/_ext/1664057780/srp.o ${OBJECTDIR}/_ext/1664057780/tfm.o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ${OBJECTDIR}/_ext/1664057780/wc_port.o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ${OBJECTDIR}/_ext/1664057780/aes.o ${OBJECTDIR}/_ext/1664057780/des3.o ${OBJECTDIR}/_ext/1664057780/random.o ${OBJECTDIR}/_ext/1664057780/sha.o ${OBJECTDIR}/_ext/1664057780/sha256.o ${OBJECTDIR}/_ext/1664057780/sha512.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o ${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o ${OBJECTDIR}/_ext/1360937237/http_net_print.o ${OBJECTDIR}/_ext/1664057780/misc.o ${OBJECTDIR}/_ext/1664057780/evp.o ${OBJECTDIR}/_ext/1360937237/isoface_drivers.o ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1645245335/crypto.o.d ${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d ${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o.d ${OBJECTDIR}/_ext/992804092/drv_memory.o.d ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o.d ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o.d ${OBJECTDIR}/_ext/438849557/drv_miim.o.d ${OBJECTDIR}/_ext/1033058136/helpers.o.d ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o.d ${OBJECTDIR}/_ext/1033058136/icmp.o.d ${OBJECTDIR}/_ext/1033058136/tcp.o.d ${OBJECTDIR}/_ext/1033058136/arp.o.d ${OBJECTDIR}/_ext/1033058136/ipv4.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d ${OBJECTDIR}/_ext/1033058136/dhcp.o.d ${OBJECTDIR}/_ext/1033058136/dns.o.d ${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d ${OBJECTDIR}/_ext/1033058136/oahash.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d ${OBJECTDIR}/_ext/1033058136/udp.o.d ${OBJECTDIR}/_ext/1033058136/http_net.o.d ${OBJECTDIR}/_ext/1033058136/nbns.o.d ${OBJECTDIR}/_ext/1508031553/net_pres.o.d ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d ${OBJECTDIR}/_ext/298189674/plib_spi4_master.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1832805299/sys_console.o.d ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d ${OBJECTDIR}/_ext/944882569/sys_debug.o.d ${OBJECTDIR}/_ext/699575981/mpfs.o.d ${OBJECTDIR}/_ext/1269487135/sys_fs.o.d ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d ${OBJECTDIR}/_ext/1664057780/arc4.o.d ${OBJECTDIR}/_ext/1664057780/asm.o.d ${OBJECTDIR}/_ext/1664057780/asn.o.d ${OBJECTDIR}/_ext/1664057780/blake2b.o.d ${OBJECTDIR}/_ext/1664057780/blake2s.o.d ${OBJECTDIR}/_ext/1664057780/camellia.o.d ${OBJECTDIR}/_ext/1664057780/chacha.o.d ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d ${OBJECTDIR}/_ext/1664057780/cmac.o.d ${OBJECTDIR}/_ext/1664057780/coding.o.d ${OBJECTDIR}/_ext/1664057780/compress.o.d ${OBJECTDIR}/_ext/1664057780/cpuid.o.d ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d ${OBJECTDIR}/_ext/1664057780/curve25519.o.d ${OBJECTDIR}/_ext/1664057780/curve448.o.d ${OBJECTDIR}/_ext/1664057780/dh.o.d ${OBJECTDIR}/_ext/1664057780/dsa.o.d ${OBJECTDIR}/_ext/1664057780/ecc.o.d ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d ${OBJECTDIR}/_ext/1664057780/ed25519.o.d ${OBJECTDIR}/_ext/1664057780/ed448.o.d ${OBJECTDIR}/_ext/1664057780/error.o.d ${OBJECTDIR}/_ext/1664057780/fe_448.o.d ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d ${OBJECTDIR}/_ext/1664057780/ge_448.o.d ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d ${OBJECTDIR}/_ext/1664057780/hash.o.d ${OBJECTDIR}/_ext/1664057780/hc128.o.d ${OBJECTDIR}/_ext/1664057780/hmac.o.d ${OBJECTDIR}/_ext/1664057780/idea.o.d ${OBJECTDIR}/_ext/1664057780/integer.o.d ${OBJECTDIR}/_ext/1664057780/logging.o.d ${OBJECTDIR}/_ext/1664057780/md2.o.d ${OBJECTDIR}/_ext/1664057780/md4.o.d ${OBJECTDIR}/_ext/1664057780/md5.o.d ${OBJECTDIR}/_ext/1664057780/memory.o.d ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d ${OBJECTDIR}/_ext/1664057780/poly1305.o.d ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d ${OBJECTDIR}/_ext/1664057780/rabbit.o.d ${OBJECTDIR}/_ext/1664057780/rc2.o.d ${OBJECTDIR}/_ext/1664057780/ripemd.o.d ${OBJECTDIR}/_ext/1664057780/rsa.o.d ${OBJECTDIR}/_ext/1664057780/sha3.o.d ${OBJECTDIR}/_ext/1664057780/signature.o.d ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d ${OBJECTDIR}/_ext/1664057780/sp_int.o.d ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d ${OBJECTDIR}/_ext/1664057780/srp.o.d ${OBJECTDIR}/_ext/1664057780/tfm.o.d ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d ${OBJECTDIR}/_ext/1664057780/wc_port.o.d ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d ${OBJECTDIR}/_ext/1664057780/aes.o.d ${OBJECTDIR}/_ext/1664057780/des3.o.d ${OBJECTDIR}/_ext/1664057780/random.o.d ${OBJECTDIR}/_ext/1664057780/sha.o.d ${OBJECTDIR}/_ext/1664057780/sha256.o.d ${OBJECTDIR}/_ext/1664057780/sha512.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o.d ${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o.d ${OBJECTDIR}/_ext/1360937237/http_net_print.o.d ${OBJECTDIR}/_ext/1664057780/misc.o.d ${OBJECTDIR}/_ext/1664057780/evp.o.d ${OBJECTDIR}/_ext/1360937237/isoface_drivers.o.d ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1645245335/crypto.o ${OBJECTDIR}/_ext/732082881/drv_ethmac.o ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o ${OBJECTDIR}/_ext/444070925/drv_ethphy.o ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o ${OBJECTDIR}/_ext/992804092/drv_memory.o ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o ${OBJECTDIR}/_ext/438849557/drv_miim.o ${OBJECTDIR}/_ext/1033058136/helpers.o ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o ${OBJECTDIR}/_ext/1033058136/icmp.o ${OBJECTDIR}/_ext/1033058136/tcp.o ${OBJECTDIR}/_ext/1033058136/arp.o ${OBJECTDIR}/_ext/1033058136/ipv4.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o ${OBJECTDIR}/_ext/1033058136/dhcp.o ${OBJECTDIR}/_ext/1033058136/dns.o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ${OBJECTDIR}/_ext/1033058136/oahash.o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ${OBJECTDIR}/_ext/1033058136/udp.o ${OBJECTDIR}/_ext/1033058136/http_net.o ${OBJECTDIR}/_ext/1033058136/nbns.o ${OBJECTDIR}/_ext/1508031553/net_pres.o ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ${OBJECTDIR}/_ext/298189674/plib_spi4_master.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/699575981/mpfs.o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ${OBJECTDIR}/_ext/1664057780/arc4.o ${OBJECTDIR}/_ext/1664057780/asm.o ${OBJECTDIR}/_ext/1664057780/asn.o ${OBJECTDIR}/_ext/1664057780/blake2b.o ${OBJECTDIR}/_ext/1664057780/blake2s.o ${OBJECTDIR}/_ext/1664057780/camellia.o ${OBJECTDIR}/_ext/1664057780/chacha.o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ${OBJECTDIR}/_ext/1664057780/cmac.o ${OBJECTDIR}/_ext/1664057780/coding.o ${OBJECTDIR}/_ext/1664057780/compress.o ${OBJECTDIR}/_ext/1664057780/cpuid.o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ${OBJECTDIR}/_ext/1664057780/curve25519.o ${OBJECTDIR}/_ext/1664057780/curve448.o ${OBJECTDIR}/_ext/1664057780/dh.o ${OBJECTDIR}/_ext/1664057780/dsa.o ${OBJECTDIR}/_ext/1664057780/ecc.o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ${OBJECTDIR}/_ext/1664057780/ed25519.o ${OBJECTDIR}/_ext/1664057780/ed448.o ${OBJECTDIR}/_ext/1664057780/error.o ${OBJECTDIR}/_ext/1664057780/fe_448.o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ${OBJECTDIR}/_ext/1664057780/ge_448.o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ${OBJECTDIR}/_ext/1664057780/hash.o ${OBJECTDIR}/_ext/1664057780/hc128.o ${OBJECTDIR}/_ext/1664057780/hmac.o ${OBJECTDIR}/_ext/1664057780/idea.o ${OBJECTDIR}/_ext/1664057780/integer.o ${OBJECTDIR}/_ext/1664057780/logging.o ${OBJECTDIR}/_ext/1664057780/md2.o ${OBJECTDIR}/_ext/1664057780/md4.o ${OBJECTDIR}/_ext/1664057780/md5.o ${OBJECTDIR}/_ext/1664057780/memory.o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ${OBJECTDIR}/_ext/1664057780/poly1305.o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ${OBJECTDIR}/_ext/1664057780/rabbit.o ${OBJECTDIR}/_ext/1664057780/rc2.o ${OBJECTDIR}/_ext/1664057780/ripemd.o ${OBJECTDIR}/_ext/1664057780/rsa.o ${OBJECTDIR}/_ext/1664057780/sha3.o ${OBJECTDIR}/_ext/1664057780/signature.o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ${OBJECTDIR}/_ext/1664057780/sp_int.o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ${OBJECTDIR}/_ext/1664057780/srp.o ${OBJECTDIR}/_ext/1664057780/tfm.o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ${OBJECTDIR}/_ext/1664057780/wc_port.o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ${OBJECTDIR}/_ext/1664057780/aes.o ${OBJECTDIR}/_ext/1664057780/des3.o ${OBJECTDIR}/_ext/1664057780/random.o ${OBJECTDIR}/_ext/1664057780/sha.o ${OBJECTDIR}/_ext/1664057780/sha256.o ${OBJECTDIR}/_ext/1664057780/sha512.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o ${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o ${OBJECTDIR}/_ext/1360937237/http_net_print.o ${OBJECTDIR}/_ext/1664057780/misc.o ${OBJECTDIR}/_ext/1664057780/evp.o ${OBJECTDIR}/_ext/1360937237/isoface_drivers.o ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o

# Source Files
SOURCEFILES=../src/config/default/crypto/src/crypto.c ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_smsc8720.c ../src/config/default/driver/memory/src/drv_memory.c ../src/config/default/driver/memory/src/drv_memory_file_system.c ../src/config/default/driver/memory/src/drv_memory_nvm.c ../src/config/default/driver/miim/src/dynamic/drv_miim.c ../src/config/default/library/tcpip/src/helpers.c ../src/config/default/library/tcpip/src/common/sys_fs_shell.c ../src/config/default/library/tcpip/src/icmp.c ../src/config/default/library/tcpip/src/tcp.c ../src/config/default/library/tcpip/src/arp.c ../src/config/default/library/tcpip/src/ipv4.c ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c ../src/config/default/library/tcpip/src/tcpip_heap_internal.c ../src/config/default/library/tcpip/src/dhcp.c ../src/config/default/library/tcpip/src/dns.c ../src/config/default/library/tcpip/src/hash_fnv.c ../src/config/default/library/tcpip/src/oahash.c ../src/config/default/library/tcpip/src/tcpip_helpers.c ../src/config/default/library/tcpip/src/tcpip_helper_c32.S ../src/config/default/library/tcpip/src/tcpip_manager.c ../src/config/default/library/tcpip/src/tcpip_notify.c ../src/config/default/library/tcpip/src/tcpip_packet.c ../src/config/default/library/tcpip/src/udp.c ../src/config/default/library/tcpip/src/http_net.c ../src/config/default/library/tcpip/src/nbns.c ../src/config/default/net_pres/pres/src/net_pres.c ../src/config/default/net_pres/pres/net_pres_enc_glue.c ../src/config/default/net_pres/pres/net_pres_cert_store.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/nvm/plib_nvm.c ../src/config/default/peripheral/spi/spi_master/plib_spi4_master.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/debug/src/sys_debug.c ../src/config/default/system/fs/mpfs/mpfs.c ../src/config/default/system/fs/src/sys_fs.c ../src/config/default/system/fs/src/sys_fs_media_manager.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/system/sys_time_h2_adapter.c ../src/config/default/system/sys_random_h2_adapter.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/tasks.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c ../src/main.c ../src/app.c ../src/mpfs_net_img.c ../src/custom_http_net_app.c ../src/http_net_print.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c ../src/isoface_drivers.c ../src/config/default/peripheral/spi/spi_master/plib_spi2_master.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/UART.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX675F512H
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MX675F512H.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o: ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  .generated_files/bbd551f38782323a78b64f99e75a908737cb4a72.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o: ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  .generated_files/8a8c9a5c502bc27d167299791f67c8d7bdda8e74.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1645245335/crypto.o: ../src/config/default/crypto/src/crypto.c  .generated_files/6af8d5ba398ce850c0530a6490c9a5a33052b798.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1645245335" 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1645245335/crypto.o.d" -o ${OBJECTDIR}/_ext/1645245335/crypto.o ../src/config/default/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_ethmac.o: ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/82c91ebb4b9b0aea5985d4c0b466cecfdefdd060.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_ethmac.o ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o: ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/f22a78e0d9104b7ea0da8a338b08c133c6374a5b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o: ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c  .generated_files/5aa70019c1876dbedb318a5a1546034403745f58.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/444070925/drv_ethphy.o: ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/80f09761b7135d9f15b2c90ad3e3ddecea513b26.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/444070925" 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/444070925/drv_ethphy.o ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o: ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_smsc8720.c  .generated_files/a5a9377e7b7d62520dc02297837d26400d32e15f.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/444070925" 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o.d 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o.d" -o ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_smsc8720.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/992804092/drv_memory.o: ../src/config/default/driver/memory/src/drv_memory.c  .generated_files/642081210e66a1ddc14c4bf7f56ec8f8e9f838fc.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/992804092" 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/992804092/drv_memory.o.d" -o ${OBJECTDIR}/_ext/992804092/drv_memory.o ../src/config/default/driver/memory/src/drv_memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o: ../src/config/default/driver/memory/src/drv_memory_file_system.c  .generated_files/8015d1804d0132b263f2686a175af0eeb9393619.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/992804092" 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o ../src/config/default/driver/memory/src/drv_memory_file_system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o: ../src/config/default/driver/memory/src/drv_memory_nvm.c  .generated_files/80753b1623a6cbbe523470f24b7506e421255739.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/992804092" 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o.d" -o ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o ../src/config/default/driver/memory/src/drv_memory_nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/438849557/drv_miim.o: ../src/config/default/driver/miim/src/dynamic/drv_miim.c  .generated_files/7ed07776a39040e6184ca259e8533b10a04159ac.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/438849557" 
	@${RM} ${OBJECTDIR}/_ext/438849557/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/438849557/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/438849557/drv_miim.o.d" -o ${OBJECTDIR}/_ext/438849557/drv_miim.o ../src/config/default/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/helpers.o: ../src/config/default/library/tcpip/src/helpers.c  .generated_files/66529ba81a968a2229395261e0763446e6094a32.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/helpers.o ../src/config/default/library/tcpip/src/helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o: ../src/config/default/library/tcpip/src/common/sys_fs_shell.c  .generated_files/57e9228c95ec10d3e8168db276c57badd21c3a6d.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1751889202" 
	@${RM} ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o.d 
	@${RM} ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o.d" -o ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o ../src/config/default/library/tcpip/src/common/sys_fs_shell.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/icmp.o: ../src/config/default/library/tcpip/src/icmp.c  .generated_files/ebd59942a4cc0b128522ee0edc226ed41f152a9c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/icmp.o.d" -o ${OBJECTDIR}/_ext/1033058136/icmp.o ../src/config/default/library/tcpip/src/icmp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcp.o: ../src/config/default/library/tcpip/src/tcp.c  .generated_files/de4dfd001fcf234dd781f9174b28cf46d216f131.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcp.o ../src/config/default/library/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/arp.o: ../src/config/default/library/tcpip/src/arp.c  .generated_files/6d48a9c00f830344483d612d9684a1a1874823f3.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/arp.o.d" -o ${OBJECTDIR}/_ext/1033058136/arp.o ../src/config/default/library/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/ipv4.o: ../src/config/default/library/tcpip/src/ipv4.c  .generated_files/9a6d0ec93e8aad460e109c318ce469c890b3eb5e.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/ipv4.o.d" -o ${OBJECTDIR}/_ext/1033058136/ipv4.o ../src/config/default/library/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o: ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/88652fcccb5769d3ced088358e82ff69b7bbfafc.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o: ../src/config/default/library/tcpip/src/tcpip_heap_internal.c  .generated_files/69e3b338caf220a7839b18cc3ae1a58f1375ad24.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o ../src/config/default/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/dhcp.o: ../src/config/default/library/tcpip/src/dhcp.c  .generated_files/b85e427478cdfd2b75e9e23e654db435016a53b6.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/dhcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/dhcp.o ../src/config/default/library/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/dns.o: ../src/config/default/library/tcpip/src/dns.c  .generated_files/3cd950d30afea14ab4244ce220cfb7c5c3da8325.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/dns.o.d" -o ${OBJECTDIR}/_ext/1033058136/dns.o ../src/config/default/library/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/hash_fnv.o: ../src/config/default/library/tcpip/src/hash_fnv.c  .generated_files/a10abe08b2858b6b8ddbb8fc6590c088a9eae32.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ../src/config/default/library/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/oahash.o: ../src/config/default/library/tcpip/src/oahash.c  .generated_files/a224cf8c38ffdd499bc664bd8c3650bf6563ff7b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/oahash.o.d" -o ${OBJECTDIR}/_ext/1033058136/oahash.o ../src/config/default/library/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o: ../src/config/default/library/tcpip/src/tcpip_helpers.c  .generated_files/4c5ef0a4602844552306e176b64ae75af1624cb1.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ../src/config/default/library/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_manager.o: ../src/config/default/library/tcpip/src/tcpip_manager.c  .generated_files/f7b78e42d5eca7295caaaa017affe3bf6f6fcf28.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ../src/config/default/library/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_notify.o: ../src/config/default/library/tcpip/src/tcpip_notify.c  .generated_files/fb3b39310803f28d6e4328e0f9ee9ed4ea0f12ed.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ../src/config/default/library/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_packet.o: ../src/config/default/library/tcpip/src/tcpip_packet.c  .generated_files/95907045e3782630a1270e1beb8f867ddd7679d5.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ../src/config/default/library/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/udp.o: ../src/config/default/library/tcpip/src/udp.c  .generated_files/d04bb56dde694c26c85d6fe57a6a8c2b7de2058a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/udp.o.d" -o ${OBJECTDIR}/_ext/1033058136/udp.o ../src/config/default/library/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/http_net.o: ../src/config/default/library/tcpip/src/http_net.c  .generated_files/74e28aae159e8c271dc91001d600752c5ada9d42.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/http_net.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/http_net.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/http_net.o.d" -o ${OBJECTDIR}/_ext/1033058136/http_net.o ../src/config/default/library/tcpip/src/http_net.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/nbns.o: ../src/config/default/library/tcpip/src/nbns.c  .generated_files/ac50d20bdc49c82247efb9c05af397c2820587b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/nbns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/nbns.o.d" -o ${OBJECTDIR}/_ext/1033058136/nbns.o ../src/config/default/library/tcpip/src/nbns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1508031553/net_pres.o: ../src/config/default/net_pres/pres/src/net_pres.c  .generated_files/3866643764b8163849941c873cbd9fb5404ee4dd.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1508031553" 
	@${RM} ${OBJECTDIR}/_ext/1508031553/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/1508031553/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1508031553/net_pres.o.d" -o ${OBJECTDIR}/_ext/1508031553/net_pres.o ../src/config/default/net_pres/pres/src/net_pres.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o: ../src/config/default/net_pres/pres/net_pres_enc_glue.c  .generated_files/a67863c3a20fb73788d84a621e5f28a8951bd138.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1640433940" 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o ../src/config/default/net_pres/pres/net_pres_enc_glue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o: ../src/config/default/net_pres/pres/net_pres_cert_store.c  .generated_files/34eeabbc8310ea782ca2d1abc08c18ebd07894e1.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1640433940" 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d" -o ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o ../src/config/default/net_pres/pres/net_pres_cert_store.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/2e74befac4ae6e9263532ef08f9bd020ac3aae26.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/d92121644992724e9ca1435e6092db40bab26700.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/9d48ae7a0a491c7e1a8af074c6642aa0f7860a83.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/d601bc9d23e6d794535e4d1fe58b57233942b606.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60176403/plib_nvm.o: ../src/config/default/peripheral/nvm/plib_nvm.c  .generated_files/472c957d3e47ef311734096e22f01ea7805f8d67.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60176403" 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ../src/config/default/peripheral/nvm/plib_nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi4_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi4_master.c  .generated_files/7d795622c85e2cf6861d447fc38881c8c9611855.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi4_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi4_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi4_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/952dc3957cf2e2f6dc2c1a72b83d61adaad00178.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/9a8999ff4b7f146b3ffa00653a3129ae9a7648ac.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/cad6e5227997003c88d102a9799419f6fff1ff12.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/8d49a963e5f5783953289f115ac6f32fdb9019b3.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/279a69db2b57ed9c1553a1c0c5cdeff2528f3a3a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/699575981/mpfs.o: ../src/config/default/system/fs/mpfs/mpfs.c  .generated_files/dce15acb07a29889631deef57291de5f364e63d9.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/699575981" 
	@${RM} ${OBJECTDIR}/_ext/699575981/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/699575981/mpfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/699575981/mpfs.o.d" -o ${OBJECTDIR}/_ext/699575981/mpfs.o ../src/config/default/system/fs/mpfs/mpfs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs.o: ../src/config/default/system/fs/src/sys_fs.c  .generated_files/f2bdd8467a374eafaf08793f2bdc6c7d7cfb10e8.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ../src/config/default/system/fs/src/sys_fs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o: ../src/config/default/system/fs/src/sys_fs_media_manager.c  .generated_files/ff0818d2ada54f1ce3c7348fafc42fbc6abc5b63.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ../src/config/default/system/fs/src/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/d897c1738a3c837cace018b01ede8127c18df3b5.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/9731718e54d8f93341fafb15ba21c05a5c8e08e5.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o: ../src/config/default/system/sys_time_h2_adapter.c  .generated_files/f158405cf93eab125c82c79d9e4b7a9412d5bf89.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ../src/config/default/system/sys_time_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o: ../src/config/default/system/sys_random_h2_adapter.c  .generated_files/63d9e9b935a6cbf17265134d14c5dfbb854c8a00.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o ../src/config/default/system/sys_random_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/ea61527aa15e9dbfeb0023b9c794d2f725e4263e.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/442d1833aa2e5156e142a6c4da4a67df6bbe82c3.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/d25eb1d3660e0f654f1a42f6a2cc7f57090120f2.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/7a32e64af83a8404f624ba83ca76268902094086.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c  .generated_files/1c7db3a371b52df0536f18296a04b2f3f07205d.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d" -o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c  .generated_files/1e8ba1ce9eb53b857d051223c516688a4a7089fc.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c  .generated_files/24b8fa9440bbe18e495c04827485bf59a151e47.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c  .generated_files/96dd5d713d8818fccadf80a6894fcaf698c1cdb8.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c  .generated_files/610543d0c6d99c5a24ae5c3d9329637d63536308.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c  .generated_files/f3cbca22fedd7bf40d0b9a6c24df80ff65c6118f.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c  .generated_files/c6b658f728c6c6a2d7f23a05f1e2f0a5cb58980f.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c  .generated_files/d449805127599d1fdb5bad106c065e9b4a357da.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c  .generated_files/2cf1656cff146ca93f821909ef29bbb99efd861.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c  .generated_files/bde4c65f9653b26166188cff9b3355c97d3aa2df.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c  .generated_files/cb6c705df007f35942add6bd65508c38048af584.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c  .generated_files/67e2cc2254b18e897f716e7eafe15501a302ebfb.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c  .generated_files/f19d81bd055e7d3b91f1c2188bf595ce3ea7505a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c  .generated_files/7fc81d5df4be7a6e420ac4d25de49cf86a2b0ed6.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c  .generated_files/26bd1adcc43a81e9d04378c732a03b21b7344054.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c  .generated_files/567d533e7818e9c03433ad72a23331ebdd1f4ef0.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c  .generated_files/cc9765672f24dc9a21d39d0162ce0e46a06a7697.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c  .generated_files/2b8b07b1ec8675b4292f712555021908611100e.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c  .generated_files/8f9365e6fbe027b252ddd04e44242cd882ea5de1.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c  .generated_files/b85237e2170846df1e9789c6fd3bcdbcc05bbe03.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/arc4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c  .generated_files/7c8674bc7774217c7dcb0a979c86a7d5332c0d6a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/arc4.o.d" -o ${OBJECTDIR}/_ext/1664057780/arc4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c  .generated_files/f008b924fff39e75e3b93315bfc02e1cb215596f.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asm.o.d" -o ${OBJECTDIR}/_ext/1664057780/asm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asn.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c  .generated_files/ff7da1774dd8efe6b2065e513d15684d39f7c521.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asn.o.d" -o ${OBJECTDIR}/_ext/1664057780/asn.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2b.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c  .generated_files/a21c1bb4ff0d8fa808c8a51c05160d24d36bcd97.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2b.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2b.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2s.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c  .generated_files/51eeb29955aa97c18f7195e2819f9c0f68df67b8.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2s.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2s.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/camellia.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c  .generated_files/934ebc54569c85981147914fba6d3928190dde27.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/camellia.o.d" -o ${OBJECTDIR}/_ext/1664057780/camellia.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c  .generated_files/4450f74117f83534f9538fef6710bee78cfacca1.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c  .generated_files/d15e79679df049687746716d31a9566b10d17c91.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c  .generated_files/e43ffd568995faf3e7b1e0cfbe8a2a31c48b2408.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/cmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/coding.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c  .generated_files/3d0cced000bb791739d3b1665c42b629412ae2c2.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/coding.o.d" -o ${OBJECTDIR}/_ext/1664057780/coding.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/compress.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c  .generated_files/14272c79208c08f116982b0c910677aed0f45a8e.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/compress.o.d" -o ${OBJECTDIR}/_ext/1664057780/compress.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cpuid.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c  .generated_files/1582ecee46236b07fe22419bb4e9d581353d3724.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cpuid.o.d" -o ${OBJECTDIR}/_ext/1664057780/cpuid.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cryptocb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c  .generated_files/c66cb5cebd279dc4609b3b1bb192d0f716f60ced.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cryptocb.o.d" -o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c  .generated_files/a1a389c2f1dee68212c7727c32ebb0a63aaac505.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c  .generated_files/1851e93caa4069e2b13ec1c4aa7316fad3ba4b1e.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve448.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dh.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c  .generated_files/e38241f4e12facf5499fc2604895d50d8dbdac1d.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dh.o.d" -o ${OBJECTDIR}/_ext/1664057780/dh.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c  .generated_files/c97d8d48d94a957d7d2c5d65c0bc4514d02b1430.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/dsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c  .generated_files/7a5c050e922eccf1eb9932bd0bb9a9a65cd8f0d0.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc_fp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c  .generated_files/32c242a7ee6a835d0640bd91a4e8858f26547eb8.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c  .generated_files/635e3b83026ba994dd56de1ee11f5572a53dd34.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c  .generated_files/6bd8e4e6223ec9abe54ccc537d6e5ea63f2d2ff0.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/error.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c  .generated_files/dfd252e9142ea9bdeae1ea950e74c96bbac97bcf.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/error.o.d" -o ${OBJECTDIR}/_ext/1664057780/error.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c  .generated_files/485075d57b8b04bbb32f22879f2c67d1cb5f1cda.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c  .generated_files/e0468b1779c95afcf528e9af747faf5437ff3127.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c  .generated_files/1ff38c98a236ac8615595dcee150dcb4e2269ff6.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c  .generated_files/c70e9cf7772dcf80834f9a232f6d81d0fa72dc4e.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c  .generated_files/5d2f352b95cfbd828774813c4c380629d80f7afd.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c  .generated_files/58fba553611fa5a946319db3dc09758ff702ab9e.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hash.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c  .generated_files/4f9e946f1f6b4c07c8bcd58dcf83800489dec5bf.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hash.o.d" -o ${OBJECTDIR}/_ext/1664057780/hash.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hc128.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c  .generated_files/d11603868c4c4a1e411ac5c6c7c5ec33222a4801.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hc128.o.d" -o ${OBJECTDIR}/_ext/1664057780/hc128.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c  .generated_files/df0c4dcf6bd814fa7306d724326d1e7829fdf4b2.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/hmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/idea.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c  .generated_files/aa8baf7fc7969ace9359cc82c3ad3f3cc7bb8d03.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/idea.o.d" -o ${OBJECTDIR}/_ext/1664057780/idea.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/integer.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c  .generated_files/68c4a4aa77c45c7b56cde8e2d64ab36ac0e16c96.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/integer.o.d" -o ${OBJECTDIR}/_ext/1664057780/integer.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/logging.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c  .generated_files/b33becd8cf16d1d842dbacc8bf2339521fe2be77.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/logging.o.d" -o ${OBJECTDIR}/_ext/1664057780/logging.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c  .generated_files/12a58a62044b88b6af9da72ea08c86f460def346.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md2.o.d" -o ${OBJECTDIR}/_ext/1664057780/md2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c  .generated_files/145aa17a289bec0dbfe046773259d27fa79078f0.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md4.o.d" -o ${OBJECTDIR}/_ext/1664057780/md4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md5.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c  .generated_files/9e5e01e27c3d0474e655381051e2e5ef61c8097c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md5.o.d" -o ${OBJECTDIR}/_ext/1664057780/md5.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/memory.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c  .generated_files/2f11b593f3a9072adab3f03a3ccfda1649f2acc1.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/memory.o.d" -o ${OBJECTDIR}/_ext/1664057780/memory.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs12.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c  .generated_files/9ad83bd6b5dfddbff2351719804c77221969c4dc.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs12.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs7.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c  .generated_files/b3aaa058a565ce70ed16d60630318bf61ad5e588.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs7.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c  .generated_files/73b256e826549c4268ef984a8b2934401d123f6a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pwdbased.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c  .generated_files/228f09ac883a9b8c3193910226d9ef3c431baf1.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pwdbased.o.d" -o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rabbit.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c  .generated_files/21a2a29d155f4f77c1e26a79debfbde5fad2b89e.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rabbit.o.d" -o ${OBJECTDIR}/_ext/1664057780/rabbit.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rc2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c  .generated_files/413c7a0990a73a3c6d1953c85ca4cedfdec86dc4.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rc2.o.d" -o ${OBJECTDIR}/_ext/1664057780/rc2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ripemd.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c  .generated_files/44b80bc39ebd93eac97087d12fa76a28bade4a92.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ripemd.o.d" -o ${OBJECTDIR}/_ext/1664057780/ripemd.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c  .generated_files/ef9ccbaeff4eac8cab2d6e5c12a5f1e013ecb818.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/rsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c  .generated_files/f95dd1e2c0c9f9b202151294b07e0b33a292c9b5.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha3.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/signature.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c  .generated_files/b8322b153b411c56472e961727060722af46c46e.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/signature.o.d" -o ${OBJECTDIR}/_ext/1664057780/signature.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c  .generated_files/31682a485feca3360d3c0a1735ab4d080319b478.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c  .generated_files/3eede35f8df123c7c99aabf11af95a7e88ced88b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_armthumb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c  .generated_files/9fd3c2defc35d52377ffb0ea93b35f60e010eb34.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c  .generated_files/208824a6cd0c76af6f3a30bbe466562de89f135a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c  .generated_files/b369d280d3b1661564d87f7f3a183ae7861891f5.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_cortexm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c  .generated_files/d131882b32d8877717763870e6ebbd9b34971744.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_dsp32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c  .generated_files/dcb41cd2f252568909fce319930c69a0d9e768e5.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_int.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c  .generated_files/e84eb02056b068e39c809eb863df983338d0e3c5.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_int.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_int.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_x86_64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c  .generated_files/9090f89a08ef215deffcf189cfbc0a3dfe76a569.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/srp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c  .generated_files/e9aad3cba0b5bf36f38819e79cb0ff7b97d0905.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/srp.o.d" -o ${OBJECTDIR}/_ext/1664057780/srp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/tfm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c  .generated_files/60039f144a0b57d5606d72f4197324800f9f6c73.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/tfm.o.d" -o ${OBJECTDIR}/_ext/1664057780/tfm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_dsp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c  .generated_files/788c4589bc24a53199436a6ea3cafce821c939ba.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_encrypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c  .generated_files/f690a86a9f15d3d22f637cdf62293b733e3a9342.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c  .generated_files/d006ba750b95a1ac8a9fad28fc1868664670fde5.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_port.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c  .generated_files/e0b5bac4239fd840235832f24cc4e4e482f50c9.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_port.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_port.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfevent.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c  .generated_files/a02bfd0733e2433dfb77881cd415001b103c13ad.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfevent.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfmath.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c  .generated_files/8eb9c4968198ed70525a8c46a2913708af92e93a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfmath.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/aes.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c  .generated_files/47f2322cc56c1150b80cb596d49382553989afc9.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/aes.o.d" -o ${OBJECTDIR}/_ext/1664057780/aes.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/des3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c  .generated_files/ae2b83a3091d8eb6da1739eab17109f9635361fa.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/des3.o.d" -o ${OBJECTDIR}/_ext/1664057780/des3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/random.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c  .generated_files/b9d177bac03ed8cfbd4761f4dc4f57466d4d568d.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/random.o.d" -o ${OBJECTDIR}/_ext/1664057780/random.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c  .generated_files/6e7275bc75d2e6bd7e0651390be6c19d5bd98658.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha256.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c  .generated_files/246571600250644e374075d92c6526c559e8fdcf.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha256.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha256.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha512.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c  .generated_files/70f29dc22789ad251c0b00caa9ea3df4e03e8f78.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha512.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha512.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/5f8fe3ace6317abda807872b9b766bcd58f06714.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/85e0aef84018300a6cef630a8687256589a2c909.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o: ../src/mpfs_net_img.c  .generated_files/daf677c7249d9b0e39e90249222dfe5fbf11bc52.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o ../src/mpfs_net_img.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o: ../src/custom_http_net_app.c  .generated_files/69929edf9025c1b5469b3d173b9a58e52d162e72.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o ../src/custom_http_net_app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/http_net_print.o: ../src/http_net_print.c  .generated_files/6948c07b43b55f87112f610132aec7117b12b1e0.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_net_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_net_print.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_net_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_net_print.o ../src/http_net_print.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/misc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c  .generated_files/59205c19d5f60bc870f1d6099aebd9eeb59489e1.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/misc.o.d" -o ${OBJECTDIR}/_ext/1664057780/misc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/evp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c  .generated_files/79b7b461c7070f6e146877c7af917507f4ba6d2f.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/evp.o.d" -o ${OBJECTDIR}/_ext/1664057780/evp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/isoface_drivers.o: ../src/isoface_drivers.c  .generated_files/b8ebcc3a841463cc4ef45ac082c6e4ad505f06c2.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/isoface_drivers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/isoface_drivers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/isoface_drivers.o.d" -o ${OBJECTDIR}/_ext/1360937237/isoface_drivers.o ../src/isoface_drivers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi2_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/737b9d49a570df5d3ffaf4e19301d6ae2f12c835.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1645245335/crypto.o: ../src/config/default/crypto/src/crypto.c  .generated_files/544c3b36881af898e2e43c7fbff29ae0b084d945.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1645245335" 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1645245335/crypto.o.d" -o ${OBJECTDIR}/_ext/1645245335/crypto.o ../src/config/default/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_ethmac.o: ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c  .generated_files/443287f5ffc27c1e1d4f9db500f31f57490873d.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_ethmac.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_ethmac.o ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o: ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c  .generated_files/5b5cc63b106829553b5fd67f308517828a547a55.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_ethmac_lib.o ../src/config/default/driver/ethmac/src/dynamic/drv_ethmac_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o: ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c  .generated_files/96ed6f8cc6f6b248ab17d9d8fa8c6b2c714e83ec.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/732082881" 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d 
	@${RM} ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o.d" -o ${OBJECTDIR}/_ext/732082881/drv_eth_pic32_lib.o ../src/config/default/driver/ethmac/src/dynamic/drv_eth_pic32_lib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/444070925/drv_ethphy.o: ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c  .generated_files/a165f3b0315715f80074b7faf0375b717d4f0849.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/444070925" 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_ethphy.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444070925/drv_ethphy.o.d" -o ${OBJECTDIR}/_ext/444070925/drv_ethphy.o ../src/config/default/driver/ethphy/src/dynamic/drv_ethphy.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o: ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_smsc8720.c  .generated_files/dd44ad7d6881b5f7404900616eb877ecec03d56b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/444070925" 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o.d 
	@${RM} ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o.d" -o ${OBJECTDIR}/_ext/444070925/drv_extphy_smsc8720.o ../src/config/default/driver/ethphy/src/dynamic/drv_extphy_smsc8720.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/992804092/drv_memory.o: ../src/config/default/driver/memory/src/drv_memory.c  .generated_files/e7dd44ba18877d3102c22c77a0af8b5426a3b1b4.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/992804092" 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/992804092/drv_memory.o.d" -o ${OBJECTDIR}/_ext/992804092/drv_memory.o ../src/config/default/driver/memory/src/drv_memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o: ../src/config/default/driver/memory/src/drv_memory_file_system.c  .generated_files/548bcac1cd7c6328ac7984a6a44d13e2092b3051.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/992804092" 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o ../src/config/default/driver/memory/src/drv_memory_file_system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o: ../src/config/default/driver/memory/src/drv_memory_nvm.c  .generated_files/e599d428db55282761a579d638b12357388f5abe.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/992804092" 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o.d" -o ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o ../src/config/default/driver/memory/src/drv_memory_nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/438849557/drv_miim.o: ../src/config/default/driver/miim/src/dynamic/drv_miim.c  .generated_files/cd468bb0e95329c616e28b70e9655ac3c7cabef7.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/438849557" 
	@${RM} ${OBJECTDIR}/_ext/438849557/drv_miim.o.d 
	@${RM} ${OBJECTDIR}/_ext/438849557/drv_miim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/438849557/drv_miim.o.d" -o ${OBJECTDIR}/_ext/438849557/drv_miim.o ../src/config/default/driver/miim/src/dynamic/drv_miim.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/helpers.o: ../src/config/default/library/tcpip/src/helpers.c  .generated_files/7d71c08cebda4f4354b71b1104278b75cc70528c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/helpers.o ../src/config/default/library/tcpip/src/helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o: ../src/config/default/library/tcpip/src/common/sys_fs_shell.c  .generated_files/a407f71c6de36135cf570e07c8a2e956da37611d.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1751889202" 
	@${RM} ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o.d 
	@${RM} ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o.d" -o ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o ../src/config/default/library/tcpip/src/common/sys_fs_shell.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/icmp.o: ../src/config/default/library/tcpip/src/icmp.c  .generated_files/4f845b72e51f89dbf1cd68f2d361a59ee07d391e.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/icmp.o.d" -o ${OBJECTDIR}/_ext/1033058136/icmp.o ../src/config/default/library/tcpip/src/icmp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcp.o: ../src/config/default/library/tcpip/src/tcp.c  .generated_files/54b9edf67db3b524589ea57a13996fe04e24a93c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcp.o ../src/config/default/library/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/arp.o: ../src/config/default/library/tcpip/src/arp.c  .generated_files/182b73979c95a84d5251fc7709d4626e27b0d55b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/arp.o.d" -o ${OBJECTDIR}/_ext/1033058136/arp.o ../src/config/default/library/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/ipv4.o: ../src/config/default/library/tcpip/src/ipv4.c  .generated_files/6f78515877fe8c039ae7eda3a877dd2fca28ca1.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/ipv4.o.d" -o ${OBJECTDIR}/_ext/1033058136/ipv4.o ../src/config/default/library/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o: ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c  .generated_files/d2158ea9ba0d62859743f054ca17d5678d44f6b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o: ../src/config/default/library/tcpip/src/tcpip_heap_internal.c  .generated_files/dd8c7daa2b8d223ba2d00b17e9b93f2b53de1600.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_internal.o ../src/config/default/library/tcpip/src/tcpip_heap_internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/dhcp.o: ../src/config/default/library/tcpip/src/dhcp.c  .generated_files/d47dab12bf3b00087df5022242b40441c0aa74c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/dhcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/dhcp.o ../src/config/default/library/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/dns.o: ../src/config/default/library/tcpip/src/dns.c  .generated_files/efeccca171b3cb647e1e1d33dc9bb88cf58d0b28.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/dns.o.d" -o ${OBJECTDIR}/_ext/1033058136/dns.o ../src/config/default/library/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/hash_fnv.o: ../src/config/default/library/tcpip/src/hash_fnv.c  .generated_files/35c8168e96485c8d91c713c5ad4b972360746fe7.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ../src/config/default/library/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/oahash.o: ../src/config/default/library/tcpip/src/oahash.c  .generated_files/6d395b63218fefd068140f7d5f54ba10c0662f3a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/oahash.o.d" -o ${OBJECTDIR}/_ext/1033058136/oahash.o ../src/config/default/library/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o: ../src/config/default/library/tcpip/src/tcpip_helpers.c  .generated_files/a50648f55547fb00476576995e968a64f9e35fee.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ../src/config/default/library/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_manager.o: ../src/config/default/library/tcpip/src/tcpip_manager.c  .generated_files/7b3161db9e1d647e5648f7cacaec1a1fcdfc3b48.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ../src/config/default/library/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_notify.o: ../src/config/default/library/tcpip/src/tcpip_notify.c  .generated_files/a89e1d4f129476bfafdde5da8b4d9d55d0e24e1c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ../src/config/default/library/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/tcpip_packet.o: ../src/config/default/library/tcpip/src/tcpip_packet.c  .generated_files/2cf929919812aa015c590ff08e3dbcc5b6bdb56c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ../src/config/default/library/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/udp.o: ../src/config/default/library/tcpip/src/udp.c  .generated_files/514158037d24a55911235bfa3a82b86e31530204.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/udp.o.d" -o ${OBJECTDIR}/_ext/1033058136/udp.o ../src/config/default/library/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/http_net.o: ../src/config/default/library/tcpip/src/http_net.c  .generated_files/41c53bc446b1e51759f6119a73e0f03f8bea9012.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/http_net.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/http_net.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/http_net.o.d" -o ${OBJECTDIR}/_ext/1033058136/http_net.o ../src/config/default/library/tcpip/src/http_net.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1033058136/nbns.o: ../src/config/default/library/tcpip/src/nbns.c  .generated_files/29b8331a71460e27ee1567e5b96d543c530daa96.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/nbns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/nbns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1033058136/nbns.o.d" -o ${OBJECTDIR}/_ext/1033058136/nbns.o ../src/config/default/library/tcpip/src/nbns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1508031553/net_pres.o: ../src/config/default/net_pres/pres/src/net_pres.c  .generated_files/60ff39d113ab393548f780cfac8cc1ea091de6c7.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1508031553" 
	@${RM} ${OBJECTDIR}/_ext/1508031553/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/1508031553/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1508031553/net_pres.o.d" -o ${OBJECTDIR}/_ext/1508031553/net_pres.o ../src/config/default/net_pres/pres/src/net_pres.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o: ../src/config/default/net_pres/pres/net_pres_enc_glue.c  .generated_files/936e5769673eb86a88034bf6db6782e8a4d96271.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1640433940" 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o ../src/config/default/net_pres/pres/net_pres_enc_glue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o: ../src/config/default/net_pres/pres/net_pres_cert_store.c  .generated_files/772c71df657c70b313fd934cf9eff08d84b26797.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1640433940" 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d" -o ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o ../src/config/default/net_pres/pres/net_pres_cert_store.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  .generated_files/1d92b464783eb46b9de4b133827b7bf7c969e808.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  .generated_files/3256ccc2ca5bd151758a58dadfaf5fed6bdc9c73.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  .generated_files/ed6ee8bd544433ac8532c589a49a605da24434ce.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  .generated_files/b8aef2f050a2049514ecac52fdba513810c7253c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/60176403/plib_nvm.o: ../src/config/default/peripheral/nvm/plib_nvm.c  .generated_files/88cd892389077e8858f75940311995054265b1b8.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/60176403" 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ../src/config/default/peripheral/nvm/plib_nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi4_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi4_master.c  .generated_files/cfe4e399ad78a0505f5a8f1b8a6ad485afd05ad4.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi4_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi4_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi4_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi4_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi4_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  .generated_files/bae3650ce9e5f8e759716aef9fb691de7821c4e7.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/973d0519f6d504d68b44931331d530d55d2ba301.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  .generated_files/3d117cb113e903742187cffcf08c67ffea4c60e7.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  .generated_files/29f706d422edf17c6a46a5256f1deee0f8a7c887.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  .generated_files/c8ba738893f56bcc9a0a6627e24192ed2ffb0f1f.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/699575981/mpfs.o: ../src/config/default/system/fs/mpfs/mpfs.c  .generated_files/35dacaa7285313f4a82593a275ce05f751f80c4f.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/699575981" 
	@${RM} ${OBJECTDIR}/_ext/699575981/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/699575981/mpfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/699575981/mpfs.o.d" -o ${OBJECTDIR}/_ext/699575981/mpfs.o ../src/config/default/system/fs/mpfs/mpfs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs.o: ../src/config/default/system/fs/src/sys_fs.c  .generated_files/e1965115c4efe5571a919811553fe4455930fb40.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ../src/config/default/system/fs/src/sys_fs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o: ../src/config/default/system/fs/src/sys_fs_media_manager.c  .generated_files/16deee0067e4e5d7e82a09021681688b373a520.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ../src/config/default/system/fs/src/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/f98d2f853b2d2f452c8f678b8fd8665f430d06ee.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  .generated_files/cc0be20c34c4e07c777aad393cc6a4cf88dc1fed.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o: ../src/config/default/system/sys_time_h2_adapter.c  .generated_files/d35c018a7dff6da6a766896fd3f7b7a0ae57965c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ../src/config/default/system/sys_time_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o: ../src/config/default/system/sys_random_h2_adapter.c  .generated_files/65ced2f6f252e72ef51357db2e421049fce3519e.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_random_h2_adapter.o ../src/config/default/system/sys_random_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/6ff02ee493ba74017e6247b0cf5c4fde4f04f63f.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/3267b796deeb95605f3131da0af6d90b38ab8c89.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/2f0faee2be4ce22062f4ebb7e246111a59bd17f.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/b4ba6e70c373f731c835396d96ae9b4ebf03ea40.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c  .generated_files/7d670b9ac6f24b134128ab3659c3530d4a821587.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d" -o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c  .generated_files/b551990b5516140b4ded8ecd1a967216f734bd32.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c  .generated_files/cb684b18906b37b3da945d37997234bf95af6a3a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c  .generated_files/d339ee752471d4cd88f814668307a3da0e7c5ce8.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c  .generated_files/aa164c0b7f61d67430e5524490648891146ffc2d.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c  .generated_files/f45d856f45118a7c80d802b83d8c0246bef6eff6.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c  .generated_files/3a9549d9e9705d65c97e60bb7af82e9e4bc1070c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c  .generated_files/f9435f03a8d20e0bf96e2ce03272d853bc6fd987.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c  .generated_files/f0d500ed4422d997f27ab2755820a855d2722fe1.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c  .generated_files/31cd57bbf49f580e5136336e02436a2aaf697f0f.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c  .generated_files/9b7a888cfd32854b99a7f3319a46e47a99709491.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c  .generated_files/3d234c81b5fa53020f043e320529b082b2f13421.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c  .generated_files/585ca25896eb78a3c8abf2ef9eaaf82625919dfc.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c  .generated_files/d20930c690cdc0a8c81989e4a67f1731abc94be4.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c  .generated_files/7d58ef568e1a873e09dcf40b7799e921b17d8e91.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c  .generated_files/9d6f6b0ce7999b73d002ce7e7a550902b11b67e7.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c  .generated_files/3ddb83ebc671e8569ef85de1607cbce711689676.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c  .generated_files/c0075ed7ccf68f2293244f8acd07ff77467c5491.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c  .generated_files/ce870a4d5b2fbffc29c82dc38f3d4e7fb59d1c30.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c  .generated_files/a04bc5efe638e767649ffb4df9cf861f9e34f052.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/arc4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c  .generated_files/2fa5ab5bf912c4d987874092256fd7db7777f53d.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/arc4.o.d" -o ${OBJECTDIR}/_ext/1664057780/arc4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c  .generated_files/d23b0365f13f19400cc785717ffb63372d1ec5f6.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asm.o.d" -o ${OBJECTDIR}/_ext/1664057780/asm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/asn.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c  .generated_files/7628e6c305123953ccc7dea54f9d9a4d64129d8d.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/asn.o.d" -o ${OBJECTDIR}/_ext/1664057780/asn.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2b.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c  .generated_files/20c75811e54c52e008f931c846ff8cd89ff764e4.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2b.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2b.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/blake2s.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c  .generated_files/7e453a02654c0d51fd02c6e28a957721888ae6cb.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2s.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2s.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/camellia.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c  .generated_files/5e68fa45a480f4054b8af437b48cf9e10064ab0c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/camellia.o.d" -o ${OBJECTDIR}/_ext/1664057780/camellia.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c  .generated_files/a3a697d2dc396cd32740cf78f62bf6ccf6b46626.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c  .generated_files/b55a041df72a5f084fe443bb15a8294c4d3de84a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c  .generated_files/61d0c2fcf370ac30bb07dc9e054eb7232c2cdf70.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/cmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/coding.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c  .generated_files/5c32f98f08833d8571f3d4913e589d4c7549b81b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/coding.o.d" -o ${OBJECTDIR}/_ext/1664057780/coding.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/compress.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c  .generated_files/d26fb124a1ed5c1154d3d3f88a39239b687a104d.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/compress.o.d" -o ${OBJECTDIR}/_ext/1664057780/compress.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cpuid.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c  .generated_files/c1464823ead586bd853bbd495cecdd4d3d9d644a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cpuid.o.d" -o ${OBJECTDIR}/_ext/1664057780/cpuid.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/cryptocb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c  .generated_files/49a05cacc6fcc088abe171d81bad96e69c211444.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/cryptocb.o.d" -o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c  .generated_files/8714a5ebe19f6c3f3b31d1fc6034ba6a903f5bb.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/curve448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c  .generated_files/293215000c0b674167f6bc24cf405602cb39546d.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve448.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dh.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c  .generated_files/ff4c015a51a5a3657166b7d5f5581befb68280a9.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dh.o.d" -o ${OBJECTDIR}/_ext/1664057780/dh.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/dsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c  .generated_files/5c300c75b8c74d73a1df81855fcd6b21e406b9ad.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/dsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/dsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c  .generated_files/6c18030fd3fd6912053a52576f6f179a6106d124.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ecc_fp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c  .generated_files/46461623ce7222a7017582926a93082cf1bb0869.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c  .generated_files/20076a5f0f63f653153dda4a97d588f536817ef4.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ed448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c  .generated_files/9b2c9f1619c8611f6edd96a41ae958c6f7433bcd.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/error.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c  .generated_files/8eccf0e068b0f0a5f4abc23858dccd7e9c9cfea3.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/error.o.d" -o ${OBJECTDIR}/_ext/1664057780/error.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c  .generated_files/22a2f17d346f5309ec67dd0331603d419481a648.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c  .generated_files/be1052c93190042616e957e4159b67a7ab33ad3.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/fe_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c  .generated_files/7c7766a39e8528a694c7054998fe99fd04ad2d8c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c  .generated_files/16025056a21d1dee181ae8d59f1a98cf612cf64b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c  .generated_files/6bca464983bd73ba3a00547fc21b1679031c030d.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ge_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c  .generated_files/a933f2d25c4a895912617f37a2e9a248b532aacf.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hash.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c  .generated_files/b09e93cd6ca5ce3e0a15e36ff61a40f978a0e811.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hash.o.d" -o ${OBJECTDIR}/_ext/1664057780/hash.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hc128.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c  .generated_files/a5cf538e0add2ed56315170ec8c5e68b4d51493a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hc128.o.d" -o ${OBJECTDIR}/_ext/1664057780/hc128.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/hmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c  .generated_files/4327d39605623c5b65bf43e8640078d38db7456b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/hmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/hmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/idea.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c  .generated_files/d55e8ae1b9f0c839ec4f0df1c06fca7adbce01af.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/idea.o.d" -o ${OBJECTDIR}/_ext/1664057780/idea.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/integer.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c  .generated_files/8d572115ca6c883be97704b47de16d8890654880.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/integer.o.d" -o ${OBJECTDIR}/_ext/1664057780/integer.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/logging.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c  .generated_files/7eb413d82e16d07810dbd3b4600a8cb207721fbd.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/logging.o.d" -o ${OBJECTDIR}/_ext/1664057780/logging.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c  .generated_files/1dd1c2018e0ee1dc89efbeb7c0b5420a5a157e6c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md2.o.d" -o ${OBJECTDIR}/_ext/1664057780/md2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c  .generated_files/ce1bee1177d1781ff600f9b4371d7fbf5c433ddc.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md4.o.d" -o ${OBJECTDIR}/_ext/1664057780/md4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/md5.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c  .generated_files/2e6f11e3e520a48136c88f132f80c222d3595049.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/md5.o.d" -o ${OBJECTDIR}/_ext/1664057780/md5.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/memory.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c  .generated_files/7d4e1d74175d074182249d21e8872a357be97429.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/memory.o.d" -o ${OBJECTDIR}/_ext/1664057780/memory.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs12.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c  .generated_files/558401fb856f4aebed68c37a97960f06dc67e98.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs12.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pkcs7.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c  .generated_files/980c84c58bf13a17216c990137d53b4fcf1195ee.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs7.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c  .generated_files/4bbe2293b7baaa139194e0a16ff6ac4b79398c02.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/pwdbased.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c  .generated_files/41671aea1fb3b8a324431576dc3f5ac24b1d453b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/pwdbased.o.d" -o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rabbit.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c  .generated_files/fc1a4e2c00aa926b5e64d7a092e701885392d2e6.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rabbit.o.d" -o ${OBJECTDIR}/_ext/1664057780/rabbit.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rc2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c  .generated_files/53e2224c2d075d84d1d110c0e7f2553fdce202f3.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rc2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rc2.o.d" -o ${OBJECTDIR}/_ext/1664057780/rc2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rc2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/ripemd.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c  .generated_files/ac4fba8ff62a3a616122d426e0aa749dfd7c8839.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/ripemd.o.d" -o ${OBJECTDIR}/_ext/1664057780/ripemd.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/rsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c  .generated_files/97094b300fe974a1b9b2911abaef5b4a970d4c07.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/rsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/rsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c  .generated_files/a351505920e55700a4132704034ec820c25ff517.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha3.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/signature.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c  .generated_files/14b9ebfa73d337be732508a49ae3bb3e9e96fb4b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/signature.o.d" -o ${OBJECTDIR}/_ext/1664057780/signature.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c  .generated_files/47d8ff2db4a645d9b9d5d2bbd400f31fa8c27064.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_arm64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c  .generated_files/fb9dffac2e1d314a81fda37b616d7c907d3acc.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_armthumb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c  .generated_files/123e6b4ab94f55edc760aaa8f65f1561cb676237.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c  .generated_files/ed101fa7876806948bc5d47361ecca17fcb8036b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_c64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c  .generated_files/3317d47f7f20c0e53c3265754fb7d9ccb0ada517.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_cortexm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c  .generated_files/d867e265afe8ca15b161924715d0c28592694ffa.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_dsp32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c  .generated_files/9cc753ccce136fad0d48ffd43b086b7d6ccad538.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_int.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c  .generated_files/bd9438db210072684cf6476241ea06eb031a3a36.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_int.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_int.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sp_x86_64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c  .generated_files/9c3919b61c1e3f32cadd1b3b28966fa43b084edd.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/srp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c  .generated_files/47605ee171f3f92811fc658cc4ee586679d1b2df.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/srp.o.d" -o ${OBJECTDIR}/_ext/1664057780/srp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/tfm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c  .generated_files/4cda72aee0c559a8551a9c1d2dd64af4a204ca5.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/tfm.o.d" -o ${OBJECTDIR}/_ext/1664057780/tfm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_dsp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c  .generated_files/272dd2cb497a524d93bf8d7e0edab72affb69085.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_encrypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c  .generated_files/4df1bf9c18e9aaac4a16d3361f38e3decea8810c.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c  .generated_files/fded111acf45c9d53ac4df83b1dc22b28d9b7df0.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wc_port.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c  .generated_files/4f4544cd170cf471a7fece0375065a3a373b21c4.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_port.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_port.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfevent.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c  .generated_files/12101d7d56856d9a7ac864be7dee495799a54650.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfevent.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/wolfmath.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c  .generated_files/fbe9fbfec689ab77d2320cba3fd53219ff0f94a2.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfmath.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/aes.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c  .generated_files/e82625a09a3348f51db472dd6d92d1ee10833b5a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/aes.o.d" -o ${OBJECTDIR}/_ext/1664057780/aes.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/des3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c  .generated_files/75f1397d3edbf1e799d1f994d936f470f2419da5.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/des3.o.d" -o ${OBJECTDIR}/_ext/1664057780/des3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/random.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c  .generated_files/185ede562014fa7ad7b4dc882d9e91073405d0b0.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/random.o.d" -o ${OBJECTDIR}/_ext/1664057780/random.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c  .generated_files/bc4fb7d1c247d27b432736eaa8cc5ef15fe0fb6.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha256.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c  .generated_files/b20fb349e5ee2026504f77e1446c1f6c30cc324b.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha256.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha256.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/sha512.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c  .generated_files/d5265b75908f3daa84edcd5ec7825f689d1ec621.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha512.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha512.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/558b15de7cf6963d2c61eabdde124b092a4d6405.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/9b008da16e39bc28dbac94427e07bc8cb7de55a0.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o: ../src/mpfs_net_img.c  .generated_files/5f20f7421809904c1b30277a64d792af52d7c51.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o.d" -o ${OBJECTDIR}/_ext/1360937237/mpfs_net_img.o ../src/mpfs_net_img.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o: ../src/custom_http_net_app.c  .generated_files/be34d7fffe4753c0b04644146327fbd1932062a6.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o.d" -o ${OBJECTDIR}/_ext/1360937237/custom_http_net_app.o ../src/custom_http_net_app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/http_net_print.o: ../src/http_net_print.c  .generated_files/bec5cf2feabc74314e6012adaff785d9b6daba4a.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_net_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/http_net_print.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/http_net_print.o.d" -o ${OBJECTDIR}/_ext/1360937237/http_net_print.o ../src/http_net_print.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/misc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c  .generated_files/57fbef9781634568aebbdf39be4b80617c404918.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/misc.o.d" -o ${OBJECTDIR}/_ext/1664057780/misc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1664057780/evp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c  .generated_files/81a5ee5b66207fe0fce5fb5afc2718fe3ab7a8df.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1664057780/evp.o.d" -o ${OBJECTDIR}/_ext/1664057780/evp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/isoface_drivers.o: ../src/isoface_drivers.c  .generated_files/14f85c78079f7bd2d3da4e2a4880fb2722613902.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/isoface_drivers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/isoface_drivers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/isoface_drivers.o.d" -o ${OBJECTDIR}/_ext/1360937237/isoface_drivers.o ../src/isoface_drivers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/298189674/plib_spi2_master.o: ../src/config/default/peripheral/spi/spi_master/plib_spi2_master.c  .generated_files/b9cc36a396e1e090242108c26d57edc946329cd.flag .generated_files/fffaba66e367e7c43e66aecef3a49fb66f034ce6.flag
	@${MKDIR} "${OBJECTDIR}/_ext/298189674" 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DHAVE_CONFIG_H -DWOLFSSL_IGNORE_FILE_WARN -I"../src" -I"../src/config/default" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/packs/PIC32MX675F512H_DFP" -I"../src/third_party/wolfssl" -I"../src/third_party/wolfssl/wolfssl" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/298189674/plib_spi2_master.o.d" -o ${OBJECTDIR}/_ext/298189674/plib_spi2_master.o ../src/config/default/peripheral/spi/spi_master/plib_spi2_master.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/UART.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/p32MX675F512H.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/UART.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/UART.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/p32MX675F512H.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/UART.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=44960,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/UART.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
