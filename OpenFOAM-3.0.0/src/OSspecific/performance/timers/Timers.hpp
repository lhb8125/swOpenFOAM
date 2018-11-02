/*---------------------------------------------------------------------------*\
Class: Timer
Author: Changxi.Liu
Copyright
-------------------------------------------------------------------------------
//to using Timer , you should call openTimer function first to wake up Timer count
\*---------------------------------------------------------------------------*/

#ifndef TIMER_H
#define TIMER_H

#include <sys/time.h>
#include <map>
#include <string>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

class Timer
{
    public:    //get time
    static int _OpenTimer;
    static std::map<std::string,double> timeSum;
    static std::map<std::string,double> timeStart;

    static std::map<std::string,int> count;
    void static startTimer(std::string in);
    static void endTimer(std::string in);
    ~Timer();
    static void printTimer();
    static void printTimer(std::string in);
    static void openTimer();
    static void closeTimer();

    template<typename DTYPE>
    static void Vector_Variance(DTYPE *vector, DTYPE *vector_compare, int size)
    {
        DTYPE variance = 0;
        DTYPE tmp;
        for(int i = 0; i < size; i++)
        {
            tmp = (vector_compare[i] - vector[i]);
            variance += tmp * tmp;
        }
        std::cout << "Variance:" << variance << std::endl;
    }

    static void maxTimeSum();
};

#endif

