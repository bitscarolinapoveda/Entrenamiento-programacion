*KEYWORD
*TITLE
Cantilever Beam with Damping
$
$  LSTC Example
$
$  Last Modified: September 11, 1997
$
$  Units: ton, mm, s, N, MPa, N-mm
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Damping
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
*DAMPING_GLOBAL
$     lcid    valdmp
         0       0.0
$
$$$$  for damping of 10
$
$*DAMPING_GLOBAL
$         0      10.0
$
$$$$  for damping of 50
$
$*DAMPING_GLOBAL
$         0      50.0
$
*CONTROL_DYNAMIC_RELAXATION
$   nrcyck     drtol    drfctr    drterm    tssfdr    irelal     edttl    idrflg
       100    1.0e-3     0.995                 0.9
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
    0.5001
$
*CONTROL_CONTACT
$   slsfac    rwpnal    islchk    shlthk    penopt    thkchg     orien
       0.1
$   usrstr    usrfac     nsbcs    interm    xpenen

$
*CONTROL_ENERGY
$     hgen      rwen    slnten     rylen
         2         2
$
*CONTROL_HOURGLASS
$      ihq        qh
         4
$
*CONTROL_OUTPUT
$    npopt    neecho    nrefup    iaccop     opifs    ipnint    ikedit
         0         0         0         0                   2      1000
$
*DATABASE_EXTENT_BINARY
$    neiph     neips    maxint    strflg    sigflg    epsflg    rltflg    engflg
                                       1
$   cmpflg    ieverp    beamip

$
*DATABASE_BINARY_D3PLOT
$       dt      lcdt
     0.020
$
*DATABASE_BINARY_D3THDT
$       dt      lcdt
    999999
$
*DATABASE_ELOUT
$       dt
     0.001
$
*DATABASE_HISTORY_SHELL
$      id1       id2       id3       id4       id5       id6       id7       id8
         1
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
        21
$
*DATABASE_SECFORC
$       dt
     0.001
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Cross Sections
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$$  define a cross section through the beam to monitor force & moment
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
$     eid1
         1
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Loading
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Load nodes 21 and 22 with a constant 50 N in the z-direction.
$
*LOAD_NODE_SET
$     nsid       dof      lcid        sf       cid        m1        m2        m3
         2         3         1       0.5
$
*SET_NODE_LIST
$      sid       da1       da2       da3       da4
         2
$     nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
        21        22 
$
*DEFINE_CURVE
$     lcid      sidr      scla      sclo      offa      offo
         1
$                  a                   o
                 0.0               100.0
                10.0               100.0
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
Beam - Elastic Material
         1         1         1
$
$
*MAT_ELASTIC
$      mid        ro         e        pr        da        db         k
         1  1.00e-08  210000.0     0.300
$
$
*SECTION_SHELL
$      sid    elform      shrf       nip     propt   qr/irid     icomp
         1         2       1.0         2       1.0 
$       t1        t2        t3        t4      nloc
      10.0      10.0      10.0      10.0       0.0
$ 
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Define Nodes and Elements
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Nodes 1 and 2 have fixed boundary conditions (translation and rotation).
$
*NODE
$   node               x               y               z      tc      rc
       1    0.000000E+00    0.000000E+00    0.000000E+00       7       7
       2    0.000000E+00    1.000000E+02    0.000000E+00       7       7
       3    1.000000E+02    0.000000E+00    0.000000E+00       0       0
       4    1.000000E+02    1.000000E+02    0.000000E+00       0       0
       5    2.000000E+02    0.000000E+00    0.000000E+00       0       0
       6    2.000000E+02    1.000000E+02    0.000000E+00       0       0
       7    3.000000E+02    0.000000E+00    0.000000E+00       0       0
       8    3.000000E+02    1.000000E+02    0.000000E+00       0       0
       9    4.000000E+02    0.000000E+00    0.000000E+00       0       0
      10    4.000000E+02    1.000000E+02    0.000000E+00       0       0
      11    5.000000E+02    0.000000E+00    0.000000E+00       0       0
      12    5.000000E+02    1.000000E+02    0.000000E+00       0       0
      13    6.000000E+02    0.000000E+00    0.000000E+00       0       0
      14    6.000000E+02    1.000000E+02    0.000000E+00       0       0
      15    7.000000E+02    0.000000E+00    0.000000E+00       0       0
      16    7.000000E+02    1.000000E+02    0.000000E+00       0       0
      17    8.000000E+02    0.000000E+00    0.000000E+00       0       0
      18    8.000000E+02    1.000000E+02    0.000000E+00       0       0
      19    9.000000E+02    0.000000E+00    0.000000E+00       0       0
      20    9.000000E+02    1.000000E+02    0.000000E+00       0       0
      21    1.000000E+03    0.000000E+00    0.000000E+00       0       0
      22    1.000000E+03    1.000000E+02    0.000000E+00       0       0
$
$$$$$  Shell Elements
$
*ELEMENT_SHELL
$    eid     pid      n1      n2      n3      n4
       1       1       1       3       4       2
       2       1       3       5       6       4
       3       1       5       7       8       6
       4       1       7       9      10       8
       5       1       9      11      12      10
       6       1      11      13      14      12
       7       1      13      15      16      14
       8       1      15      17      18      16
       9       1      17      19      20      18
      10       1      19      21      22      20
$
*END
