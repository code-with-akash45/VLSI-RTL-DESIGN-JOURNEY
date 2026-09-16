#! /c/Source/iverilog-install/bin/vvp
:ivl_version "12.0 (devel)" "(s20150603-1539-g2693dd32b)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "C:\iverilog\lib\ivl\system.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_sys.vpi";
:vpi_module "C:\iverilog\lib\ivl\vhdl_textio.vpi";
:vpi_module "C:\iverilog\lib\ivl\v2005_math.vpi";
:vpi_module "C:\iverilog\lib\ivl\va_math.vpi";
S_000002a81bfbbbb0 .scope module, "tb_adder4" "tb_adder4" 2 3;
 .timescale -9 -12;
v000002a81c004230_0 .var "a", 3 0;
v000002a81c003ab0_0 .var "b", 3 0;
v000002a81c003d30_0 .var "cin", 0 0;
v000002a81c0045f0_0 .net "cout", 0 0, L_000002a81c004550;  1 drivers
v000002a81c004190_0 .net "sum", 3 0, L_000002a81c003dd0;  1 drivers
S_000002a81bfbbd40 .scope module, "uut" "adder4" 2 12, 3 3 0, S_000002a81bfbbbb0;
 .timescale -9 -12;
    .port_info 0 /INPUT 4 "a";
    .port_info 1 /INPUT 4 "b";
    .port_info 2 /INPUT 1 "cin";
    .port_info 3 /OUTPUT 4 "sum";
    .port_info 4 /OUTPUT 1 "cout";
L_000002a81c0518b0 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v000002a81bfd34d0_0 .net *"_ivl_10", 0 0, L_000002a81c0518b0;  1 drivers
v000002a81bfbb910_0 .net *"_ivl_11", 4 0, L_000002a81c004870;  1 drivers
v000002a81bfbb9b0_0 .net *"_ivl_13", 4 0, L_000002a81c0042d0;  1 drivers
L_000002a81c0518f8 .functor BUFT 1, C4<0000>, C4<0>, C4<0>, C4<0>;
v000002a81bfd2ce0_0 .net *"_ivl_16", 3 0, L_000002a81c0518f8;  1 drivers
v000002a81bfd2d80_0 .net *"_ivl_17", 4 0, L_000002a81c003a10;  1 drivers
v000002a81bfd2e20_0 .net *"_ivl_3", 4 0, L_000002a81c003b50;  1 drivers
L_000002a81c051868 .functor BUFT 1, C4<0>, C4<0>, C4<0>, C4<0>;
v000002a81bfd2ec0_0 .net *"_ivl_6", 0 0, L_000002a81c051868;  1 drivers
v000002a81bfd2f60_0 .net *"_ivl_7", 4 0, L_000002a81c004370;  1 drivers
v000002a81bfd3000_0 .net "a", 3 0, v000002a81c004230_0;  1 drivers
v000002a81bfd30a0_0 .net "b", 3 0, v000002a81c003ab0_0;  1 drivers
v000002a81c003920_0 .net "cin", 0 0, v000002a81c003d30_0;  1 drivers
v000002a81c004050_0 .net "cout", 0 0, L_000002a81c004550;  alias, 1 drivers
v000002a81c0047d0_0 .net "sum", 3 0, L_000002a81c003dd0;  alias, 1 drivers
L_000002a81c004550 .part L_000002a81c003a10, 4, 1;
L_000002a81c003dd0 .part L_000002a81c003a10, 0, 4;
L_000002a81c003b50 .concat [ 4 1 0 0], v000002a81c004230_0, L_000002a81c051868;
L_000002a81c004370 .concat [ 4 1 0 0], v000002a81c003ab0_0, L_000002a81c0518b0;
L_000002a81c004870 .arith/sum 5, L_000002a81c003b50, L_000002a81c004370;
L_000002a81c0042d0 .concat [ 1 4 0 0], v000002a81c003d30_0, L_000002a81c0518f8;
L_000002a81c003a10 .arith/sum 5, L_000002a81c004870, L_000002a81c0042d0;
    .scope S_000002a81bfbbbb0;
T_0 ;
    %vpi_call 2 22 "$dumpfile", "adder4.vcd" {0 0 0};
    %vpi_call 2 23 "$dumpvars", 32'sb00000000000000000000000000000000, S_000002a81bfbbbb0 {0 0 0};
    %pushi/vec4 3, 0, 4;
    %store/vec4 v000002a81c004230_0, 0, 4;
    %pushi/vec4 2, 0, 4;
    %store/vec4 v000002a81c003ab0_0, 0, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002a81c003d30_0, 0, 1;
    %delay 10000, 0;
    %pushi/vec4 15, 0, 4;
    %store/vec4 v000002a81c004230_0, 0, 4;
    %pushi/vec4 1, 0, 4;
    %store/vec4 v000002a81c003ab0_0, 0, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002a81c003d30_0, 0, 1;
    %delay 10000, 0;
    %pushi/vec4 5, 0, 4;
    %store/vec4 v000002a81c004230_0, 0, 4;
    %pushi/vec4 3, 0, 4;
    %store/vec4 v000002a81c003ab0_0, 0, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v000002a81c003d30_0, 0, 1;
    %delay 10000, 0;
    %pushi/vec4 10, 0, 4;
    %store/vec4 v000002a81c004230_0, 0, 4;
    %pushi/vec4 5, 0, 4;
    %store/vec4 v000002a81c003ab0_0, 0, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v000002a81c003d30_0, 0, 1;
    %delay 10000, 0;
    %vpi_call 2 45 "$finish" {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "tb_adder4.v";
    "adder4.v";
