/* Simplified file: for teaching purpose only */
#include <stdio.h>
#include "dc_engine_pid.h"

/* Simulates a periodic call to the model */
int main(void) {
    dc_engine_pid_initialize();

    /* 100 simulation steps */
    for (int i = 0; i < 1000; i++) {
        dc_engine_pid_step();
        printf("Step %d: output = %f\n", i, dc_engine_pid_getOutput());
    }

    dc_engine_pid_terminate();
    return 0;
}
