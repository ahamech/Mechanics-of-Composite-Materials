You can use this code for laminata with 20 or under than lamina with same thickness
!  please pay attention to the following 9 steps
1) you can use exist material or add new material from line 24 like example
2) please enter the lamina thickness in line 30
3) please enter the laminate code like matrix
   example:if laminate code is [0/30/45] ---> laminate_code=[0 30 45]
4) In Tsai-Wu we need to understand wich lamina we are analys and need to define this lamina material
5) "z" is position of lamina that we want to analys
   example: in 9 layer lamina with 0.0025m thickness lamina the position of top surface in first lamina is -0.01125 so ---> z=-0.01125
6) In Tsai-Wu we need to understand wich lamina we are analys and need to define this lamina number to define angle of this lamina
7) for designing shaft we need to output radius of shaft in line 35
8) from line 42 to line 49 please enter the force, moment and torsion
9) from line 52 to line 71 please enter each lamina material
   example: material_l1=graphite_epoxy
