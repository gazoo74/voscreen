#
#  Copyright (C) 2018 Savoir-Faire Linux Inc.
#
#  Authors:
#      Gaël PORTAY <gael.portay@savoirfairelinux.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 2.1 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

PREFIX ?= /usr/local
DESTDIR ?=

.PHONY: all
all: fxload

fxload: CFLAGS+=-I/usr/include/libusb-1.0
fxload: ezusb.o

ezusb.c: ezusb.h

fxload.c ezusb.h ezusb.c:
	wget https://raw.githubusercontent.com/libusb/libusb/master/examples/$@

%: override LDLIBS+=-lusb-1.0

.PHONY: install
install:
	install -d $(DESTDIR)$(PREFIX)/bin/
	install -m 755 fxload $(DESTDIR)$(PREFIX)/bin/

.PHONY: clean
clean:
	rm -f fxload* ezusb*

# ex: filetype=makefile
