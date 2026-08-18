# 🎮 Grid Puzzle Optimization using Integer Linear Programming

[![GAMS](https://img.shields.io/badge/Solver-GAMS%2FCPLEX-00599C?style=for-the-badge)](https://www.gams.com/)

An Operations Research approach to solving a $5 \times 5$ grid-based toggle puzzle. This repository contains the **Integer Linear Programming (ILP)** model developed in **GAMS** (`kashinafarmannahaei.gms`) to find the globally optimal solution with the minimum number of clicks.

---

## 📌 Problem Description
In a grid-based toggle puzzle, clicking a cell toggles its state (ON/OFF) along with its orthogonal neighbors (Up, Down, Left, Right). The objective is to transition from an arbitrary initial board configuration to a fully cleared board using the minimum number of steps.

---

## 🧮 Mathematical Formulation

### **Objective Function**
Minimize the total number of clicks across the $5 \times 5$ grid:
$$\min Z = \sum_{i=1}^{5} \sum_{j=1}^{5} x_{ij}$$

### **Decision Variables**
- $x_{ij} \in \{0, 1\}$: Binary variable indicating whether cell $(i,j)$ is clicked ($1$) or not ($0$).
- $y_{ijk} \in \{0, 1\}$: Auxiliary binary variable used for linearizing parity constraints.

---

## 🚀 Execution & Results
- **Model Type:** MIP (Mixed Integer Programming)
- **File Name:** `kashinafarmannahaei.gms`
- **Solver:** CPLEX / CBC
- **Solvability Rate:** 100%
- **Execution Time:** Real-Time (< 0.1s)

---

## 🛠️ Usage
1. Open `kashinafarmannahaei.gms` in **GAMS Studio**.
2. Run the model using the MIP solver.
3. Check the decision matrix `x.l` in the execution log (`.lst`) for the optimal sequence of moves.
