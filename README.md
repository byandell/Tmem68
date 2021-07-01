# Tmem68

`Tmem68` is an R package with data used for mediation analysis.
The data come from <https://github.com/churchill-lab/intermediate>, but have been compressed further using 'tools:resaveRdaFiles'. The software from that package has been updated in <https://github.com/byandell/intermediate>, which uses
these data for examples.

## Installation

You can install `Tmem68` directly from Github using `devtools` package:

```S
    # install.packages("devtools")
    devtools::install_github("byandell/Tmem68")
```

## Example

```
# Liver protein expression dataset
data(Tmem68)
```

## References

Joel M. Chick,	Steven C. Munger,	Petr Simecek,	Edward L. Huttlin,	Kwangbom Choi,	Daniel M. Gatti,	Narayanan Raghupathy,	Karen L. Svenson,	Gary A. Churchill	& Steven P. Gygi (2016) Defining the consequences of genetic variation on a proteome-wide scale, _Nature_ 534: 500-505. [doi:10.1038/nature18270](https://dx.doi.org/10.1038/nature18270)


