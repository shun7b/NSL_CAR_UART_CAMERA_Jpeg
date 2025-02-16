#define FULL 500000
#define CCW 0d80260
#define STOP 0d75260
#define CW 0d70260
declare motor{
	output power,HEX[4],HEXpwm[4],HEXpwm1[4],HEXpwm2[4],HEXpwm3[4],HEXpwm4[4],HEXpwm5[4];
	input sw[2],push,push_minus,set_RL;
}
