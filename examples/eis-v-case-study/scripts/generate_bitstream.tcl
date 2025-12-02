open_project $env(VIVADO_PROJECT_FILE)

reset_run impl_1
launch_runs impl_1 -jobs 16 -to_step write_bitstream
wait_on_run impl_1

open_run impl_1

report_timing_summary -file $env(REPORT_DIR)/timing_summary.rpt

write_bitstream -force $env(BITSTREAM_DEST)
