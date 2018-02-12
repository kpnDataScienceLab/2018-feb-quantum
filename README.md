# 2018-feb-quantum
Understanding Grovers Algorithm and implementing an n bit implementation on IBM QASM

The goal of this lab day is understanding [Grovers Algorithm](https://quantumexperience.ng.bluemix.net/proxy/tutorial/full-user-guide/004-Quantum_Algorithms/070-Grover's_Algorithm.html) and trying to implement an n bit search in Python to create a QASM definition that can be run on IBM's quantum computer (or simulator).


## Requirements

* Basic knowledge of Quantum Mechanics.
* free credentials for [IBM Quantum Experience](https://www.research.ibm.com/ibm-q/)
* knowledge of Python.
* Original Grover [article](https://arxiv.org/pdf/quant-ph/9605043.pdf).

## QASM example

```
include "qelib1.inc";
qreg q[5];
creg c[5];

h q[1];
h q[2];
h q[2];
cx q[1],q[2];
h q[2];
h q[1];
h q[2];
x q[1];
x q[2];
h q[2];
cx q[1],q[2];
h q[2];
x q[1];
x q[2];
h q[1];
h q[2];
measure q[1] -> c[1];
measure q[2] -> c[2];
```
## Quantum gates
[overview](https://quantumexperience.ng.bluemix.net/qx/tutorial?sectionId=beginners-guide&page=005-Single-Qubit_Gates~2F006-Summary_of_quantum_gates)


