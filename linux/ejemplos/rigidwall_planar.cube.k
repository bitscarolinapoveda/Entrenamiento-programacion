*KEYWORD
*TITLE
STONEWALL SURFACE  
$
$  LSTC Example
$
$  Last Modified: September 22, 1997
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
  .4001E-3
$
*CONTROL_ENERGY
$     hgen      rwen    slnten     rylen
         2         2
$
*CONTROL_HOURGLASS
$      ihq        qh
         4
$
$
*DATABASE_BINARY_D3PLOT
$       dt      lcdt
 0.0200E-3
$
*DATABASE_BINARY_D3THDT
$       dt      lcdt
  .0010E-3
$
*DATABASE_GLSTAT
$       dt
   4.0e-06
$
*DATABASE_NODOUT
$       dt
   4.0e-06
$
*DATABASE_HISTORY_NODE
$      id1       id2       id3       id4       id5       id6       id7       id8
        13       201
$
*DATABASE_RWFORC
$       dt
   4.0e-06
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Rigidwalls
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
*RIGIDWALL_PLANAR_FORCES
$     nsid    nsidex     boxid
         1         0         0
$
$       xt        yt        zt        xh        yh        zh      fric
      20.0      20.0       0.0      20.0      20.0     100.0     0.000
$
$     soft      ssid      nid1      nid2      nid3      nid4
        10         0         1         4        13        16
$
$
*SET_NODE_LIST
$      sid
         1
$     nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
       201       202       203       204       205       206       207       208
       209
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Initial Conditions
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
$$$$  All nodes located within box 1 are given an initial velocity.
$
*INITIAL_VELOCITY
$     nsid    nsidex     boxid
                             1
$       vx        vy        vz       
       0.0       0.0 -100000.0
$
*DEFINE_BOX
$    boxid       xmm       xmx       ymn       ymx       zmn       zmx
         1      14.9      25.1      14.9      25.1       9.0      21.0
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
wall-display
         1         1         1
cube
         2         2         2         0         0         0
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
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
*NODE
$   node               x               y               z      tc      rc
       1    5.000000E+00    5.000000E+00    0.000000E+00       7       0
       4    3.500000E+01    5.000000E+00    0.000000E+00       7       0
      13    3.500000E+01    3.500000E+01    0.000000E+00       0       0
      16    5.000000E+00    3.500000E+01    0.000000E+00       7       0
     201    1.500000E+01    1.500000E+01    1.000000E+01       0       0
     202    2.000000E+01    1.500000E+01    1.000000E+01       0       0
     203    2.500000E+01    1.500000E+01    1.000000E+01       0       0
     204    1.500000E+01    2.000000E+01    1.000000E+01       0       0
     205    2.000000E+01    2.000000E+01    1.000000E+01       0       0
     206    2.500000E+01    2.000000E+01    1.000000E+01       0       0
     207    1.500000E+01    2.500000E+01    1.000000E+01       0       0
     208    2.000000E+01    2.500000E+01    1.000000E+01       0       0
     209    2.500000E+01    2.500000E+01    1.000000E+01       0       0
     210    1.500000E+01    1.500000E+01    1.500000E+01       0       0
     211    2.000000E+01    1.500000E+01    1.500000E+01       0       0
     212    2.500000E+01    1.500000E+01    1.500000E+01       0       0
     213    1.500000E+01    2.000000E+01    1.500000E+01       0       0
     214    2.000000E+01    2.000000E+01    1.500000E+01       0       0
     215    2.500000E+01    2.000000E+01    1.500000E+01       0       0
     216    1.500000E+01    2.500000E+01    1.500000E+01       0       0
     217    2.000000E+01    2.500000E+01    1.500000E+01       0       0
     218    2.500000E+01    2.500000E+01    1.500000E+01       0       0
     219    1.500000E+01    1.500000E+01    2.000000E+01       0       0
     220    2.000000E+01    1.500000E+01    2.000000E+01       0       0
     221    2.500000E+01    1.500000E+01    2.000000E+01       0       0
     222    1.500000E+01    2.000000E+01    2.000000E+01       0       0
     223    2.000000E+01    2.000000E+01    2.000000E+01       0       0
     224    2.500000E+01    2.000000E+01    2.000000E+01       0       0
     225    1.500000E+01    2.500000E+01    2.000000E+01       0       0
     226    2.000000E+01    2.500000E+01    2.000000E+01       0       0
     227    2.500000E+01    2.500000E+01    2.000000E+01       0       0
$
$$$$$  Shell Elements - For Display of the Rigidwall
$
*ELEMENT_SHELL
$    eid     pid      n1      n2      n3      n4
       1       1       1       4      13      16
$
$$$$$  Solid Elements
$
*ELEMENT_SOLID
$    eid     pid      n1      n2      n3      n4      n5      n6      n7      n8
     101       2     201     202     205     204     210     211     214     213
     102       2     202     203     206     205     211     212     215     214
     103       2     204     205     208     207     213     214     217     216
     104       2     205     206     209     208     214     215     218     217
     105       2     210     211     214     213     219     220     223     222
     106       2     211     212     215     214     220     221     224     223
     107       2     213     214     217     216     222     223     226     225
     108       2     214     215     218     217     223     224     227     226
$
*END
