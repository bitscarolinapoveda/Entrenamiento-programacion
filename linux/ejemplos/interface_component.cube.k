*KEYWORD
*TITLE
INTERFACE SEGMENTS (FIRST ANALYSIS)
$
$  LSTC Example
$
$  Last Modified: September 18, 1997
$
$  Units: ton, mm, s, N, MPa, N-mm
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Control Ouput
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
*CONTROL_TERMINATION
$   endtim    endcyc     dtmin    endneg    endmas
    0.0003
$
*CONTROL_ENERGY
$     hgen      rwen    slnten     rylen
         2
$
*CONTROL_HOURGLASS
$      ihq        qh
         4
$
$$$$  opifs - output interval for interface file
$
*CONTROL_OUTPUT
$    npopt    neecho    nrefup    iaccop     opifs    ipnint    ikedit
                                          2.000E-6
$
*CONTROL_TIMESTEP
$   dtinit      scft      isdo    tslimt      dtms      lctm     erode     ms1st
                0.10
$
$
*DATABASE_BINARY_D3PLOT
$       dt      lcdt
   0.00002
$
*DATABASE_BINARY_D3THDT
$       dt      lcdt
   0.00001
$
*DATABASE_EXTENT_BINARY
$    neiph     neips    maxint    strflg    sigflg    epsflg    rltflg    engflg
                                       1
$   cmpflg    ieverp    beamip

$
*DATABASE_GLSTAT
$       dt
   0.00001
$
*DATABASE_NODOUT
$       dt
   0.00001
$
*DATABASE_HISTORY_NODE
$      id1       id2       id3       id4       id5       id6       id7       id8
       101
$
*DATABASE_RCFORC
$       dt
   0.00001
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Interface
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
$$$$  Save the behavior on the following segment in the interface file.
$$$$  This file will then be used in the second analysis.
$
*INTERFACE_COMPONENT_SEGMENT
$      sid
         3
$
*SET_SEGMENT
$      sid       da1       da2       da3       da4
         3
$       n1        n2        n3        n4        a1        a2        a3        a4
       101       102       104       103
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Initial Velocity
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  All nodes in box 1 are given an initial velocity (nodes of the cube).
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
*INITIAL_VELOCITY
$     nsid    nsidex     boxid
                             1
$       vx        vy        vz       
       0.0       0.0 -100000.0
$
*DEFINE_BOX
$    boxid       xmm       xmx       ymn       ymx       zmn       zmx
         1      15.0      25.0      15.0      25.0      10.0      20.0
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Contact - Sliding Interfaces
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
$$$$  Contact between the bottom of the cube (segment set 1) and the plate.
$
*CONTACT_SURFACE_TO_SURFACE
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
         1         2
$       fs        fd        dc        vc       vdc    penchk        bt        dt

$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf

$
*SET_SEGMENT
$      sid       da1       da2       da3       da4
         1
$       n1        n2        n3        n4        a1        a2        a3        a4
       101       103       104       102
$
*SET_SEGMENT
$      sid       da1       da2       da3       da4
         2
$       n1        n2        n3        n4        a1        a2        a3        a4
         7         8        13        12
         8         9        14        13
        12        13        18        17
        13        14        19        18
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Define Parts and Materials
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
*PART
$      pid       sid       mid     eosid      hgid    adpopt
Plate
         1         1         1
Cube
         2         2         2
$
$
*MAT_ELASTIC
$      mid        ro         e        pr        da        db
         1   2.00e-8  100000.0     0.300
$
*MAT_ELASTIC
$      mid        ro         e        pr        da        db
         2   1.00e-8  100000.0     0.300
$
$
*SECTION_SHELL
$      sid    elform      shrf       nip     propt   qr/irid     icomp
         1             0.83333       2.0       3.0
$       t1        t2        t3        t4      nloc
       2.0       2.0       2.0       2.0
$
*SECTION_SOLID
$      sid    elform 
         2    
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Define Nodes and Elements
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
*NODE
$   node               x               y               z      tc      rc
       1    0.000000E+00    0.000000E+00    0.000000E+00       7       0
       2    1.000000E+01    0.000000E+00    0.000000E+00       7       0
       3    2.000000E+01    0.000000E+00    0.000000E+00       7       0
       4    3.000000E+01    0.000000E+00    0.000000E+00       7       0
       5    4.000000E+01    0.000000E+00    0.000000E+00       7       0
       6    0.000000E+00    1.000000E+01    0.000000E+00       7       0
       7    1.000000E+01    1.000000E+01    0.000000E+00       0       0
       8    2.000000E+01    1.000000E+01    0.000000E+00       0       0
       9    3.000000E+01    1.000000E+01    0.000000E+00       0       0
      10    4.000000E+01    1.000000E+01    0.000000E+00       7       0
      11    0.000000E+00    2.000000E+01    0.000000E+00       7       0
      12    1.000000E+01    2.000000E+01    0.000000E+00       0       0
      13    2.000000E+01    2.000000E+01    0.000000E+00       0       0
      14    3.000000E+01    2.000000E+01    0.000000E+00       0       0
      15    4.000000E+01    2.000000E+01    0.000000E+00       7       0
      16    0.000000E+00    3.000000E+01    0.000000E+00       7       0
      17    1.000000E+01    3.000000E+01    0.000000E+00       0       0
      18    2.000000E+01    3.000000E+01    0.000000E+00       0       0
      19    3.000000E+01    3.000000E+01    0.000000E+00       0       0
      20    4.000000E+01    3.000000E+01    0.000000E+00       7       0
      21    0.000000E+00    4.000000E+01    0.000000E+00       7       0
      22    1.000000E+01    4.000000E+01    0.000000E+00       7       0
      23    2.000000E+01    4.000000E+01    0.000000E+00       7       0
      24    3.000000E+01    4.000000E+01    0.000000E+00       7       0
      25    4.000000E+01    4.000000E+01    0.000000E+00       7       0
     101    1.500000E+01    1.500000E+01    1.000000E+01       0       0
     102    2.500000E+01    1.500000E+01    1.000000E+01       0       0
     103    1.500000E+01    2.500000E+01    1.000000E+01       0       0
     104    2.500000E+01    2.500000E+01    1.000000E+01       0       0
     105    1.500000E+01    1.500000E+01    2.000000E+01       0       0
     106    2.500000E+01    1.500000E+01    2.000000E+01       0       0
     107    1.500000E+01    2.500000E+01    2.000000E+01       0       0
     108    2.500000E+01    2.500000E+01    2.000000E+01       0       0
$
$$$$$  Solid and Shell Elements
$
*ELEMENT_SOLID
$    eid     pid      n1      n2      n3      n4      n5      n6      n7      n8
     101       2     101     102     104     103     105     106     108     107
$
*ELEMENT_SHELL
$    eid     pid      n1      n2      n3      n4
       1       1       1       2       7       6
       2       1       2       3       8       7
       3       1       3       4       9       8
       4       1       4       5      10       9
       5       1       6       7      12      11
       6       1       7       8      13      12
       7       1       8       9      14      13
       8       1       9      10      15      14
       9       1      11      12      17      16
      10       1      12      13      18      17
      11       1      13      14      19      18
      12       1      14      15      20      19
      13       1      16      17      22      21
      14       1      17      18      23      22
      15       1      18      19      24      23
      16       1      19      20      25      24
$
*END
