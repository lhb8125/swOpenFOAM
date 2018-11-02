#include "Timers.hpp"
#include "IOstreams.H"
#include "mpi.h"

#define Cout Foam::Pout
#define Endl Foam::endl

std::map<std::string,double> Timer::timeSum ;
std::map<std::string,double> Timer::timeStart;
std::map<std::string,int> Timer::count;
int Timer::_OpenTimer = 1;

inline double getSystemTime()
{
    struct timeval timer;
    gettimeofday(&timer, 0);
    return ((double)(timer.tv_sec) + (double)(timer.tv_usec)*1.0e-6);
}

void Timer::startTimer(std::string in)
{
    if(_OpenTimer)
    {
        timeStart[in] = getSystemTime();
    }
}

void Timer::endTimer(std::string in)
{
    if(_OpenTimer)
    {
        double timeEnd_in = getSystemTime();
        std::map<std::string,double>::iterator it = timeSum.find(in);
        if(it==timeSum.end())
        {
            timeSum[in] = 0 ;
            count[in] = 0 ;
        }
        timeSum[in] += timeEnd_in - timeStart[in];
        count[in]++;
    }
}

void Timer::printTimer(std::string in)
{
    if(_OpenTimer)
    {
         std::map<std::string,double>::iterator it = timeSum.find(in);

        if(it==timeSum.end()) {}
        else
        {
            Cout << it->first << " Time: " << it->second
                 << "s, count: " << count[it->first] << Endl;
        }
    }
}

void Timer::maxTimeSum()
{
    std::map<std::string,double>::iterator it;
    for(it=timeSum.begin(); it!=timeSum.end(); ++it)
    {
        double time1 = it->second, time2;
        MPI_Allreduce(&time1, &time2, 1, MPI_DOUBLE, MPI_MAX, MPI_COMM_WORLD);
        it->second = time2;
    }
}

void Timer::printTimer()
{
    std::map<std::string,double>::iterator it;
    for(it=timeSum.begin(); it!=timeSum.end(); ++it)
        Cout << it->first << " Time: " << it->second << "s, count: "
             << count[it->first] << Endl;
}

void Timer::openTimer()
{
    _OpenTimer = 1;
}

void Timer::closeTimer()
{
    _OpenTimer = 0;
}

Timer::~Timer()
{
}

