# morc_menu - catgorized applications menu
# See LICENSE file for copyright and license details.

VERSION = 1.0

# files
MORC_MENU = morc_menu
MAN_PAGE  = ${MORC_MENU}.1
CONF_FILE = ${MORC_MENU}_v1.conf
TAR_NAME  = ${MORC_MENU}-${VERSION}

# paths
PREFIX      = /usr
MAN_PREFIX  = ${PREFIX}/share/man
CONF_PREFIX = ${PREFIX}/share/${MORC_MENU}
SKEL_PREFIX = ${PREFIX}/etc/skel/.config/${MORC_MENU}

all: options

options:
	@echo morc_menu make file options:
	@echo none for now

clean:
	@if [ -e ${CONF_FILE}.orig ] ; then\
	   echo "cleaning" ;\
	   cp ${CONF_FILE}.orig ${CONF_FILE} ;\
	 else \
	   echo "clean: nothing to do" ;\
	   fi

dist: clean
	@echo creating dist tarball ${TAR_NAME}
	@mkdir -p ${TAR_NAME}
	@cp LICENSE Makefile README.md \
            ${MORC_MENU} ${MAN_PAGE} ${CONF_FILE} ${TAR_NAME}
	@tar -czf ${TAR_NAME}.tar.gz ${TAR_NAME}
	@rm -rf ${TAR_NAME}

install: all
	@echo installing executable to ${DESTDIR}${PREFIX}/bin
	@mkdir -p ${DESTDIR}${PREFIX}/bin
	@cp -f ${MORC_MENU} ${DESTDIR}${PREFIX}/bin
	@chmod 755 ${DESTDIR}${PREFIX}/bin/${MORC_MENU}

	@echo installing manual page to ${DESTDIR}${MAN_PREFIX}/man1
	@mkdir -p ${DESTDIR}${MAN_PREFIX}/man1
	@cp -f ${MAN_PAGE} ${DESTDIR}${MAN_PREFIX}/man1
	@chmod 644 ${DESTDIR}${MAN_PREFIX}/man1/${MAN_PAGE}

	@echo installing config file to ${DESTDIR}${CONF_PREFIX}
	@mkdir -p ${DESTDIR}${CONF_PREFIX}
	@cp -f ${CONF_FILE} ${DESTDIR}${CONF_PREFIX}
	@chmod 644 ${DESTDIR}${CONF_PREFIX}/${CONF_FILE}

	@echo installing README.md to ${DESTDIR}${CONF_PREFIX}
	@cp -f README.md ${DESTDIR}${CONF_PREFIX}
	@chmod 644 ${DESTDIR}${CONF_PREFIX}/README.md

	@echo installing LICENSE to ${DESTDIR}${CONF_PREFIX}
	@cp -f LICENSE ${DESTDIR}${CONF_PREFIX}
	@chmod 644 ${DESTDIR}${CONF_PREFIX}/LICENSE

	@echo installing config file to ${DESTDIR}${SKEL_PREFIX}
	@mkdir -p ${DESTDIR}${SKEL_PREFIX}
	@cp -f ${CONF_FILE} ${DESTDIR}${SKEL_PREFIX}
	@chmod 644 ${DESTDIR}${SKEL_PREFIX}/${CONF_FILE}

uninstall:
	@echo removing executable from ${DESTDIR}${PREFIX}/bin
	@rm -f ${DESTDIR}${PREFIX}/bin/${MORC_MENU}

	@echo removing manual page from ${DESTDIR}${MAN_PREFIX}/man1
	@rm -f ${DESTDIR}${MAN_PREFIX}/man1/${MAN_PAGE}

	@echo removing config folder ${DESTDIR}${CONF_PREFIX}
	@rm -f "${DESTDIR}${CONF_PREFIX}/*"
	@rmdir ${DESTDIR}${CONF_PREFIX}

.PHONY: all options clean dist install uninstall
