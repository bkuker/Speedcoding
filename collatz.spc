%IP 0010

//Constants
0000 DATA 0 1 2 3

//scratch
0005 DATA 0

//pi
0006 DATA 314159
0007 DATA 100000
//halfpi
0008 DATA 0

//LO OP_1   R AAAA BBBB CCCC    OP_2    DDDDD
0010 DIV    0 0006 0007 0006    -       -
0011 DIV    0 0006 0002 0008    -       -
0012 ADD    0 0001 0030 0030    -       -       //I++
0013 MOVE   0 0030 0031 0031    -       -       //n = i

0014 ADD    0 0001 0015 0015    -       -
0015 PRINT  0 0031 0031 0001    -       - 

0016 SUB    0 0031 0001 0005    TRZ     0012    //n==1? Goto 12

0017 MPY    0 0031 0006 0005    -       -       //scratch = n * pi
0018 ADD    0 0005 0008 0005    -       -       //scratch += pi/2
0019 SINE   0 0005 0000 0005    TRMN    0021       //scratch = sin(scratch)

//even
0020 DIV    0 0031 0002 0031    TR      0015

//odd
0021 MPY    0 0031 0003 0031    -       -
0022 ADD    0 0031 0001 0031    TR      0015

//I
0030 DATA 1
// N
0031 DATA 0
