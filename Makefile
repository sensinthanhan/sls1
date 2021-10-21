
PROJECT_SOURCEFILES += util.c

CONTIKI_PROJECT = udp-echo-server

CFLAGS += -DPROJECT_CONF_H=\"project-conf.h\"

MODULES +=  core/net/mac core/net core/net/mac/sicslowmac core/net/mac/contikimac core/net/llsec/noncoresec
# CONTIKI_TARGET_SOURCEFILES += tsl256x.c bmpx8x.c si7021.c
# MODULES += platform/cc2538dk/dev

#ifdef WITH_COMPOWER
#APPS+=powertrace
#CFLAGS+= -DCONTIKIMAC_CONF_COMPOWER=1 -DWITH_COMPOWER=1 -DQUEUEBUF_CONF_NUM=4
#endif


all: $(CONTIKI_PROJECT)

CONTIKI = ../../..
CONTIKI_WITH_IPV6 = 1
#CFLAGS += -DUIP_CONF_ND6_SEND_NA=1
include $(CONTIKI)/Makefile.include
