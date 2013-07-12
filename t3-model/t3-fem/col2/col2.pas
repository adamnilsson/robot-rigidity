------------------------------------------------------------
Creo Simulate Structure Version P-10-21:spg
Diagnostic Log
Thu May 30, 2013   11:40:35
------------------------------------------------------------

Begin Creating Database for Design Study
Thu May 30, 2013   11:40:35

Begin Integrated Mode Error Checking
Thu May 30, 2013   11:40:35

Begin Generating Elements
Thu May 30, 2013   11:40:35

Begin Integrated Mode Error Checking
Thu May 30, 2013   11:40:35

Begin Engine Bookkeeping
Thu May 30, 2013   11:40:35

Begin Analysis: "col2"
Thu May 30, 2013   11:40:35

Using Sparse Solver

Begin Mass Calculation
Thu May 30, 2013   11:40:35

Begin P-Loop Pass 1
Thu May 30, 2013   11:40:35

Begin Processing Multi-Point Constraints
Thu May 30, 2013   11:40:35

Begin Matrix Profile Minimization
Thu May 30, 2013   11:40:35

Begin Element Calculations, Pass 1
Thu May 30, 2013   11:40:35

Begin Global Matrix Assembly, Pass 1
Thu May 30, 2013   11:40:35

Begin Equation Solve, Pass 1
Thu May 30, 2013   11:40:35

Number of equations: 978
Average bandwidth:   59.5798
Maximum bandwidth:   162
Size of global matrix profile (kb): 466.152
Number of terms in global matrix profile: 58269       
Minimum recommended solram for direct solver: 2

Size of element file (kb): 863.76
Maximum element matrix size (kb): 14.64
Average element matrix size (kb): 14.64

NOTES:
Solver RAM allocation can be done with a single parameter,
called solram.  If the Creo Simulate Structure/Thermal
engine is the only memory-intensive application running on
your computer, performance will usually be best if you set
solram equal to half of your machine RAM.  For example,
solram 512 is a good choice for a machine with 1024 MB of RAM.

If you are running other memory-intensive applications on
your computer, decrease the solram allocation accordingly.
For example, set solram to 0.25 times machine RAM if you are
running two large applications at once.  However, you often
can run two large jobs faster one after another than if you
try to run both jobs at once.

The purpose of solram is to reduce the amount of disk I/O.
If you set solram too high, performance will usually suffer,
even on machines with very large RAM, because there will not
be enough machine RAM for other important data.  For
example, Creo Simulate allocates many large, non-solver
memory areas that will cause excessive swapping unless you
leave enough spare machine RAM.  You must also leave enough
RAM for the operating system to do disk caching.  Disk
caching improves filesystem performance by holding file data
in RAM for faster access.  Setting solram to half machine
RAM is usually the best compromise between reducing the
amount of disk I/O, and leaving enough machine RAM for disk
caching and for other data.

If you set solram too low, performance will suffer because
Creo Simulate must transfer data between machine RAM and
disk files many more times than with a larger setting.
For example, performance may degrade significantly if you
set solram to 0.1 times machine RAM or less.  A preferable
minimum is 0.25 times machine RAM.

The available swap space on your machine must be greater
than the maximum memory usage of your job.  The available
disk space on your machine must be greater than the maximum
disk usage of your job.  You can monitor the resource usage
of your job in the log (stt) file.  Your job may fail if
your machine does not have enough available disk space or
swap space, or if the maximum memory usage of your job is
greater than the memory limits set for your operating
system.

Begin Load Calculations
Thu May 30, 2013   11:40:35

Begin Post-Processing Calculations, Pass 1
Thu May 30, 2013   11:40:35

Begin Convergence Check Pass 1
Thu May 30, 2013   11:40:35

Begin Strain Energy Calculations
Thu May 30, 2013   11:40:35

Begin P-Loop Pass 2
Thu May 30, 2013   11:40:35

Begin Processing Multi-Point Constraints
Thu May 30, 2013   11:40:35

Begin Matrix Profile Minimization
Thu May 30, 2013   11:40:35

Begin Element Calculations, Pass 2
Thu May 30, 2013   11:40:35

Begin Global Matrix Assembly, Pass 2
Thu May 30, 2013   11:40:35

Begin Equation Solve, Pass 2
Thu May 30, 2013   11:40:35

Number of equations: 3090
Average bandwidth:   130.237
Maximum bandwidth:   366
Size of global matrix profile (mb): 3.21946
Number of terms in global matrix profile: 402432      
Minimum recommended solram for direct solver: 2

Size of element file (mb): 4.78622
Maximum element matrix size (kb): 255.024
Average element matrix size (kb): 81.1224

Begin Load Calculations
Thu May 30, 2013   11:40:35

Begin Post-Processing Calculations, Pass 2
Thu May 30, 2013   11:40:35

Begin Convergence Check Pass 2
Thu May 30, 2013   11:40:36

Begin Displacement and Stress Calculation
Thu May 30, 2013   11:40:36

Begin Reaction Calculation
Thu May 30, 2013   11:40:36

Begin Strain Energy Calculations
Thu May 30, 2013   11:40:36

Completed P-Loop
Thu May 30, 2013   11:40:36

Completed Analysis: col2
Thu May 30, 2013   11:40:36
