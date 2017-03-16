#include <iostream>
#include <string>
#include <cstdlib>
#include <time.h>
#include <cmath>

#include "myFunctions.h"

void myInfo(std::string info) {

  std::cout << "myInfo :: " << info << std::endl;

  return;
}

float GetTriangle(float center, float spread){

  // generate random numbers according to PDF that is triangle with prob density
  // 1 at its center and 0 and plus or minus the center
  // center = center of triangle
  // spread = one sided width of triangle
  float randomNumber=0;

  float min_x = center-spread;
  float max_x = center+spread;


  //srand (time(NULL));

  bool accept=false;
  float pdfval = 0;

  while(accept==false){


    float xval = (max_x-min_x)*((double)rand()/RAND_MAX) + min_x;
    float yval = ((double)rand()/RAND_MAX);

    if(xval<=center){

      float m = (1.0) / (max_x-min_x)/2.0;
      float b = -1.0*min_x*m;

      pdfval = m*xval + b;

      if(yval<pdfval){
        accept=true;
        randomNumber=xval;
      }
    }
    else if(xval>center){

      float m = (-1.0) / (max_x-min_x)/2.0;
      float b = -1.0*max_x*m;

      pdfval = m*xval + b;

      if(yval<pdfval){
        accept=true;
        randomNumber=xval;
      }
    }

  }

  std::cout<<"Got random triangle number : "<<randomNumber<<std::endl;



  return randomNumber;

}