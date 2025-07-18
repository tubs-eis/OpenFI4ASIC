#ifndef PC_MONITOR_H
#define PC_MONITOR_H

typedef struct {
    uint32_t volatile pc;
} pc_monitor_phys_t;

uint32_t pc_monitor_read_pc(pc_monitor_phys_t* pc_monitor) {
    return pc_monitor->pc;
}

#endif
