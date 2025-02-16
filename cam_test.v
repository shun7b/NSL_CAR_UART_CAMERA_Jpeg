
/*Produced by NSL Core(version=20240708), IP ARCH, Inc. Sat Jan  4 07:23:17 2025
 Licensed to :EVALUATION USER*/
/*
 DO NOT USE ANY PART OF THIS FILE FOR COMMERCIAL PRODUCTS. 
*/

module cam_test ( p_reset , m_clock , in_data , in_data2 , href , href2 , pclk , pclk2 , xclk , xclk2 , c_vsync , c_vsync2 , push , push_minus , sda , scl , reset , pwdn , sda2 , scl2 , reset2 , pwdn2 , motor_sig , motor_sig2 , VGA_R , VGA_B , VGA_G , VGA_VS , VGA_HS , HEX0 , HEX1 , HEX2 , HEX3 , HEX4 , HEX5 );
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
  reg motor_light;
  reg [3:0] motor_sw;
  reg [31:0] VGA_plot_num_x;
  reg [31:0] VGA_plot_num_y;
  reg [31:0] plot_num_x;
  wire [31:0] plot_num;
  wire [31:0] plot_nums;
  reg [31:0] plot_num_y;
  reg [9:0] wait_motor;
  reg [31:0] VGA_plot_num_x2;
  reg [31:0] VGA_plot_num_y2;
  reg [31:0] plot_num_x2;
  wire [31:0] plot_num2;
  reg motor_enable;
  wire [31:0] plot_nums2;
  reg [31:0] plot_num_y2;
  reg [31:0] count;
  reg [2:0] motor_state;
  reg [2:0] motor_mode;
  reg [7:0] encode [0:15];
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
  wire [9:0] _net_6;
  wire [9:0] _net_7;
  wire [63:0] _net_8;
  wire [9:0] _net_9;
  wire [9:0] _net_10;
  wire [63:0] _net_11;
  wire [9:0] _net_12;
  wire [9:0] _net_13;
  wire [63:0] _net_14;
  wire [9:0] _net_15;
  wire [9:0] _net_16;
  wire [63:0] _net_17;
  wire _net_18;
  wire [31:0] _net_19;
  wire [31:0] _net_20;
  wire [31:0] _net_21;
  wire [31:0] _net_22;
  wire _net_23;
  wire [31:0] _net_24;
  wire [31:0] _net_25;
  wire [31:0] _net_26;
  wire [31:0] _net_27;
  wire _net_28;
  wire [31:0] _net_29;
  wire [31:0] _net_30;
  wire [31:0] _net_31;
  wire [31:0] _net_32;
  wire _net_33;
  wire _net_34;
  wire _net_35;
  wire [31:0] _net_36;
  wire [31:0] _net_37;
  wire [31:0] _net_38;
  wire [31:0] _net_39;
  wire _net_40;
  wire _net_41;
  wire _net_42;
  wire _net_43;
  wire _net_44;
  wire _net_45;
  wire _net_46;
  wire _net_47;
  wire _net_48;
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


// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((_net_23&_net_18))
 begin $display("Warning: assign collision(cam_test:plot_num) at %d",$time);
