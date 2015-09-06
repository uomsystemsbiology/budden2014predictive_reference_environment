### Overview

This is the reference environment for the manuscript ['Predictive modelling of gene expression from transcriptional regulatory elements'](https://dx.doi.org/10.1093/bib/bbu034) (Budden, D. M., Hurley, D. G. & Crampin, E. J. Predictive modelling of gene expression from transcriptional regulatory elements. Brief. Bioinform. bbu034 (2014). doi:10.1093/bib/bbu034.  It executes code to reproduce specific results described in the manuscript.   You can find more information about this research at the [project page here](https://uomsystemsbiology.github.io/publications/budden2014predictive/).  

To find other versions of this reference environment, see Other Links below.  To learn more about reference environments, [see the detailed description here](https://uomsystemsbiology.github.io/reference-environments/).    

### Instructions for use

This version of the reference environment is a Docker container.  To use it, install [Docker](https://www.docker.com/), then do:

```
$ docker pull uomsystemsbiology/budden2014predictive
$ docker run uomsystemsbiology/budden2014predictive /sbin/my_init -- ./run_experiments.sh
$ docker run uomsystemsbiology/budden2014predictive /sbin/my_init -- ./generate_figures.sh
```

This will start the container and execute the script which reproduce the results described in the manuscript.  

### Other links

[Manuscript link](https://dx.doi.org/10.1093/bib/bbu034)

[Project page link](https://uomsystemsbiology.github.io/publications/budden2014predictive/)

[Vagrant-managed virtual machine](https://github.com/uomsystemsbiology/budden2014predictive_reference_environment)

[Bootable ISO](https://dx.doi.org/10.5281/zenodo.30377)

