* EQUIVALENT CIRCUIT FOR VECTOR FITTED S-MATRIX
* Created using scikit-rf vectorFitting.py
*
.SUBCKT s_equivalent p1 p2 p3 p4 
*
* port 1
R1 a1 0 75.0
V1 p1 a1 0
H1 nt1 nts1 V1 75.0
E1 nts1 0 p1 0 1
* transfer network for s11
F11 0 a1 V11 0.013333333333333334
F11_inv a1 0 V11_inv 0.013333333333333334
V11 nt1 nt11 0
V11_inv nt1 nt11_inv 0
* transfer admittances for S11
R11 nt11 0 4.359
X1 nt11_inv 0 rcl_vccs_admittance res=254.682m cap=116.484p ind=19.547p gm=2.790 mult=-1
X2 nt11 0 rcl_vccs_admittance res=450.377m cap=291.844p ind=35.711p gm=8.458 mult=-1
X3 nt11_inv 0 rcl_vccs_admittance res=1.602 cap=7.651p ind=214.908p gm=400.429m mult=-1
X4 nt11_inv 0 rcl_vccs_admittance res=618.907m cap=46.488p ind=90.313p gm=300.907m mult=1
X5 nt11 0 rcl_vccs_admittance res=249.684m cap=36.087p ind=37.112p gm=149.969m mult=-1
X6 nt11 0 rcl_vccs_admittance res=1.012 cap=136.234p ind=202.229p gm=2.708 mult=-1
X7 nt11 0 rcl_vccs_admittance res=258.706m cap=2.894n ind=55.911p gm=6.444 mult=1
X8 nt11_inv 0 rcl_vccs_admittance res=1.379 cap=2.810p ind=394.556p gm=19.995m mult=1
X9 nt11_inv 0 rcl_vccs_admittance res=1.311 cap=6.896p ind=416.607p gm=275.644m mult=1
X10 nt11_inv 0 rcl_vccs_admittance res=1.437 cap=33.240p ind=556.692p gm=2.330 mult=-1
X11 nt11_inv 0 rcl_vccs_admittance res=1.297 cap=6.827p ind=518.761p gm=151.597m mult=1
X12 nt11 0 rcl_vccs_admittance res=12.426 cap=489.936f ind=5.212n gm=113.242m mult=-1
X13 nt11_inv 0 rcl_vccs_admittance res=172.686m cap=287.356p ind=86.450p gm=429.915m mult=-1
X14 nt11_inv 0 rcl_vccs_admittance res=586.938m cap=23.863p ind=328.580p gm=128.045m mult=-1
X15 nt11_inv 0 rcl_vccs_admittance res=678.188m cap=16.122p ind=380.666p gm=47.841m mult=1
X16 nt11_inv 0 rcl_vccs_admittance res=1.489 cap=15.191p ind=850.273p gm=402.368m mult=-1
X17 nt11_inv 0 rcl_vccs_admittance res=984.232m cap=5.593p ind=735.724p gm=56.665m mult=1
X18 nt11 0 rcl_vccs_admittance res=8.629 cap=4.091p ind=7.562n gm=52.781m mult=1
X19 nt11 0 rcl_vccs_admittance res=6.623 cap=350.115f ind=6.520n gm=16.169m mult=-1
X20 nt11_inv 0 rcl_vccs_admittance res=1.506 cap=6.537p ind=1.703n gm=17.826m mult=-1
X21 nt11_inv 0 rcl_vccs_admittance res=6.401 cap=328.371f ind=7.305n gm=275.944u mult=-1
X22 nt11 0 rcl_vccs_admittance res=994.533m cap=1.413p ind=1.205n gm=9.404m mult=1
X23 nt11_inv 0 rcl_vccs_admittance res=1.376 cap=5.448p ind=1.751n gm=89.948m mult=-1
X24 nt11_inv 0 rcl_vccs_admittance res=1.186 cap=3.288p ind=1.601n gm=30.845m mult=1
X25 nt11_inv 0 rcl_vccs_admittance res=2.272 cap=826.938f ind=5.372n gm=25.918m mult=1
X26 nt11_inv 0 rcl_vccs_admittance res=913.533m cap=12.179p ind=2.407n gm=73.959m mult=1
X27 nt11_inv 0 rcl_vccs_admittance res=3.076 cap=804.168f ind=13.196n gm=7.153m mult=-1
X28 nt11 0 rcl_vccs_admittance res=521.987 cap=559.924a ind=2.377u gm=10.174u mult=-1
X29 nt11_inv 0 rcl_vccs_admittance res=6.648k cap=47.888a ind=30.410u gm=12.017u mult=1
X30 nt11_inv 0 rcl_vccs_admittance res=650.359 cap=576.847a ind=3.116u gm=14.221u mult=1
X31 nt11 0 rcl_vccs_admittance res=447.004 cap=731.839a ind=2.735u gm=19.810u mult=-1
X32 nt11_inv 0 rcl_vccs_admittance res=159.375 cap=9.872f ind=1.161u gm=65.446u mult=1
X33 nt11_inv 0 rcl_vccs_admittance res=96.303 cap=8.603f ind=732.494n gm=332.323u mult=-1
* transfer network for s12
F12 0 a1 V12 0.013333333333333334
F12_inv a1 0 V12_inv 0.013333333333333334
V12 nt2 nt12 0
V12_inv nt2 nt12_inv 0
* transfer admittances for S12
R12 nt12 0 167.233
X34 nt12 0 rcl_vccs_admittance res=8.888 cap=3.338p ind=682.148p gm=40.194m mult=1
X35 nt12_inv 0 rcl_vccs_admittance res=4.207 cap=31.245p ind=333.559p gm=274.887m mult=-1
X36 nt12 0 rcl_vccs_admittance res=25.918 cap=472.975f ind=3.476n gm=4.533m mult=-1
X37 nt12 0 rcl_vccs_admittance res=32.527 cap=884.557f ind=4.746n gm=27.590m mult=1
X38 nt12_inv 0 rcl_vccs_admittance res=66.809 cap=134.867f ind=9.930n gm=8.684m mult=1
X39 nt12 0 rcl_vccs_admittance res=6.565 cap=21.006p ind=1.312n gm=225.278m mult=-1
X40 nt12_inv 0 rcl_vccs_admittance res=47.179 cap=15.866p ind=10.196n gm=36.290m mult=1
X41 nt12 0 rcl_vccs_admittance res=321.959 cap=12.040f ind=92.094n gm=1.126m mult=-1
X42 nt12_inv 0 rcl_vccs_admittance res=1.674k cap=5.401f ind=531.956n gm=1.304m mult=-1
X43 nt12 0 rcl_vccs_admittance res=481.753m cap=99.180p ind=186.572p gm=629.253m mult=-1
X44 nt12 0 rcl_vccs_admittance res=230.259 cap=38.440f ind=92.127n gm=320.768u mult=1
X45 nt12 0 rcl_vccs_admittance res=1.031k cap=5.907f ind=432.303n gm=197.865u mult=1
X46 nt12_inv 0 rcl_vccs_admittance res=472.425m cap=105.038p ind=236.505p gm=589.304m mult=-1
X47 nt12 0 rcl_vccs_admittance res=85.857 cap=163.131f ind=48.065n gm=1.425m mult=1
X48 nt12 0 rcl_vccs_admittance res=191.363 cap=57.138f ind=107.412n gm=186.742u mult=-1
X49 nt12_inv 0 rcl_vccs_admittance res=505.031m cap=44.783p ind=288.419p gm=137.084m mult=-1
X50 nt12 0 rcl_vccs_admittance res=669.903 cap=8.217f ind=500.760n gm=59.744u mult=-1
X51 nt12 0 rcl_vccs_admittance res=1.150 cap=30.693p ind=1.008n gm=61.389m mult=-1
X52 nt12_inv 0 rcl_vccs_admittance res=36.878k cap=62.876a ind=36.303u gm=5.323u mult=-1
X53 nt12 0 rcl_vccs_admittance res=918.518m cap=10.721p ind=1.038n gm=33.519m mult=-1
X54 nt12_inv 0 rcl_vccs_admittance res=1.826k cap=1.151f ind=2.084u gm=684.108n mult=-1
X55 nt12_inv 0 rcl_vccs_admittance res=8.038k cap=174.815a ind=9.741u gm=130.727u mult=1
X56 nt12_inv 0 rcl_vccs_admittance res=105.343 cap=71.157f ind=134.062n gm=3.197m mult=1
X57 nt12_inv 0 rcl_vccs_admittance res=501.240 cap=7.778f ind=676.750n gm=6.236u mult=1
X58 nt12_inv 0 rcl_vccs_admittance res=3.762k cap=499.520a ind=8.893u gm=22.099u mult=1
X59 nt12 0 rcl_vccs_admittance res=2.182 cap=5.100p ind=5.749n gm=76.082m mult=-1
X60 nt12_inv 0 rcl_vccs_admittance res=7.185 cap=344.256f ind=30.826n gm=7.856m mult=-1
X61 nt12_inv 0 rcl_vccs_admittance res=24.356k cap=12.000a ind=110.900u gm=2.291u mult=1
X62 nt12 0 rcl_vccs_admittance res=5.757k cap=55.299a ind=26.334u gm=2.165u mult=-1
X63 nt12_inv 0 rcl_vccs_admittance res=1.356k cap=276.746a ind=6.495u gm=1.928u mult=-1
X64 nt12_inv 0 rcl_vccs_admittance res=9.066k cap=36.084a ind=55.463u gm=4.211u mult=1
X65 nt12 0 rcl_vccs_admittance res=542.740 cap=2.899f ind=3.955u gm=56.123u mult=1
X66 nt12_inv 0 rcl_vccs_admittance res=4.512k cap=183.622a ind=34.318u gm=2.373u mult=-1
* transfer network for s13
F13 0 a1 V13 0.013333333333333334
F13_inv a1 0 V13_inv 0.013333333333333334
V13 nt3 nt13 0
V13_inv nt3 nt13_inv 0
* transfer admittances for S13
R13 nt13 0 331.855
X67 nt13 0 rcl_vccs_admittance res=18.079 cap=1.641p ind=1.388n gm=27.847m mult=1
X68 nt13_inv 0 rcl_vccs_admittance res=8.996 cap=14.610p ind=713.347p gm=142.480m mult=1
X69 nt13_inv 0 rcl_vccs_admittance res=138.931 cap=88.235f ind=18.634n gm=2.335m mult=1
X70 nt13_inv 0 rcl_vccs_admittance res=19.798 cap=1.453p ind=2.889n gm=18.716m mult=-1
X71 nt13_inv 0 rcl_vccs_admittance res=456.187 cap=19.751f ind=67.807n gm=1.899m mult=1
X72 nt13 0 rcl_vccs_admittance res=13.469 cap=10.239p ind=2.691n gm=80.080m mult=1
X73 nt13 0 rcl_vccs_admittance res=25.254 cap=29.642p ind=5.458n gm=46.558m mult=1
X74 nt13_inv 0 rcl_vccs_admittance res=265.802 cap=14.584f ind=76.031n gm=1.750m mult=-1
X75 nt13_inv 0 rcl_vccs_admittance res=68.038 cap=132.883f ind=21.619n gm=1.417m mult=-1
X76 nt13 0 rcl_vccs_admittance res=25.082 cap=1.905p ind=9.714n gm=13.246m mult=-1
X77 nt13 0 rcl_vccs_admittance res=339.311 cap=26.085f ind=135.758n gm=2.210m mult=1
X78 nt13_inv 0 rcl_vccs_admittance res=111.674 cap=54.515f ind=46.843n gm=1.281m mult=-1
X79 nt13 0 rcl_vccs_admittance res=17.430 cap=2.847p ind=8.726n gm=8.130m mult=1
X80 nt13 0 rcl_vccs_admittance res=621.616m cap=22.531p ind=347.994p gm=45.855m mult=-1
X81 nt13_inv 0 rcl_vccs_admittance res=668.062m cap=16.367p ind=374.982p gm=57.369m mult=1
X82 nt13 0 rcl_vccs_admittance res=165.043 cap=137.036f ind=94.254n gm=6.178m mult=1
X83 nt13 0 rcl_vccs_admittance res=101.994 cap=53.973f ind=76.241n gm=644.876u mult=1
X84 nt13_inv 0 rcl_vccs_admittance res=67.539 cap=522.614f ind=59.185n gm=1.849m mult=1
X85 nt13 0 rcl_vccs_admittance res=181.065 cap=12.806f ind=178.245n gm=16.894u mult=-1
X86 nt13 0 rcl_vccs_admittance res=573.116 cap=17.182f ind=647.767n gm=4.560m mult=-1
X87 nt13 0 rcl_vccs_admittance res=3.962k cap=530.559a ind=4.521u gm=146.258u mult=1
X88 nt13_inv 0 rcl_vccs_admittance res=2.305k cap=609.447a ind=2.794u gm=85.291u mult=-1
X89 nt13_inv 0 rcl_vccs_admittance res=1.049 cap=7.147p ind=1.335n gm=49.840m mult=-1
X90 nt13 0 rcl_vccs_admittance res=1.149 cap=3.393p ind=1.551n gm=22.939m mult=1
X91 nt13 0 rcl_vccs_admittance res=1.830k cap=1.027f ind=4.326u gm=833.851u mult=-1
X92 nt13_inv 0 rcl_vccs_admittance res=136.468 cap=81.527f ind=359.633n gm=587.294u mult=-1
X93 nt13 0 rcl_vccs_admittance res=4.135 cap=598.278f ind=17.737n gm=3.237m mult=-1
X94 nt13 0 rcl_vccs_admittance res=1.854k cap=157.663a ind=8.441u gm=1.621u mult=1
X95 nt13 0 rcl_vccs_admittance res=1.731k cap=183.900a ind=7.919u gm=1.102u mult=-1
X96 nt13 0 rcl_vccs_admittance res=25.076k cap=14.961a ind=120.147u gm=1.893u mult=1
X97 nt13 0 rcl_vccs_admittance res=3.556k cap=91.996a ind=21.754u gm=312.460n mult=-1
X98 nt13_inv 0 rcl_vccs_admittance res=26.682 cap=58.964f ind=194.423n gm=94.857u mult=1
X99 nt13 0 rcl_vccs_admittance res=36.054 cap=22.979f ind=274.235n gm=71.116u mult=-1
* transfer network for s14
F14 0 a1 V14 0.013333333333333334
F14_inv a1 0 V14_inv 0.013333333333333334
V14 nt4 nt14 0
V14_inv nt4 nt14_inv 0
* transfer admittances for S14
R14 nt14_inv 0 39.848
X100 nt14 0 rcl_vccs_admittance res=40.352 cap=735.194f ind=3.097n gm=196.444m mult=-1
X101 nt14 0 rcl_vccs_admittance res=4.517 cap=29.098p ind=358.174p gm=148.429m mult=1
X102 nt14_inv 0 rcl_vccs_admittance res=9.920 cap=1.236p ind=1.331n gm=14.940m mult=1
X103 nt14 0 rcl_vccs_admittance res=26.953 cap=1.067p ind=3.933n gm=10.033m mult=1
X104 nt14_inv 0 rcl_vccs_admittance res=10.021 cap=899.158f ind=1.489n gm=6.340m mult=1
X105 nt14_inv 0 rcl_vccs_admittance res=31.401 cap=4.392p ind=6.273n gm=7.479m mult=-1
X106 nt14 0 rcl_vccs_admittance res=28.658 cap=26.121p ind=6.193n gm=43.432m mult=1
X107 nt14_inv 0 rcl_vccs_admittance res=9.659 cap=401.332f ind=2.763n gm=9.539m mult=-1
X108 nt14_inv 0 rcl_vccs_admittance res=716.632m cap=12.616p ind=227.713p gm=358.422m mult=1
X109 nt14_inv 0 rcl_vccs_admittance res=285.728 cap=167.223f ind=110.656n gm=4.231m mult=-1
X110 nt14 0 rcl_vccs_admittance res=519.541m cap=17.036p ind=207.869p gm=221.417m mult=1
X111 nt14 0 rcl_vccs_admittance res=1.006 cap=6.049p ind=422.139p gm=216.578m mult=1
X112 nt14_inv 0 rcl_vccs_admittance res=349.698 cap=141.901f ind=175.066n gm=1.839m mult=-1
X113 nt14_inv 0 rcl_vccs_admittance res=146.023 cap=95.916f ind=81.747n gm=563.454u mult=1
X114 nt14 0 rcl_vccs_admittance res=162.250 cap=67.390f ind=91.071n gm=1.217m mult=1
X115 nt14_inv 0 rcl_vccs_admittance res=161.026 cap=140.454f ind=91.960n gm=763.141u mult=1
X116 nt14_inv 0 rcl_vccs_admittance res=656.603m cap=8.384p ind=490.818p gm=36.013m mult=1
X117 nt14_inv 0 rcl_vccs_admittance res=1.690k cap=20.892f ind=1.481u gm=153.610u mult=-1
X118 nt14_inv 0 rcl_vccs_admittance res=2.434 cap=952.695f ind=2.396n gm=27.613m mult=1
X119 nt14_inv 0 rcl_vccs_admittance res=327.824 cap=30.039f ind=370.525n gm=11.586u mult=-1
X120 nt14 0 rcl_vccs_admittance res=4.941 cap=425.392f ind=5.639n gm=5.586m mult=-1
X121 nt14 0 rcl_vccs_admittance res=16.222 cap=86.618f ind=19.659n gm=796.408u mult=-1
X122 nt14 0 rcl_vccs_admittance res=261.359 cap=28.680f ind=332.610n gm=212.801u mult=-1
X123 nt14_inv 0 rcl_vccs_admittance res=115.861 cap=33.648f ind=156.430n gm=693.262u mult=1
X124 nt14 0 rcl_vccs_admittance res=1.564 cap=1.202p ind=3.696n gm=5.530m mult=1
X125 nt14 0 rcl_vccs_admittance res=3.670k cap=3.031f ind=9.672u gm=16.120u mult=-1
X126 nt14_inv 0 rcl_vccs_admittance res=679.352 cap=3.641f ind=2.914u gm=2.625u mult=-1
X127 nt14_inv 0 rcl_vccs_admittance res=11.253k cap=25.972a ind=51.241u gm=7.463u mult=-1
X128 nt14 0 rcl_vccs_admittance res=16.513k cap=19.280a ind=75.531u gm=7.360u mult=-1
X129 nt14 0 rcl_vccs_admittance res=2.360k cap=158.982a ind=11.306u gm=550.652n mult=-1
X130 nt14_inv 0 rcl_vccs_admittance res=1.460k cap=224.096a ind=8.931u gm=3.894u mult=-1
X131 nt14 0 rcl_vccs_admittance res=2.413k cap=652.079a ind=17.581u gm=2.000u mult=-1
X132 nt14_inv 0 rcl_vccs_admittance res=759.208 cap=1.091f ind=5.775u gm=10.899u mult=1
*
* port 2
R2 a2 0 75.0
V2 p2 a2 0
H2 nt2 nts2 V2 75.0
E2 nts2 0 p2 0 1
* transfer network for s21
F21 0 a2 V21 0.013333333333333334
F21_inv a2 0 V21_inv 0.013333333333333334
V21 nt1 nt21 0
V21_inv nt1 nt21_inv 0
* transfer admittances for S21
R21 nt21 0 138.253
X133 nt21 0 rcl_vccs_admittance res=9.344 cap=3.175p ind=717.142p gm=47.969m mult=1
X134 nt21_inv 0 rcl_vccs_admittance res=4.225 cap=31.110p ind=335.014p gm=286.928m mult=-1
X135 nt21 0 rcl_vccs_admittance res=20.938 cap=585.459f ind=2.808n gm=3.337m mult=-1
X136 nt21 0 rcl_vccs_admittance res=35.232 cap=816.641f ind=5.141n gm=25.354m mult=1
X137 nt21_inv 0 rcl_vccs_admittance res=81.529 cap=110.516f ind=12.118n gm=9.984m mult=1
X138 nt21 0 rcl_vccs_admittance res=6.892 cap=20.010p ind=1.377n gm=234.368m mult=-1
X139 nt21_inv 0 rcl_vccs_admittance res=33.797 cap=22.149p ind=7.304n gm=44.863m mult=1
X140 nt21 0 rcl_vccs_admittance res=366.942 cap=10.564f ind=104.961n gm=1.212m mult=-1
X141 nt21_inv 0 rcl_vccs_admittance res=1.661k cap=5.442f ind=527.944n gm=919.735u mult=-1
X142 nt21 0 rcl_vccs_admittance res=483.175m cap=98.888p ind=187.123p gm=627.768m mult=-1
X143 nt21 0 rcl_vccs_admittance res=288.568 cap=30.672f ind=115.456n gm=261.557u mult=1
X144 nt21 0 rcl_vccs_admittance res=2.792k cap=2.181f ind=1.171u gm=5.089u mult=1
X145 nt21_inv 0 rcl_vccs_admittance res=471.781m cap=105.181p ind=236.182p gm=588.440m mult=-1
X146 nt21 0 rcl_vccs_admittance res=90.720 cap=154.386f ind=50.787n gm=1.352m mult=1
X147 nt21 0 rcl_vccs_admittance res=197.891 cap=55.253f ind=111.076n gm=225.760u mult=-1
X148 nt21_inv 0 rcl_vccs_admittance res=504.489m cap=44.831p ind=288.110p gm=137.384m mult=-1
X149 nt21 0 rcl_vccs_admittance res=868.011 cap=6.342f ind=648.847n gm=60.091u mult=-1
X150 nt21 0 rcl_vccs_admittance res=1.151 cap=30.659p ind=1.009n gm=61.187m mult=-1
X151 nt21_inv 0 rcl_vccs_admittance res=2.814k cap=823.971a ind=2.770u gm=774.442n mult=-1
X152 nt21 0 rcl_vccs_admittance res=917.732m cap=10.730p ind=1.037n gm=33.505m mult=-1
X153 nt21_inv 0 rcl_vccs_admittance res=1.238k cap=1.698f ind=1.413u gm=10.297u mult=1
X154 nt21_inv 0 rcl_vccs_admittance res=1.625k cap=864.471a ind=1.970u gm=138.942u mult=1
X155 nt21_inv 0 rcl_vccs_admittance res=103.476 cap=72.441f ind=131.686n gm=3.195m mult=1
X156 nt21_inv 0 rcl_vccs_admittance res=509.747 cap=7.648f ind=688.236n gm=5.282u mult=1
X157 nt21_inv 0 rcl_vccs_admittance res=3.190k cap=589.045a ind=7.541u gm=23.469u mult=1
X158 nt21 0 rcl_vccs_admittance res=2.176 cap=5.113p ind=5.734n gm=76.036m mult=-1
X159 nt21_inv 0 rcl_vccs_admittance res=7.178 cap=344.589f ind=30.796n gm=7.883m mult=-1
X160 nt21_inv 0 rcl_vccs_admittance res=3.435k cap=85.077a ind=15.642u gm=254.799n mult=1
X161 nt21 0 rcl_vccs_admittance res=3.763k cap=84.603a ind=17.213u gm=2.337u mult=-1
X162 nt21_inv 0 rcl_vccs_admittance res=1.374k cap=273.071a ind=6.582u gm=559.986n mult=-1
X163 nt21_inv 0 rcl_vccs_admittance res=5.284k cap=61.910a ind=32.326u gm=3.698u mult=1
X164 nt21 0 rcl_vccs_admittance res=958.578 cap=1.641f ind=6.985u gm=56.011u mult=1
X165 nt21_inv 0 rcl_vccs_admittance res=5.284k cap=156.796a ind=40.189u gm=2.340u mult=-1
* transfer network for s22
F22 0 a2 V22 0.013333333333333334
F22_inv a2 0 V22_inv 0.013333333333333334
V22 nt2 nt22 0
V22_inv nt2 nt22_inv 0
* transfer admittances for S22
R22 nt22 0 5.657
X166 nt22 0 rcl_vccs_admittance res=937.124m cap=31.657p ind=71.924p gm=1.742 mult=1
X167 nt22 0 rcl_vccs_admittance res=450.654m cap=291.665p ind=35.733p gm=4.704 mult=1
X168 nt22_inv 0 rcl_vccs_admittance res=2.849 cap=4.302p ind=382.176p gm=62.064m mult=1
X169 nt22_inv 0 rcl_vccs_admittance res=310.598m cap=92.633p ind=45.324p gm=919.808m mult=1
X170 nt22_inv 0 rcl_vccs_admittance res=1.635 cap=5.511p ind=243.038p gm=267.490m mult=1
X171 nt22 0 rcl_vccs_admittance res=1.151 cap=119.830p ind=229.913p gm=1.720 mult=-1
X172 nt22_inv 0 rcl_vccs_admittance res=245.105m cap=3.054n ind=52.972p gm=3.399 mult=1
X173 nt22 0 rcl_vccs_admittance res=1.129 cap=3.434p ind=322.921p gm=145.677m mult=1
X174 nt22 0 rcl_vccs_admittance res=7.969 cap=1.134p ind=2.532n gm=7.957m mult=-1
X175 nt22_inv 0 rcl_vccs_admittance res=465.363m cap=102.673p ind=180.225p gm=167.255m mult=1
X176 nt22_inv 0 rcl_vccs_admittance res=11.750 cap=753.283f ind=4.701n gm=9.523m mult=1
X177 nt22 0 rcl_vccs_admittance res=20.727 cap=293.715f ind=8.694n gm=4.150m mult=-1
X178 nt22_inv 0 rcl_vccs_admittance res=779.323m cap=63.674p ind=390.144p gm=315.634m mult=-1
X179 nt22 0 rcl_vccs_admittance res=26.789 cap=522.817f ind=14.997n gm=4.762m mult=1
X180 nt22_inv 0 rcl_vccs_admittance res=24.492 cap=446.441f ind=13.747n gm=2.064m mult=-1
X181 nt22_inv 0 rcl_vccs_admittance res=489.633m cap=46.191p ind=279.625p gm=223.027m mult=1
X182 nt22_inv 0 rcl_vccs_admittance res=54.313 cap=101.356f ind=40.599n gm=1.725m mult=-1
X183 nt22_inv 0 rcl_vccs_admittance res=287.368m cap=122.827p ind=251.826p gm=189.845m mult=1
X184 nt22 0 rcl_vccs_admittance res=630.873 cap=3.675f ind=621.047n gm=307.282u mult=-1
X185 nt22_inv 0 rcl_vccs_admittance res=566.220m cap=17.392p ind=639.973p gm=80.013m mult=-1
X186 nt22 0 rcl_vccs_admittance res=364.712 cap=5.763f ind=416.221n gm=295.844u mult=-1
X187 nt22_inv 0 rcl_vccs_admittance res=1.403k cap=1.002f ind=1.700u gm=5.456u mult=-1
X188 nt22_inv 0 rcl_vccs_admittance res=1.330k cap=5.636f ind=1.693u gm=996.886u mult=1
X189 nt22_inv 0 rcl_vccs_admittance res=205.544 cap=18.967f ind=277.515n gm=310.821u mult=1
X190 nt22_inv 0 rcl_vccs_admittance res=318.446 cap=5.901f ind=752.761n gm=113.820u mult=-1
X191 nt22 0 rcl_vccs_admittance res=962.087m cap=11.564p ind=2.535n gm=636.043u mult=-1
X192 nt22 0 rcl_vccs_admittance res=115.492 cap=21.418f ind=495.466n gm=6.940m mult=1
X193 nt22_inv 0 rcl_vccs_admittance res=1.454k cap=200.945a ind=6.623u gm=27.732u mult=1
X194 nt22 0 rcl_vccs_admittance res=1.162k cap=273.927a ind=5.316u gm=3.871u mult=1
X195 nt22 0 rcl_vccs_admittance res=2.634k cap=142.420a ind=12.621u gm=3.157u mult=-1
X196 nt22 0 rcl_vccs_admittance res=603.737 cap=541.850a ind=3.693u gm=5.667u mult=1
X197 nt22 0 rcl_vccs_admittance res=510.810 cap=3.080f ind=3.722u gm=145.285u mult=-1
X198 nt22 0 rcl_vccs_admittance res=1.712k cap=483.894a ind=13.023u gm=19.718u mult=-1
* transfer network for s23
F23 0 a2 V23 0.013333333333333334
F23_inv a2 0 V23_inv 0.013333333333333334
V23 nt3 nt23 0
V23_inv nt3 nt23_inv 0
* transfer admittances for S23
R23 nt23_inv 0 5.534k
X199 nt23_inv 0 rcl_vccs_admittance res=810.341 cap=36.610f ind=62.193n gm=476.642u mult=-1
X200 nt23 0 rcl_vccs_admittance res=39.061 cap=3.365p ind=3.097n gm=57.048m mult=1
X201 nt23_inv 0 rcl_vccs_admittance res=161.895 cap=75.719f ind=21.714n gm=249.580u mult=1
X202 nt23_inv 0 rcl_vccs_admittance res=1.472k cap=19.541f ind=214.857n gm=7.084m mult=1
X203 nt23_inv 0 rcl_vccs_admittance res=740.360 cap=12.170f ind=110.045n gm=1.261m mult=1
X204 nt23_inv 0 rcl_vccs_admittance res=20.168 cap=6.838p ind=4.029n gm=42.398m mult=1
X205 nt23_inv 0 rcl_vccs_admittance res=154.035 cap=4.860p ind=33.290n gm=4.763m mult=1
X206 nt23 0 rcl_vccs_admittance res=250.114 cap=15.498f ind=71.543n gm=746.184u mult=1
X207 nt23 0 rcl_vccs_admittance res=2.181k cap=4.145f ind=693.062n gm=643.968u mult=-1
X208 nt23_inv 0 rcl_vccs_admittance res=35.458 cap=1.348p ind=13.732n gm=3.653m mult=1
X209 nt23_inv 0 rcl_vccs_admittance res=1.174k cap=7.539f ind=469.710n gm=368.431u mult=1
X210 nt23_inv 0 rcl_vccs_admittance res=488.524 cap=12.462f ind=204.917n gm=101.907u mult=-1
X211 nt23 0 rcl_vccs_admittance res=27.533 cap=1.802p ind=13.783n gm=1.896m mult=-1
X212 nt23_inv 0 rcl_vccs_admittance res=126.673 cap=110.568f ind=70.914n gm=2.588m mult=1
X213 nt23 0 rcl_vccs_admittance res=3.778k cap=2.895f ind=2.120u gm=383.726u mult=-1
X214 nt23_inv 0 rcl_vccs_admittance res=56.737 cap=398.622f ind=32.402n gm=3.004m mult=-1
X215 nt23_inv 0 rcl_vccs_admittance res=13.257k cap=415.233a ind=9.910u gm=55.818u mult=1
X216 nt23 0 rcl_vccs_admittance res=41.330 cap=854.021f ind=36.218n gm=9.014m mult=1
X217 nt23 0 rcl_vccs_admittance res=12.093k cap=191.738a ind=11.905u gm=4.549u mult=-1
X218 nt23 0 rcl_vccs_admittance res=59.679 cap=165.008f ind=67.452n gm=7.363m mult=1
X219 nt23 0 rcl_vccs_admittance res=1.540k cap=1.365f ind=1.757u gm=24.744u mult=1
X220 nt23 0 rcl_vccs_admittance res=11.613k cap=120.987a ind=14.075u gm=1.511u mult=1
X221 nt23 0 rcl_vccs_admittance res=120.847 cap=62.028f ind=153.793n gm=2.882m mult=-1
X222 nt23 0 rcl_vccs_admittance res=627.411 cap=6.214f ind=847.100n gm=27.853u mult=1
X223 nt23 0 rcl_vccs_admittance res=11.557k cap=162.591a ind=27.320u gm=3.398u mult=-1
X224 nt23_inv 0 rcl_vccs_admittance res=106.514 cap=104.454f ind=280.695n gm=218.330u mult=1
X225 nt23 0 rcl_vccs_admittance res=7.726 cap=320.180f ind=33.144n gm=4.278m mult=-1
X226 nt23_inv 0 rcl_vccs_admittance res=5.130k cap=56.970a ind=23.360u gm=502.135n mult=-1
X227 nt23_inv 0 rcl_vccs_admittance res=16.006k cap=19.891a ind=73.211u gm=1.547u mult=-1
X228 nt23_inv 0 rcl_vccs_admittance res=6.196meg cap=60.544z ind=29.689m gm=825.886n mult=1
X229 nt23_inv 0 rcl_vccs_admittance res=5.778k cap=56.620a ind=35.346u gm=1.404u mult=1
X230 nt23 0 rcl_vccs_admittance res=27.142 cap=57.965f ind=197.774n gm=541.911u mult=1
X231 nt23 0 rcl_vccs_admittance res=5.401k cap=153.397a ind=41.080u gm=649.685n mult=-1
* transfer network for s24
F24 0 a2 V24 0.013333333333333334
F24_inv a2 0 V24_inv 0.013333333333333334
V24 nt4 nt24 0
V24_inv nt4 nt24_inv 0
* transfer admittances for S24
R24 nt24 0 1.134k
X232 nt24_inv 0 rcl_vccs_admittance res=138.345 cap=214.438f ind=10.618n gm=3.905m mult=1
X233 nt24_inv 0 rcl_vccs_admittance res=710.492 cap=184.999f ind=56.336n gm=15.876m mult=-1
X234 nt24 0 rcl_vccs_admittance res=348.128 cap=35.213f ind=46.693n gm=1.471m mult=1
X235 nt24 0 rcl_vccs_admittance res=131.729 cap=218.417f ind=19.222n gm=2.210m mult=1
X236 nt24 0 rcl_vccs_admittance res=5.289k cap=1.703f ind=786.202n gm=721.821u mult=1
X237 nt24_inv 0 rcl_vccs_admittance res=493.295 cap=279.570f ind=98.546n gm=8.918m mult=1
X238 nt24_inv 0 rcl_vccs_admittance res=163.323 cap=4.583p ind=35.297n gm=6.907m mult=1
X239 nt24 0 rcl_vccs_admittance res=227.944 cap=17.006f ind=65.202n gm=85.619u mult=-1
X240 nt24 0 rcl_vccs_admittance res=750.284 cap=12.050f ind=238.406n gm=59.315u mult=-1
X241 nt24_inv 0 rcl_vccs_admittance res=418.416 cap=114.193f ind=162.044n gm=570.259u mult=-1
X242 nt24 0 rcl_vccs_admittance res=477.953 cap=18.519f ind=191.229n gm=262.987u mult=-1
X243 nt24 0 rcl_vccs_admittance res=535.128 cap=11.376f ind=224.466n gm=24.699u mult=1
X244 nt24_inv 0 rcl_vccs_admittance res=167.766 cap=295.783f ind=83.987n gm=6.184u mult=1
X245 nt24_inv 0 rcl_vccs_admittance res=60.188k cap=232.703a ind=33.695u gm=75.399u mult=1
X246 nt24 0 rcl_vccs_admittance res=5.700k cap=1.918f ind=3.199u gm=42.174u mult=-1
X247 nt24_inv 0 rcl_vccs_admittance res=864.870 cap=26.150f ind=493.920n gm=247.589u mult=1
X248 nt24_inv 0 rcl_vccs_admittance res=5.019k cap=1.097f ind=3.752u gm=125.358u mult=1
X249 nt24_inv 0 rcl_vccs_admittance res=2.491k cap=14.168f ind=2.183u gm=352.528u mult=1
X250 nt24 0 rcl_vccs_admittance res=2.777k cap=834.866a ind=2.734u gm=881.415n mult=-1
X251 nt24 0 rcl_vccs_admittance res=8.621k cap=1.142f ind=9.744u gm=4.164u mult=1
X252 nt24 0 rcl_vccs_admittance res=2.128k cap=987.599a ind=2.429u gm=15.251u mult=-1
X253 nt24 0 rcl_vccs_admittance res=2.675k cap=525.212a ind=3.242u gm=26.241u mult=-1
X254 nt24_inv 0 rcl_vccs_admittance res=42.825k cap=175.035a ind=54.500u gm=6.891u mult=-1
X255 nt24_inv 0 rcl_vccs_admittance res=6.587k cap=591.804a ind=8.894u gm=2.076u mult=1
X256 nt24 0 rcl_vccs_admittance res=2.785k cap=674.802a ind=6.583u gm=5.416u mult=-1
X257 nt24_inv 0 rcl_vccs_admittance res=6.760k cap=1.646f ind=17.815u gm=237.334n mult=1
X258 nt24_inv 0 rcl_vccs_admittance res=1.077k cap=2.297f ind=4.620u gm=4.941u mult=-1
X259 nt24 0 rcl_vccs_admittance res=548.189k cap=533.161z ind=2.496m gm=3.284u mult=1
X260 nt24_inv 0 rcl_vccs_admittance res=2.640k cap=120.582a ind=12.077u gm=1.762u mult=-1
X261 nt24 0 rcl_vccs_admittance res=18.317k cap=20.482a ind=87.760u gm=1.718u mult=-1
X262 nt24_inv 0 rcl_vccs_admittance res=6.116k cap=53.492a ind=37.414u gm=2.846u mult=1
X263 nt24_inv 0 rcl_vccs_admittance res=4.667k cap=337.080a ind=34.010u gm=2.884u mult=1
X264 nt24 0 rcl_vccs_admittance res=336.656k cap=2.461a ind=2.561m gm=996.173n mult=-1
*
* port 3
R3 a3 0 75.0
V3 p3 a3 0
H3 nt3 nts3 V3 75.0
E3 nts3 0 p3 0 1
* transfer network for s31
F31 0 a3 V31 0.013333333333333334
F31_inv a3 0 V31_inv 0.013333333333333334
V31 nt1 nt31 0
V31_inv nt1 nt31_inv 0
* transfer admittances for S31
R31 nt31_inv 0 750.081
X265 nt31_inv 0 rcl_vccs_admittance res=28.658 cap=1.035p ind=2.199n gm=16.708m mult=1
X266 nt31 0 rcl_vccs_admittance res=82.030 cap=1.602p ind=6.504n gm=140.806m mult=-1
X267 nt31_inv 0 rcl_vccs_admittance res=41.747 cap=293.637f ind=5.599n gm=2.668m mult=-1
X268 nt31_inv 0 rcl_vccs_admittance res=35.402 cap=812.723f ind=5.166n gm=9.080m mult=1
X269 nt31_inv 0 rcl_vccs_admittance res=969.571 cap=9.293f ind=144.115n gm=2.461m mult=-1
X270 nt31 0 rcl_vccs_admittance res=20.246 cap=6.812p ind=4.045n gm=100.342m mult=1
X271 nt31 0 rcl_vccs_admittance res=14.408 cap=51.954p ind=3.114n gm=83.196m mult=1
X272 nt31_inv 0 rcl_vccs_admittance res=607.218 cap=6.384f ind=173.691n gm=2.547m mult=-1
X273 nt31_inv 0 rcl_vccs_admittance res=117.625 cap=76.863f ind=37.376n gm=27.615u mult=1
X274 nt31 0 rcl_vccs_admittance res=22.117 cap=2.160p ind=8.565n gm=8.126m mult=-1
X275 nt31_inv 0 rcl_vccs_admittance res=343.901 cap=25.737f ind=137.595n gm=1.450m mult=-1
X276 nt31_inv 0 rcl_vccs_admittance res=143.421 cap=42.448f ind=60.159n gm=648.723u mult=-1
X277 nt31 0 rcl_vccs_admittance res=16.112 cap=3.080p ind=8.066n gm=11.396m mult=1
X278 nt31 0 rcl_vccs_admittance res=622.536m cap=22.498p ind=348.509p gm=46.631m mult=-1
X279 nt31_inv 0 rcl_vccs_admittance res=669.543m cap=16.331p ind=375.813p gm=58.331m mult=1
X280 nt31_inv 0 rcl_vccs_admittance res=1.336k cap=16.928f ind=763.023n gm=6.473m mult=-1
X281 nt31 0 rcl_vccs_admittance res=143.149 cap=38.456f ind=107.006n gm=719.372u mult=1
X282 nt31_inv 0 rcl_vccs_admittance res=62.131 cap=568.098f ind=54.447n gm=1.451m mult=1
X283 nt31 0 rcl_vccs_admittance res=201.226 cap=11.523f ind=198.091n gm=67.802u mult=-1
X284 nt31_inv 0 rcl_vccs_admittance res=252.086 cap=39.064f ind=284.921n gm=4.377m mult=1
X285 nt31 0 rcl_vccs_admittance res=2.639k cap=796.627a ind=3.011u gm=102.310u mult=1
X286 nt31_inv 0 rcl_vccs_admittance res=2.780k cap=505.415a ind=3.369u gm=76.442u mult=-1
X287 nt31_inv 0 rcl_vccs_admittance res=1.049 cap=7.144p ind=1.335n gm=49.903m mult=-1
X288 nt31 0 rcl_vccs_admittance res=1.149 cap=3.392p ind=1.552n gm=23.096m mult=1
X289 nt31_inv 0 rcl_vccs_admittance res=9.085k cap=206.844a ind=21.475u gm=813.954u mult=1
X290 nt31_inv 0 rcl_vccs_admittance res=142.730 cap=77.950f ind=376.134n gm=603.694u mult=-1
X291 nt31 0 rcl_vccs_admittance res=4.141 cap=597.319f ind=17.766n gm=3.150m mult=-1
X292 nt31 0 rcl_vccs_admittance res=1.717k cap=170.185a ind=7.820u gm=919.852n mult=1
X293 nt31 0 rcl_vccs_admittance res=2.487k cap=128.022a ind=11.375u gm=788.323n mult=-1
X294 nt31 0 rcl_vccs_admittance res=9.700k cap=38.678a ind=46.473u gm=317.403n mult=1
X295 nt31 0 rcl_vccs_admittance res=4.320k cap=75.725a ind=26.429u gm=309.635n mult=-1
X296 nt31_inv 0 rcl_vccs_admittance res=27.050 cap=58.163f ind=197.102n gm=98.902u mult=1
X297 nt31 0 rcl_vccs_admittance res=34.885 cap=23.749f ind=265.343n gm=44.143u mult=-1
* transfer network for s32
F32 0 a3 V32 0.013333333333333334
F32_inv a3 0 V32_inv 0.013333333333333334
V32 nt2 nt32 0
V32_inv nt2 nt32_inv 0
* transfer admittances for S32
R32 nt32_inv 0 2.622k
X298 nt32_inv 0 rcl_vccs_admittance res=159.915 cap=185.514f ind=12.273n gm=1.914m mult=1
X299 nt32 0 rcl_vccs_admittance res=32.660 cap=4.024p ind=2.590n gm=57.924m mult=1
X300 nt32_inv 0 rcl_vccs_admittance res=138.063 cap=88.790f ind=18.518n gm=152.133u mult=-1
X301 nt32 0 rcl_vccs_admittance res=771.619 cap=37.288f ind=112.597n gm=8.258m mult=-1
X302 nt32_inv 0 rcl_vccs_admittance res=151.914k cap=59.312a ind=22.580u gm=922.845u mult=1
X303 nt32_inv 0 rcl_vccs_admittance res=19.965 cap=6.908p ind=3.988n gm=41.859m mult=1
X304 nt32_inv 0 rcl_vccs_admittance res=189.541 cap=3.949p ind=40.963n gm=3.260m mult=1
X305 nt32 0 rcl_vccs_admittance res=244.679 cap=15.843f ind=69.989n gm=673.568u mult=1
X306 nt32 0 rcl_vccs_admittance res=826.247 cap=10.942f ind=262.544n gm=732.319u mult=-1
X307 nt32_inv 0 rcl_vccs_admittance res=35.498 cap=1.346p ind=13.748n gm=3.432m mult=1
X308 nt32_inv 0 rcl_vccs_admittance res=1.023k cap=8.653f ind=409.265n gm=420.364u mult=1
X309 nt32_inv 0 rcl_vccs_admittance res=558.135 cap=10.908f ind=234.116n gm=33.941u mult=-1
X310 nt32 0 rcl_vccs_admittance res=27.800 cap=1.785p ind=13.917n gm=1.741m mult=-1
X311 nt32_inv 0 rcl_vccs_admittance res=129.520 cap=108.137f ind=72.508n gm=2.613m mult=1
X312 nt32 0 rcl_vccs_admittance res=1.417k cap=7.717f ind=795.289n gm=400.849u mult=-1
X313 nt32_inv 0 rcl_vccs_admittance res=56.179 cap=402.584f ind=32.083n gm=3.020m mult=-1
X314 nt32_inv 0 rcl_vccs_admittance res=6.614k cap=832.340a ind=4.944u gm=55.044u mult=1
X315 nt32 0 rcl_vccs_admittance res=41.608 cap=848.314f ind=36.462n gm=8.927m mult=1
X316 nt32 0 rcl_vccs_admittance res=12.899k cap=179.758a ind=12.698u gm=5.774u mult=-1
X317 nt32 0 rcl_vccs_admittance res=59.983 cap=164.170f ind=67.796n gm=7.369m mult=1
X318 nt32 0 rcl_vccs_admittance res=1.761k cap=1.194f ind=2.010u gm=22.408u mult=1
X319 nt32 0 rcl_vccs_admittance res=14.367k cap=97.799a ind=17.412u gm=2.538u mult=1
X320 nt32 0 rcl_vccs_admittance res=120.345 cap=62.286f ind=153.154n gm=2.882m mult=-1
X321 nt32 0 rcl_vccs_admittance res=582.015 cap=6.698f ind=785.808n gm=25.956u mult=1
X322 nt32 0 rcl_vccs_admittance res=11.122k cap=168.951a ind=26.292u gm=2.395u mult=-1
X323 nt32_inv 0 rcl_vccs_admittance res=105.757 cap=105.202f ind=278.698n gm=210.212u mult=1
X324 nt32 0 rcl_vccs_admittance res=7.715 cap=320.645f ind=33.095n gm=4.276m mult=-1
X325 nt32_inv 0 rcl_vccs_admittance res=12.862k cap=22.723a ind=58.566u gm=219.378n mult=1
X326 nt32_inv 0 rcl_vccs_admittance res=12.241k cap=26.009a ind=55.990u gm=1.857u mult=-1
X327 nt32_inv 0 rcl_vccs_admittance res=16.048k cap=23.377a ind=76.890u gm=792.557n mult=1
X328 nt32_inv 0 rcl_vccs_admittance res=5.663k cap=57.772a ind=34.642u gm=1.078u mult=1
X329 nt32 0 rcl_vccs_admittance res=27.229 cap=57.780f ind=198.409n gm=541.790u mult=1
X330 nt32 0 rcl_vccs_admittance res=8.241k cap=100.537a ind=62.679u gm=12.452n mult=1
* transfer network for s33
F33 0 a3 V33 0.013333333333333334
F33_inv a3 0 V33_inv 0.013333333333333334
V33 nt3 nt33 0
V33_inv nt3 nt33_inv 0
* transfer admittances for S33
R33 nt33_inv 0 13.601
X331 nt33_inv 0 rcl_vccs_admittance res=144.112m cap=205.858p ind=11.061p gm=2.728 mult=1
X332 nt33 0 rcl_vccs_admittance res=233.791m cap=562.211p ind=18.538p gm=12.248 mult=-1
X333 nt33 0 rcl_vccs_admittance res=981.121m cap=12.494p ind=131.593p gm=804.835m mult=1
X334 nt33_inv 0 rcl_vccs_admittance res=7.083 cap=4.062p ind=1.034n gm=302.441m mult=1
X335 nt33 0 rcl_vccs_admittance res=6.467 cap=1.393p ind=961.275p gm=323.542m mult=1
X336 nt33 0 rcl_vccs_admittance res=139.870m cap=985.990p ind=27.942p gm=7.660 mult=1
X337 nt33 0 rcl_vccs_admittance res=261.995m cap=2.857n ind=56.622p gm=7.848 mult=1
X338 nt33_inv 0 rcl_vccs_admittance res=3.285 cap=1.180p ind=939.535p gm=20.041m mult=-1
X339 nt33 0 rcl_vccs_admittance res=33.114 cap=273.033f ind=10.522n gm=4.561m mult=-1
X340 nt33_inv 0 rcl_vccs_admittance res=6.529 cap=7.318p ind=2.529n gm=195.932m mult=1
X341 nt33_inv 0 rcl_vccs_admittance res=25.079 cap=352.931f ind=10.034n gm=3.773m mult=1
X342 nt33 0 rcl_vccs_admittance res=312.957 cap=19.453f ind=131.274n gm=317.919u mult=-1
X343 nt33_inv 0 rcl_vccs_admittance res=1.908 cap=26.002p ind=955.380p gm=114.215m mult=1
X344 nt33_inv 0 rcl_vccs_admittance res=672.058m cap=20.840p ind=376.232p gm=20.743m mult=1
X345 nt33_inv 0 rcl_vccs_admittance res=655.717m cap=16.675p ind=368.053p gm=73.635m mult=1
X346 nt33 0 rcl_vccs_admittance res=11.112 cap=2.035p ind=6.346n gm=4.710m mult=1
X347 nt33_inv 0 rcl_vccs_admittance res=61.219 cap=89.922f ind=45.762n gm=890.687u mult=-1
X348 nt33_inv 0 rcl_vccs_admittance res=15.029 cap=2.349p ind=13.170n gm=17.109m mult=1
X349 nt33_inv 0 rcl_vccs_admittance res=325.482 cap=7.124f ind=320.412n gm=144.515u mult=-1
X350 nt33 0 rcl_vccs_admittance res=22.581 cap=436.104f ind=25.522n gm=320.330u mult=1
X351 nt33_inv 0 rcl_vccs_admittance res=315.241 cap=6.668f ind=359.763n gm=33.010u mult=-1
X352 nt33_inv 0 rcl_vccs_admittance res=118.441 cap=11.863f ind=143.542n gm=182.946u mult=1
X353 nt33_inv 0 rcl_vccs_admittance res=1.032 cap=7.264p ind=1.313n gm=14.148m mult=-1
X354 nt33_inv 0 rcl_vccs_admittance res=1.147 cap=3.400p ind=1.548n gm=14.663m mult=1
X355 nt33_inv 0 rcl_vccs_admittance res=287.987 cap=6.525f ind=680.760n gm=26.460u mult=-1
X356 nt33_inv 0 rcl_vccs_admittance res=94.160 cap=118.159f ind=248.137n gm=320.246u mult=-1
X357 nt33_inv 0 rcl_vccs_admittance res=5.953 cap=415.514f ind=25.539n gm=985.896u mult=-1
X358 nt33 0 rcl_vccs_admittance res=1.592k cap=183.620a ind=7.248u gm=44.434u mult=-1
X359 nt33 0 rcl_vccs_admittance res=19.005k cap=16.752a ind=86.928u gm=6.333u mult=1
X360 nt33_inv 0 rcl_vccs_admittance res=198.170 cap=1.893f ind=949.484n gm=38.594u mult=1
X361 nt33 0 rcl_vccs_admittance res=243.193 cap=1.345f ind=1.488u gm=19.684u mult=-1
X362 nt33_inv 0 rcl_vccs_admittance res=2.802 cap=561.422f ind=20.420n gm=1.638m mult=-1
X363 nt33_inv 0 rcl_vccs_admittance res=57.566 cap=14.392f ind=437.858n gm=201.064u mult=1
* transfer network for s34
F34 0 a3 V34 0.013333333333333334
F34_inv a3 0 V34_inv 0.013333333333333334
V34 nt4 nt34 0
V34_inv nt4 nt34_inv 0
* transfer admittances for S34
R34 nt34 0 419.224
X364 nt34_inv 0 rcl_vccs_admittance res=22.664 cap=1.309p ind=1.739n gm=10.271m mult=-1
X365 nt34 0 rcl_vccs_admittance res=118.630 cap=1.108p ind=9.406n gm=42.116m mult=1
X366 nt34 0 rcl_vccs_admittance res=189.550 cap=64.672f ind=25.423n gm=3.934m mult=1
X367 nt34 0 rcl_vccs_admittance res=49.841 cap=577.273f ind=7.273n gm=23.194m mult=-1
X368 nt34 0 rcl_vccs_admittance res=86.152 cap=104.586f ind=12.805n gm=126.185u mult=-1
X369 nt34_inv 0 rcl_vccs_admittance res=106.313 cap=1.297p ind=21.238n gm=31.149m mult=1
X370 nt34 0 rcl_vccs_admittance res=281.372 cap=2.660p ind=60.810n gm=1.269m mult=-1
X371 nt34 0 rcl_vccs_admittance res=55.256 cap=70.153f ind=15.806n gm=93.012u mult=1
X372 nt34_inv 0 rcl_vccs_admittance res=366.688 cap=24.656f ind=116.517n gm=761.406u mult=1
X373 nt34_inv 0 rcl_vccs_admittance res=128.996 cap=370.402f ind=49.957n gm=589.546u mult=-1
X374 nt34_inv 0 rcl_vccs_admittance res=79.977 cap=110.670f ind=31.999n gm=2.746m mult=1
X375 nt34 0 rcl_vccs_admittance res=321.029 cap=18.964f ind=134.659n gm=1.377m mult=-1
X376 nt34_inv 0 rcl_vccs_admittance res=123.615 cap=401.429f ind=61.884n gm=30.262u mult=-1
X377 nt34 0 rcl_vccs_admittance res=150.011 cap=93.366f ind=83.980n gm=259.554u mult=1
X378 nt34 0 rcl_vccs_admittance res=266.377 cap=41.047f ind=149.517n gm=1.107m mult=1
X379 nt34_inv 0 rcl_vccs_admittance res=413.383 cap=54.711f ind=236.080n gm=453.445u mult=1
X380 nt34 0 rcl_vccs_admittance res=76.023 cap=72.411f ind=56.828n gm=507.378u mult=1
X381 nt34_inv 0 rcl_vccs_admittance res=1.225k cap=28.823f ind=1.073u gm=420.419u mult=1
X382 nt34 0 rcl_vccs_admittance res=1.510k cap=1.536f ind=1.487u gm=382.081u mult=-1
X383 nt34_inv 0 rcl_vccs_admittance res=901.849 cap=10.919f ind=1.019u gm=83.994u mult=-1
X384 nt34_inv 0 rcl_vccs_admittance res=821.536 cap=2.559f ind=937.562n gm=89.782u mult=1
X385 nt34 0 rcl_vccs_admittance res=4.258k cap=329.961a ind=5.161u gm=11.662u mult=1
X386 nt34 0 rcl_vccs_admittance res=196.821 cap=38.085f ind=250.478n gm=164.714n mult=1
X387 nt34 0 rcl_vccs_admittance res=108.665 cap=35.876f ind=146.714n gm=660.675u mult=1
X388 nt34 0 rcl_vccs_admittance res=73.692 cap=25.500f ind=174.198n gm=359.475u mult=1
X389 nt34_inv 0 rcl_vccs_admittance res=2.270k cap=4.902f ind=5.981u gm=4.744u mult=-1
X390 nt34 0 rcl_vccs_admittance res=1.042k cap=2.373f ind=4.472u gm=5.729u mult=1
X391 nt34 0 rcl_vccs_admittance res=1.947k cap=150.114a ind=8.865u gm=1.909u mult=1
X392 nt34_inv 0 rcl_vccs_admittance res=2.029k cap=156.923a ind=9.280u gm=4.353u mult=-1
X393 nt34_inv 0 rcl_vccs_admittance res=4.476k cap=83.807a ind=21.448u gm=512.683n mult=-1
X394 nt34_inv 0 rcl_vccs_admittance res=12.770k cap=25.616a ind=78.126u gm=896.342n mult=1
X395 nt34 0 rcl_vccs_admittance res=542.471 cap=2.900f ind=3.953u gm=1.857u mult=1
X396 nt34_inv 0 rcl_vccs_admittance res=6.222k cap=133.145a ind=47.328u gm=16.467u mult=-1
*
* port 4
R4 a4 0 75.0
V4 p4 a4 0
H4 nt4 nts4 V4 75.0
E4 nts4 0 p4 0 1
* transfer network for s41
F41 0 a4 V41 0.013333333333333334
F41_inv a4 0 V41_inv 0.013333333333333334
V41 nt1 nt41 0
V41_inv nt1 nt41_inv 0
* transfer admittances for S41
R41 nt41_inv 0 76.231
X397 nt41 0 rcl_vccs_admittance res=19.064 cap=1.556p ind=1.463n gm=9.411m mult=-1
X398 nt41 0 rcl_vccs_admittance res=9.399 cap=13.985p ind=745.251p gm=46.780m mult=1
X399 nt41_inv 0 rcl_vccs_admittance res=357.632 cap=34.277f ind=47.968n gm=19.142m mult=1
X400 nt41_inv 0 rcl_vccs_admittance res=16.099 cap=1.787p ind=2.349n gm=31.928m mult=1
X401 nt41_inv 0 rcl_vccs_admittance res=14.045 cap=641.515f ind=2.088n gm=19.133m mult=1
X402 nt41_inv 0 rcl_vccs_admittance res=61.882 cap=2.229p ind=12.362n gm=8.014m mult=-1
X403 nt41 0 rcl_vccs_admittance res=49.701 cap=15.061p ind=10.741n gm=25.015m mult=1
X404 nt41_inv 0 rcl_vccs_admittance res=10.267 cap=377.542f ind=2.937n gm=5.840m mult=-1
X405 nt41_inv 0 rcl_vccs_admittance res=695.481m cap=13.000p ind=220.992p gm=369.199m mult=1
X406 nt41_inv 0 rcl_vccs_admittance res=2.230k cap=21.428f ind=863.547n gm=2.933m mult=-1
X407 nt41 0 rcl_vccs_admittance res=526.263m cap=16.819p ind=210.558p gm=219.953m mult=1
X408 nt41 0 rcl_vccs_admittance res=1.070 cap=5.689p ind=448.862p gm=213.837m mult=1
X409 nt41_inv 0 rcl_vccs_admittance res=999.367 cap=49.654f ind=500.302n gm=1.060m mult=-1
X410 nt41_inv 0 rcl_vccs_admittance res=109.936 cap=127.401f ind=61.545n gm=552.233u mult=1
X411 nt41 0 rcl_vccs_admittance res=160.657 cap=68.058f ind=90.177n gm=793.372u mult=1
X412 nt41_inv 0 rcl_vccs_admittance res=209.625 cap=107.892f ind=119.715n gm=378.981u mult=1
X413 nt41_inv 0 rcl_vccs_admittance res=655.078m cap=8.403p ind=489.677p gm=35.269m mult=1
X414 nt41_inv 0 rcl_vccs_admittance res=5.768k cap=6.120f ind=5.054u gm=192.736u mult=-1
X415 nt41_inv 0 rcl_vccs_admittance res=2.390 cap=969.991f ind=2.353n gm=26.728m mult=1
X416 nt41_inv 0 rcl_vccs_admittance res=429.220 cap=22.943f ind=485.128n gm=111.294u mult=-1
X417 nt41 0 rcl_vccs_admittance res=5.301 cap=396.483f ind=6.050n gm=5.481m mult=-1
X418 nt41 0 rcl_vccs_admittance res=16.392 cap=85.718f ind=19.866n gm=760.645u mult=-1
X419 nt41 0 rcl_vccs_admittance res=263.818 cap=28.413f ind=335.739n gm=160.057u mult=-1
X420 nt41_inv 0 rcl_vccs_admittance res=131.797 cap=29.579f ind=177.947n gm=706.349u mult=1
X421 nt41 0 rcl_vccs_admittance res=1.575 cap=1.193p ind=3.723n gm=5.478m mult=1
X422 nt41 0 rcl_vccs_admittance res=2.922k cap=3.807f ind=7.701u gm=20.861u mult=-1
X423 nt41_inv 0 rcl_vccs_admittance res=781.590 cap=3.165f ind=3.353u gm=1.729u mult=-1
X424 nt41_inv 0 rcl_vccs_admittance res=2.083k cap=140.280a ind=9.487u gm=8.880u mult=-1
X425 nt41 0 rcl_vccs_admittance res=1.952k cap=163.101a ind=8.928u gm=8.742u mult=-1
X426 nt41 0 rcl_vccs_admittance res=73.360k cap=5.114a ind=351.488u gm=5.003u mult=1
X427 nt41_inv 0 rcl_vccs_admittance res=2.122k cap=154.183a ind=12.980u gm=3.210u mult=1
X428 nt41 0 rcl_vccs_admittance res=3.562k cap=441.739a ind=25.952u gm=2.710u mult=-1
X429 nt41_inv 0 rcl_vccs_admittance res=779.527 cap=1.063f ind=5.929u gm=9.167u mult=1
* transfer network for s42
F42 0 a4 V42 0.013333333333333334
F42_inv a4 0 V42_inv 0.013333333333333334
V42 nt2 nt42 0
V42_inv nt2 nt42_inv 0
* transfer admittances for S42
R42 nt42 0 615.317
X430 nt42_inv 0 rcl_vccs_admittance res=214.734 cap=138.155f ind=16.481n gm=1.871m mult=-1
X431 nt42_inv 0 rcl_vccs_admittance res=118.099 cap=1.113p ind=9.364n gm=15.272m mult=-1
X432 nt42 0 rcl_vccs_admittance res=172.844 cap=70.923f ind=23.183n gm=1.567m mult=1
X433 nt42 0 rcl_vccs_admittance res=254.017 cap=113.267f ind=37.067n gm=2.100m mult=1
X434 nt42 0 rcl_vccs_admittance res=570.246 cap=15.801f ind=84.760n gm=391.043u mult=1
X435 nt42_inv 0 rcl_vccs_admittance res=720.745 cap=191.344f ind=143.984n gm=10.362m mult=1
X436 nt42_inv 0 rcl_vccs_admittance res=115.032 cap=6.507p ind=24.861n gm=9.769m mult=1
X437 nt42 0 rcl_vccs_admittance res=201.955 cap=19.194f ind=57.768n gm=190.758u mult=-1
X438 nt42 0 rcl_vccs_admittance res=4.690k cap=1.928f ind=1.490u gm=170.114u mult=-1
X439 nt42_inv 0 rcl_vccs_admittance res=327.470 cap=145.907f ind=126.822n gm=178.116u mult=-1
X440 nt42 0 rcl_vccs_admittance res=551.257 cap=16.056f ind=220.558n gm=230.388u mult=-1
X441 nt42 0 rcl_vccs_admittance res=865.591 cap=7.033f ind=363.082n gm=10.086u mult=1
X442 nt42_inv 0 rcl_vccs_admittance res=171.917 cap=288.643f ind=86.065n gm=208.204u mult=1
X443 nt42_inv 0 rcl_vccs_admittance res=19.001k cap=737.123a ind=10.637u gm=82.416u mult=1
X444 nt42 0 rcl_vccs_admittance res=14.814k cap=738.070a ind=8.315u gm=67.600u mult=-1
X445 nt42_inv 0 rcl_vccs_admittance res=903.169 cap=25.042f ind=515.792n gm=338.919u mult=1
X446 nt42_inv 0 rcl_vccs_admittance res=7.736k cap=711.633a ind=5.782u gm=109.133u mult=1
X447 nt42_inv 0 rcl_vccs_admittance res=2.773k cap=12.731f ind=2.430u gm=325.786u mult=1
X448 nt42 0 rcl_vccs_admittance res=5.838k cap=397.168a ind=5.747u gm=8.703u mult=1
X449 nt42_inv 0 rcl_vccs_admittance res=19.524k cap=504.383a ind=22.067u gm=13.967u mult=1
X450 nt42 0 rcl_vccs_admittance res=4.898k cap=429.166a ind=5.589u gm=16.932u mult=-1
X451 nt42 0 rcl_vccs_admittance res=3.031k cap=463.512a ind=3.674u gm=23.978u mult=-1
X452 nt42_inv 0 rcl_vccs_admittance res=8.917k cap=840.631a ind=11.348u gm=4.933u mult=-1
X453 nt42_inv 0 rcl_vccs_admittance res=5.576k cap=699.200a ind=7.528u gm=5.453u mult=1
X454 nt42 0 rcl_vccs_admittance res=2.836k cap=662.658a ind=6.703u gm=4.718u mult=-1
X455 nt42_inv 0 rcl_vccs_admittance res=9.211k cap=1.208f ind=24.273u gm=694.185n mult=1
X456 nt42_inv 0 rcl_vccs_admittance res=1.039k cap=2.380f ind=4.459u gm=5.329u mult=-1
X457 nt42_inv 0 rcl_vccs_admittance res=35.006k cap=8.349a ind=159.396u gm=2.255u mult=-1
X458 nt42_inv 0 rcl_vccs_admittance res=2.773k cap=114.823a ind=12.682u gm=1.695u mult=-1
X459 nt42_inv 0 rcl_vccs_admittance res=33.385k cap=11.237a ind=159.955u gm=1.951u mult=1
X460 nt42_inv 0 rcl_vccs_admittance res=4.862k cap=67.285a ind=29.744u gm=2.660u mult=1
X461 nt42_inv 0 rcl_vccs_admittance res=5.139k cap=306.127a ind=37.448u gm=2.683u mult=1
X462 nt42 0 rcl_vccs_admittance res=27.727k cap=29.879a ind=210.900u gm=169.924n mult=-1
* transfer network for s43
F43 0 a4 V43 0.013333333333333334
F43_inv a4 0 V43_inv 0.013333333333333334
V43 nt3 nt43 0
V43_inv nt3 nt43_inv 0
* transfer admittances for S43
R43 nt43 0 382.134
X463 nt43_inv 0 rcl_vccs_admittance res=24.455 cap=1.213p ind=1.877n gm=12.833m mult=-1
X464 nt43 0 rcl_vccs_admittance res=313.615 cap=419.112f ind=24.867n gm=41.483m mult=1
X465 nt43 0 rcl_vccs_admittance res=146.643 cap=83.594f ind=19.669n gm=3.778m mult=1
X466 nt43 0 rcl_vccs_admittance res=53.495 cap=537.845f ind=7.806n gm=22.533m mult=-1
X467 nt43 0 rcl_vccs_admittance res=87.945 cap=102.454f ind=13.072n gm=379.123u mult=-1
X468 nt43_inv 0 rcl_vccs_admittance res=123.707 cap=1.115p ind=24.713n gm=31.960m mult=1
X469 nt43 0 rcl_vccs_admittance res=373.269 cap=2.005p ind=80.670n gm=2.529m mult=-1
X470 nt43 0 rcl_vccs_admittance res=54.455 cap=71.186f ind=15.576n gm=50.971u mult=1
X471 nt43_inv 0 rcl_vccs_admittance res=291.303 cap=31.037f ind=92.563n gm=738.055u mult=1
X472 nt43_inv 0 rcl_vccs_admittance res=122.595 cap=389.740f ind=47.478n gm=328.823u mult=-1
X473 nt43_inv 0 rcl_vccs_admittance res=80.996 cap=109.278f ind=32.407n gm=2.715m mult=1
X474 nt43 0 rcl_vccs_admittance res=336.178 cap=18.109f ind=141.014n gm=1.328m mult=-1
X475 nt43_inv 0 rcl_vccs_admittance res=119.959 cap=413.661f ind=60.054n gm=146.533u mult=1
X476 nt43 0 rcl_vccs_admittance res=148.615 cap=94.243f ind=83.198n gm=298.463u mult=1
X477 nt43 0 rcl_vccs_admittance res=279.622 cap=39.103f ind=156.951n gm=1.144m mult=1
X478 nt43_inv 0 rcl_vccs_admittance res=441.116 cap=51.272f ind=251.918n gm=482.860u mult=1
X479 nt43 0 rcl_vccs_admittance res=75.325 cap=73.082f ind=56.306n gm=529.841u mult=1
X480 nt43_inv 0 rcl_vccs_admittance res=1.408k cap=25.069f ind=1.234u gm=443.048u mult=1
X481 nt43 0 rcl_vccs_admittance res=1.324k cap=1.751f ind=1.303u gm=380.759u mult=-1
X482 nt43_inv 0 rcl_vccs_admittance res=922.111 cap=10.679f ind=1.042u gm=76.331u mult=-1
X483 nt43_inv 0 rcl_vccs_admittance res=848.440 cap=2.477f ind=968.265n gm=85.956u mult=1
X484 nt43 0 rcl_vccs_admittance res=3.691k cap=380.654a ind=4.473u gm=11.828u mult=1
X485 nt43 0 rcl_vccs_admittance res=195.943 cap=38.255f ind=249.360n gm=3.825u mult=1
X486 nt43 0 rcl_vccs_admittance res=108.911 cap=35.795f ind=147.047n gm=668.619u mult=1
X487 nt43 0 rcl_vccs_admittance res=74.296 cap=25.292f ind=175.625n gm=364.154u mult=1
X488 nt43_inv 0 rcl_vccs_admittance res=2.230k cap=4.990f ind=5.876u gm=4.471u mult=-1
X489 nt43 0 rcl_vccs_admittance res=1.117k cap=2.214f ind=4.794u gm=6.407u mult=1
X490 nt43 0 rcl_vccs_admittance res=1.956k cap=149.458a ind=8.904u gm=1.499u mult=1
X491 nt43_inv 0 rcl_vccs_admittance res=2.066k cap=154.112a ind=9.449u gm=4.189u mult=-1
X492 nt43_inv 0 rcl_vccs_admittance res=5.621k cap=66.747a ind=26.930u gm=485.912n mult=-1
X493 nt43_inv 0 rcl_vccs_admittance res=19.000k cap=17.217a ind=116.238u gm=1.876u mult=1
X494 nt43 0 rcl_vccs_admittance res=544.716 cap=2.888f ind=3.969u gm=1.604u mult=1
X495 nt43_inv 0 rcl_vccs_admittance res=8.168k cap=101.425a ind=62.130u gm=16.266u mult=-1
* transfer network for s44
F44 0 a4 V44 0.013333333333333334
F44_inv a4 0 V44_inv 0.013333333333333334
V44 nt4 nt44 0
V44_inv nt4 nt44_inv 0
* transfer admittances for S44
R44 nt44 0 7.949
X496 nt44_inv 0 rcl_vccs_admittance res=231.679m cap=128.050p ind=17.781p gm=4.099 mult=-1
X497 nt44 0 rcl_vccs_admittance res=198.042m cap=663.698p ind=15.703p gm=1.349 mult=-1
X498 nt44 0 rcl_vccs_admittance res=6.340 cap=1.934p ind=850.365p gm=198.266m mult=1
X499 nt44 0 rcl_vccs_admittance res=1.226 cap=23.464p ind=178.934p gm=6.048 mult=-1
X500 nt44_inv 0 rcl_vccs_admittance res=8.624 cap=1.045p ind=1.282n gm=33.307m mult=1
X501 nt44 0 rcl_vccs_admittance res=1.437 cap=95.962p ind=287.098p gm=318.603m mult=1
X502 nt44 0 rcl_vccs_admittance res=475.741m cap=1.573n ind=102.816p gm=4.416 mult=1
X503 nt44 0 rcl_vccs_admittance res=736.690m cap=5.262p ind=210.725p gm=21.706m mult=-1
X504 nt44_inv 0 rcl_vccs_admittance res=229.353m cap=39.420p ind=72.878p gm=590.236m mult=1
X505 nt44 0 rcl_vccs_admittance res=11.158 cap=4.282p ind=4.321n gm=11.303m mult=-1
X506 nt44_inv 0 rcl_vccs_admittance res=207.609m cap=42.633p ind=83.065p gm=117.163m mult=1
X507 nt44_inv 0 rcl_vccs_admittance res=274.650m cap=22.166p ind=115.205p gm=76.250m mult=1
X508 nt44 0 rcl_vccs_admittance res=18.410 cap=2.695p ind=9.216n gm=16.493m mult=-1
X509 nt44 0 rcl_vccs_admittance res=165.693 cap=84.530f ind=92.758n gm=1.572m mult=-1
X510 nt44 0 rcl_vccs_admittance res=70.926 cap=154.161f ind=39.811n gm=2.649m mult=1
X511 nt44_inv 0 rcl_vccs_admittance res=371.639 cap=60.857f ind=212.240n gm=3.324m mult=-1
X512 nt44_inv 0 rcl_vccs_admittance res=483.464m cap=11.386p ind=361.394p gm=25.315m mult=-1
X513 nt44 0 rcl_vccs_admittance res=56.784 cap=621.600f ind=49.760n gm=508.335u mult=-1
X514 nt44_inv 0 rcl_vccs_admittance res=865.498m cap=2.679p ind=852.017p gm=10.567m mult=-1
X515 nt44_inv 0 rcl_vccs_admittance res=226.163 cap=43.541f ind=255.622n gm=706.898u mult=-1
X516 nt44_inv 0 rcl_vccs_admittance res=6.160 cap=341.245f ind=7.029n gm=16.587m mult=-1
X517 nt44_inv 0 rcl_vccs_admittance res=398.952 cap=3.522f ind=483.500n gm=181.619u mult=1
X518 nt44_inv 0 rcl_vccs_admittance res=612.441 cap=12.239f ind=779.402n gm=163.017u mult=-1
X519 nt44_inv 0 rcl_vccs_admittance res=222.469 cap=17.524f ind=300.367n gm=117.791u mult=-1
X520 nt44_inv 0 rcl_vccs_admittance res=2.728 cap=688.759f ind=6.449n gm=6.772m mult=-1
X521 nt44_inv 0 rcl_vccs_admittance res=691.484 cap=16.090f ind=1.822u gm=148.266u mult=1
X522 nt44 0 rcl_vccs_admittance res=830.722 cap=2.978f ind=3.564u gm=29.590u mult=1
X523 nt44_inv 0 rcl_vccs_admittance res=2.965k cap=98.578a ind=13.500u gm=11.128u mult=1
X524 nt44_inv 0 rcl_vccs_admittance res=541.445 cap=588.019a ind=2.477u gm=16.579u mult=-1
X525 nt44_inv 0 rcl_vccs_admittance res=699.416 cap=536.387a ind=3.351u gm=1.326u mult=1
X526 nt44 0 rcl_vccs_admittance res=23.257k cap=14.066a ind=142.277u gm=5.085u mult=-1
X527 nt44_inv 0 rcl_vccs_admittance res=56.429k cap=27.881a ind=411.176u gm=12.931u mult=1
X528 nt44_inv 0 rcl_vccs_admittance res=884.390 cap=936.779a ind=6.727u gm=8.440u mult=1
.ENDS s_equivalent
*
.SUBCKT rcl_vccs_admittance n_pos n_neg res=1k cap=1n ind=100p gm=1m mult=1
L1 n_pos 1 {ind}
C1 1 2 {cap}
R1 2 n_neg {res}
G1 n_pos n_neg 1 2 {gm} m={mult}
.ENDS rcl_vccs_admittance
*
.SUBCKT rl_admittance n_pos n_neg res=1k ind=100p
L1 n_pos 1 {ind}
R1 1 n_neg {res}
.ENDS rl_admittance
