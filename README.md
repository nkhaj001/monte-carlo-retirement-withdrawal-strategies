# Retire Broke or Die with Lots of Money - Withdrawing Strategies

A MATLAB-based Monte Carlo simulation modeling the long-term sustainability 
of retirement funds across varying annual withdrawal rates, using 110 years 
of U.S. market data.

## Overview

This project simulates retirement fund outcomes for an individual retiring 
at age 64, the average retirement age in California, with a projected 
lifespan of 100 years, resulting in a 36-year simulation horizon. By sampling 
from over a century of historical market returns, the model generates 
probability distributions of fund survival and failure across withdrawal 
rates ranging from 4% to 8%, providing data-driven guidance on sustainable 
retirement strategies.

## Methodology

- **Data collection:** Compiled 110 years of annual return data across four 
  major market indices, each stored as a separate dataset.
- **Simulation design:** Applied Monte Carlo sampling to propagate uncertainty 
  forward across thousands of simulated retirement trajectories.
- **Analysis:** Tracked fund success and failure rates at each year of the 
  simulation across five withdrawal rate scenarios (4%, 5%, 6%, 7%, 8%).
- **Metric:** Identified the year at which success and failure rates intersect 
  as the key threshold for fund sustainability.

## Datasets

- `S&P 500 Index.xlsx` — S&P 500 annual returns (96 years)
- `NASDAQ.xlsx` — NASDAQ annual returns (52 years)
- `Dow Jones.xlsx` — Dow Jones annual returns (109 years)
- `Inflation.xlsx` — inflation data (110 years)

## Tools & Libraries

- MATLAB — simulation engine and data analysis

## Key Findings

- **4%–6% withdrawal rates:** Success and failure rates do not intersect 
  within the 36-year simulation horizon, suggesting these are sustainable 
  strategies for a 64–100 year retirement window.
- **7% withdrawal rate:** Success and failure rates intersect between years 
  24–26, indicating meaningful risk of fund depletion in the final decade 
  of retirement.
- **8% withdrawal rate:** Intersection occurs between years 18–20, signaling 
  high risk of fund exhaustion well before the end of the simulation horizon.

## Files

- `Project1_20240715.m` — MATLAB simulation code
- `S&P 500 Index.xlsx` — S&P 500 dataset
- `NASDAQ.xlsx` — NASDAQ dataset
- `Dow Jones.xlsx` — Dow Jones dataset
- `Inflation.xlsx` — inflation dataset

## Code Documentation
For instructions on how to run the simulation and modify parameters for 
your own analysis, see `README.m`.

## Context

This project was completed as part of graduate coursework in Computational 
Applied Mathematics at California State University, Fullerton (Summer 2024).
