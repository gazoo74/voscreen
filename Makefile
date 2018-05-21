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

.NOTPARALLEL:

.PHONY: all
all:

.PHONY: clean
clean:
	$(MAKE) -C 3rd-part $@

.PHONY: 3rd-part
3rd-part:
	$(MAKE) -C $@

3rd-part_all 3rd-part_clean 3rd-part_install:
3rd-part_%:
	$(MAKE) -C 3rd-part $*

# ex: filetype=makefile
