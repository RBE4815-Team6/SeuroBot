/*
  //AVRS-MQP Arduino Mega code for EOAT
  //Nikolas Gamarra & Ryan O'Brien
*/

//ROS includes
#include <ros.h>
#include <std_msgs/String.h>
#include <std_msgs/Int32.h>
#include <ros/time.h>
#include <sensor_msgs/Range.h>
#include <force_msgs/LoadCellForces32.h>

//sensor includes
#include <Wire.h>
#include "Adafruit_VL6180X.h"
#include "HX711.h"

ros::NodeHandle  nh;


//make msgs
force_msgs::LoadCellForces32 Force_msg;

//make publishers
ros::Publisher pub_force( "force_data", &Force_msg);

char frameid2[] = "/load_cell";

//definitions
#define DOUT_A  12 //Load cell A, top
#define CLK_A  11
#define DOUT_B  10 //Load cell B, clockwise
#define CLK_B  9
#define DOUT_C  8 //Load cell C
#define CLK_C  7

//Load cell declarations 
HX711 cellA(DOUT_A, CLK_A);
HX711 cellB(DOUT_B, CLK_B);
HX711 cellC(DOUT_C, CLK_C);

//Values found using load_cell_calibrate.ino to calibrate and zero load cells
float calibration_factorA = -10340.0; 
float calibration_factorB = -10300.0;
float calibration_factorC = -10330.0;

long zero_factorA = 27369;
long zero_factorB = 1250;
long zero_factorC = 25000;


//Listens to end_effector topic which contains string defining EOAT. Calibrates based on known weights
void calibrationCb(const std_msgs::String& calibration_msg){//
  
  if(calibration_msg.data == "Tesla"){
    zero_factorA = cellA.read_average();
    zero_factorB = cellB.read_average();
    zero_factorC = cellC.read_average();

    cellA.set_offset(zero_factorA); 
    cellB.set_offset(zero_factorB);
    cellC.set_offset(zero_factorC);
  }
  else if(calibration_msg.data == "J1772") {
    zero_factorA = cellA.read_average();
    zero_factorB = cellB.read_average();
    zero_factorC = cellC.read_average();
    
    cellA.set_offset(zero_factorA); 
    cellB.set_offset(zero_factorB);
    cellC.set_offset(zero_factorC);
  }
  else if(calibration_msg.data == "CHAdeMO") {
    zero_factorA = cellA.read_average();
    zero_factorB = cellB.read_average();
    zero_factorC = cellC.read_average();

    cellA.set_offset(zero_factorA); 
    cellB.set_offset(zero_factorB);
    cellC.set_offset(zero_factorC);
    
  }
  else if(calibration_msg.data == "Suction Cup") {
    zero_factorA = cellA.read_average();
    zero_factorB = cellB.read_average();
    zero_factorC = cellC.read_average();

    cellA.set_offset(zero_factorA); 
    cellB.set_offset(zero_factorB);
    cellC.set_offset(zero_factorC);
    
  }
}//end calibrationCb

//make subscriber
ros::Subscriber<std_msgs::String> sub_calibration("end_effector", &calibrationCb);

void setup()
{
    Serial.begin(9600);
    pinMode(LED_BUILTIN, OUTPUT);

  nh.initNode();//initialize the ros node

//setup subscriber
    nh.subscribe(sub_calibration);


  //advertise publishers
  nh.advertise(pub_force);

  //nh.getHardware()->setBaud(2000000);  //comment out to use dedault baud

  //setup force msg
  Force_msg.header.frame_id = frameid2;

  //setup load cells
  cellA.set_scale(calibration_factorA);
  cellA.set_offset(zero_factorA); //can cellA.tare() if needed
  cellB.set_scale(calibration_factorB); 
  cellB.set_offset(zero_factorB);
  cellC.set_scale(calibration_factorC); 
  cellC.set_offset(zero_factorC);

  
}//end setup

void loop()
{

  //set load cell msg valuse
  Force_msg.header.stamp = nh.now();
  Force_msg.cellA = cellA.get_units();
  Force_msg.cellB = cellB.get_units();
  Force_msg.cellC = cellC.get_units();
  
  //publish everything
  pub_force.publish(&Force_msg);
  
  nh.spinOnce();
  delay(400);//1000
}//end loop
