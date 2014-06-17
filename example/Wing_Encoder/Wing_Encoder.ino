/*
 Gadget Factory
 Uberclock Encoder Wing Example
 For more information and board files please visit http://github.com/Uberclock/EncoderWing
 
 To use this sketch do the following steps:
 1)
 Load the bit file that defines the circuit required by this sketch by clicking on the bit file link below that corresponds to the type of Papilio board you have. 
 You should see the Papilio Loader pop up and program the circuit for this example to your Papilio Board. 
 IMPORTANT NOTE: Please be sure that you are programming the bit file to SPI Flash. ZPUino will not work if written to FPGA only.
 
 2)
 Make sure you have selected the correct ZPUino board type and com port, the Papilio always uses channel B of the FT2232 so it is usually the second com port you see.
 The board type should be ZPUino Vanilla or Hyperion depending on what the schematic shows, or look at the Board Type section below.
 Be sure to select the board type for the type of Papilio you have.
 
 3)
 Make sure you have the required hardware attached to your Papilio, look at the schematic to see what is required. Or look at the Hardware section below.
 You can open a PDF showing the circuit defined in the bit file by selecting the appropriate link to view the scheamtic for the type of Papilio board you have.

 4)
 Run the sketch, it should communicate with the ZPUino included in the bit file you loaded earlier. 
 
 If you want to modify the circuit then make sure you have Xilinx ISE Webpack installed and click on the appropriate link below to modify the schematic.
 If you do not have Xilinx ISE Webpack installed visit this tutorial to learn how. http://gadgetfactory.net/learn/2013/10/23/install-xilinxs-free-ise-webpack/
 
 If the links below do not work then then open the sketch directory from Sketch/Show Sketch Folder (Ctl-K) and manually access the files defined in the links below.
 
 Papilio Pro
   Click to program bit file: sketchdir://LX9/papilio_pro.bit
   Click to view schematic:   sketchdir://schematic_papilio_pro.pdf
   Click to modify schematic: sketchdir://PSL_Papilio_Pro_LX9.xise
   
 Papilio One 500K
   Click to program bit file: sketchdir://500K/papilio_one_500k.bit
   Click to view schematic:   sketchdir://schematic_papilio_one_500k.pdf
   Click to modify schematic: sketchdir://PSL_Papilio_One_500K.xise
   
 Papilio One 250K
   Click to program bit file: sketchdir://250K/papilio_one_250k.bit
   Click to view schematic:   sketchdir://schematic_papilio_one_250k.pdf
   Click to modify schematic: sketchdir://PSL_Papilio_One_250k.xise
  
 Tutorials:
   http://gadgetfactory.net/learn/2013/10/29/papilio-schematic-library-getting-started/
  
 Related library documentation:

 Hardware:
   This example circuit is wired for an Audio Wing connected to CH, to use with any of the other hardware click the link to modify the schematic to adjust for your hardware.
 
 Board Type:
   ZPUino Vanilla Variant for your hardware type
   
 Special Application Notes:

 created 2014
 by Jack Gassett
 http://www.gadgetfactory.net
 
 modified 2014
 by Mark Cooper
 http://uberclock.com
 
 This example code is in the public domain.
 */

#define DEBOUNCE 50

#define WING_AL 0
#define WING_AH 8
#define WING_BL 16
#define WING_BH 24
#define WING_CL 32
#define WING_CH 40

// change the following line to select which port is in use
#define ENC_WING WING_AL

#define ENC_BTN ENC_WING+0
#define LED_B   ENC_WING+1
#define LED_G   ENC_WING+2
#define LED_R   ENC_WING+3
#define ENC_A   ENC_WING+4
#define ENC_B   ENC_WING+5
#define BTN_BTN ENC_WING+6
#define BTN_LED ENC_WING+7

bool enc_state;
int state_bounce;
int enc_count;
int pwm_pos;

// this table is used to make led brightness seem more linear to the human eye
// http://jared.geek.nz/2013/feb/linear-led-pwm
#include "cie1931.h"

// this function helps to convert a single hue value into separate rgb components
int hue_to_rgb( int hue )
{
   if ( hue < 0 ) hue += 255;
   if ( hue > 255 ) hue -= 255;
   if ( hue < 42 ) return (int)( 6 * hue );
   if ( hue < 128 ) return (int)( 255 );
   if ( hue < 170 ) return (int)( 6 * ( 170 - hue ) );
   return ( 0 );
}

// this function reads the "grey code" coming from the quadrature encoder
// http://en.wikipedia.org/wiki/Gray_code
int read_encoder()
{
  bool new_state, b_state;
  new_state = digitalRead(ENC_A);
  b_state = digitalRead(ENC_B);
  int res = 0;
  if(enc_state == LOW && new_state == HIGH) {
    if(b_state == HIGH) {
      res = 1;
    }
    else {
      res = -1;
    }
    enc_state = HIGH;
  }
  else if(enc_state == HIGH && new_state == LOW) {
    state_bounce++;
    if(state_bounce > DEBOUNCE) {
      state_bounce = 0;
      enc_state = LOW;
    }
  }
  else {
    state_bounce = 0;
  }
  return res;
}

void setup()
{
  // configure encoder and button pins
  pinMode(ENC_BTN, INPUT);
  pinMode(LED_B, OUTPUT);
  pinMode(LED_G, OUTPUT);
  pinMode(LED_R, OUTPUT);
  pinMode(ENC_A, INPUT);
  pinMode(ENC_B, INPUT);
  pinMode(BTN_BTN, INPUT);
  pinMode(BTN_LED, OUTPUT);
  
  // set default state of output pins
  digitalWrite(LED_B, HIGH); 
  digitalWrite(LED_G, HIGH); 
  digitalWrite(LED_R, HIGH); 
  digitalWrite(BTN_LED, HIGH);
  
  // set default state of global variables
  enc_state = HIGH;
  state_bounce = 0;
  enc_count = 0;
  pwm_pos = 0;
}

void loop()
{
  // advance the soft pwm state for the leds
  pwm_pos++;
  if (pwm_pos > 255) {
    pwm_pos = 0;
  }

  // read the encoder
  enc_count += read_encoder()*4;
  if(enc_count > 255) enc_count -= 256;
  else if(enc_count < 0) enc_count += 256;

  // set the button led if the button if the button is not pressed
  digitalWrite(BTN_LED, !(!(digitalRead(BTN_BTN)) && !(cie[112] < pwm_pos)));
  
  // set the rgb led in the encoder to white if the button is pressed
  // otherwise convert the encoder position to a hue for the rgb led
  if(digitalRead(ENC_BTN)) {
    digitalWrite(LED_R, cie[134] < pwm_pos);
    digitalWrite(LED_G, cie[214] < pwm_pos);
    digitalWrite(LED_B, cie[255] < pwm_pos);
  }
  else {
    int led_r = hue_to_rgb(enc_count + 85) * 134 / 255;
    int led_g = hue_to_rgb(enc_count) * 214 / 255;
    int led_b = hue_to_rgb(enc_count - 85);
    digitalWrite(LED_R, cie[led_r] < pwm_pos);
    digitalWrite(LED_G, cie[led_g] < pwm_pos);
    digitalWrite(LED_B, cie[led_b] < pwm_pos);
  }
}
