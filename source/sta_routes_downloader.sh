#! /usr/bin/env bash

# sta_routes_downloader v0.0 --  Downloads Spokane Transit bus route PDFs files.
#
# This program downloads the PDF files that the Spokane Transit Authority
# updates three times a year when it makes its route service changes.  Those
# changes are made in January, May, and September.  With this program, all of
# those files can be downloaded automatically into the current working
# directory.
#
#
#
# ~~~ License ~~~
#
# Copyright 2020 Paul R. Ramer (prramer)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
# You may use this program under the terms of the GNU GPL v3.
# https://www.gnu.org/licenses/gpl-3.0.en.html


# Set constants
readonly base_url='https://www.spokanetransit.com/files/route-pdf'

route_list=(
    4
    11_12_Shuttles
    20_33_City_North
    21_Broadway
    22_NW_Blvd
    23_MapleAsh
    25_Division
    26_Lidgerwood
    27_Hillyard
    28_Nevada
    29_SCC
    32_Trent_Montgomery
    34_City_South
    39_Mission
    42_South_Adams
    43_Lincoln
    45_Regal
    60_Airport
    61_Hwy2
    62_Med_Lake
    63_AH_WestPlains
    66_64_600_Cheney_EWU
    67_68_Cheney_Local
    74_Mirabeau-LL_172_LL_Ex
    90_Sprague
    94_EastCentral_Millwood
    95_Mid_Valley
    96_Pines_Sullivan
    97_South_Valley
    98_LL
    124_North_Ex
    144_North_Ex
    173_190_VTC_Ex_Valley_Ex
)

# Get the current month.
current_month="$(date +%m)"
if [ "$current_month" -ge "09" ]; then
    service_month="Sep"
elif [ "$current_month" -ge "05" ]; then
    service_month="May"
else
    service_month="Jan"
fi

# Get the current year.
service_year="$(date +%Y)"

# Set the current month and year in order to download the current services
# routes.
service_change="${service_month}_${service_year}"
          
# Download each of the current route PDFs into the current working directory.
for route in "${route_list[@]}"
do
    route_url="${base_url}/${route}_${service_change}.pdf"
    wget $route_url
done
