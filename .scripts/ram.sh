#!/usr/bin/perl
# Copyright (C) 2014 Julien Bonjean <julien@bonjean.info>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

remaining_mem=$(awk '/^MemTotal:/ { mem_total=$2 } /^MemAvailable:/ { mem_available=$2 } END { printf("%.0f", ((mem_total-mem_available)/mem_total)*100) } ' /proc/meminfo)


print "$remaining_mem%\n"

if ($remaining_mem >= 50) {
    print "#FFFF00\n";
} elsif ( $remaining_mem >= 75 ) {
print "#FFCC00\n";
} elsif ( $remaining_mem >= 90 ) {
print "#FF0000\n"
}
