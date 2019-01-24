*KEYWORD
*TITLE
Foam Material Model for a Single Element
$
$  LSTC Example
$
$  Last Modified: September 18, 1997
$
$    This problem contains a single element with one degree of
$    freedom on a single side.  The element compresses and expands
$    following a prescribed velocity motion.
$
$    The material is a foam which follows a pressure volumetric
$    strain relationship.  The foam block is compressed and
$    expanded in a range of relative volume (V/Vo) from 1.0
$    to 0.0091 to 1.441.
$
$    Two types of unloading are explored:
$      1. Unloading follows the loading curve
$      2. Bulk unloading modulus is used - volumetric crushing
$
$    The foam has a tensile fracture pressure cutoff of 0.5
$
$  Units: lbf-s2/in, in, s, lbf, psi, lbf-in
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
     0.250
$
*CONTROL_ENERGY
$     hgen      rwen    slnten     rylen
         2         2
$
$
*DATABASE_BINARY_D3PLOT
$  dt/cycl      lcdt
     0.005
$
*DATABASE_BINARY_D3THDT
$  dt/cycl      lcdt
     0.001
$
*DATABASE_GLSTAT
$  dt/cycl      lcdt
     0.005
$
*DATABASE_ELOUT
$  dt/cycl      lcdt
     0.005
$
*DATABASE_HISTORY_SOLID
         1
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Boundary Motion Conditions
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
*BOUNDARY_PRESCRIBED_MOTION_SET
$      nid       dof       vad      lcid        sf       vid
         1         3         0         1       1.0         0
$
*DEFINE_CURVE
$     lcid      sidr      scla      sclo      offa      offo
         1
$           abscissa            ordinate
           0.000E+00          -9.000E+02
           1.000E-01          -9.000E+02
           1.010E-01           9.000E+02
           2.500E-01           9.000E+02
$
*SET_NODE_LIST
$      sid
         1
$     nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
         5         6         7         8
$
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
foam block
         1         1         1
$
$
*MAT_SOIL_AND_FOAM
$      mid        ro      bulk         g        a0        a1        a2        pc
         1 6.740E-11 5.760E+01 1.794E+01 1.200E-01 0.000E+00 0.000E+00-5.000E-01
$        f         f
$      vcr       dun
$
$ Unloading follows the loading curve
$ 1.000E+00 0.000E+00
$
$ Bulk unloading modulus is used - volumetric crushing
 0.000E+00 0.000E+00
$
$     eps1      eps2      eps3      eps4      eps5      eps6      eps7      eps8
-2.500E-02-5.000E-02-1.050E-01-3.570E-01-6.930E-01-9.160E-01-1.200E+00-1.610E+00
$
$     eps9     eps10
 0.000E+00 0.000E+00
$
$       p1        p2        p3        p4        p5        p6        p7        p8
 3.450E-01 5.170E-01 6.890E-01 8.070E-01 1.110E+00 1.240E+00 1.300E+00 1.500E+00
$
$       p9       p10
 0.000E+00 0.000E+00
$
$
*SECTION_SOLID
$      sid    elform 
         1    
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Define Nodes and Elements
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
*NODE
$   node               x               y               z      tc      rc
       1    0.000000E+00    0.000000E+00    0.000000E+00       7       7
       2    1.000000E+02    0.000000E+00    0.000000E+00       7       7
       3    0.000000E+00    1.000000E+02    0.000000E+00       7       7
       4    1.000000E+02    1.000000E+02    0.000000E+00       7       7
       5    0.000000E+00    0.000000E+00    1.000000E+02       4       7
       6    1.000000E+02    0.000000E+00    1.000000E+02       4       7
       7    0.000000E+00    1.000000E+02    1.000000E+02       4       7
       8    1.000000E+02    1.000000E+02    1.000000E+02       4       7
$
*ELEMENT_SOLID
$    eid     pid      n1      n2      n3      n4      n5      n6      n7      n8
       1       1       1       2       4       3       5       6       8       7
$
*END
