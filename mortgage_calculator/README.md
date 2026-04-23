# Mortgage Calcalator

This project was copied from a dedicated repo. The original repo had just two
commits, both dated March 11, 2020. We're consolidating a bunch of micro-repos
for tiny one-off tools into a single repo. This tool was not tested at the
time of this migration.

## Commit 1:
```
calculator: initial implementation
- Compound interest monthly
- Account for
  - accumulated equity in the mortgaged property
  - mortgage interest tax deduction
  - the opportunity to invest income not spent on mortgage
  - capital gains tax when investments are liquidated
- Estimate for time horizons that don't match the loan duration
- Produce a table (text) of loan options sorted by net assets at
  the end of the time period.

Known Issues:
- Terrible UI: adjust inputs by modifying code variables
- Overpays the final month of the mortgage
```

## Commit 2:
```
calculator: improve usability
- read scenarios from a command-line-specified config file
- show usage help when the command line is wrong
- improve code organization (e.g. no global vars, etc)
```
