
�
Command: %s
53*	vivadotcl2R
>synth_design -top mix_columns -part xc7a50tcsg325-1 -max_dsp 02default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a50t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a50t2default:defaultZ17-349h px� 
~
CUser specified maximum number of block DSP allowed in design is %s
139*	vivadotcl2
02default:defaultZ4-287h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 344.391 ; gain = 100.738
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
mix_columns2default:default2~
hC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/sources_1/new/mix_columns.v2default:default2
232default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2,
crypto_mul_32Bit_wrapper2default:default2�
uC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/sources_1/new/crypto_mul_32Bit_wrapper.v2default:default2
232default:default8@Z8-638h px� 
b
%s
*synth2J
6	Parameter a_row0 bound to: 33751297 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter a_row1 bound to: 16909057 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter a_row2 bound to: 16843267 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter a_row3 bound to: 50397442 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'638*oasys2%
bit_32_crypto_mul2default:default2�
nC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/sources_1/new/bit_32_crypto_mul.v2default:default2
232default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2$
bit_8_crypto_mul2default:default2�
mC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/sources_1/new/bit_8_crypto_mul.v2default:default2
232default:default8@Z8-638h px� 
K
%s
*synth23
	Parameter gnd bound to: 1'b0 
2default:defaulth p
x
� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2
keep2default:default2
true2default:default2�
mC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/sources_1/new/bit_8_crypto_mul.v2default:default2
312default:default8@Z8-5534h px� 
�
"Detected attribute (* %s = "%s" *)3982*oasys2
keep2default:default2
true2default:default2�
mC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/sources_1/new/bit_8_crypto_mul.v2default:default2
322default:default8@Z8-5534h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2$
bit_8_crypto_mul2default:default2
12default:default2
12default:default2�
mC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/sources_1/new/bit_8_crypto_mul.v2default:default2
232default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2%
bit_32_crypto_mul2default:default2
22default:default2
12default:default2�
nC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/sources_1/new/bit_32_crypto_mul.v2default:default2
232default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2,
crypto_mul_32Bit_wrapper2default:default2
32default:default2
12default:default2�
uC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/sources_1/new/crypto_mul_32Bit_wrapper.v2default:default2
232default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
mix_columns2default:default2
42default:default2
12default:default2~
hC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/sources_1/new/mix_columns.v2default:default2
232default:default8@Z8-256h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 396.500 ; gain = 152.848
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 396.500 ; gain = 152.848
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
xc7a50tcsg325-12default:defaultZ21-403h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2x
bC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/constrs_1/new/tim.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2x
bC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.srcs/constrs_1/new/tim.xdc2default:default8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0272default:default2
733.6882default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:21 ; elapsed = 00:00:24 . Memory (MB): peak = 733.688 ; gain = 490.035
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
Loading part: xc7a50tcsg325-1
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:21 ; elapsed = 00:00:24 . Memory (MB): peak = 733.688 ; gain = 490.035
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
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:24 . Memory (MB): peak = 733.688 ; gain = 490.035
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
}
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2!
delay_cntr_en2default:defaultZ8-5546h px� 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	compute_22default:defaultZ8-5546h px� 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	compute_32default:defaultZ8-5546h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 733.688 ; gain = 490.035
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit         XORs := 192   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit         XORs := 16    
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
.	              128 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 80    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
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
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 320   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 320   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 192   
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
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
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
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
@
%s
*synth2(
Module mix_columns 
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
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
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
.	              128 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
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
Z
%s
*synth2B
.	   4 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
E
%s
*synth2-
Module bit_8_crypto_mul 
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
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit         XORs := 3     
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
.	                8 Bit    Registers := 1     
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
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
F
%s
*synth2.
Module bit_32_crypto_mul 
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
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit         XORs := 1     
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
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
M
%s
*synth25
!Module crypto_mul_32Bit_wrapper 
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
.	               32 Bit    Registers := 1     
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
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
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
DSPs: 120 (col length:60)
BRAMs: 150 (col length: RAMB18 60 RAMB36 30)
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:29 . Memory (MB): peak = 733.688 ; gain = 490.035
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
R
%s
*synth2:
&Start Applying XDC Timing Constraints
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:34 ; elapsed = 00:00:38 . Memory (MB): peak = 733.688 ; gain = 490.035
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
|Finished Timing Optimization : Time (s): cpu = 00:00:34 ; elapsed = 00:00:38 . Memory (MB): peak = 739.148 ; gain = 495.496
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
{Finished Technology Mapping : Time (s): cpu = 00:00:35 ; elapsed = 00:00:39 . Memory (MB): peak = 756.508 ; gain = 512.855
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
uFinished IO Insertion : Time (s): cpu = 00:00:36 ; elapsed = 00:00:40 . Memory (MB): peak = 756.508 ; gain = 512.855
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:36 ; elapsed = 00:00:40 . Memory (MB): peak = 756.508 ; gain = 512.855
2default:defaulth px� 
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

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:36 ; elapsed = 00:00:41 . Memory (MB): peak = 756.508 ; gain = 512.855
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:36 ; elapsed = 00:00:41 . Memory (MB): peak = 756.508 ; gain = 512.855
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:36 ; elapsed = 00:00:41 . Memory (MB): peak = 756.508 ; gain = 512.855
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:36 ; elapsed = 00:00:41 . Memory (MB): peak = 756.508 ; gain = 512.855
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
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
B
%s*synth2*
|1     |BUFG |     1|
2default:defaulth px� 
B
%s*synth2*
|2     |LUT1 |   128|
2default:defaulth px� 
B
%s*synth2*
|3     |LUT2 |     1|
2default:defaulth px� 
B
%s*synth2*
|4     |LUT3 |    64|
2default:defaulth px� 
B
%s*synth2*
|5     |LUT4 |   128|
2default:defaulth px� 
B
%s*synth2*
|6     |LUT5 |   324|
2default:defaulth px� 
B
%s*synth2*
|7     |LUT6 |   194|
2default:defaulth px� 
B
%s*synth2*
|8     |FDRE |   901|
2default:defaulth px� 
B
%s*synth2*
|9     |IBUF |   131|
2default:defaulth px� 
B
%s*synth2*
|10    |OBUF |   128|
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+---------+---------------------------+------+
2default:defaulth p
x
� 
b
%s
*synth2J
6|      |Instance |Module                     |Cells |
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+---------+---------------------------+------+
2default:defaulth p
x
� 
b
%s
*synth2J
6|1     |top      |                           |  2000|
2default:defaulth p
x
� 
b
%s
*synth2J
6|2     |  i0     |crypto_mul_32Bit_wrapper   |   400|
2default:defaulth p
x
� 
b
%s
*synth2J
6|3     |    i0   |bit_32_crypto_mul_61       |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|4     |      i0 |bit_8_crypto_mul_77        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|5     |      i1 |bit_8_crypto_mul_78        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|6     |      i2 |bit_8_crypto_mul_79        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|7     |      i3 |bit_8_crypto_mul_80        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|8     |    i1   |bit_32_crypto_mul_62       |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|9     |      i0 |bit_8_crypto_mul_73        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|10    |      i1 |bit_8_crypto_mul_74        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|11    |      i2 |bit_8_crypto_mul_75        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|12    |      i3 |bit_8_crypto_mul_76        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|13    |    i2   |bit_32_crypto_mul_63       |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|14    |      i0 |bit_8_crypto_mul_69        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|15    |      i1 |bit_8_crypto_mul_70        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|16    |      i2 |bit_8_crypto_mul_71        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|17    |      i3 |bit_8_crypto_mul_72        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|18    |    i3   |bit_32_crypto_mul_64       |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|19    |      i0 |bit_8_crypto_mul_65        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|20    |      i1 |bit_8_crypto_mul_66        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|21    |      i2 |bit_8_crypto_mul_67        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|22    |      i3 |bit_8_crypto_mul_68        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|23    |  i1     |crypto_mul_32Bit_wrapper_0 |   400|
2default:defaulth p
x
� 
b
%s
*synth2J
6|24    |    i0   |bit_32_crypto_mul_41       |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|25    |      i0 |bit_8_crypto_mul_57        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|26    |      i1 |bit_8_crypto_mul_58        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|27    |      i2 |bit_8_crypto_mul_59        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|28    |      i3 |bit_8_crypto_mul_60        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|29    |    i1   |bit_32_crypto_mul_42       |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|30    |      i0 |bit_8_crypto_mul_53        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|31    |      i1 |bit_8_crypto_mul_54        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|32    |      i2 |bit_8_crypto_mul_55        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|33    |      i3 |bit_8_crypto_mul_56        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|34    |    i2   |bit_32_crypto_mul_43       |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|35    |      i0 |bit_8_crypto_mul_49        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|36    |      i1 |bit_8_crypto_mul_50        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|37    |      i2 |bit_8_crypto_mul_51        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|38    |      i3 |bit_8_crypto_mul_52        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|39    |    i3   |bit_32_crypto_mul_44       |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|40    |      i0 |bit_8_crypto_mul_45        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|41    |      i1 |bit_8_crypto_mul_46        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|42    |      i2 |bit_8_crypto_mul_47        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|43    |      i3 |bit_8_crypto_mul_48        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|44    |  i2     |crypto_mul_32Bit_wrapper_1 |   401|
2default:defaulth p
x
� 
b
%s
*synth2J
6|45    |    i0   |bit_32_crypto_mul_21       |    93|
2default:defaulth p
x
� 
b
%s
*synth2J
6|46    |      i0 |bit_8_crypto_mul_37        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|47    |      i1 |bit_8_crypto_mul_38        |    20|
2default:defaulth p
x
� 
b
%s
*synth2J
6|48    |      i2 |bit_8_crypto_mul_39        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|49    |      i3 |bit_8_crypto_mul_40        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|50    |    i1   |bit_32_crypto_mul_22       |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|51    |      i0 |bit_8_crypto_mul_33        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|52    |      i1 |bit_8_crypto_mul_34        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|53    |      i2 |bit_8_crypto_mul_35        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|54    |      i3 |bit_8_crypto_mul_36        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|55    |    i2   |bit_32_crypto_mul_23       |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|56    |      i0 |bit_8_crypto_mul_29        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|57    |      i1 |bit_8_crypto_mul_30        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|58    |      i2 |bit_8_crypto_mul_31        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|59    |      i3 |bit_8_crypto_mul_32        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|60    |    i3   |bit_32_crypto_mul_24       |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|61    |      i0 |bit_8_crypto_mul_25        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|62    |      i1 |bit_8_crypto_mul_26        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|63    |      i2 |bit_8_crypto_mul_27        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|64    |      i3 |bit_8_crypto_mul_28        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|65    |  i3     |crypto_mul_32Bit_wrapper_2 |   400|
2default:defaulth p
x
� 
b
%s
*synth2J
6|66    |    i0   |bit_32_crypto_mul          |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|67    |      i0 |bit_8_crypto_mul_17        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|68    |      i1 |bit_8_crypto_mul_18        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|69    |      i2 |bit_8_crypto_mul_19        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|70    |      i3 |bit_8_crypto_mul_20        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|71    |    i1   |bit_32_crypto_mul_3        |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|72    |      i0 |bit_8_crypto_mul_13        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|73    |      i1 |bit_8_crypto_mul_14        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|74    |      i2 |bit_8_crypto_mul_15        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|75    |      i3 |bit_8_crypto_mul_16        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|76    |    i2   |bit_32_crypto_mul_4        |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|77    |      i0 |bit_8_crypto_mul_9         |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|78    |      i1 |bit_8_crypto_mul_10        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|79    |      i2 |bit_8_crypto_mul_11        |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|80    |      i3 |bit_8_crypto_mul_12        |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6|81    |    i3   |bit_32_crypto_mul_5        |    92|
2default:defaulth p
x
� 
b
%s
*synth2J
6|82    |      i0 |bit_8_crypto_mul           |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|83    |      i1 |bit_8_crypto_mul_6         |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|84    |      i2 |bit_8_crypto_mul_7         |    19|
2default:defaulth p
x
� 
b
%s
*synth2J
6|85    |      i3 |bit_8_crypto_mul_8         |    27|
2default:defaulth p
x
� 
b
%s
*synth2J
6+------+---------+---------------------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:36 ; elapsed = 00:00:41 . Memory (MB): peak = 756.508 ; gain = 512.855
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:21 ; elapsed = 00:00:34 . Memory (MB): peak = 756.508 ; gain = 175.668
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Complete : Time (s): cpu = 00:00:36 ; elapsed = 00:00:41 . Memory (MB): peak = 756.508 ; gain = 512.855
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1312default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
252default:default2
02default:default2
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
00:00:392default:default2
00:00:442default:default2
756.5082default:default2
525.8052default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2x
dC:/Users/uttej/Desktop/VivadoProjs/learn_hw/AES_algorithm/AES_algorithm.runs/synth_1/mix_columns.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
rExecuting : report_utilization -file mix_columns_utilization_synth.rpt -pb bit_32_crypto_mul_utilization_synth.pb
2default:defaulth px� 
�
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.044 . Memory (MB): peak = 756.508 ; gain = 0.000
*commonh px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Apr  1 14:08:31 20192default:defaultZ17-206h px� 


End Record