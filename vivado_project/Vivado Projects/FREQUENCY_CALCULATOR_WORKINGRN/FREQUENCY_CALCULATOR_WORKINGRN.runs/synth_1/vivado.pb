
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental {C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/utils_1/imports/synth_1/FREQUENCY_CALCULATOR_TB.dcp}2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/utils_1/imports/synth_1/FREQUENCY_CALCULATOR_TB.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
�
Command: %s
53*	vivadotcl2S
?synth_design -top FREQUENCY_CALCULATOR_TB -part xc7k70tfbv676-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7k70t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7k70t2default:defaultZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
408722default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
sStarting Synthesize : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 836.082 ; gain = 411.082
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2+
FREQUENCY_CALCULATOR_TB2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR_TB.vhd2default:default2
82default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
FREQUENCY_CALCULATOR2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
52default:default2*
U_FREQUENCY_CALCULATOR2default:default2(
FREQUENCY_CALCULATOR2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR_TB.vhd2default:default2
422default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2(
FREQUENCY_CALCULATOR2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
202default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DIV50K2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV5k.vhd2default:default2
42default:default2
U_DIV50K2default:default2
DIV50K2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
1092default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
DIV50K2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV5k.vhd2default:default2
132default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
CRES2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV5k.vhd2default:default2
162default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
DIV50K2default:default2
02default:default2
12default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV5k.vhd2default:default2
132default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV10_fin.vhd2default:default2
52default:default2
	U_DIV10_12default:default2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
1102default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV10_fin.vhd2default:default2
162default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
CRES2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV10_fin.vhd2default:default2
182default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
DIV102default:default2
02default:default2
12default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV10_fin.vhd2default:default2
162default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV10_fin.vhd2default:default2
52default:default2
	U_DIV10_22default:default2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
1112default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV10_fin.vhd2default:default2
52default:default2
	U_DIV10_32default:default2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
1122default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV10_fin.vhd2default:default2
52default:default2
	U_DIV10_42default:default2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
1132default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV10_fin.vhd2default:default2
52default:default2
	U_DIV10_52default:default2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
1142default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/DIV10_fin.vhd2default:default2
52default:default2
	U_DIV10_62default:default2
DIV102default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
1152default:default8@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
REGI2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/regi.vhd2default:default2
52default:default2
U_REGI2default:default2
REGI2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
1162default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
REGI2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/regi.vhd2default:default2
282default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
CRES2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/regi.vhd2default:default2
312default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
REGI2default:default2
02default:default2
12default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/regi.vhd2default:default2
282default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
SELECTOR2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/SELECT.vhd2default:default2
52default:default2

U_SELECTOR2default:default2
SELECTOR2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
1172default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
SELECTOR2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/SELECT.vhd2default:default2
222default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
SELECTOR2default:default2
02default:default2
12default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/SELECT.vhd2default:default2
222default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2(
FREQUENCY_CALCULATOR2default:default2
02default:default2
12default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
202default:default8@Z8-256h px� 
�
&ignoring unsynthesizable construct: %s312*oasys23
wait statement with no conditon2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR_TB.vhd2default:default2
572default:default8@Z8-312h px� 
�
&ignoring unsynthesizable construct: %s312*oasys23
wait statement with no conditon2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR_TB.vhd2default:default2
622default:default8@Z8-312h px� 
�
&ignoring unsynthesizable construct: %s312*oasys23
wait statement with no conditon2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR_TB.vhd2default:default2
642default:default8@Z8-312h px� 
�
&ignoring unsynthesizable construct: %s312*oasys23
wait statement with no conditon2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR_TB.vhd2default:default2
662default:default8@Z8-312h px� 
�
&ignoring unsynthesizable construct: %s312*oasys23
wait statement with no conditon2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR_TB.vhd2default:default2
682default:default8@Z8-312h px� 
�
&ignoring unsynthesizable construct: %s312*oasys23
wait statement with no conditon2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR_TB.vhd2default:default2
722default:default8@Z8-312h px� 
�
&ignoring unsynthesizable construct: %s312*oasys23
wait statement with no conditon2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR_TB.vhd2default:default2
742default:default8@Z8-312h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2+
FREQUENCY_CALCULATOR_TB2default:default2
02default:default2
12default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR_TB.vhd2default:default2
82default:default8@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2!
CYCLEWAIT_reg2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.srcs/sources_1/imports/transfer/FREQUENCY_CALCULATOR.vhd2default:default2
1282default:default8@Z8-6014h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
CLK2default:default2
DIV102default:defaultZ8-7129h px� 
�
%s*synth2�
sFinished Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 926.039 ; gain = 501.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 926.039 ; gain = 501.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7k70tfbv676-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 926.039 ; gain = 501.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
Loading part %s157*device2#
xc7k70tfbv676-12default:defaultZ21-403h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 926.039 ; gain = 501.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   31 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 12    
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 12    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 10    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1112.766 ; gain = 687.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1112.766 ; gain = 687.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1112.766 ; gain = 687.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1112.766 ; gain = 687.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1112.766 ; gain = 687.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1112.766 ; gain = 687.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1112.766 ; gain = 687.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1112.766 ; gain = 687.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1112.766 ; gain = 687.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
=
%s*synth2%
+-+-----+------+
2default:defaulth px� 
=
%s*synth2%
| |Cell |Count |
2default:defaulth px� 
=
%s*synth2%
+-+-----+------+
2default:defaulth px� 
=
%s*synth2%
+-+-----+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
N
%s
*synth26
"|1     |top      |       |     0|
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1112.766 ; gain = 687.766
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 13 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1112.766 ; gain = 687.766
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1112.766 ; gain = 687.766
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1112.7662default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1214.5472default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
cfcc3be52default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
372default:default2
132default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:142default:default2
00:00:152default:default2
1214.5472default:default2
796.5312default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�C:/Users/weirdchamp/Documents/Vivado Projects/FREQUENCY_CALCULATOR_WORKINGRN/FREQUENCY_CALCULATOR_WORKINGRN.runs/synth_1/FREQUENCY_CALCULATOR_TB.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
�Executing : report_utilization -file FREQUENCY_CALCULATOR_TB_utilization_synth.rpt -pb FREQUENCY_CALCULATOR_TB_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Dec  9 11:43:28 20222default:defaultZ17-206h px� 


End Record