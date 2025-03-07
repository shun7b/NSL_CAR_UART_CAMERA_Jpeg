
/*Produced by NSL Core(version=20240708), IP ARCH, Inc. Sat Mar  8 06:10:38 2025
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module cam_test ( p_reset , m_clock , in_data , in_data2 , href , href2 , pclk , pclk2 , xclk , xclk2 , c_vsync , c_vsync2 , push , push_minus , sw_send , sda , scl , reset , pwdn , sda2 , scl2 , reset2 , pwdn2 , motor_sig , motor_sig2 , VGA_R , VGA_B , VGA_G , VGA_VS , VGA_HS , HEX0 , HEX1 , HEX2 , HEX3 , HEX4 , HEX5 , txd );
  input p_reset, m_clock;
  wire p_reset, m_clock;
  input [7:0] in_data;
  wire [7:0] in_data;
  input [7:0] in_data2;
  wire [7:0] in_data2;
  input href;
  wire href;
  input href2;
  wire href2;
  input pclk;
  wire pclk;
  input pclk2;
  wire pclk2;
  output xclk;
  wire xclk;
  output xclk2;
  wire xclk2;
  input c_vsync;
  wire c_vsync;
  input c_vsync2;
  wire c_vsync2;
  input push;
  wire push;
  input push_minus;
  wire push_minus;
  input sw_send;
  wire sw_send;
  output sda;
  wire sda;
  output scl;
  wire scl;
  output reset;
  wire reset;
  output pwdn;
  wire pwdn;
  output sda2;
  wire sda2;
  output scl2;
  wire scl2;
  output reset2;
  wire reset2;
  output pwdn2;
  wire pwdn2;
  output motor_sig;
  wire motor_sig;
  output motor_sig2;
  wire motor_sig2;
  output [3:0] VGA_R;
  wire [3:0] VGA_R;
  output [3:0] VGA_B;
  wire [3:0] VGA_B;
  output [3:0] VGA_G;
  wire [3:0] VGA_G;
  output VGA_VS;
  wire VGA_VS;
  output VGA_HS;
  wire VGA_HS;
  output [7:0] HEX0;
  wire [7:0] HEX0;
  output [7:0] HEX1;
  wire [7:0] HEX1;
  output [7:0] HEX2;
  wire [7:0] HEX2;
  output [7:0] HEX3;
  wire [7:0] HEX3;
  output [7:0] HEX4;
  wire [7:0] HEX4;
  output [7:0] HEX5;
  wire [7:0] HEX5;
  output txd;
  wire txd;
  reg [1:0] uart_time;
  reg [11:0] wait_uart;
  reg clk25;
  reg [31:0] rgb_num;
  reg [7:0] uart_data;
  reg [7:0] uart_data2;
  reg [7:0] uart_data3;
  reg motor_light;
  reg [3:0] motor_sw;
  reg [31:0] VGA_plot_num_x;
  reg [31:0] VGA_plot_num_y;
  reg [31:0] plot_num_x;
  reg [31:0] plot_num;
  reg [31:0] plot_nums;
  reg [31:0] plot_num_y;
  reg [9:0] wait_motor;
  reg [31:0] plot_num_x2;
  reg motor_enable;
  reg [31:0] plot_num_y2;
  reg [31:0] count;
  reg [2:0] motor_state;
  reg [7:0] uart_data_in;
  reg [2:0] motor_mode;
  reg end_sw;
  reg [7:0] encode [0:15];
  wire [7:0] _send_Tx_Data_i;
  wire _send_TxD_o;
  wire [15:0] _send_Freq_Divide_Param_i;
  wire [1:0] _send_Tx_BitLength_i;
  wire _send_Tx_ParityEN_i;
  wire _send_Tx_OddParity_i;
  wire _send_Tx_Enable_i;
  wire _send_Tx_Ready_o;
  wire _send_Tx_ShiftClock_o;
  wire _send_Tx_Start_i;
  wire _send_Tx_Finish_o;
  wire _send_p_reset;
  wire _send_m_clock;
  wire [3:0] _VGA_out_VGA_R;
  wire [3:0] _VGA_out_VGA_B;
  wire [3:0] _VGA_out_VGA_G;
  wire _VGA_out_VGA_VS;
  wire _VGA_out_VGA_HS;
  wire [7:0] _VGA_out_HEX0;
  wire [9:0] _VGA_out_plot_num_x;
  wire [9:0] _VGA_out_plot_num_y;
  wire [3:0] _VGA_out_VGA_RI;
  wire _VGA_out_p_reset;
  wire _VGA_out_m_clock;
  wire [7:0] _camera_out_in_data;
  wire _camera_out_href;
  wire _camera_out_pclk;
  wire _camera_out_xclk;
  wire _camera_out_c_vsync;
  wire _camera_out_sda;
  wire _camera_out_scl;
  wire _camera_out_reset;
  wire _camera_out_pwdn;
  wire [3:0] _camera_out_VGA_R;
  wire [3:0] _camera_out_VGA_B;
  wire [3:0] _camera_out_VGA_G;
  wire [9:0] _camera_out_out_plot_num_x;
  wire _camera_out_time_RGB;
  wire [9:0] _camera_out_out_plot_num_y;
  wire _camera_out_p_reset;
  wire _camera_out_m_clock;
  wire [7:0] _camera_out_1_in_data;
  wire _camera_out_1_href;
  wire _camera_out_1_pclk;
  wire _camera_out_1_xclk;
  wire _camera_out_1_c_vsync;
  wire _camera_out_1_sda;
  wire _camera_out_1_scl;
  wire _camera_out_1_reset;
  wire _camera_out_1_pwdn;
  wire [3:0] _camera_out_1_VGA_R;
  wire [3:0] _camera_out_1_VGA_B;
  wire [3:0] _camera_out_1_VGA_G;
  wire [9:0] _camera_out_1_out_plot_num_x;
  wire _camera_out_1_time_RGB;
  wire [9:0] _camera_out_1_out_plot_num_y;
  wire _camera_out_1_p_reset;
  wire _camera_out_1_m_clock;
  wire [3:0] _vram_x_data;
  wire [13:0] _vram_x_rdaddress;
  wire [13:0] _vram_x_wraddress;
  wire _vram_x_wren;
  wire [3:0] _vram_x_q;
  wire _vram_x_p_reset;
  wire _vram_x_m_clock;
  wire [3:0] _vram_x_5_data;
  wire [13:0] _vram_x_5_rdaddress;
  wire [13:0] _vram_x_5_wraddress;
  wire _vram_x_5_wren;
  wire [3:0] _vram_x_5_q;
  wire _vram_x_5_p_reset;
  wire _vram_x_5_m_clock;
  wire [3:0] _vram_x_4_data;
  wire [13:0] _vram_x_4_rdaddress;
  wire [13:0] _vram_x_4_wraddress;
  wire _vram_x_4_wren;
  wire [3:0] _vram_x_4_q;
  wire _vram_x_4_p_reset;
  wire _vram_x_4_m_clock;
  wire [3:0] _vram_x_3_data;
  wire [13:0] _vram_x_3_rdaddress;
  wire [13:0] _vram_x_3_wraddress;
  wire _vram_x_3_wren;
  wire [3:0] _vram_x_3_q;
  wire _vram_x_3_p_reset;
  wire _vram_x_3_m_clock;
  wire [3:0] _vram_x_2_data;
  wire [13:0] _vram_x_2_rdaddress;
  wire [13:0] _vram_x_2_wraddress;
  wire _vram_x_2_wren;
  wire [3:0] _vram_x_2_q;
  wire _vram_x_2_p_reset;
  wire _vram_x_2_m_clock;
  wire [3:0] _vram_x_1_data;
  wire [13:0] _vram_x_1_rdaddress;
  wire [13:0] _vram_x_1_wraddress;
  wire _vram_x_1_wren;
  wire [3:0] _vram_x_1_q;
  wire _vram_x_1_p_reset;
  wire _vram_x_1_m_clock;
  wire _motor_x_power;
  wire [3:0] _motor_x_HEX;
  wire [3:0] _motor_x_HEXpwm;
  wire [3:0] _motor_x_HEXpwm1;
  wire [3:0] _motor_x_HEXpwm2;
  wire [3:0] _motor_x_HEXpwm3;
  wire [3:0] _motor_x_HEXpwm4;
  wire [3:0] _motor_x_HEXpwm5;
  wire [1:0] _motor_x_sw;
  wire _motor_x_push;
  wire _motor_x_push_minus;
  wire _motor_x_set_RL;
  wire _motor_x_p_reset;
  wire _motor_x_m_clock;
  wire _motor_x_1_power;
  wire [3:0] _motor_x_1_HEX;
  wire [3:0] _motor_x_1_HEXpwm;
  wire [3:0] _motor_x_1_HEXpwm1;
  wire [3:0] _motor_x_1_HEXpwm2;
  wire [3:0] _motor_x_1_HEXpwm3;
  wire [3:0] _motor_x_1_HEXpwm4;
  wire [3:0] _motor_x_1_HEXpwm5;
  wire [1:0] _motor_x_1_sw;
  wire _motor_x_1_push;
  wire _motor_x_1_push_minus;
  wire _motor_x_1_set_RL;
  wire _motor_x_1_p_reset;
  wire _motor_x_1_m_clock;
  wire [7:0] _net_0;
  wire [7:0] _net_1;
  wire [7:0] _net_2;
  wire [7:0] _net_3;
  wire [7:0] _net_4;
  wire [7:0] _net_5;
  wire _net_6;
  wire [9:0] _net_7;
  wire [9:0] _net_8;
  wire [63:0] _net_9;
  wire [9:0] _net_10;
  wire [9:0] _net_11;
  wire [63:0] _net_12;
  wire [9:0] _net_13;
  wire [9:0] _net_14;
  wire [63:0] _net_15;
  wire _net_16;
  wire [31:0] _net_17;
  wire [31:0] _net_18;
  wire [31:0] _net_19;
  wire [31:0] _net_20;
  wire _net_21;
  wire [31:0] _net_22;
  wire [31:0] _net_23;
  wire [31:0] _net_24;
  wire [31:0] _net_25;
  wire _net_26;
  wire _net_27;
  wire [31:0] _net_28;
  wire [31:0] _net_29;
  wire [31:0] _net_30;
  wire [31:0] _net_31;
  wire _net_32;
  wire _net_33;
  wire _net_34;
  wire [31:0] _net_35;
  wire [31:0] _net_36;
  wire [31:0] _net_37;
  wire [31:0] _net_38;
  wire _net_39;
  wire _net_40;
  wire _net_41;
  wire _net_42;
  wire _net_43;
  wire _net_44;
  wire _net_45;
  wire _net_46;
  wire _net_47;
  wire _net_48;
  wire _net_49;
  wire _net_50;
  wire _net_51;
  wire _net_52;
  wire _net_53;
  wire _net_54;
  wire _net_55;
motor motor_x (.m_clock(m_clock), .p_reset( p_reset), .sw(_motor_x_sw), .push(_motor_x_push), .push_minus(_motor_x_push_minus), .set_RL(_motor_x_set_RL), .power(_motor_x_power), .HEX(_motor_x_HEX), .HEXpwm(_motor_x_HEXpwm), .HEXpwm1(_motor_x_HEXpwm1), .HEXpwm2(_motor_x_HEXpwm2), .HEXpwm3(_motor_x_HEXpwm3), .HEXpwm4(_motor_x_HEXpwm4), .HEXpwm5(_motor_x_HEXpwm5));
motor motor_x_1 (.m_clock(m_clock), .p_reset( p_reset), .sw(_motor_x_1_sw), .push(_motor_x_1_push), .push_minus(_motor_x_1_push_minus), .set_RL(_motor_x_1_set_RL), .power(_motor_x_1_power), .HEX(_motor_x_1_HEX), .HEXpwm(_motor_x_1_HEXpwm), .HEXpwm1(_motor_x_1_HEXpwm1), .HEXpwm2(_motor_x_1_HEXpwm2), .HEXpwm3(_motor_x_1_HEXpwm3), .HEXpwm4(_motor_x_1_HEXpwm4), .HEXpwm5(_motor_x_1_HEXpwm5));

RGB vram_x ( .data(_vram_x_data),.inclock(pclk),.outclock(m_clock), .rdaddress(_vram_x_rdaddress), .wraddress(_vram_x_wraddress), .wren(_vram_x_wren), .q(_vram_x_q));
RGB vram_x_2 ( .data(_vram_x_2_data),.inclock(pclk),.outclock(m_clock), .rdaddress(_vram_x_2_rdaddress), .wraddress(_vram_x_2_wraddress), .wren(_vram_x_2_wren), .q(_vram_x_2_q));
RGB vram_x_1 ( .data(_vram_x_1_data),.inclock(pclk),.outclock(m_clock), .rdaddress(_vram_x_1_rdaddress), .wraddress(_vram_x_1_wraddress), .wren(_vram_x_1_wren), .q(_vram_x_1_q));
RGB vram_x_3 ( .data(_vram_x_3_data),.inclock(pclk2),.outclock(m_clock), .rdaddress(_vram_x_3_rdaddress), .wraddress(_vram_x_3_wraddress), .wren(_vram_x_3_wren), .q(_vram_x_3_q));
RGB vram_x_5 ( .data(_vram_x_5_data),.inclock(pclk2),.outclock(m_clock), .rdaddress(_vram_x_5_rdaddress), .wraddress(_vram_x_5_wraddress), .wren(_vram_x_5_wren), .q(_vram_x_5_q));
RGB vram_x_4 ( .data(_vram_x_4_data),.inclock(pclk2),.outclock(m_clock), .rdaddress(_vram_x_4_rdaddress), .wraddress(_vram_x_4_wraddress), .wren(_vram_x_4_wren), .q(_vram_x_4_q));
camera camera_out (.m_clock(m_clock), .p_reset( p_reset), .out_plot_num_y(_camera_out_out_plot_num_y), .out_plot_num_x(_camera_out_out_plot_num_x), .time_RGB(_camera_out_time_RGB), .VGA_R(_camera_out_VGA_R), .VGA_B(_camera_out_VGA_B), .VGA_G(_camera_out_VGA_G), .sda(_camera_out_sda), .scl(_camera_out_scl), .reset(_camera_out_reset), .pwdn(_camera_out_pwdn), .c_vsync(_camera_out_c_vsync), .xclk(_camera_out_xclk), .pclk(_camera_out_pclk), .href(_camera_out_href), .in_data(_camera_out_in_data));
camera camera_out_1 (.m_clock(m_clock), .p_reset( p_reset), .out_plot_num_y(_camera_out_1_out_plot_num_y), .out_plot_num_x(_camera_out_1_out_plot_num_x), .time_RGB(_camera_out_1_time_RGB), .VGA_R(_camera_out_1_VGA_R), .VGA_B(_camera_out_1_VGA_B), .VGA_G(_camera_out_1_VGA_G), .sda(_camera_out_1_sda), .scl(_camera_out_1_scl), .reset(_camera_out_1_reset), .pwdn(_camera_out_1_pwdn), .c_vsync(_camera_out_1_c_vsync), .xclk(_camera_out_1_xclk), .pclk(_camera_out_1_pclk), .href(_camera_out_1_href), .in_data(_camera_out_1_in_data));
VGA VGA_out (.m_clock(m_clock), .p_reset( p_reset), .VGA_RI(_VGA_out_VGA_RI), .VGA_R(_VGA_out_VGA_R), .VGA_B(_VGA_out_VGA_B), .VGA_G(_VGA_out_VGA_G), .VGA_VS(_VGA_out_VGA_VS), .VGA_HS(_VGA_out_VGA_HS), .HEX0(_VGA_out_HEX0), .plot_num_x(_VGA_out_plot_num_x), .plot_num_y(_VGA_out_plot_num_y));
uart send (.m_clock(m_clock), .p_reset( p_reset), .Tx_Finish_o(_send_Tx_Finish_o), .Tx_Start_i(_send_Tx_Start_i), .Tx_ShiftClock_o(_send_Tx_ShiftClock_o), .Tx_Ready_o(_send_Tx_Ready_o), .Tx_Enable_i(_send_Tx_Enable_i), .Tx_OddParity_i(_send_Tx_OddParity_i), .Tx_ParityEN_i(_send_Tx_ParityEN_i), .Tx_BitLength_i(_send_Tx_BitLength_i), .Freq_Divide_Param_i(_send_Freq_Divide_Param_i), .TxD_o(_send_TxD_o), .Tx_Data_i(_send_Tx_Data_i));

   assign  _send_Tx_Data_i = uart_data_in;
   assign  _send_Freq_Divide_Param_i = 16'b0000000000000000;
   assign  _send_Tx_BitLength_i = 2'b11;
   assign  _send_Tx_ParityEN_i = 1'b0;
   assign  _send_Tx_OddParity_i = 1'b0;
   assign  _send_Tx_Enable_i = 1'b1;

// synthesis translate_off
// synopsys translate_off
always @(posedge _send_Tx_Start_i)
  begin
#1 if (_send_Tx_Start_i===1'bx)
 begin
$display("Warning: control hazard(cam_test:_send_Tx_Start_i) at %d",$time);
 end
#1 if (((((_net_48&_net_49)&(~_net_50)))===1'bx) || (1'b1)===1'bx) $display("hazard (((_net_48&_net_49)&(~_net_50)) || 1'b1) line 240 at %d\n",$time);
 end

// synthesis translate_on
// synopsys translate_on
   assign  _send_Tx_Start_i = ((_net_48&_net_49)&(~_net_50));
   assign  _send_p_reset = p_reset;
   assign  _send_m_clock = m_clock;
   assign  _VGA_out_p_reset = p_reset;
   assign  _VGA_out_m_clock = m_clock;
   assign  _camera_out_in_data = in_data;
   assign  _camera_out_href = href;
   assign  _camera_out_pclk = pclk;
   assign  _camera_out_c_vsync = c_vsync;
   assign  _camera_out_p_reset = p_reset;
   assign  _camera_out_m_clock = m_clock;
   assign  _camera_out_1_in_data = in_data2;
   assign  _camera_out_1_href = href2;
   assign  _camera_out_1_pclk = pclk2;
   assign  _camera_out_1_c_vsync = c_vsync2;
   assign  _camera_out_1_p_reset = p_reset;
   assign  _camera_out_1_m_clock = m_clock;
   assign  _vram_x_data = 
// synthesis translate_off
// synopsys translate_off
((_net_6&_net_16))? 
// synthesis translate_on
// synopsys translate_on
(((_net_6&_net_16))?_camera_out_VGA_B:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((_net_48&(_net_26&_net_27)))
 begin $display("Warning: assign collision(cam_test:_vram_x_rdaddress) at %d",$time);
if (_net_48) $display("assert (_net_48) line 232 at %d\n",$time);
if ((_net_26&_net_27)) $display("assert ((_net_26&_net_27)) line 152 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _vram_x_rdaddress = 
// synthesis translate_off
// synopsys translate_off
((_net_48&(_net_26&_net_27)))? 14'bx :((_net_48|(_net_26&_net_27)))? 
// synthesis translate_on
// synopsys translate_on
((_net_48)?(rgb_num[13:0]):14'b0)|
    (((_net_26&_net_27))?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_wraddress = 
// synthesis translate_off
// synopsys translate_off
((_net_6&_net_16))? 
// synthesis translate_on
// synopsys translate_on
(((_net_6&_net_16))?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((((~_net_6)&(_net_6&(~_net_16)))|(((~_net_6)|(_net_6&(~_net_16)))&(_net_6&_net_16))))
 begin $display("Warning: assign collision(cam_test:_vram_x_wren) at %d",$time);
if ((~_net_6)) $display("assert ((~_net_6)) line 142 at %d\n",$time);
if ((_net_6&(~_net_16))) $display("assert ((_net_6&(~_net_16))) line 117 at %d\n",$time);
if ((_net_6&_net_16)) $display("assert ((_net_6&_net_16)) line 105 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _vram_x_wren = 
// synthesis translate_off
// synopsys translate_off
((((~_net_6)&(_net_6&(~_net_16)))|(((~_net_6)|(_net_6&(~_net_16)))&(_net_6&_net_16))))? 1'bx :((((~_net_6)|(_net_6&(~_net_16)))|(_net_6&_net_16)))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_6))?1'b0:1'b0)|
    (((_net_6&(~_net_16)))?1'b0:1'b0)|
    (((_net_6&_net_16))?1'b1:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_p_reset = p_reset;
   assign  _vram_x_m_clock = m_clock;
   assign  _vram_x_5_data = 
// synthesis translate_off
// synopsys translate_off
((_net_6&_net_21))? 
// synthesis translate_on
// synopsys translate_on
(((_net_6&_net_21))?_camera_out_1_VGA_R:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_5_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(((_net_26&(~_net_27))&_net_34))? 
// synthesis translate_on
// synopsys translate_on
((((_net_26&(~_net_27))&_net_34))?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_5_wraddress = 
// synthesis translate_off
// synopsys translate_off
((_net_6&_net_21))? 
// synthesis translate_on
// synopsys translate_on
(((_net_6&_net_21))?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((((~_net_6)&(_net_6&(~_net_21)))|(((~_net_6)|(_net_6&(~_net_21)))&(_net_6&_net_21))))
 begin $display("Warning: assign collision(cam_test:_vram_x_5_wren) at %d",$time);
if ((~_net_6)) $display("assert ((~_net_6)) line 147 at %d\n",$time);
if ((_net_6&(~_net_21))) $display("assert ((_net_6&(~_net_21))) line 139 at %d\n",$time);
if ((_net_6&_net_21)) $display("assert ((_net_6&_net_21)) line 132 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _vram_x_5_wren = 
// synthesis translate_off
// synopsys translate_off
((((~_net_6)&(_net_6&(~_net_21)))|(((~_net_6)|(_net_6&(~_net_21)))&(_net_6&_net_21))))? 1'bx :((((~_net_6)|(_net_6&(~_net_21)))|(_net_6&_net_21)))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_6))?1'b0:1'b0)|
    (((_net_6&(~_net_21)))?1'b0:1'b0)|
    (((_net_6&_net_21))?1'b1:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_5_p_reset = p_reset;
   assign  _vram_x_5_m_clock = m_clock;
   assign  _vram_x_4_data = 
// synthesis translate_off
// synopsys translate_off
((_net_6&_net_21))? 
// synthesis translate_on
// synopsys translate_on
(((_net_6&_net_21))?_camera_out_1_VGA_G:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_4_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(((_net_26&(~_net_27))&_net_34))? 
// synthesis translate_on
// synopsys translate_on
((((_net_26&(~_net_27))&_net_34))?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_4_wraddress = 
// synthesis translate_off
// synopsys translate_off
((_net_6&_net_21))? 
// synthesis translate_on
// synopsys translate_on
(((_net_6&_net_21))?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((((~_net_6)&(_net_6&(~_net_21)))|(((~_net_6)|(_net_6&(~_net_21)))&(_net_6&_net_21))))
 begin $display("Warning: assign collision(cam_test:_vram_x_4_wren) at %d",$time);
if ((~_net_6)) $display("assert ((~_net_6)) line 146 at %d\n",$time);
if ((_net_6&(~_net_21))) $display("assert ((_net_6&(~_net_21))) line 138 at %d\n",$time);
if ((_net_6&_net_21)) $display("assert ((_net_6&_net_21)) line 131 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _vram_x_4_wren = 
// synthesis translate_off
// synopsys translate_off
((((~_net_6)&(_net_6&(~_net_21)))|(((~_net_6)|(_net_6&(~_net_21)))&(_net_6&_net_21))))? 1'bx :((((~_net_6)|(_net_6&(~_net_21)))|(_net_6&_net_21)))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_6))?1'b0:1'b0)|
    (((_net_6&(~_net_21)))?1'b0:1'b0)|
    (((_net_6&_net_21))?1'b1:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_4_p_reset = p_reset;
   assign  _vram_x_4_m_clock = m_clock;
   assign  _vram_x_3_data = 
// synthesis translate_off
// synopsys translate_off
((_net_6&_net_21))? 
// synthesis translate_on
// synopsys translate_on
(((_net_6&_net_21))?_camera_out_1_VGA_B:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_3_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(((_net_26&(~_net_27))&_net_34))? 
// synthesis translate_on
// synopsys translate_on
((((_net_26&(~_net_27))&_net_34))?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_3_wraddress = 
// synthesis translate_off
// synopsys translate_off
((_net_6&_net_21))? 
// synthesis translate_on
// synopsys translate_on
(((_net_6&_net_21))?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((((~_net_6)&(_net_6&(~_net_21)))|(((~_net_6)|(_net_6&(~_net_21)))&(_net_6&_net_21))))
 begin $display("Warning: assign collision(cam_test:_vram_x_3_wren) at %d",$time);
if ((~_net_6)) $display("assert ((~_net_6)) line 145 at %d\n",$time);
if ((_net_6&(~_net_21))) $display("assert ((_net_6&(~_net_21))) line 137 at %d\n",$time);
if ((_net_6&_net_21)) $display("assert ((_net_6&_net_21)) line 125 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _vram_x_3_wren = 
// synthesis translate_off
// synopsys translate_off
((((~_net_6)&(_net_6&(~_net_21)))|(((~_net_6)|(_net_6&(~_net_21)))&(_net_6&_net_21))))? 1'bx :((((~_net_6)|(_net_6&(~_net_21)))|(_net_6&_net_21)))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_6))?1'b0:1'b0)|
    (((_net_6&(~_net_21)))?1'b0:1'b0)|
    (((_net_6&_net_21))?1'b1:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_3_p_reset = p_reset;
   assign  _vram_x_3_m_clock = m_clock;
   assign  _vram_x_2_data = 
// synthesis translate_off
// synopsys translate_off
((_net_6&_net_16))? 
// synthesis translate_on
// synopsys translate_on
(((_net_6&_net_16))?_camera_out_VGA_R:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((_net_48&(_net_26&_net_27)))
 begin $display("Warning: assign collision(cam_test:_vram_x_2_rdaddress) at %d",$time);
if (_net_48) $display("assert (_net_48) line 234 at %d\n",$time);
if ((_net_26&_net_27)) $display("assert ((_net_26&_net_27)) line 154 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _vram_x_2_rdaddress = 
// synthesis translate_off
// synopsys translate_off
((_net_48&(_net_26&_net_27)))? 14'bx :((_net_48|(_net_26&_net_27)))? 
// synthesis translate_on
// synopsys translate_on
((_net_48)?(rgb_num[13:0]):14'b0)|
    (((_net_26&_net_27))?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_wraddress = 
// synthesis translate_off
// synopsys translate_off
((_net_6&_net_16))? 
// synthesis translate_on
// synopsys translate_on
(((_net_6&_net_16))?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((((~_net_6)&(_net_6&(~_net_16)))|(((~_net_6)|(_net_6&(~_net_16)))&(_net_6&_net_16))))
 begin $display("Warning: assign collision(cam_test:_vram_x_2_wren) at %d",$time);
if ((~_net_6)) $display("assert ((~_net_6)) line 144 at %d\n",$time);
if ((_net_6&(~_net_16))) $display("assert ((_net_6&(~_net_16))) line 119 at %d\n",$time);
if ((_net_6&_net_16)) $display("assert ((_net_6&_net_16)) line 112 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _vram_x_2_wren = 
// synthesis translate_off
// synopsys translate_off
((((~_net_6)&(_net_6&(~_net_16)))|(((~_net_6)|(_net_6&(~_net_16)))&(_net_6&_net_16))))? 1'bx :((((~_net_6)|(_net_6&(~_net_16)))|(_net_6&_net_16)))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_6))?1'b0:1'b0)|
    (((_net_6&(~_net_16)))?1'b0:1'b0)|
    (((_net_6&_net_16))?1'b1:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_p_reset = p_reset;
   assign  _vram_x_2_m_clock = m_clock;
   assign  _vram_x_1_data = 
// synthesis translate_off
// synopsys translate_off
((_net_6&_net_16))? 
// synthesis translate_on
// synopsys translate_on
(((_net_6&_net_16))?_camera_out_VGA_G:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((_net_48&(_net_26&_net_27)))
 begin $display("Warning: assign collision(cam_test:_vram_x_1_rdaddress) at %d",$time);
if (_net_48) $display("assert (_net_48) line 233 at %d\n",$time);
if ((_net_26&_net_27)) $display("assert ((_net_26&_net_27)) line 153 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _vram_x_1_rdaddress = 
// synthesis translate_off
// synopsys translate_off
((_net_48&(_net_26&_net_27)))? 14'bx :((_net_48|(_net_26&_net_27)))? 
// synthesis translate_on
// synopsys translate_on
((_net_48)?(rgb_num[13:0]):14'b0)|
    (((_net_26&_net_27))?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_wraddress = 
// synthesis translate_off
// synopsys translate_off
((_net_6&_net_16))? 
// synthesis translate_on
// synopsys translate_on
(((_net_6&_net_16))?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((((~_net_6)&(_net_6&(~_net_16)))|(((~_net_6)|(_net_6&(~_net_16)))&(_net_6&_net_16))))
 begin $display("Warning: assign collision(cam_test:_vram_x_1_wren) at %d",$time);
if ((~_net_6)) $display("assert ((~_net_6)) line 143 at %d\n",$time);
if ((_net_6&(~_net_16))) $display("assert ((_net_6&(~_net_16))) line 118 at %d\n",$time);
if ((_net_6&_net_16)) $display("assert ((_net_6&_net_16)) line 111 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  _vram_x_1_wren = 
// synthesis translate_off
// synopsys translate_off
((((~_net_6)&(_net_6&(~_net_16)))|(((~_net_6)|(_net_6&(~_net_16)))&(_net_6&_net_16))))? 1'bx :((((~_net_6)|(_net_6&(~_net_16)))|(_net_6&_net_16)))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_6))?1'b0:1'b0)|
    (((_net_6&(~_net_16)))?1'b0:1'b0)|
    (((_net_6&_net_16))?1'b1:1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_p_reset = p_reset;
   assign  _vram_x_1_m_clock = m_clock;
   assign  _motor_x_sw = (motor_sw[3:2]);
   assign  _motor_x_push = push;
   assign  _motor_x_push_minus = push_minus;
   assign  _motor_x_set_RL = 1'b0;
   assign  _motor_x_p_reset = p_reset;
   assign  _motor_x_m_clock = m_clock;
   assign  _motor_x_1_sw = (motor_sw[1:0]);
   assign  _motor_x_1_push = push;
   assign  _motor_x_1_push_minus = push_minus;
   assign  _motor_x_1_set_RL = 1'b1;
   assign  _motor_x_1_p_reset = p_reset;
   assign  _motor_x_1_m_clock = m_clock;
   assign  _net_0 = (encode[_motor_x_HEXpwm]);
   assign  _net_1 = (encode[_motor_x_HEXpwm1]);
   assign  _net_2 = (encode[_motor_x_HEXpwm2]);
   assign  _net_3 = (encode[_motor_x_HEXpwm3]);
   assign  _net_4 = (encode[_motor_x_HEXpwm4]);
   assign  _net_5 = (encode[_motor_x_HEXpwm5]);
   assign  _net_6 = (~sw_send);
   assign  _net_7 = (_VGA_out_plot_num_x-10'b0000000111);
   assign  _net_8 = _VGA_out_plot_num_y;
   assign  _net_9 = ({({22'b0000000000000000000000,_net_8}),32'b00000000000000000000000000000000});
   assign  _net_10 = _camera_out_1_out_plot_num_x;
   assign  _net_11 = _camera_out_1_out_plot_num_y;
   assign  _net_12 = ({({22'b0000000000000000000000,_net_11}),32'b00000000000000000000000000000000});
   assign  _net_13 = _camera_out_out_plot_num_x;
   assign  _net_14 = _camera_out_out_plot_num_y;
   assign  _net_15 = ({({22'b0000000000000000000000,_net_14}),32'b00000000000000000000000000000000});
   assign  _net_16 = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?((((_camera_out_out_plot_num_x >= 10'b0000000000)&(_camera_out_out_plot_num_x < 10'b0010000000))&(_camera_out_out_plot_num_y >= 10'b0000000000))&(_camera_out_out_plot_num_y < 10'b0010000000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_17 = plot_num_x;
   assign  _net_18 = plot_num_y;
   assign  _net_19 = _net_18;
   assign  _net_20 = (_net_17+_net_19);
   assign  _net_21 = 
// synthesis translate_off
// synopsys translate_off
(_net_6)? 
// synthesis translate_on
// synopsys translate_on
((_net_6)?((((_camera_out_1_out_plot_num_x >= 10'b0000000000)&(_camera_out_1_out_plot_num_x < 10'b0010000000))&(_camera_out_1_out_plot_num_y >= 10'b0000000000))&(_camera_out_1_out_plot_num_y < 10'b0010000000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_22 = plot_num_x2;
   assign  _net_23 = plot_num_y2;
   assign  _net_24 = _net_23;
   assign  _net_25 = (_net_22+_net_24);
   assign  _net_26 = (~sw_send);
   assign  _net_27 = 
// synthesis translate_off
// synopsys translate_off
(_net_26)? 
// synthesis translate_on
// synopsys translate_on
((_net_26)?(((((_VGA_out_plot_num_x-10'b0000000111) >= 10'b0000000000)&((_VGA_out_plot_num_x-10'b0000000111) < 10'b0010000000))&(_VGA_out_plot_num_y >= 10'b0000000000))&(_VGA_out_plot_num_y < 10'b0010000000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_28 = VGA_plot_num_x;
   assign  _net_29 = VGA_plot_num_y;
   assign  _net_30 = _net_29;
   assign  _net_31 = (_net_28+_net_30);
   assign  _net_32 = 
// synthesis translate_off
// synopsys translate_off
((_net_26&_net_27))? 
// synthesis translate_on
// synopsys translate_on
(((_net_26&_net_27))?(((_VGA_out_plot_num_x-10'b0000000111)==10'b0000000000)&(_VGA_out_plot_num_y >= 10'b0000000000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_33 = 
// synthesis translate_off
// synopsys translate_off
(((_net_26&_net_27)&_net_32))? 
// synthesis translate_on
// synopsys translate_on
((((_net_26&_net_27)&_net_32))?(wait_motor==10'b0000010011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_34 = 
// synthesis translate_off
// synopsys translate_off
((_net_26&(~_net_27)))? 
// synthesis translate_on
// synopsys translate_on
(((_net_26&(~_net_27)))?(((((_VGA_out_plot_num_x-10'b0000000111) >= 10'b0010000000)&((_VGA_out_plot_num_x-10'b0000000111) < 10'b0100000000))&(_VGA_out_plot_num_y >= 10'b0010000000))&(_VGA_out_plot_num_y < 10'b0100000000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_35 = VGA_plot_num_x;
   assign  _net_36 = VGA_plot_num_y;
   assign  _net_37 = _net_36;
   assign  _net_38 = (_net_35+_net_37);
   assign  _net_39 = (count==32'b00000101111101011110000100000000);
   assign  _net_40 = ((motor_state[0])==1'b0);
   assign  _net_41 = 
// synthesis translate_off
// synopsys translate_off
((~_net_40))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_40))?((motor_state[1:0])==2'b01):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_42 = 
// synthesis translate_off
// synopsys translate_off
((~_net_40))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_40))?(motor_state==3'b011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_43 = 
// synthesis translate_off
// synopsys translate_off
((~_net_40))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_40))?(motor_state==3'b111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_44 = 
// synthesis translate_off
// synopsys translate_off
((motor_enable != 1'b0))? 
// synthesis translate_on
// synopsys translate_on
(((motor_enable != 1'b0))?(motor_mode==3'b011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_45 = 
// synthesis translate_off
// synopsys translate_off
(((motor_enable != 1'b0)&(~_net_44)))? 
// synthesis translate_on
// synopsys translate_on
((((motor_enable != 1'b0)&(~_net_44)))?(motor_mode==3'b100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_46 = 
// synthesis translate_off
// synopsys translate_off
((((motor_enable != 1'b0)&(~_net_44))&(~_net_45)))? 
// synthesis translate_on
// synopsys translate_on
(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45)))?(motor_mode==3'b001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_47 = 
// synthesis translate_off
// synopsys translate_off
(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46)))? 
// synthesis translate_on
// synopsys translate_on
((((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46)))?(motor_mode==3'b010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_48 = (sw_send&(~end_sw));
   assign  _net_49 = 
// synthesis translate_off
// synopsys translate_off
(_net_48)? 
// synthesis translate_on
// synopsys translate_on
((_net_48)?(wait_uart > 12'b011111010000):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_50 = 
// synthesis translate_off
// synopsys translate_off
((_net_48&_net_49))? 
// synthesis translate_on
// synopsys translate_on
(((_net_48&_net_49))?((rgb_num > 32'b00000000000000000011111111111111)&(rgb_num < 32'b00000001110010011100001110000000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_51 = 
// synthesis translate_off
// synopsys translate_off
(((_net_48&_net_49)&(~_net_50)))? 
// synthesis translate_on
// synopsys translate_on
((((_net_48&_net_49)&(~_net_50)))?(uart_time==2'b10):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_52 = 
// synthesis translate_off
// synopsys translate_off
(((_net_48&_net_49)&(~_net_50)))? 
// synthesis translate_on
// synopsys translate_on
((((_net_48&_net_49)&(~_net_50)))?(uart_time==2'b11):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_53 = 
// synthesis translate_off
// synopsys translate_off
(((_net_48&_net_49)&(~_net_50)))? 
// synthesis translate_on
// synopsys translate_on
((((_net_48&_net_49)&(~_net_50)))?(uart_time==2'b00):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_54 = 
// synthesis translate_off
// synopsys translate_off
(((_net_48&_net_49)&(~_net_50)))? 
// synthesis translate_on
// synopsys translate_on
((((_net_48&_net_49)&(~_net_50)))?(uart_time==2'b01):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_55 = (~sw_send);
   assign  xclk = _camera_out_xclk;
   assign  xclk2 = _camera_out_1_xclk;
   assign  sda = _camera_out_sda;
   assign  scl = _camera_out_scl;
   assign  reset = _camera_out_reset;
   assign  pwdn = _camera_out_pwdn;
   assign  sda2 = _camera_out_1_sda;
   assign  scl2 = _camera_out_1_scl;
   assign  reset2 = _camera_out_1_reset;
   assign  pwdn2 = _camera_out_1_pwdn;
   assign  motor_sig = _motor_x_1_power;
   assign  motor_sig2 = _motor_x_power;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if (((((~_net_26)&((_net_26&(~_net_27))&(~_net_34)))|(((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))&((_net_26&(~_net_27))&_net_34)))|((((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))|((_net_26&(~_net_27))&_net_34))&(_net_26&_net_27))))
 begin $display("Warning: assign collision(cam_test:VGA_R) at %d",$time);
if ((~_net_26)) $display("assert ((~_net_26)) line 185 at %d\n",$time);
if (((_net_26&(~_net_27))&(~_net_34))) $display("assert (((_net_26&(~_net_27))&(~_net_34))) line 180 at %d\n",$time);
if (((_net_26&(~_net_27))&_net_34)) $display("assert (((_net_26&(~_net_27))&_net_34)) line 177 at %d\n",$time);
if ((_net_26&_net_27)) $display("assert ((_net_26&_net_27)) line 157 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_R = 
// synthesis translate_off
// synopsys translate_off
(((((~_net_26)&((_net_26&(~_net_27))&(~_net_34)))|(((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))&((_net_26&(~_net_27))&_net_34)))|((((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))|((_net_26&(~_net_27))&_net_34))&(_net_26&_net_27))))? 4'bx :(((((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))|((_net_26&(~_net_27))&_net_34))|(_net_26&_net_27)))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_26))?4'b0000:4'b0)|
    ((((_net_26&(~_net_27))&(~_net_34)))?4'b0000:4'b0)|
    ((((_net_26&(~_net_27))&_net_34))?_vram_x_5_q:4'b0)|
    (((_net_26&_net_27))?_vram_x_2_q:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if (((((~_net_26)&((_net_26&(~_net_27))&(~_net_34)))|(((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))&((_net_26&(~_net_27))&_net_34)))|((((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))|((_net_26&(~_net_27))&_net_34))&(_net_26&_net_27))))
 begin $display("Warning: assign collision(cam_test:VGA_B) at %d",$time);
if ((~_net_26)) $display("assert ((~_net_26)) line 187 at %d\n",$time);
if (((_net_26&(~_net_27))&(~_net_34))) $display("assert (((_net_26&(~_net_27))&(~_net_34))) line 182 at %d\n",$time);
if (((_net_26&(~_net_27))&_net_34)) $display("assert (((_net_26&(~_net_27))&_net_34)) line 175 at %d\n",$time);
if ((_net_26&_net_27)) $display("assert ((_net_26&_net_27)) line 155 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_B = 
// synthesis translate_off
// synopsys translate_off
(((((~_net_26)&((_net_26&(~_net_27))&(~_net_34)))|(((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))&((_net_26&(~_net_27))&_net_34)))|((((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))|((_net_26&(~_net_27))&_net_34))&(_net_26&_net_27))))? 4'bx :(((((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))|((_net_26&(~_net_27))&_net_34))|(_net_26&_net_27)))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_26))?4'b0000:4'b0)|
    ((((_net_26&(~_net_27))&(~_net_34)))?4'b0000:4'b0)|
    ((((_net_26&(~_net_27))&_net_34))?_vram_x_3_q:4'b0)|
    (((_net_26&_net_27))?_vram_x_q:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if (((((~_net_26)&((_net_26&(~_net_27))&(~_net_34)))|(((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))&((_net_26&(~_net_27))&_net_34)))|((((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))|((_net_26&(~_net_27))&_net_34))&(_net_26&_net_27))))
 begin $display("Warning: assign collision(cam_test:VGA_G) at %d",$time);
if ((~_net_26)) $display("assert ((~_net_26)) line 186 at %d\n",$time);
if (((_net_26&(~_net_27))&(~_net_34))) $display("assert (((_net_26&(~_net_27))&(~_net_34))) line 181 at %d\n",$time);
if (((_net_26&(~_net_27))&_net_34)) $display("assert (((_net_26&(~_net_27))&_net_34)) line 176 at %d\n",$time);
if ((_net_26&_net_27)) $display("assert ((_net_26&_net_27)) line 156 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_G = 
// synthesis translate_off
// synopsys translate_off
(((((~_net_26)&((_net_26&(~_net_27))&(~_net_34)))|(((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))&((_net_26&(~_net_27))&_net_34)))|((((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))|((_net_26&(~_net_27))&_net_34))&(_net_26&_net_27))))? 4'bx :(((((~_net_26)|((_net_26&(~_net_27))&(~_net_34)))|((_net_26&(~_net_27))&_net_34))|(_net_26&_net_27)))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_26))?4'b0000:4'b0)|
    ((((_net_26&(~_net_27))&(~_net_34)))?4'b0000:4'b0)|
    ((((_net_26&(~_net_27))&_net_34))?_vram_x_4_q:4'b0)|
    (((_net_26&_net_27))?_vram_x_1_q:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  VGA_VS = _VGA_out_VGA_VS;
   assign  VGA_HS = _VGA_out_VGA_HS;
   assign  HEX0 = (~_net_0);
   assign  HEX1 = (~_net_1);
   assign  HEX2 = (~_net_2);
   assign  HEX3 = (~_net_3);
   assign  HEX4 = (~_net_4);
   assign  HEX5 = (~_net_5);
   assign  txd = _send_TxD_o;
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     uart_time <= 2'b00;
else 
// synthesis translate_off
// synopsys translate_off
if ((_net_55&((_net_48&_net_49)&(~_net_50))))   uart_time <= 2'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (_net_55)
      uart_time <= 2'b00;
else if (((_net_48&_net_49)&(~_net_50)))
      uart_time <= (uart_time+2'b01);
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((_net_55|((_net_48&_net_49)&(~_net_50)))==1'b1) ||
 ((_net_55|((_net_48&_net_49)&(~_net_50)))==1'b0) ) begin
 if ((_net_55&((_net_48&_net_49)&(~_net_50))))
 begin $display("Warning: assign collision(cam_test:uart_time) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:uart_time) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     wait_uart <= 12'b000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((_net_55&(_net_48&(~_net_49)))|((_net_55|(_net_48&(~_net_49)))&(_net_48&_net_49))))   wait_uart <= 12'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (_net_55)
      wait_uart <= 12'b000000000000;
else if ((_net_48&(~_net_49)))
      wait_uart <= (wait_uart+12'b000000000001);
else if ((_net_48&_net_49))
      wait_uart <= 12'b000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((_net_55|(_net_48&(~_net_49)))|(_net_48&_net_49))==1'b1) ||
 (((_net_55|(_net_48&(~_net_49)))|(_net_48&_net_49))==1'b0) ) begin
 if (((_net_55&(_net_48&(~_net_49)))|((_net_55|(_net_48&(~_net_49)))&(_net_48&_net_49))))
 begin $display("Warning: assign collision(cam_test:wait_uart) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:wait_uart) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     clk25 <= 1'b0;
else   clk25 <= clk25;
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     rgb_num <= 32'b00000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((_net_55&(((_net_48&_net_49)&(~_net_50))&_net_53))|((_net_55|(((_net_48&_net_49)&(~_net_50))&_net_53))&(((_net_48&_net_49)&(~_net_50))&_net_52)))|(((_net_55|(((_net_48&_net_49)&(~_net_50))&_net_53))|(((_net_48&_net_49)&(~_net_50))&_net_52))&((_net_48&_net_49)&_net_50))))   rgb_num <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (_net_55)
      rgb_num <= 32'b00000000000000000000000000000000;
else if ((((_net_48&_net_49)&(~_net_50))&_net_53))
      rgb_num <= (rgb_num+32'b00000000000000000000000000000001);
else if ((((_net_48&_net_49)&(~_net_50))&_net_52))
      rgb_num <= (rgb_num+32'b00000000000000000000000000000001);
else if (((_net_48&_net_49)&_net_50))
      rgb_num <= 32'b00000000001011011100011011000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((_net_55|(((_net_48&_net_49)&(~_net_50))&_net_53))|(((_net_48&_net_49)&(~_net_50))&_net_52))|((_net_48&_net_49)&_net_50))==1'b1) ||
 ((((_net_55|(((_net_48&_net_49)&(~_net_50))&_net_53))|(((_net_48&_net_49)&(~_net_50))&_net_52))|((_net_48&_net_49)&_net_50))==1'b0) ) begin
 if ((((_net_55&(((_net_48&_net_49)&(~_net_50))&_net_53))|((_net_55|(((_net_48&_net_49)&(~_net_50))&_net_53))&(((_net_48&_net_49)&(~_net_50))&_net_52)))|(((_net_55|(((_net_48&_net_49)&(~_net_50))&_net_53))|(((_net_48&_net_49)&(~_net_50))&_net_52))&((_net_48&_net_49)&_net_50))))
 begin $display("Warning: assign collision(cam_test:rgb_num) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:rgb_num) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     uart_data <= 8'b00000000;
else if (_net_55)
      uart_data <= 8'b00000000;
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     uart_data2 <= 8'b00000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((_net_55&(((_net_48&_net_49)&(~_net_50))&_net_53)))   uart_data2 <= 8'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (_net_55)
      uart_data2 <= 8'b00000000;
else if ((((_net_48&_net_49)&(~_net_50))&_net_53))
      uart_data2 <= ({_vram_x_q,4'b0000});
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((_net_55|(((_net_48&_net_49)&(~_net_50))&_net_53))==1'b1) ||
 ((_net_55|(((_net_48&_net_49)&(~_net_50))&_net_53))==1'b0) ) begin
 if ((_net_55&(((_net_48&_net_49)&(~_net_50))&_net_53)))
 begin $display("Warning: assign collision(cam_test:uart_data2) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:uart_data2) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     uart_data3 <= 8'b00000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((_net_55&(((_net_48&_net_49)&(~_net_50))&_net_54)))   uart_data3 <= 8'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (_net_55)
      uart_data3 <= 8'b00000000;
else if ((((_net_48&_net_49)&(~_net_50))&_net_54))
      uart_data3 <= ({_vram_x_1_q,_vram_x_q});
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((_net_55|(((_net_48&_net_49)&(~_net_50))&_net_54))==1'b1) ||
 ((_net_55|(((_net_48&_net_49)&(~_net_50))&_net_54))==1'b0) ) begin
 if ((_net_55&(((_net_48&_net_49)&(~_net_50))&_net_54)))
 begin $display("Warning: assign collision(cam_test:uart_data3) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:uart_data3) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     motor_light <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((((_net_26&(~_net_27))&_net_34)&((_net_26&_net_27)&(~_net_32)))|((((_net_26&(~_net_27))&_net_34)|((_net_26&_net_27)&(~_net_32)))&((_net_26&_net_27)&_net_32))))   motor_light <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((_net_26&(~_net_27))&_net_34))
      motor_light <= ((~(((_vram_x_3_q < 4'b0100)&(_vram_x_4_q < 4'b0100))&(_vram_x_5_q < 4'b0100)))&motor_light);
else if (((_net_26&_net_27)&(~_net_32)))
      motor_light <= ((~(((_vram_x_q < 4'b0100)&(_vram_x_1_q < 4'b0100))&(_vram_x_2_q < 4'b0100)))&motor_light);
else if (((_net_26&_net_27)&_net_32))
      motor_light <= (~(((_vram_x_q < 4'b0100)&(_vram_x_1_q < 4'b0100))&(_vram_x_2_q < 4'b0100)));
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((_net_26&(~_net_27))&_net_34)|((_net_26&_net_27)&(~_net_32)))|((_net_26&_net_27)&_net_32))==1'b1) ||
 (((((_net_26&(~_net_27))&_net_34)|((_net_26&_net_27)&(~_net_32)))|((_net_26&_net_27)&_net_32))==1'b0) ) begin
 if (((((_net_26&(~_net_27))&_net_34)&((_net_26&_net_27)&(~_net_32)))|((((_net_26&(~_net_27))&_net_34)|((_net_26&_net_27)&(~_net_32)))&((_net_26&_net_27)&_net_32))))
 begin $display("Warning: assign collision(cam_test:motor_light) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:motor_light) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     motor_sw <= 4'b0000;
else 
// synthesis translate_off
// synopsys translate_off
if (((((((~(motor_enable != 1'b0))&(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))|(((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))&(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&_net_47)))|((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&_net_47))&((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&_net_46)))|(((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&_net_47))|((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&_net_46))&(((motor_enable != 1'b0)&(~_net_44))&_net_45)))|((((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&_net_47))|((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&_net_46))|(((motor_enable != 1'b0)&(~_net_44))&_net_45))&((motor_enable != 1'b0)&_net_44))))   motor_sw <= 4'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((~(motor_enable != 1'b0)))
      motor_sw <= 4'b0000;
else if ((((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))
      motor_sw <= 4'b0000;
else if ((((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&_net_47))
      motor_sw <= 4'b1001;
else if (((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&_net_46))
      motor_sw <= 4'b0110;
else if ((((motor_enable != 1'b0)&(~_net_44))&_net_45))
      motor_sw <= 4'b1010;
else if (((motor_enable != 1'b0)&_net_44))
      motor_sw <= 4'b0101;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&_net_47))|((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&_net_46))|(((motor_enable != 1'b0)&(~_net_44))&_net_45))|((motor_enable != 1'b0)&_net_44))==1'b1) ||
 (((((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&_net_47))|((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&_net_46))|(((motor_enable != 1'b0)&(~_net_44))&_net_45))|((motor_enable != 1'b0)&_net_44))==1'b0) ) begin
 if (((((((~(motor_enable != 1'b0))&(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))|(((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))&(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&_net_47)))|((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&_net_47))&((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&_net_46)))|(((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&_net_47))|((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&_net_46))&(((motor_enable != 1'b0)&(~_net_44))&_net_45)))|((((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&(~_net_47)))|(((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&(~_net_46))&_net_47))|((((motor_enable != 1'b0)&(~_net_44))&(~_net_45))&_net_46))|(((motor_enable != 1'b0)&(~_net_44))&_net_45))&((motor_enable != 1'b0)&_net_44))))
 begin $display("Warning: assign collision(cam_test:motor_sw) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:motor_sw) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     VGA_plot_num_x <= 32'b00000000000000000000000000000000;
else if (_net_6)
      VGA_plot_num_x <= ({22'b0000000000000000000000,_net_7});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     VGA_plot_num_y <= 32'b00000000000000000000000000000000;
else if (_net_6)
      VGA_plot_num_y <= (_net_9[56:25]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_x <= 32'b00000000000000000000000000000000;
else if (_net_6)
      plot_num_x <= ({22'b0000000000000000000000,_net_13});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num <= 32'b00000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((_net_6&_net_21)&(_net_6&_net_16)))   plot_num <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((_net_6&_net_21))
      plot_num <= _net_25;
else if ((_net_6&_net_16))
      plot_num <= _net_20;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((_net_6&_net_21)|(_net_6&_net_16))==1'b1) ||
 (((_net_6&_net_21)|(_net_6&_net_16))==1'b0) ) begin
 if (((_net_6&_net_21)&(_net_6&_net_16)))
 begin $display("Warning: assign collision(cam_test:plot_num) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:plot_num) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_nums <= 32'b00000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((_net_26&(~_net_27))&_net_34)&(_net_26&_net_27)))   plot_nums <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((_net_26&(~_net_27))&_net_34))
      plot_nums <= _net_38;
else if ((_net_26&_net_27))
      plot_nums <= _net_31;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((_net_26&(~_net_27))&_net_34)|(_net_26&_net_27))==1'b1) ||
 ((((_net_26&(~_net_27))&_net_34)|(_net_26&_net_27))==1'b0) ) begin
 if ((((_net_26&(~_net_27))&_net_34)&(_net_26&_net_27)))
 begin $display("Warning: assign collision(cam_test:plot_nums) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:plot_nums) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_y <= 32'b00000000000000000000000000000000;
else if (_net_6)
      plot_num_y <= (_net_15[56:25]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     wait_motor <= 10'b0000000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((((_net_26&_net_27)&_net_32)&(~_net_33))&(((_net_26&_net_27)&_net_32)&_net_33)))   wait_motor <= 10'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((((_net_26&_net_27)&_net_32)&(~_net_33)))
      wait_motor <= (wait_motor+10'b0000000001);
else if ((((_net_26&_net_27)&_net_32)&_net_33))
      wait_motor <= 10'b0000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((_net_26&_net_27)&_net_32)&(~_net_33))|(((_net_26&_net_27)&_net_32)&_net_33))==1'b1) ||
 (((((_net_26&_net_27)&_net_32)&(~_net_33))|(((_net_26&_net_27)&_net_32)&_net_33))==1'b0) ) begin
 if (((((_net_26&_net_27)&_net_32)&(~_net_33))&(((_net_26&_net_27)&_net_32)&_net_33)))
 begin $display("Warning: assign collision(cam_test:wait_motor) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:wait_motor) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_x2 <= 32'b00000000000000000000000000000000;
else if (_net_6)
      plot_num_x2 <= ({22'b0000000000000000000000,_net_10});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     motor_enable <= 1'b0;
else if (((_net_26&_net_27)&_net_32))
      motor_enable <= motor_light;
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_y2 <= 32'b00000000000000000000000000000000;
else if (_net_6)
      plot_num_y2 <= (_net_12[56:25]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     count <= 32'b00000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((~_net_39)&(motor_enable != 1'b0))&_net_39))   count <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((~_net_39)&(motor_enable != 1'b0)))
      count <= (count+32'b00000000000000000000000000000001);
else if (_net_39)
      count <= 32'b00000000000000000000000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((~_net_39)&(motor_enable != 1'b0))|_net_39)==1'b1) ||
 ((((~_net_39)&(motor_enable != 1'b0))|_net_39)==1'b0) ) begin
 if ((((~_net_39)&(motor_enable != 1'b0))&_net_39))
 begin $display("Warning: assign collision(cam_test:count) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:count) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     motor_state <= 3'b000;
else if (_net_39)
      motor_state <= (motor_state+3'b001);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     uart_data_in <= 8'b00000000;
else 
// synthesis translate_off
// synopsys translate_off
if (((((((_net_48&_net_49)&(~_net_50))&_net_54)&(((_net_48&_net_49)&(~_net_50))&_net_53))|(((((_net_48&_net_49)&(~_net_50))&_net_54)|(((_net_48&_net_49)&(~_net_50))&_net_53))&(((_net_48&_net_49)&(~_net_50))&_net_52)))|((((((_net_48&_net_49)&(~_net_50))&_net_54)|(((_net_48&_net_49)&(~_net_50))&_net_53))|(((_net_48&_net_49)&(~_net_50))&_net_52))&(((_net_48&_net_49)&(~_net_50))&_net_51))))   uart_data_in <= 8'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((((_net_48&_net_49)&(~_net_50))&_net_54))
      uart_data_in <= ({(uart_data2[7:4]),_vram_x_2_q});
else if ((((_net_48&_net_49)&(~_net_50))&_net_53))
      uart_data_in <= ({_vram_x_2_q,_vram_x_1_q});
else if ((((_net_48&_net_49)&(~_net_50))&_net_52))
      uart_data_in <= 8'b11111001;
else if ((((_net_48&_net_49)&(~_net_50))&_net_51))
      uart_data_in <= uart_data3;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((((_net_48&_net_49)&(~_net_50))&_net_54)|(((_net_48&_net_49)&(~_net_50))&_net_53))|(((_net_48&_net_49)&(~_net_50))&_net_52))|(((_net_48&_net_49)&(~_net_50))&_net_51))==1'b1) ||
 (((((((_net_48&_net_49)&(~_net_50))&_net_54)|(((_net_48&_net_49)&(~_net_50))&_net_53))|(((_net_48&_net_49)&(~_net_50))&_net_52))|(((_net_48&_net_49)&(~_net_50))&_net_51))==1'b0) ) begin
 if (((((((_net_48&_net_49)&(~_net_50))&_net_54)&(((_net_48&_net_49)&(~_net_50))&_net_53))|(((((_net_48&_net_49)&(~_net_50))&_net_54)|(((_net_48&_net_49)&(~_net_50))&_net_53))&(((_net_48&_net_49)&(~_net_50))&_net_52)))|((((((_net_48&_net_49)&(~_net_50))&_net_54)|(((_net_48&_net_49)&(~_net_50))&_net_53))|(((_net_48&_net_49)&(~_net_50))&_net_52))&(((_net_48&_net_49)&(~_net_50))&_net_51))))
 begin $display("Warning: assign collision(cam_test:uart_data_in) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:uart_data_in) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     motor_mode <= 3'b000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((((~_net_40)&_net_43)&((~_net_40)&_net_42))|((((~_net_40)&_net_43)|((~_net_40)&_net_42))&((~_net_40)&_net_41)))|(((((~_net_40)&_net_43)|((~_net_40)&_net_42))|((~_net_40)&_net_41))&_net_40)))   motor_mode <= 3'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((~_net_40)&_net_43))
      motor_mode <= 3'b100;
else if (((~_net_40)&_net_42))
      motor_mode <= 3'b011;
else if (((~_net_40)&_net_41))
      motor_mode <= 3'b001;
else if (_net_40)
      motor_mode <= 3'b000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((((~_net_40)&_net_43)|((~_net_40)&_net_42))|((~_net_40)&_net_41))|_net_40)==1'b1) ||
 ((((((~_net_40)&_net_43)|((~_net_40)&_net_42))|((~_net_40)&_net_41))|_net_40)==1'b0) ) begin
 if ((((((~_net_40)&_net_43)&((~_net_40)&_net_42))|((((~_net_40)&_net_43)|((~_net_40)&_net_42))&((~_net_40)&_net_41)))|(((((~_net_40)&_net_43)|((~_net_40)&_net_42))|((~_net_40)&_net_41))&_net_40)))
 begin $display("Warning: assign collision(cam_test:motor_mode) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:motor_mode) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     end_sw <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if ((_net_55&((_net_48&_net_49)&_net_50)))   end_sw <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (_net_55)
      end_sw <= 1'b0;
else if (((_net_48&_net_49)&_net_50))
      end_sw <= 1'b1;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((_net_55|((_net_48&_net_49)&_net_50))==1'b1) ||
 ((_net_55|((_net_48&_net_49)&_net_50))==1'b0) ) begin
 if ((_net_55&((_net_48&_net_49)&_net_50)))
 begin $display("Warning: assign collision(cam_test:end_sw) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:end_sw) at %d",$time);

  end

// synthesis translate_on
// synopsys translate_on
initial begin
    encode[0] = 8'b00111111;
    encode[1] = 8'b00000110;
    encode[2] = 8'b01011011;
    encode[3] = 8'b01001111;
    encode[4] = 8'b01100110;
    encode[5] = 8'b01101101;
    encode[6] = 8'b01111101;
    encode[7] = 8'b00100111;
    encode[8] = 8'b01111111;
    encode[9] = 8'b01101111;
    encode[10] = 8'b01110111;
    encode[11] = 8'b01111100;
    encode[12] = 8'b00111001;
    encode[13] = 8'b01011110;
    encode[14] = 8'b01111001;
    encode[15] = 8'b01110001;
end
endmodule

/*Produced by NSL Core(version=20240708), IP ARCH, Inc. Sat Mar  8 06:10:38 2025
 Licensed to :EVALUATION USER*/
