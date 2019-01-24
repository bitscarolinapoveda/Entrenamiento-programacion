*KEYWORD
*TITLE
Pendulum with 2 spheres colliding
$
$
$$$$$   Restart
$
$  Last Modified: September 16, 1997
$
$  Units: mm, kg, ms, kN, GPa, kN-mm
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$$$$  Switch spheres to deformables
$
$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
$
$...>....1....>....2....>....3....>....4....>....5....>....6....>....7....>....8
$
*RIGID_DEFORMABLE_R2D
$      pid
         1
$
*RIGID_DEFORMABLE_R2D
$      pid
         2
$ 
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
$   ENDTIM    ENDCYC     DTMIN    ENDENG    ENDMAS
      13.0         0       0.0       0.0       0.0
$
$$$$  Increase d3plot output frequency to capture deformation of impact better.
$
*DATABASE_BINARY_D3PLOT
$       dt      lcdt
      0.10
$
*END
