# ⚙️ Composite Shaft Analysis using CLT & Tsai-Wu

This folder contains a self-contained MATLAB script for analyzing laminated composite shafts using **Classical Lamination Theory (CLT)** and the **Tsai-Wu failure criterion**.

---

## 🧾 Overview

Using this code, you can:
- Analyze a laminate with **up to 20 plies** of **equal thickness**
- Define custom materials and stacking sequences
- Compute:
  - Global stiffness matrices \( A \), \( B \), and \( D \)
  - On-axis and off-axis stresses and strains
  - Safety ratio based on Tsai-Wu criterion
- Design composite drive shafts under force, bending moment, and torsion

---

## 📄 File Included

| File                        | Description |
|-----------------------------|-------------|
| `composite_shaft_analysis.m` | Main MATLAB script implementing the full analysis process using symbolic and numerical methods |

---

## 🚀 How to Use

Please follow the **9 setup steps** before running the code:

1. **Material Definition**  
   Use existing materials or define your own at **line 24**, using the provided structure format.

2. **Lamina Thickness**  
   Enter the lamina thickness (in meters) at **line 30**.

3. **Laminate Code Definition**  
   Define the stacking sequence as a row vector.  
   Example: `[0/30/45]` →  
   ```matlab
   laminate_code = [0 30 45];
   ```

4. **Target Lamina Material for Tsai-Wu**  
   To perform Tsai-Wu failure analysis, specify the material of the lamina you want to analyze.

5. **Z-Position of the Lamina**  
   Provide the through-thickness position `z` (in meters) for the **surface** of the lamina under evaluation.  
   Example:  
   For 9 plies each 0.0025 m thick, the top surface of the 1st ply is at:  
   ```matlab
   z = -0.01125;
   ```

6. **Lamina Number for Tsai-Wu**  
   Specify which lamina number you're analyzing, to extract the correct orientation angle for failure evaluation.

7. **Shaft Radius**  
   Define the shaft's outer radius at **line 35**.

8. **Applied Loads**  
   Enter the axial force, bending moments, and torsional load between **lines 42–49**.

9. **Material Assignment per Ply**  
   From **lines 52 to 71**, assign materials to each ply individually:  
   ```matlab
   material_l1 = graphite_epoxy;
   material_l2 = graphite_epoxy;
   ...
   ```

---

## 📦 Requirements

- MATLAB (R2020 or newer recommended)
- Symbolic Math Toolbox

---

## 📫 Contact

Created by **Amir Hossein Akbari**  
📧 ahamech@outlook.com
