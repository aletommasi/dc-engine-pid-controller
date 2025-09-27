#ifndef DC_ENGINE_PID_H_
#define DC_ENGINE_PID_H_

#include "rtwtypes.h"

/* Structure of the model PID Controller + DC Engine */
typedef struct {
    double ref;       /* reference velocity */
    double output;    /* engine output */
    double error;     /* PID error */
    double integral;  /* integral term */
    double Kp;
    double Ki;
    double Kd;
    double prev_error;
} DC_PID_T;

/* model's functions */
void dc_engine_pid_initialize(void);
void dc_engine_pid_step(void);
void dc_engine_pid_terminate(void);
double dc_engine_pid_getOutput(void);

#endif
