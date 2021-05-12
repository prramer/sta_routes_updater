#! /usr/bin/env bash


#! /usr/bin/env bash

# sta_routes_renamer v0.0 --  Renames route downloaded STA route PDF files.
#
# After downloading the PDF files for Spokane Transit's routes, this program
# can be run to rename all of the files in the current working directory to
# easier-to-read names and ensure there is a file for every bus route listed
# with the route number at the beginning of the document name.  This creates
# some duplicates files since some documents list more than one route, but
# clarity and ease of use is the goal rather than minimal disk space use.
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


rename 's/^4_.+/4_monroe-regal.pdf/' 4_*.pdf
rename 's/11_12_Shuttles.+/11_plaza-arena_shuttle.pdf/' 11_12_Shuttles*.pdf
rename 's/20_33_City_North.+/20_sfcc.pdf/' 20_33_City_North*.pdf
rename 's/21_Broadway.+/21_west_broadway.pdf/' 21_Broadway*.pdf
rename 's/22_NW_Blvd.+/22_northwest_boulevard.pdf/' 22_NW_Blvd*.pdf
rename 's/23_MapleAsh.+/23_maple-ash.pdf/' 23_MapleAsh*.pdf
rename 's/25_Division.+/25_division.pdf/' 25_Division*.pdf
rename 's/26_Lidgerwood.+/26_lidgerwood.pdf/' 26_Lidgerwood*.pdf
rename 's/27_Hillyard.+/27_hillyard.pdf/' 27_Hillyard*.pdf
rename 's/28_Nevada.+/28_nevada.pdf/' 28_Nevada*.pdf
rename 's/29_SCC.+/29_scc.pdf/' 29_SCC*.pdf
rename 's/32_Trent_Montgomery.+/32_trent-montgomery.pdf/' 32_Trent_Montgomery*.pdf
rename 's/34_City_South.+/34_freya.pdf/' 34_City_South*.pdf
rename 's/39_Mission.+/39_mission.pdf/' 39_Mission*.pdf
rename 's/42_South_Adams.+/42_south_adams.pdf/' 42_South_Adams*.pdf
rename 's/43_Lincoln.+/43_lincoln-37th.pdf/' 43_Lincoln*.pdf
rename 's/45_Regal.+/45_perry_district.pdf/' 45_Regal*.pdf
rename 's/60_Airport.+/60_airport-browns_addition.pdf/' 60_Airport*.pdf
rename 's/61_Hwy2.+/61_highway_2-browns_addition.pdf/' 61_Hwy2*.pdf
rename 's/62_Med_Lake.+/62_medical_lake.pdf/' 62_Med_Lake*.pdf
rename 's/63_AH_WestPlains.+/63_airway_heights-west_plains.pdf/' 63_AH_WestPlains*.pdf
rename 's/66_64_600_Cheney_EWU.+/66_ewu.pdf/' 66_64_600_Cheney_EWU*.pdf
rename 's/67_68_Cheney_Local.+/67_swoop_loop.pdf/' 67_68_Cheney_Local*.pdf
rename 's/74_Mirabeau-LL_172_LL_Ex.+/74_mirabeau-liberty_lake.pdf/' 74_Mirabeau-LL_172_LL_Ex*.pdf
rename 's/90_Sprague.+/90_sprague.pdf/' 90_Sprague*.pdf
rename 's/94_EastCentral_Millwood.+/94_east_central-millwood.pdf/' 94_EastCentral_Millwood*.pdf
rename 's/95_Mid_Valley.+/95_mid-valley.pdf/' 95_Mid_Valley*.pdf
rename 's/96_Pines_Sullivan.+/96_pines-sullivan.pdf/' 96_Pines_Sullivan*.pdf
rename 's/97_South_Valley.+/97_south_valley.pdf/' 97_South_Valley*.pdf
rename 's/98_LL.+/98_liberty_lake_via_sprague.pdf/' 98_LL*.pdf
rename 's/124_North_Ex.+/124_north_express.pdf/' 124_North_Ex*.pdf
rename 's/144_North_Ex.+/144_south_express.pdf/' 144_North_Ex*.pdf
rename 's/173_190_VTC_Ex_Valley_Ex.+/173_valley_transit_center_express.pdf/' 173_190_VTC_Ex_Valley_Ex*.pdf


cp 11_plaza-arena_shuttle.pdf 12_southside-medical_shuttle.pdf
cp 20_sfcc.pdf 33_wellesley.pdf
cp 66_ewu.pdf 64_cheney-west_plains.pdf
cp 67_swoop_loop.pdf 68_cheney_loop.pdf
cp 74_mirabeau-liberty_lake.pdf 172_liberty_lake_express.pdf
cp 173_valley_transit_center_express.pdf 190_valley_express.pdf
cp 63_airway_heights-west_plains.pdf 633_geiger_shuttle.pdf
cp 66_ewu.pdf 662_ewu_north_express.pdf
cp 66_ewu.pdf 663_ewu_vtc_express.pdf
cp 66_ewu.pdf 664_ewu_south_hill_express.pdf