if (_net_23) $display("assert (_net_23) line 103 at %d\n",$time);
if (_net_18) $display("assert (_net_18) line 87 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  plot_num = 
// synthesis translate_off
// synopsys translate_off
((_net_23&_net_18))? 32'bx :((_net_23|_net_18))? 
// synthesis translate_on
// synopsys translate_on
((_net_23)?_net_27:32'b0)|
    ((_net_18)?_net_22:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock or negedge p_reset)
  begin
if ((((~_net_28)&_net_35)&_net_28))
 begin $display("Warning: assign collision(cam_test:plot_nums) at %d",$time);
if (((~_net_28)&_net_35)) $display("assert (((~_net_28)&_net_35)) line 137 at %d\n",$time);
if (_net_28) $display("assert (_net_28) line 118 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  plot_nums = 
// synthesis translate_off
// synopsys translate_off
((((~_net_28)&_net_35)&_net_28))? 32'bx :((((~_net_28)&_net_35)|_net_28))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_28)&_net_35))?_net_39:32'b0)|
    ((_net_28)?_net_32:32'b0)
// synthesis translate_off
// synopsys translate_off
:32'bx
// synthesis translate_on
// synopsys translate_on
;
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
(_net_18)? 
// synthesis translate_on
// synopsys translate_on
((_net_18)?_camera_out_VGA_B:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(_net_28)? 
// synthesis translate_on
// synopsys translate_on
((_net_28)?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_18)? 
// synthesis translate_on
// synopsys translate_on
((_net_18)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_18)? 
// synthesis translate_on
// synopsys translate_on
_net_18
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
(_net_23)? 
// synthesis translate_on
// synopsys translate_on
((_net_23)?_camera_out_1_VGA_R:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_5_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(((~_net_28)&_net_35))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_28)&_net_35))?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_5_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_23)? 
// synthesis translate_on
// synopsys translate_on
((_net_23)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_5_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_23)? 
// synthesis translate_on
// synopsys translate_on
_net_23
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
(_net_23)? 
// synthesis translate_on
// synopsys translate_on
((_net_23)?_camera_out_1_VGA_G:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_4_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(((~_net_28)&_net_35))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_28)&_net_35))?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_4_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_23)? 
// synthesis translate_on
// synopsys translate_on
((_net_23)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_4_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_23)? 
// synthesis translate_on
// synopsys translate_on
_net_23
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
(_net_23)? 
// synthesis translate_on
// synopsys translate_on
((_net_23)?_camera_out_1_VGA_B:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_3_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(((~_net_28)&_net_35))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_28)&_net_35))?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_3_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_23)? 
// synthesis translate_on
// synopsys translate_on
((_net_23)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_3_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_23)? 
// synthesis translate_on
// synopsys translate_on
_net_23
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
(_net_18)? 
// synthesis translate_on
// synopsys translate_on
((_net_18)?_camera_out_VGA_R:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(_net_28)? 
// synthesis translate_on
// synopsys translate_on
((_net_28)?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_18)? 
// synthesis translate_on
// synopsys translate_on
((_net_18)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_2_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_18)? 
// synthesis translate_on
// synopsys translate_on
_net_18
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
(_net_18)? 
// synthesis translate_on
// synopsys translate_on
((_net_18)?_camera_out_VGA_G:4'b0)
// synthesis translate_off
// synopsys translate_off
:4'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_rdaddress = 
// synthesis translate_off
// synopsys translate_off
(_net_28)? 
// synthesis translate_on
// synopsys translate_on
((_net_28)?(plot_nums[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_wraddress = 
// synthesis translate_off
// synopsys translate_off
(_net_18)? 
// synthesis translate_on
// synopsys translate_on
((_net_18)?(plot_num[13:0]):14'b0)
// synthesis translate_off
// synopsys translate_off
:14'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _vram_x_1_wren = 
// synthesis translate_off
// synopsys translate_off
(_net_18)? 
// synthesis translate_on
// synopsys translate_on
_net_18
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
   assign  _net_6 = _camera_out_out_plot_num_x;
   assign  _net_7 = _camera_out_out_plot_num_y;
   assign  _net_8 = ({({22'b0000000000000000000000,_net_7}),32'b00000000000000000000000000000000});
   assign  _net_9 = _VGA_out_plot_num_x;
   assign  _net_10 = _VGA_out_plot_num_y;
   assign  _net_11 = ({({22'b0000000000000000000000,_net_10}),32'b00000000000000000000000000000000});
   assign  _net_12 = _camera_out_1_out_plot_num_x;
   assign  _net_13 = _camera_out_1_out_plot_num_y;
   assign  _net_14 = ({({22'b0000000000000000000000,_net_13}),32'b00000000000000000000000000000000});
   assign  _net_15 = (_VGA_out_plot_num_x-10'b0010000000);
   assign  _net_16 = (_VGA_out_plot_num_y-10'b0010000000);
   assign  _net_17 = ({({22'b0000000000000000000000,_net_16}),32'b00000000000000000000000000000000});
   assign  _net_18 = ((((_camera_out_out_plot_num_x >= 10'b0000000000)&(_camera_out_out_plot_num_x < 10'b0010000000))&(_camera_out_out_plot_num_y >= 10'b0000000000))&(_camera_out_out_plot_num_y < 10'b0010000000));
   assign  _net_19 = plot_num_x;
   assign  _net_20 = plot_num_y;
   assign  _net_21 = _net_20;
   assign  _net_22 = (_net_19+_net_21);
   assign  _net_23 = ((((_camera_out_1_out_plot_num_x >= 10'b0000000000)&(_camera_out_1_out_plot_num_x < 10'b0010000000))&(_camera_out_1_out_plot_num_y >= 10'b0000000000))&(_camera_out_1_out_plot_num_y < 10'b0010000000));
   assign  _net_24 = plot_num_x2;
   assign  _net_25 = plot_num_y2;
   assign  _net_26 = _net_25;
   assign  _net_27 = (_net_24+_net_26);
   assign  _net_28 = (((((_VGA_out_plot_num_x-10'b0000000111) >= 10'b0000000000)&((_VGA_out_plot_num_x-10'b0000000111) < 10'b0010000000))&(_VGA_out_plot_num_y >= 10'b0000000000))&(_VGA_out_plot_num_y < 10'b0010000000));
   assign  _net_29 = VGA_plot_num_x;
   assign  _net_30 = VGA_plot_num_y;
   assign  _net_31 = _net_30;
   assign  _net_32 = (_net_29+_net_31);
   assign  _net_33 = 
// synthesis translate_off
// synopsys translate_off
(_net_28)? 
// synthesis translate_on
// synopsys translate_on
((_net_28)?(((_VGA_out_plot_num_x-10'b0000000111)==10'b0000000000)&(_VGA_out_plot_num_y >= 10'b0000000000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_34 = 
// synthesis translate_off
// synopsys translate_off
((_net_28&_net_33))? 
// synthesis translate_on
// synopsys translate_on
(((_net_28&_net_33))?(wait_motor==10'b0000010011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_35 = 
// synthesis translate_off
// synopsys translate_off
((~_net_28))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_28))?(((((_VGA_out_plot_num_x-10'b0000000111) >= 10'b0010000000)&((_VGA_out_plot_num_x-10'b0000000111) < 10'b0100000000))&(_VGA_out_plot_num_y >= 10'b0010000000))&(_VGA_out_plot_num_y < 10'b0100000000)):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_36 = VGA_plot_num_x;
   assign  _net_37 = VGA_plot_num_y;
   assign  _net_38 = _net_37;
   assign  _net_39 = (_net_36+_net_38);
   assign  _net_40 = (count==32'b00000101111101011110000100000000);
   assign  _net_41 = ((motor_state[0])==1'b0);
   assign  _net_42 = 
// synthesis translate_off
// synopsys translate_off
((~_net_41))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_41))?((motor_state[1:0])==2'b01):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_43 = 
// synthesis translate_off
// synopsys translate_off
((~_net_41))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_41))?(motor_state==3'b011):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_44 = 
// synthesis translate_off
// synopsys translate_off
((~_net_41))? 
// synthesis translate_on
// synopsys translate_on
(((~_net_41))?(motor_state==3'b111):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_45 = 
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
   assign  _net_46 = 
// synthesis translate_off
// synopsys translate_off
(((motor_enable != 1'b0)&(~_net_45)))? 
// synthesis translate_on
// synopsys translate_on
((((motor_enable != 1'b0)&(~_net_45)))?(motor_mode==3'b100):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_47 = 
// synthesis translate_off
// synopsys translate_off
((((motor_enable != 1'b0)&(~_net_45))&(~_net_46)))? 
// synthesis translate_on
// synopsys translate_on
(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46)))?(motor_mode==3'b001):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
   assign  _net_48 = 
// synthesis translate_off
// synopsys translate_off
(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47)))? 
// synthesis translate_on
// synopsys translate_on
((((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47)))?(motor_mode==3'b010):1'b0)
// synthesis translate_off
// synopsys translate_off
:1'bx
// synthesis translate_on
// synopsys translate_on
;
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
if (((((~_net_28)&(~_net_35))&((~_net_28)&_net_35))|((((~_net_28)&(~_net_35))|((~_net_28)&_net_35))&_net_28)))
 begin $display("Warning: assign collision(cam_test:VGA_R) at %d",$time);
if (((~_net_28)&(~_net_35))) $display("assert (((~_net_28)&(~_net_35))) line 146 at %d\n",$time);
if (((~_net_28)&_net_35)) $display("assert (((~_net_28)&_net_35)) line 143 at %d\n",$time);
if (_net_28) $display("assert (_net_28) line 124 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_R = 
// synthesis translate_off
// synopsys translate_off
(((((~_net_28)&(~_net_35))&((~_net_28)&_net_35))|((((~_net_28)&(~_net_35))|((~_net_28)&_net_35))&_net_28)))? 4'bx :(((((~_net_28)&(~_net_35))|((~_net_28)&_net_35))|_net_28))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_28)&(~_net_35)))?4'b0000:4'b0)|
    ((((~_net_28)&_net_35))?_vram_x_5_q:4'b0)|
    ((_net_28)?_vram_x_2_q:4'b0)
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
if (((((~_net_28)&(~_net_35))&((~_net_28)&_net_35))|((((~_net_28)&(~_net_35))|((~_net_28)&_net_35))&_net_28)))
 begin $display("Warning: assign collision(cam_test:VGA_B) at %d",$time);
if (((~_net_28)&(~_net_35))) $display("assert (((~_net_28)&(~_net_35))) line 148 at %d\n",$time);
if (((~_net_28)&_net_35)) $display("assert (((~_net_28)&_net_35)) line 141 at %d\n",$time);
if (_net_28) $display("assert (_net_28) line 122 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_B = 
// synthesis translate_off
// synopsys translate_off
(((((~_net_28)&(~_net_35))&((~_net_28)&_net_35))|((((~_net_28)&(~_net_35))|((~_net_28)&_net_35))&_net_28)))? 4'bx :(((((~_net_28)&(~_net_35))|((~_net_28)&_net_35))|_net_28))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_28)&(~_net_35)))?4'b0000:4'b0)|
    ((((~_net_28)&_net_35))?_vram_x_3_q:4'b0)|
    ((_net_28)?_vram_x_q:4'b0)
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
if (((((~_net_28)&(~_net_35))&((~_net_28)&_net_35))|((((~_net_28)&(~_net_35))|((~_net_28)&_net_35))&_net_28)))
 begin $display("Warning: assign collision(cam_test:VGA_G) at %d",$time);
if (((~_net_28)&(~_net_35))) $display("assert (((~_net_28)&(~_net_35))) line 147 at %d\n",$time);
if (((~_net_28)&_net_35)) $display("assert (((~_net_28)&_net_35)) line 142 at %d\n",$time);
if (_net_28) $display("assert (_net_28) line 123 at %d\n",$time);
 end
 end

// synthesis translate_on
// synopsys translate_on
   assign  VGA_G = 
// synthesis translate_off
// synopsys translate_off
(((((~_net_28)&(~_net_35))&((~_net_28)&_net_35))|((((~_net_28)&(~_net_35))|((~_net_28)&_net_35))&_net_28)))? 4'bx :(((((~_net_28)&(~_net_35))|((~_net_28)&_net_35))|_net_28))? 
// synthesis translate_on
// synopsys translate_on
((((~_net_28)&(~_net_35)))?4'b0000:4'b0)|
    ((((~_net_28)&_net_35))?_vram_x_4_q:4'b0)|
    ((_net_28)?_vram_x_1_q:4'b0)
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
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     motor_light <= 1'b0;
else 
// synthesis translate_off
// synopsys translate_off
if (((((~_net_28)&_net_35)&(_net_28&(~_net_33)))|((((~_net_28)&_net_35)|(_net_28&(~_net_33)))&(_net_28&_net_33))))   motor_light <= 1'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((~_net_28)&_net_35))
      motor_light <= ((~(((_vram_x_3_q < 4'b0100)&(_vram_x_4_q < 4'b0100))&(_vram_x_5_q < 4'b0100)))&motor_light);
else if ((_net_28&(~_net_33)))
      motor_light <= ((~(((_vram_x_q < 4'b0100)&(_vram_x_1_q < 4'b0100))&(_vram_x_2_q < 4'b0100)))&motor_light);
else if ((_net_28&_net_33))
      motor_light <= (~(((_vram_x_q < 4'b0100)&(_vram_x_1_q < 4'b0100))&(_vram_x_2_q < 4'b0100)));
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((~_net_28)&_net_35)|(_net_28&(~_net_33)))|(_net_28&_net_33))==1'b1) ||
 (((((~_net_28)&_net_35)|(_net_28&(~_net_33)))|(_net_28&_net_33))==1'b0) ) begin
 if (((((~_net_28)&_net_35)&(_net_28&(~_net_33)))|((((~_net_28)&_net_35)|(_net_28&(~_net_33)))&(_net_28&_net_33))))
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
if (((((((~(motor_enable != 1'b0))&(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))|(((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))&(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&_net_48)))|((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&_net_48))&((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&_net_47)))|(((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&_net_48))|((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&_net_47))&(((motor_enable != 1'b0)&(~_net_45))&_net_46)))|((((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&_net_48))|((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&_net_47))|(((motor_enable != 1'b0)&(~_net_45))&_net_46))&((motor_enable != 1'b0)&_net_45))))   motor_sw <= 4'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if ((~(motor_enable != 1'b0)))
      motor_sw <= 4'b0000;
else if ((((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))
      motor_sw <= 4'b0000;
else if ((((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&_net_48))
      motor_sw <= 4'b1001;
else if (((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&_net_47))
      motor_sw <= 4'b0110;
else if ((((motor_enable != 1'b0)&(~_net_45))&_net_46))
      motor_sw <= 4'b1010;
else if (((motor_enable != 1'b0)&_net_45))
      motor_sw <= 4'b0101;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if ((((((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&_net_48))|((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&_net_47))|(((motor_enable != 1'b0)&(~_net_45))&_net_46))|((motor_enable != 1'b0)&_net_45))==1'b1) ||
 (((((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&_net_48))|((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&_net_47))|(((motor_enable != 1'b0)&(~_net_45))&_net_46))|((motor_enable != 1'b0)&_net_45))==1'b0) ) begin
 if (((((((~(motor_enable != 1'b0))&(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))|(((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))&(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&_net_48)))|((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&_net_48))&((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&_net_47)))|(((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&_net_48))|((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&_net_47))&(((motor_enable != 1'b0)&(~_net_45))&_net_46)))|((((((~(motor_enable != 1'b0))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&(~_net_48)))|(((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&(~_net_47))&_net_48))|((((motor_enable != 1'b0)&(~_net_45))&(~_net_46))&_net_47))|(((motor_enable != 1'b0)&(~_net_45))&_net_46))&((motor_enable != 1'b0)&_net_45))))
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
else   VGA_plot_num_x <= ({22'b0000000000000000000000,_net_9});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     VGA_plot_num_y <= 32'b00000000000000000000000000000000;
else   VGA_plot_num_y <= (_net_11[56:25]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_x <= 32'b00000000000000000000000000000000;
else   plot_num_x <= ({22'b0000000000000000000000,_net_6});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_y <= 32'b00000000000000000000000000000000;
else   plot_num_y <= (_net_8[56:25]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     wait_motor <= 10'b0000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((_net_28&_net_33)&(~_net_34))&((_net_28&_net_33)&_net_34)))   wait_motor <= 10'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((_net_28&_net_33)&(~_net_34)))
      wait_motor <= (wait_motor+10'b0000000001);
else if (((_net_28&_net_33)&_net_34))
      wait_motor <= 10'b0000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((_net_28&_net_33)&(~_net_34))|((_net_28&_net_33)&_net_34))==1'b1) ||
 ((((_net_28&_net_33)&(~_net_34))|((_net_28&_net_33)&_net_34))==1'b0) ) begin
 if ((((_net_28&_net_33)&(~_net_34))&((_net_28&_net_33)&_net_34)))
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
     VGA_plot_num_x2 <= 32'b00000000000000000000000000000000;
else   VGA_plot_num_x2 <= ({22'b0000000000000000000000,_net_15});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     VGA_plot_num_y2 <= 32'b00000000000000000000000000000000;
else   VGA_plot_num_y2 <= (_net_17[56:25]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_x2 <= 32'b00000000000000000000000000000000;
else   plot_num_x2 <= ({22'b0000000000000000000000,_net_12});
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     motor_enable <= 1'b0;
else if ((_net_28&_net_33))
      motor_enable <= motor_light;
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     plot_num_y2 <= 32'b00000000000000000000000000000000;
else   plot_num_y2 <= (_net_14[56:25]);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     count <= 32'b00000000000000000000000000000000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((~_net_40)&(motor_enable != 1'b0))&_net_40))   count <= 32'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((~_net_40)&(motor_enable != 1'b0)))
      count <= (count+32'b00000000000000000000000000000001);
else if (_net_40)
      count <= 32'b00000000000000000000000000000000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((~_net_40)&(motor_enable != 1'b0))|_net_40)==1'b1) ||
 ((((~_net_40)&(motor_enable != 1'b0))|_net_40)==1'b0) ) begin
 if ((((~_net_40)&(motor_enable != 1'b0))&_net_40))
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
else if (_net_40)
      motor_state <= (motor_state+3'b001);
end
always @(posedge m_clock or negedge p_reset)
  begin
if (~p_reset)
     motor_mode <= 3'b000;
else 
// synthesis translate_off
// synopsys translate_off
if ((((((~_net_41)&_net_44)&((~_net_41)&_net_43))|((((~_net_41)&_net_44)|((~_net_41)&_net_43))&((~_net_41)&_net_42)))|(((((~_net_41)&_net_44)|((~_net_41)&_net_43))|((~_net_41)&_net_42))&_net_41)))   motor_mode <= 3'bx; 
  else 
// synthesis translate_on
// synopsys translate_on
if (((~_net_41)&_net_44))
      motor_mode <= 3'b100;
else if (((~_net_41)&_net_43))
      motor_mode <= 3'b011;
else if (((~_net_41)&_net_42))
      motor_mode <= 3'b001;
else if (_net_41)
      motor_mode <= 3'b000;
end

// synthesis translate_off
// synopsys translate_off
always @(posedge m_clock)
  begin
if (((((((~_net_41)&_net_44)|((~_net_41)&_net_43))|((~_net_41)&_net_42))|_net_41)==1'b1) ||
 ((((((~_net_41)&_net_44)|((~_net_41)&_net_43))|((~_net_41)&_net_42))|_net_41)==1'b0) ) begin
 if ((((((~_net_41)&_net_44)&((~_net_41)&_net_43))|((((~_net_41)&_net_44)|((~_net_41)&_net_43))&((~_net_41)&_net_42)))|(((((~_net_41)&_net_44)|((~_net_41)&_net_43))|((~_net_41)&_net_42))&_net_41)))
 begin $display("Warning: assign collision(cam_test:motor_mode) at %d",$time);

  end
 end
 else 
 $display("Warning: register set hazard(cam_test:motor_mode) at %d",$time);

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

/*Produced by NSL Core(version=20240708), IP ARCH, Inc. Sat Jan  4 07:23:17 2025
 Licensed to :EVALUATION USER*/
