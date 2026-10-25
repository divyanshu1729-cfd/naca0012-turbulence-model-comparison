# naca0012-turbulence-model-comparison
OpenFOAM study comparing Spalart–Allmaras and k-omega SST turbulence models for NACA 0012 aerodynamics.

**Status:** Undergraduate CFD study; results and interpretations require continued review  
**Solver:** OpenFOAM Foundation v13  
**Models:** Spalart–Allmaras (SA) and \(k\text{–}\omega\) SST  
**Reference data:** Ladson, NASA Technical Memorandum 4074

## Overview

This project investigates the aerodynamic predictions of two Reynolds-averaged Navier–Stokes (RANS) turbulence models for a NACA 0012 airfoil: Spalart–Allmaras and \(k\text{–}\omega\) SST.

The study compares computed aerodynamic coefficients with experimental reference data and examines sensitivity to mesh resolution and angle of attack. A short transient investigation using SST-SAS was also conducted to examine whether the computed flow exhibited repeatable unsteady behaviour.

## Reported Conditions

| Parameter | Reported value |
|---|---:|
| Airfoil | NACA 0012 |
| Mach number | 0.15 |
| Reynolds number | $2 \times 10^6$ |
| Reference freestream velocity | Approximately 51 m/s |
| Kinematic viscosity | $2.55 \times 10^{-5}$\,$\mathrm{m^2/s}\$ |
| Angle-of-attack range | 0° to approximately 15.16° |
| Mesh sizes investigated | Approximately 70,000, 125,000 and 300,000 cells |

These values describe the documented numerical setup and should be checked against the final report and case files before being treated as a reproducible configuration.

## Methodology

The reported workflow includes:

- Steady RANS calculations using the Spalart–Allmaras and \(k\text{–}\omega\) SST models.
- Comparison of lift and drag predictions across the investigated angles of attack.
- Mesh-resolution and near-wall-resolution assessment.
- Comparison with the experimental NACA 0012 data documented by Ladson in NASA TM-4074.
- A limited transient SST-SAS calculation following a steady SST initialization.

The analysis focuses on model comparison and numerical interpretation. It does not propose a new turbulence model.

## Preliminary Findings

The study report indicates that lift predictions agree with the reference data to within approximately 2% over part of the lower-angle-of-attack range, with larger differences at higher incidence.

The report also suggests differences between the SA and SST predictions in drag and near-wall flow behaviour. These observations require interpretation in the context of mesh sensitivity, turbulence-model assumptions, convergence, and the experimental reference conditions.

The short SST-SAS calculation did **not** establish repeatable periodic vortex shedding. It should therefore not be presented as evidence that a sustained periodic shedding mechanism was demonstrated.

All numerical findings remain subject to review of the underlying data, plots, simulation settings, and validation procedure.

## Repository Contents

This repository is intended to contain:
- OpenFOAM dictionaries, mesh-generation files, and post-processing scripts.

## Reproducibility Status

The report and source document should be distinguished from the original simulation inputs. Any case files added later must be identified accurately as recovered originals or reconstructed files.

Until the required dictionaries, mesh-generation procedure, boundary conditions, solver settings, and post-processing steps are available, this repository should be treated as documentation of the study rather than a complete, independently runnable CFD case.

## Limitations

- **High-angle-of-attack uncertainty:** Iterative convergence deteriorates near \(15.16^\circ\), while experimental transition-trip conditions introduce additional uncertainty.
- **Separation interpretation:** The SA solution shows a weak aft-chord wall-shear reversal that requires further confirmation; the SST solution does not establish broad separation.
- **Transient limitations:** The short SST–SAS simulation did not establish repeatable periodic shedding. Its duration is insufficient to exclude slower-growing instabilities.
- **Model scope:** The RANS comparison does not provide a complete description of three-dimensional, unsteady wake physics.

## Future Work

- Improve high-incidence convergence and verify the suspected aft-chord separation using local wall-shear and velocity diagnostics.
- Extend transient simulations to investigate instability growth and unsteady flow behaviour.
- **Large-Eddy Simulation (LES):** Develop a finite three-dimensional wing and wake study to investigate resolved turbulent structures, wake dynamics, and three-dimensional unsteadiness beyond the present RANS analysis.

## Disclaimer

This is an undergraduate computational study and has not been peer-reviewed. Reported findings are preliminary and should not be treated as independently validated results.
