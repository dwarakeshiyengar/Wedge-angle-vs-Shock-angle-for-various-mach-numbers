
# MATLAB Oblique Shock $\theta$-$\beta$-$M$ Diagram Generator

A MATLAB script that computes and plots the governing oblique shock wave relationship—Wedge Angle ($\theta$) versus Shock Angle ($\beta$)—for supersonic flows across various mach numbers.

---

## Overview

In compressible aerodynamics, the **$\theta$-$\beta$-$M$ relation** governs how supersonic flow changes direction when passing through an attached oblique shock wave. 

For a given Mach number $M$, there are generally two possible shock angles ($\beta$) for a given deflection/wedge angle ($\theta$):
* **Weak Shock Solution:** Lower $\beta$, typical in unconstrained flows.
* **Strong Shock Solution:** Higher $\beta$, occurring under high back-pressure conditions.

`theta_beta.m` generates a clean family of curves visualizing these shock states across various free-stream Mach numbers.

---

## Governing Equation

The script evaluates the classic explicit relation for deflection angle $\theta$ as a function of shock angle $\beta$ and Mach number $M$:

$$\tan\theta = 2 \cot\beta \left[ \frac{M^2 \sin^2\beta - 1}{M^2 (\gamma + \cos 2\beta) + 2} \right]$$

---

## Code Configuration

| Parameter | Default Value | Description |
| :--- | :--- | :--- |
| `gamma` | `1.4` | Specific heat ratio (Air) |
| `Mach_numbers` | `[1.5, 2, ..., 6]` | Array of free-stream Mach numbers to plot |
| `num_points` | `300` | Resolution of discretization points for $\beta$ |
| `beta_min`, `beta_max` | `0°`, `90°` | Domain boundary for shock angle sweep |

---

## Quick Start

### Prerequisites
* MATLAB R2018b or newer (no specialized toolboxes required).

### Execution
1. Clone or download the repository.
2. Open MATLAB and run:
   ```matlab
   theta_beta

```

---

## Output Plot

The script produces a standard $\theta$-$\beta$-$M$ design chart:

* **X-Axis:** Wedge Deflection Angle $\theta$ ($0^\circ - 50^\circ$)
* **Y-Axis:** Shock Angle $\beta$ ($0^\circ - 90^\circ$)
* **Curves:** Color-coded solid lines for $M = 1.5$ up to $M = 6.0$

The peak of each curve represents $\theta_{\max}$, the maximum wedge angle for an attached shock at that specific Mach number.

---

## License

Distributed under the MIT License. See `LICENSE` for details.

```

```
