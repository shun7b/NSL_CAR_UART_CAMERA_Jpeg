#define MOTOR_STOP 0
#define MOTOR_STRATE 1
#define MOTOR_BACK 2
#define MOTOR_RIGHT 3
#define MOTOR_LEFT 4
declare cam_test{
    input in_data[8],in_data2[8];
	input href,href2;
	input pclk,pclk2;
	output xclk,xclk2;
    input c_vsync,c_vsync2,push,push_minus;
	output sda,scl,reset,pwdn,sda2,scl2,reset2,pwdn2,motor_sig,motor_sig2;
    output VGA_R[4],VGA_B[4],VGA_G[4],VGA_VS,VGA_HS,HEX0[8],HEX1[8],HEX2[8],HEX3[8],HEX4[8],HEX5[8];
}