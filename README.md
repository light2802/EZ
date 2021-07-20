
<!-- README.md is generated from README.Rmd. Please edit that file -->

# EZ

<!-- badges: start -->
<!-- badges: end -->

My first R package

## Installation

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("light2802/EZ")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(EZ)
df <- data.frame(names= c("Mazda RX4",  "Mazda RX4 Wag",    "Datsun 710",   "Hornet 4 Drive",   "Hornet Sportabout",    "Valiant",  "Duster 360",   "Merc 240D",    "Merc 230", "Merc 280", "Merc 280C",    "Merc 450SE",   "Merc 450SL",   "Merc 450SLC",  "Cadillac Fleetwood"),
                          score = c(21, 21, 22.8,   21.4,   18.7,   18.1,   14.3,   24.4,   22.8,   19.2,   17.8,   16.4,   17.3,   15.2,   10.4) )
df
#>                 names score
#> 1           Mazda RX4  21.0
#> 2       Mazda RX4 Wag  21.0
#> 3          Datsun 710  22.8
#> 4      Hornet 4 Drive  21.4
#> 5   Hornet Sportabout  18.7
#> 6             Valiant  18.1
#> 7          Duster 360  14.3
#> 8           Merc 240D  24.4
#> 9            Merc 230  22.8
#> 10           Merc 280  19.2
#> 11          Merc 280C  17.8
#> 12         Merc 450SE  16.4
#> 13         Merc 450SL  17.3
#> 14        Merc 450SLC  15.2
#> 15 Cadillac Fleetwood  10.4
clean_names(df)
#> function (x, df1, df2, ncp, log = FALSE) 
#> {
#>     if (missing(ncp)) 
#>         .Call(C_df, x, df1, df2, log)
#>     else .Call(C_dnf, x, df1, df2, ncp, log)
#> }
#> <bytecode: 0x0000000019d54e78>
#> <environment: namespace:stats>
```
