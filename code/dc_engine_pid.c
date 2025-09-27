#include "dc_engine_pid.h"
#include <stdio.h>

/* Global model state */
static DC_PID_T model;

/* PID parameters */
#define DT 0.01  /* discrete step */

void dc_engine_pid_initialize(void) {
    model.ref = 1.0;      /* reference velocity */
    model.output = 0.0;   /* initial velocity */
    model.error = 0.0;
    model.integral = 0.0;
    model.Kp = 2.0;
    model.Ki = 0.5;
    model.Kd = 0.1;
    model.prev_error = 0.0;
}

void dc_engine_pid_step(void) {
    /* Error */
    model.error = model.ref - model.output;

    /* PID elements */
    model.integral += model.error * DT;
    double derivative = (model.error - model.prev_error) / DT;
    double pid = model.Kp*model.error + model.Ki*model.integral + model.Kd*derivative;

    /* Update engine state (simplified) */
    model.output += pid * DT;

    /* Save previous error */
    model.prev_error = model.error;
}

double dc_engine_pid_getOutput(void) {
    return model.output;
}

void dc_engine_pid_terminate(void) {
    /* nothing to do in this example */
}
