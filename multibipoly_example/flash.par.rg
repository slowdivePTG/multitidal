# Sets variables that don't require a recompile.

# USER PARAMETERS
# These parameters typically vary from run to run.

# Are we restarting a run? Uncomment the following lines and select the
# last written checkpoint file number.
#restart                    = .true.
#checkpointFileNumber       = 21
#plotFileNumber             = 0

# Output options (plot files and checkpoint files).
basenm                     = "multibipoly_"
checkpointFileIntervalTime = 50000.0
#checkpointFileIntervalStep = 10
plotFileIntervalTime       = 0.0 

# Box dimensions. Object being disrupted is placed at exact center of box.
xmax = 1.e15
ymax = 1.e15
zmax = 1.e15

# Grid variable lower limits. Should each be at least a couple
# orders of magnitude less than typical simulation values.
smalle = 1.e10
smallt = 1.e-15
smlrho = 1.e-18
smallp = 1.e-4

# Maximum time to run simulation.
tmax = 1.e9

# Parameters of object being disrupted.
#sim_objMass    = 1.0     # In solar masses
sim_objCoreMass = 0.28     # In solar masses
sim_objPolyN   = 1.5      # Must be >1
sim_objPolyN2   = 1.7      # Must be >1
#sim_objCentDen = 73.5
sim_objCore             = 3.0978 #2.492 #1.5710 #1.5695 #1.5685 #1.57035 #0.8733 #2.95882
sim_objEnve             = 4.63973 #3.87477 #3.068 #5.09718 #4.50145
sim_objRadius           = 12.5
sim_objAbarCore         = 10.3226

# Massive perturber parameters.
ptmass = 1.9889225e39

# Initial orbit.
sim_periBeta  = 1.5
sim_startBeta = 0.5
sim_orbEcc    = 0.99999

# Background fluff parameters.
sim_rhoAmbient = 1.0e-17
sim_pAmbient   = 1.0e-4

# Parameters of initial relaxation of object to grid.
sim_tRelax    = 1.0e5
sim_relaxRate = 0.9
dtinit        = 1e-2

# Parameters determining behavior of fluid during simulation.
sim_softenRadius    = 0.8     # Soften gravity next to pt. mass within this fraction of pericenter distance.
sim_accRadius       = 0.0
sim_fluidGammae      = 1.666666666667
sim_fluidGammac      = 5.0
sim_fluffDampCoeff  = 0.95
sim_fluffDampCutoff = 1.e-16   # Should be slightly larger than sim_rhoAmbient
sim_totForceSub    = 3

# Parameters affecting the multipole gravity solver. Please read FLASH4 documentation before modifying.
grv_comCutoff                = 1.0e-1
grv_comPeakCut               = 1.0e-1
grv_orbTol                   = 1.0e-14
grv_orbMinForce              = 1.0e-14
grv_orb3D                    = .true.
mpole_lmax                   = 10
mpole_max_radial_zones       = 2
mpole_zone_radius_fraction_1 = 4.0E-3
mpole_zone_exponent_2        = 2.0E0
mpole_zone_radius_fraction_2 = 10.0E0
mpole_inner_zone_grid        = 1.0E-3
mpole_inner_zone_size        = 32

# Refinement parameters. Highest refinement levels should be specified first.
lrefine_min         = 1
lrefine_max         = 16
sim_ptmassrefine    = 1
sim_ptmassrefrad    = 0.e0
sim_maxBlocks       = 100000   # Maximum total number of blocks in simulation. Derefines by 1 level if number is exceeded.
refine_var_count    = 9

refine_var_1        = "core"
refine_cutoff_1     = 1.00e-3
derefine_cutoff_1   = 5.00e-4
refine_level_1      = 16

refine_var_2        = "dens"
refine_cutoff_2     = 1.00e-2
derefine_cutoff_2   = 5.00e-3
refine_level_2      = 15

refine_var_3        = "dens"
refine_cutoff_3     = 1.00e-3
derefine_cutoff_3   = 5.00e-4
refine_level_3      = 14

refine_var_4        = "dens"
refine_cutoff_4     = 1.00e-4
derefine_cutoff_4   = 5.00e-5
refine_level_4      = 13

refine_var_5        = "dens"
refine_cutoff_5     = 1.00e-5
derefine_cutoff_5   = 5.00e-6
refine_level_5      = 12

refine_var_6        = "dens"
refine_cutoff_6     = 1.00e-6
derefine_cutoff_6   = 5.00e-7
refine_level_6      = 11

refine_var_7        = "dens"
refine_cutoff_7     = 1.00e-7
derefine_cutoff_7   = 5.00e-8
refine_level_7      = 10

refine_var_8        = "dens"
refine_cutoff_8     = 1.00e-8
derefine_cutoff_8   = 5.00e-9
refine_level_8      = 9

refine_var_9        = "dens"
refine_cutoff_9     = 1.00e-9
derefine_cutoff_9   = 5.00e-10
refine_level_9      = 8


# Variables to include in plot files.
plot_var_1 = "dens"
plot_var_2 = "pres"


# STATIC PARAMETERS
# These parameters should almost always be left alone.
nend               = 1000000000

smallu             = 1.e-10
smallx             = 1.e-30
small              = 1.e-15

eosmodeInit        = "dens_pres" 

cfl                = 0.8
grv_cfl            = 0.5
eintSwitch         = 1.0e-4
rieman_tol         = 1.0e-14
nriem              = 10000

sim_nsubzones      = 4

xl_boundary_type    = "diode"
xr_boundary_type    = "diode"
yl_boundary_type    = "diode"
yr_boundary_type    = "diode"
zl_boundary_type    = "diode"
zr_boundary_type    = "diode"
grav_boundary_type  = "isolated"

dr_shortenLastStepBeforeTMax = .true.
