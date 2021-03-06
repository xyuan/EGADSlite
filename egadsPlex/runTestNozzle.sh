#!/bin/bash

# Compile Code
make clean
make testNozzle

# Run code with all options
./testNozzle -filename ../examples/Nozzle_fromStep.egadslite -dm_view hdf5:mesh_nozzle.h5 -dm_view2 hdf5:mesh_vol.h5
./testNozzle -filename ../examples/Nozzle_fromStep.egadslite -dm_view hdf5:mesh_nozzle_r1.h5 -dm_view2 hdf5:mesh_vol_r1.h5 -dm_refine 1
#./testNozzle -filename ../examples/Nozzle_fromStep.egadslite -dm_view hdf5:mesh_nozzle_r5.h5 -dm_view2 hdf5:mesh_vol_r5.h5 -dm_refine 5
#mpiexec -n 32 ./testPlex -filename ../examples/unit_sphere.egadslite -dm_view hdf5:mesh_r10.h5 -dm_refine 10
#mpiexec -n 32 ./testPlex -filename ../examples/unit_sphere.egadslite -dm_view hdf5:mesh_r25.h5 -dm_refine 25

