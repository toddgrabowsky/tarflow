{tarflow}
================

An opinionated lightweight template for smooth
{[targets](https://github.com/wlandau/targets)} flows. Inspired by
\[Mile McBain’s\] {[dflow]()} package.

## Installation

``` r
remotes::install_github("toddgrabowsky/tarflow")
```

## Usage

{tarflow} has an embedded RStudio project template that you can use to
startup a {tarflow} project, but you can also create the project
scaffolding in an existing RStudio project using:

`tarflow::use_tarflow()`

``` r
├── _targets.R
├── R/
├──── functions.R
├── data/
```
