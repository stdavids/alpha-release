#Use this file as a script for gnuplot
#(See http://www.gnuplot.info/ for details)
set nokey
set size ratio -1
set title '' 
set xrange[0:1000]
set yrange[0:1000]
set object 1 rect from 599,44 to 699,145 fc rgb "gold"
set label 'icache.data_mems_0__data_mem.macro_mem(0)'noenhanced at 619 , 69.25
set object 2 rect from 735,787 to 835,888 fc rgb "gold"
set label 'icache.data_mems_1__data_mem.macro_mem(1)'noenhanced at 755 , 812.25
set object 3 rect from 138,214 to 238,315 fc rgb "gold"
set label 'icache.data_mems_2__data_mem.macro_mem(2)'noenhanced at 158 , 239.25
set object 4 rect from 805,241 to 905,342 fc rgb "gold"
set label 'icache.data_mems_3__data_mem.macro_mem(3)'noenhanced at 825 , 266.25
set object 5 rect from 123,654 to 223,755 fc rgb "gold"
set label 'icache.data_mems_4__data_mem.macro_mem(4)'noenhanced at 143 , 679.25
set object 6 rect from 441,875 to 541,976 fc rgb "gold"
set label 'icache.data_mems_5__data_mem.macro_mem(5)'noenhanced at 461 , 900.25
set object 7 rect from 762,426 to 862,527 fc rgb "gold"
set label 'icache.data_mems_6__data_mem.macro_mem(6)'noenhanced at 782 , 451.25
set object 8 rect from 620,238 to 720,339 fc rgb "gold"
set label 'icache.data_mems_7__data_mem.macro_mem(7)'noenhanced at 640 , 263.25
set object 9 rect from 145,365 to 245,466 fc rgb "gold"
set label 'icache.stat_mem.macro_mem(8)'noenhanced at 165 , 390.25
set object 10 rect from 483,208 to 583,409 fc rgb "gold"
set label 'icache.tag_mem.macro_mem0(9)'noenhanced at 503 , 258.25
set object 11 rect from 616,385 to 716,586 fc rgb "gold"
set label 'icache.tag_mem.macro_mem1(10)'noenhanced at 636 , 435.25
set object 12 rect from 0,0 to 1000,1000 fc rgb "#FFFFFFFF"
plot '-' w l
EOF
pause -1 'Press any key' 
