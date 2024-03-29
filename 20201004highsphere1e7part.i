highca - thermal n source in granite
c ----------------------------------------------------------------------------------------
c This MCNP deck was built to model an underground detonation very roughly
c in low-Ca granite using a Watt Fission Spectrum point source. F4 tallies were
c implemented to determine the volumetric flux for each spherical shell of granite.
c ----------------------------------------------------------------------------------------
c CELL CARDS
c 1 sphere of air followed by 11 spheres of granite and then a void
10 200 -0.001205 -100 imp:n=1
11 100 -2.69 -101 100 imp:n=1
12 100 -2.69 -102 101 imp:n=1
13 100 -2.69 -103 102 imp:n=1
14 100 -2.69 -104 103 imp:n=1
15 100 -2.69 -105 104 imp:n=1
16 100 -2.69 -106 105 imp:n=1
17 100 -2.69 -107 106 imp:n=1
18 100 -2.69 -108 107 imp:n=1
19 100 -2.69 -109 108 imp:n=1
20 100 -2.69 -110 109 imp:n=1
21 100 -2.69 -111 110 imp:n=1
99 0  111  imp:n=0

c SURFACE CARDS
c sphere of air with radius 25 cm
100 so 25
c 11 spheres of granite each with radius 25 cm
101 so 50
102 so 75
103 so 100
104 so 125
105 so 150
106 so 175
107 so 200
108 so 225
109 so 250
110 so 275
111 so 300

c DATA CARDS
mode n
nps 1e7
c point source at the center of the sphere
sdef  pos=0 0 0  par=1 erg=d1
SP1  -3 0.988 2.249
c Watt fission spectrum at uranium 235 and spont fiss u235
c granite taken from Materials Compendium
m100  8016 -0.484170
    11023 -0.027328
    12000 -0.004274 
    13027 -0.076188
    14000 -0.336169
    19000 -0.034144 
    20000 -0.012985
    22000 -0.001795
    25055 -0.000387
    26000 -0.021555
    82000 -0.001004
c
c air at sea level taken from Materials Compendium 
m200 6000 -0.000124
   7014 -0.755268
   8016 -0.231781
   18000 -0.012827
c
c 238 bin energy group
E0   1.000E-11 1.0000E-10 5.0000E-10 7.5000E-10 1.0000E-09 1.2000E-09 1.5000E-09
     2.000E-09 2.5000E-09 3.0000E-09 4.0000E-09 5.0000E-09 7.5000E-09 1.0000E-08 
     2.530E-08 3.0000E-08 4.0000E-08 5.0000E-08 6.0000E-08 7.0000E-08 8.0000E-08 
     9.000E-08 1.0000E-07 1.2500E-07 1.5000E-07 1.7500E-07 2.0000E-07 2.2500E-07 
     2.500E-07 2.7500E-07 3.0000E-07 3.2500E-07 3.5000E-07 3.7500E-07 4.0000E-07 
     4.500E-07 5.0000E-07 5.5000E-07 6.0000E-07 6.2500E-07 6.5000E-07 7.0000E-07 
     7.500E-07 8.0000E-07 8.5000E-07 9.0000E-07 9.2500E-07 9.5000E-07 9.7500E-07 
     1.000E-06 1.0100E-06 1.0200E-06 1.0300E-06 1.0400E-06 1.0500E-06 1.0600E-06 
     1.070E-06 1.0800E-06 1.0900E-06 1.1000E-06 1.1100E-06 1.1200E-06 1.1300E-06 
     1.140E-06 1.1500E-06 1.1750E-06 1.2000E-06 1.2250E-06 1.2500E-06 1.3000E-06 
     1.350E-06 1.4000E-06 1.4500E-06 1.5000E-06 1.5900E-06 1.6800E-06 1.7700E-06 
     1.860E-06 1.9400E-06 2.0000E-06 2.1200E-06 2.2100E-06 2.3000E-06 2.3800E-06 
     2.470E-06 2.5700E-06 2.6700E-06 2.7700E-06 2.8700E-06 2.9700E-06 3.0000E-06 
     3.050E-06 3.1500E-06 3.5000E-06 3.7300E-06 4.0000E-06 4.7500E-06 5.0000E-06 
     5.400E-06 6.0000E-06 6.2500E-06 6.5000E-06 6.7500E-06 7.0000E-06 7.1500E-06 
     8.100E-06 9.1000E-06 1.0000E-05 1.1500E-05 1.1900E-05 1.2900E-05 1.3750E-05 
     1.440E-05 1.5100E-05 1.6000E-05 1.7000E-05 1.8500E-05 1.9000E-05 2.0000E-05 
     2.100E-05 2.2500E-05 2.5000E-05 2.7500E-05 3.0000E-05 3.1250E-05 3.1750E-05 
     3.325E-05 3.3750E-05 3.4600E-05 3.5500E-05 3.7000E-05 3.8000E-05 3.9100E-05 
     3.960E-05 4.1000E-05 4.2400E-05 4.4000E-05 4.5200E-05 4.7000E-05 4.8300E-05 
     4.920E-05 5.0600E-05 5.2000E-05 5.3400E-05 5.9000E-05 6.1000E-05 6.5000E-05 
     6.750E-05 7.2000E-05 7.6000E-05 8.0000E-05 8.2000E-05 9.0000E-05 1.0000E-04 
     1.080E-04 1.1500E-04 1.1900E-04 1.2200E-04 1.8600E-04 1.9250E-04 2.0750E-04 
     2.100E-04 2.4000E-04 2.8500E-04 3.0500E-04 5.5000E-04 6.7000E-04 6.8300E-04
     9.500E-04 1.1500E-03 1.5000E-03 1.5500E-03 1.8000E-03 2.2000E-03 2.2900E-03 
     2.580E-03 3.0000E-03 3.7400E-03 3.9000E-03 6.0000E-03 8.0300E-03 9.5000E-03 
     1.300E-02 1.7000E-02 2.5000E-02 3.0000E-02 4.5000E-02 5.0000E-02 5.2000E-02 
     6.000E-02 7.3000E-02 7.5000E-02 8.2000E-02 8.5000E-02 1.0000E-01 1.2830E-01 
     1.500E-01 2.0000E-01 2.7000E-01 3.3000E-01 4.0000E-01 4.2000E-01 4.4000E-01 
     4.700E-01 4.9952E-01 5.5000E-01 5.7300E-01 6.0000E-01 6.7000E-01 6.7900E-01 
     7.500E-01 8.2000E-01 8.6110E-01 8.7500E-01 9.0000E-01 9.2000E-01 1.0100E+00 
     1.100E+00 1.2000E+00 1.2500E+00 1.3170E+00 1.3560E+00 1.4000E+00 1.5000E+00 
     1.850E+00 2.3540E+00 2.4790E+00 3.0000E+00 4.3040E+00 4.8000E+00 6.4340E+00 
     8.1873E+0 1.0000E+01 1.2840E+01 1.3840E+01 1.4550E+01 1.5683E+01 1.7333E+01 
     2.000E+01
c F4 tallies for each cell
f4:n 10 
f14:n 11 
f24:n 12
f34:n 13
f44:n 14
f54:n 15
f64:n 16
f74:n 17
f84:n 18
f94:n 19
f104:n 20
f114:n 21                 
c
print
