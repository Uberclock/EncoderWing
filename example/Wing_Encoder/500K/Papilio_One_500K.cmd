xst -intstyle ise -ifn "C:/Users/Logxen/Downloads/Gcode_Viewer/G_Code_Viewer/Papilio_EncoderWingDemo/500K/Papilio_One_500K.xst" -ofn "C:/Users/Logxen/Downloads/Gcode_Viewer/G_Code_Viewer/Papilio_EncoderWingDemo/500K/Papilio_One_500K.syr" 
xst -intstyle ise -ifn "C:/Users/Logxen/Downloads/Gcode_Viewer/G_Code_Viewer/Papilio_EncoderWingDemo/500K/Papilio_One_500K.xst" -ofn "C:/Users/Logxen/Downloads/Gcode_Viewer/G_Code_Viewer/Papilio_EncoderWingDemo/500K/Papilio_One_500K.syr" 
ngdbuild -intstyle ise -dd _ngo -aul -nt timestamp -uc C:/Users/Logxen/Downloads/Gcode_Viewer/G_Code_Viewer/Papilio_EncoderWingDemo/Libraries/ZPUino_1/board_Papilio_One_500k/papilio_one.ucf -p xc3s500e-vq100-5 Papilio_One_500K.ngc Papilio_One_500K.ngd  
map -intstyle ise -p xc3s500e-vq100-5 -cm area -ir off -pr off -c 100 -o Papilio_One_500K_map.ncd Papilio_One_500K.ngd Papilio_One_500K.pcf 
par -w -intstyle ise -ol high -t 1 Papilio_One_500K_map.ncd Papilio_One_500K.ncd Papilio_One_500K.pcf 
trce -intstyle ise -v 3 -s 5 -n 3 -fastpaths -xml Papilio_One_500K.twx Papilio_One_500K.ncd -o Papilio_One_500K.twr Papilio_One_500K.pcf 
bitgen -intstyle ise -f Papilio_One_500K.ut Papilio_One_500K.ncd 
ngdbuild -intstyle ise -dd _ngo -aul -nt timestamp -uc C:/Users/Logxen/Documents/Arduino/Papilio_NunchuckWingTest/Libraries/ZPUino_1/board_Papilio_One_500k/papilio_one.ucf -p xc3s500e-vq100-5 Papilio_One_500K.ngc Papilio_One_500K.ngd  
map -intstyle ise -p xc3s500e-vq100-5 -cm area -ir off -pr off -c 100 -o Papilio_One_500K_map.ncd Papilio_One_500K.ngd Papilio_One_500K.pcf 
par -w -intstyle ise -ol high -t 1 Papilio_One_500K_map.ncd Papilio_One_500K.ncd Papilio_One_500K.pcf 
trce -intstyle ise -v 3 -s 5 -n 3 -fastpaths -xml Papilio_One_500K.twx Papilio_One_500K.ncd -o Papilio_One_500K.twr Papilio_One_500K.pcf 
bitgen -intstyle ise -f Papilio_One_500K.ut Papilio_One_500K.ncd 
ngdbuild -intstyle ise -dd _ngo -aul -nt timestamp -uc C:/Users/Logxen/Documents/Arduino/Papilio_NunchuckWingTest/Libraries/ZPUino_1/board_Papilio_One_500k/papilio_one.ucf -p xc3s500e-vq100-5 Papilio_One_500K.ngc Papilio_One_500K.ngd  
map -intstyle ise -p xc3s500e-vq100-5 -cm area -ir off -pr off -c 100 -o Papilio_One_500K_map.ncd Papilio_One_500K.ngd Papilio_One_500K.pcf 
par -w -intstyle ise -ol high -t 1 Papilio_One_500K_map.ncd Papilio_One_500K.ncd Papilio_One_500K.pcf 
trce -intstyle ise -v 3 -s 5 -n 3 -fastpaths -xml Papilio_One_500K.twx Papilio_One_500K.ncd -o Papilio_One_500K.twr Papilio_One_500K.pcf 
bitgen -intstyle ise -f Papilio_One_500K.ut Papilio_One_500K.ncd 
ngdbuild -intstyle ise -dd _ngo -aul -nt timestamp -uc C:/Users/Logxen/Documents/Arduino/Papilio_NunchuckWingTest/Libraries/ZPUino_1/board_Papilio_One_500k/papilio_one.ucf -p xc3s500e-vq100-5 Papilio_One_500K.ngc Papilio_One_500K.ngd  
map -intstyle ise -p xc3s500e-vq100-5 -cm area -ir off -pr off -c 100 -o Papilio_One_500K_map.ncd Papilio_One_500K.ngd Papilio_One_500K.pcf 
par -w -intstyle ise -ol high -t 1 Papilio_One_500K_map.ncd Papilio_One_500K.ncd Papilio_One_500K.pcf 
trce -intstyle ise -v 3 -s 5 -n 3 -fastpaths -xml Papilio_One_500K.twx Papilio_One_500K.ncd -o Papilio_One_500K.twr Papilio_One_500K.pcf 
bitgen -intstyle ise -f Papilio_One_500K.ut Papilio_One_500K.ncd 
xst -intstyle ise -ifn "C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/500K/Papilio_One_500K.xst" -ofn "C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/500K/Papilio_One_500K.syr" 
ngdbuild -intstyle ise -dd _ngo -aul -nt timestamp -uc C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/Libraries/ZPUino_1/board_Papilio_One_500k/papilio_one.ucf -p xc3s500e-vq100-5 Papilio_One_500K.ngc Papilio_One_500K.ngd  
map -intstyle ise -p xc3s500e-vq100-5 -cm area -ir off -pr off -c 100 -o Papilio_One_500K_map.ncd Papilio_One_500K.ngd Papilio_One_500K.pcf 
par -w -intstyle ise -ol high -t 1 Papilio_One_500K_map.ncd Papilio_One_500K.ncd Papilio_One_500K.pcf 
trce -intstyle ise -v 3 -s 5 -n 3 -fastpaths -xml Papilio_One_500K.twx Papilio_One_500K.ncd -o Papilio_One_500K.twr Papilio_One_500K.pcf 
bitgen -intstyle ise -f Papilio_One_500K.ut Papilio_One_500K.ncd 
xst -intstyle ise -ifn "C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/500K/Papilio_One_500K.xst" -ofn "C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/500K/Papilio_One_500K.syr" 
xst -intstyle ise -ifn "C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/500K/Papilio_One_500K.xst" -ofn "C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/500K/Papilio_One_500K.syr" 
xst -intstyle ise -ifn "C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/500K/Papilio_One_500K.xst" -ofn "C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/500K/Papilio_One_500K.syr" 
ngdbuild -intstyle ise -dd _ngo -aul -nt timestamp -uc C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/Libraries/ZPUino_1/board_Papilio_One_500k/papilio_one.ucf -p xc3s500e-vq100-5 Papilio_One_500K.ngc Papilio_One_500K.ngd  
map -intstyle ise -p xc3s500e-vq100-5 -cm area -ir off -pr off -c 100 -o Papilio_One_500K_map.ncd Papilio_One_500K.ngd Papilio_One_500K.pcf 
par -w -intstyle ise -ol high -t 1 Papilio_One_500K_map.ncd Papilio_One_500K.ncd Papilio_One_500K.pcf 
trce -intstyle ise -v 3 -s 5 -n 3 -fastpaths -xml Papilio_One_500K.twx Papilio_One_500K.ncd -o Papilio_One_500K.twr Papilio_One_500K.pcf 
bitgen -intstyle ise -f Papilio_One_500K.ut Papilio_One_500K.ncd 
xst -intstyle ise -ifn "C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/500K/Papilio_One_500K.xst" -ofn "C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/500K/Papilio_One_500K.syr" 
ngdbuild -intstyle ise -dd _ngo -aul -nt timestamp -uc C:/Users/Logxen/Documents/Arduino/Papilio_EncoderWingTest/Libraries/ZPUino_1/board_Papilio_One_500k/papilio_one.ucf -p xc3s500e-vq100-5 Papilio_One_500K.ngc Papilio_One_500K.ngd  
map -intstyle ise -p xc3s500e-vq100-5 -cm area -ir off -pr off -c 100 -o Papilio_One_500K_map.ncd Papilio_One_500K.ngd Papilio_One_500K.pcf 
par -w -intstyle ise -ol high -t 1 Papilio_One_500K_map.ncd Papilio_One_500K.ncd Papilio_One_500K.pcf 
trce -intstyle ise -v 3 -s 5 -n 3 -fastpaths -xml Papilio_One_500K.twx Papilio_One_500K.ncd -o Papilio_One_500K.twr Papilio_One_500K.pcf 
bitgen -intstyle ise -f Papilio_One_500K.ut Papilio_One_500K.ncd 
