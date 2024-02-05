# source {C:\Users\micha\OneDrive\Desktop\Project 2\Project2_Testbench.tcl}

restart

# SET UP CLOCK FOR 100MHZ 10ns CLOCK CYCLE
add_force CLK {0 0ns} {1 5ns} -repeat_every 10ns

# INITIALIZE INPUTS AND RUN FOR 100ns
add_force RESET {0 0ns}
add_force START {0 0ns}
add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 100ns

# SET RESET HIGH (ACTIVE LOW) AND RUN FOR 100ns
add_force RESET {1 0ns}
run 100ns

# TEST 1
# (0 - 0) * 4 = 0
# OVF = 0
add_force START {1 0ns}
run 10ns

add_force START {0 0ns}
add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 100ns

add_force RESET {0 0ns}
run 50ns
add_force RESET {1 0ns}
run 50ns

# TEST 2 
# (20 - 20) * 4 = 0  	
# OVF = 0
add_force START {1 0ns}
run 10ns

add_force START {0 0ns}
add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 100ns

add_force RESET {0 0ns}
run 50ns
add_force RESET {1 0ns}
run 50ns

# TEST 3
# (10 - 40) * 4 = -120
# OVF = 0
add_force START {1 0ns}
run 10ns

add_force START {0 0ns}
add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 100ns

add_force RESET {0 0ns}
run 50ns
add_force RESET {1 0ns}
run 50ns

# TEST 4
# (40 - 10) * 4 = 120
# OVF = 0
add_force START {1 0ns}
run 10ns

add_force START {0 0ns}
add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 100ns

add_force RESET {0 0ns}
run 50ns
add_force RESET {1 0ns}
run 50ns

# TEST 5
# ((-10) - 30) * 4 = -160
# OVF = 1 (AFTER * 4)
add_force START {1 0ns}
run 10ns

add_force START {0 0ns}
add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 100ns

add_force RESET {0 0ns}
run 50ns
add_force RESET {1 0ns}
run 50ns

# TEST 6
# (66 - (-66)) * 4 = 528
# OVF = 1 (BEFORE * 4)
add_force START {1 0ns}
run 10ns

add_force START {0 0ns}
add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 100ns

add_force RESET {0 0ns}
run 50ns
add_force RESET {1 0ns}
run 50ns

# TEST 7
# (-10 - (-20)) * 4 = 40
# OVF = 0
add_force START {1 0ns}
run 10ns

add_force START {0 0ns}
add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 100ns

add_force RESET {0 0ns}
run 50ns
add_force RESET {1 0ns}
run 50ns

# TEST 8
# (42 - 10) * 4 = -128
# OVF = 0
add_force START {1 0ns}
run 10ns

add_force START {0 0ns}
add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 100ns

add_force RESET {0 0ns}
run 50ns
add_force RESET {1 0ns}
run 50ns

# TEST 9
# (21 - (-10)) * 4 = 124
# OVF = 0
add_force START {1 0ns}
run 10ns

add_force START {0 0ns}
add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 100ns

add_force RESET {0 0ns}
run 50ns
add_force RESET {1 0ns}
run 50ns

# TEST 10
# (10 - (-22)) * 4 = -128
# OVF = 1 (AFTER * 4)
add_force START {1 0ns}
run 10ns

add_force START {0 0ns}
add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 100ns

add_force RESET {0 0ns}
run 50ns
add_force RESET {1 0ns}
run 50ns

# TEST 11
# ((-66) - 66) * 4 = -528
# OVF = 1 (BEFORE * 4)
add_force START {1 0ns}
run 10ns

add_force START {0 0ns}
add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {0 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {1 0ns}
add_force OP2_IN {1 0ns}
run 10ns

add_force OP1_IN {0 0ns}
add_force OP2_IN {0 0ns}
run 100ns

add_force RESET {0 0ns}
run 50ns
add_force RESET {1 0ns}
run 50ns


