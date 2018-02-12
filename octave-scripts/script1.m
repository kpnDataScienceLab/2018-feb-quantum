
v00=[1;0;0;0]
v01=[0;1;0;0]
v10=[0;0;1;0]
v11=[0;0;0;1]

CNOT=[1,0,0,0;0,1,0,0;0,0,0,1;0,0,1,0]
H=1/sqrt(2)*[1,1;1,-1]
H2=1/sqrt(2)*[H,H;H,-H]

# -------------------------plain CNOT gate
# CNOT * v00 --> v00
# CNOT * v01 --> v01
# CNOT * v10 --> v11  *flips 2nd bit from 0 to 1
# CNOT * v11 --> v10  *flips 2nd bit from 1 to 0
#


# ----------------------- "upside-down" CNOT gate
H2 * CNOT * H2 * v00   # --> v00
H2 * CNOT * H2 * v01   # --> v11  *flips 1st bit from 0 to 1
H2 * CNOT * H2 * v10   # --> v10 
H2 * CNOT * H2 * v11   # --> v01  *flips 1st bit from 1 to 0
