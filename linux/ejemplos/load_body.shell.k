*KEYWORD
*TITLE
Mass with Angular Rotation - 2 Shell Elements
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
       0.1
$
*CONTROL_HOURGLASS
$      ihq        qh
         4
$
$
*DATABASE_BINARY_D3PLOT
$  dt/cycl      lcdt
 10.00E-03
$
*DATABASE_BINARY_D3THDT
$  dt/cycl      lcdt
  0.50E-03
$
*DATABASE_ELOUT
$       dt
     0.001
$
*DATABASE_HISTORY_SHELL
$      id1       id2       id3       id4       id5       id6       id7       id8
         1         2
$
*DATABASE_GLSTAT
$       dt
     0.001
$
*DATABASE_NODOUT
$       dt
     0.001
$
*DATABASE_HISTORY_NODE
$      id1       id2       id3       id4       id5       id6       id7       id8
         1         2         3         4         5         6
$
*DATABASE_SECFORC
$  dt/cycl      lcdt
     0.001
$
*DATABASE_CROSS_SECTION_SET
$     nsid      hsid      bsid      ssid      tsid      dsid
         1                             1
$
*SET_NODE_LIST
$      sid       da1       da2       da3       da4
         1
$     nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
         1         2
$
*SET_SHELL_LIST
$      sid       da1       da2       da3       da4
         1
$     eid1      eid2      eid3      eid4      eid5      eid6      eid7      eid8
         1
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Initial Velocity
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
*INITIAL_VELOCITY_NODE
$      nid        vx        vy        vz       vxe       vye       vze
         1       0.0       0.0       0.0      0.00     62.83      0.00
         2       0.0       0.0       0.0      0.00     62.83      0.00
         3       0.0       0.0   -6283.0      0.00     62.83      0.00
         4       0.0       0.0   -6283.0      0.00     62.83      0.00
         5       0.0       0.0  -12566.0      0.00     62.83      0.00
         6       0.0       0.0  -12566.0      0.00     62.83      0.00
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Boundary Conditions
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
*BOUNDARY_PRESCRIBED_MOTION_NODE
$      nid       dof       vad      lcid        sf       vid
         1         6         0         1       1.0 
         2         6         0         1       1.0
$
*DEFINE_CURVE
$     lcid      sidr      scla      sclo      offa      offo
         1
$           abscissa            ordinate
               0.000               62.83
               1.000               62.83
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Loading
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
*LOAD_BODY_GENERALIZED
$       n1        n2      lcid    drlcid        xc        yc        zc
         1         6         0         2       0.0       0.0       0.0
$       ax        ay        az       omx       omy       omz
       0.0       0.0       0.0       0.0       1.0       0.0
$
*DEFINE_CURVE
$     lcid      sidr      scla      sclo      offa      offo
         2         1
$           abscissa            ordinate
               0.000               62.83
               1.000               62.83
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
shells
         1         1         1
$
$
*MAT_ELASTIC
$      mid        ro         e        pr        da        db         k
         1  1.00e-08   210000.     0.300
$
$
*SECTION_SHELL
$      sid    elform      shrf       nip     propt   qr/irid     icomp
         1                             3
$       t1        t2        t3        t4      nloc
      10.0      10.0      10.0      10.0
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
       2    0.000000E+00    1.000000E+02    0.000000E+00       6       0
       3    1.000000E+02    0.000000E+00    0.000000E+00       0       0
       4    1.000000E+02    1.000000E+02    0.000000E+00       0       0
       5    2.000000E+02    0.000000E+00    0.000000E+00       0       0
       6    2.000000E+02    1.000000E+02    0.000000E+00       0       0
$
*ELEMENT_SHELL
$    eid     pid      n1      n2      n3      n4
       1       1       1       3       4       2
       2       1       3       5       6       4
$
*END
