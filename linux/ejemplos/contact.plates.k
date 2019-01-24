*KEYWORD
*TITLE
Sliding Interface Types 3,4,5,10,13 
$
$  LSTC Example
$
$  Last Modified: September 5, 1997
$
$  Five different contacts are defined for the same problem.  The only one
$  active is type 3, surface to surface.  The other four are commented out.
$  To switch contact types, comment out the active one and remove the comments
$  from the desired one.  
$
$  Units: mm, s
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Control Ouput
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
*CONTROL_TERMINATION
$   endtim    endcyc     dtmin    endneg    endmas
   .200E-3
$
*CONTROL_ENERGY
$     hgen      rwen    slnten     rylen 
         2         1         2
$
*CONTROL_HOURGLASS
$      ihq        qh
         4
$
*CONTROL_TIMESTEP
$   dtinit      scft      isdo    tslimt      dtms      lctm     erode     ms1st
                0.50         0
$
*DATABASE_BINARY_D3PLOT
$       dt      lcdt
 0.0100E-3
$
*DATABASE_BINARY_D3THDT
$       dt      lcdt
 2.0000E-3
$
*DATABASE_EXTENT_BINARY
$    neiph     neips    maxint    strflg    sigflg    epsflg    rltflg    engflg
                                       1
$   cmpflg    ieverp    beamip

$
*DATABASE_GLSTAT
$       dt
  0.01e-04
$
*DATABASE_NCFORC
$       dt
  0.01e-04
$
*DATABASE_NODOUT
$       dt
  0.01e-04
$
*DATABASE_HISTORY_NODE
$      id1       id2       id3       id4       id5       id6       id7       id8
        12        13       101
$
*DATABASE_MATSUM
$       dt
  0.10e-05
$
*DATABASE_RCFORC
$       dt
  0.01e-04
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Define Contacts
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
$$$$$$$$$$  Type 3, surface to surface
$
*CONTACT_SURFACE_TO_SURFACE
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
         1         2                                                 1         1
$       fs        fd        dc        vc       vdc    penchk        bt        dt

$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf

$
*SET_SEGMENT
$      sid
         1
$       n1        n2        n3        n4
       101       103       104       102
$
*SET_SEGMENT
$      sid
         2
$       n1        n2        n3        n4
         7         8        13        12
         8         9        14        13
        12        13        18        17
        13        14        19        18
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
$$$$$$$$$$  Type 4, single surface
$                     to make active, remove the $$ from the lines below
$
$$*CONTACT_SINGLE_SURFACE
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$$         1         0                                                 1         1
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$$
$
$$*SET_SEGMENT
$      sid
$$         1
$       n1        n2        n3        n4
$$       101       103       104       102
$$         7         8        13        12
$$         8         9        14        13
$$        12        13        18        17
$$        13        14        19        18
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
$$$$$$$$$$  Type 5, node to surface
$                     to make active, remove the $$ from the lines below
$
$$*CONTACT_NODES_TO_SURFACE
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$$         1         2         4                                       1         1
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$$
$
$$*SET_NODE_LIST
$      sid
$$         1
$     nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
$$       101       103       104       102
$
$$*SET_SEGMENT
$      sid
$$         2
$       n1        n2        n3        n4
$$         7         8        13        12
$$         8         9        14        13
$$        12        13        18        17
$$        13        14        19        18
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
$$$$$$$$$$  Type 10, surface to surface
$                     to make active, remove the $$ from the lines below
$
$$*CONTACT_ONE_WAY_SURFACE_TO_SURFACE
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$$         1         2                                                 1         1
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$$
$
$$*SET_SEGMENT
$      sid
$$         1
$       n1        n2        n3        n4
$$       101       103       104       102
$
$$*SET_SEGMENT
$      sid       da1       da2       da3       da4
$$         2
$       n1        n2        n3        n4
$$         7         8        13        12
$$         8         9        14        13
$$        12        13        18        17
$$        13        14        19        18
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
$$$$$$$$$$  Type 13, automatic single surface
$                     to make active, remove the $$ from the lines below
$
$$*CONTACT_AUTOMATIC_SINGLE_SURFACE
$     ssid      msid     sstyp     mstyp    sboxid    mboxid       spr       mpr
$$         0         0                                                 1         1
$       fs        fd        dc        vc       vdc    penchk        bt        dt
$$
$      sfs       sfm       sst       mst      sfst      sfmt       fsf       vsf
$$
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Initial Conditions
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Nodes of the Impactor Material are given an initial velocity.
$
*INITIAL_VELOCITY
$     nsid    nsidex     boxid
         1
$       vx        vy        vz       
       0.0       0.0 -100000.0
$
*SET_NODE_LIST
$      sid
         1
$     nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
       101       102       103       104
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
Impacted Material 
         1         1         1
Impactor Material 
         2         2         1
$
$
*MAT_ELASTIC
$      mid        ro         e        pr        da        db         k
         1   1.00e-8  100000.0     0.300
$
$
*SECTION_SHELL
$      sid    elform      shrf       nip     propt   qr/irid     icomp
         1             0.83333       2.0       3.0
$       t1        t2        t3        t4      nloc
       1.0       1.0       1.0       1.0
$
*SECTION_SHELL
$      sid    elform      shrf       nip     propt   qr/irid     icomp
         2             0.83333       2.0       3.0
$       t1        t2        t3        t4      nloc
       2.0       2.0       2.0       2.0
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Define Nodes and Elements
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$ Outer edge nodes of the Impacted Material are fixed in translation (tc = 7)
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
$
$$$$$$$$  SHELL ELEMENTS
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
     101       2     101     102     104     103
$
*END
