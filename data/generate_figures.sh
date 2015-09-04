#!/bin/sh

# Set up logfile
log=/home/sbl/run_experiments.log

echo;echo;echo
echo "### Overview
This shell script is part of the reference environment for the manuscript ['Predictive modelling of gene expression from transcriptional regulatory elements'](http://dx.doi.org/10.1093/bib/bbu034) (Budden, D. M., Hurley, D. G. & Crampin, E. J. Predictive modelling of gene expression from transcriptional regulatory elements. Brief. Bioinform. bbu034 (2014). doi:10.1093/bib/bbu034.  It executes code to reproduce specific results described in the manuscript.   You can find more information about this research at the [project page here](http://uomsystemsbiology.github.io/publications/budden2014predictive/).  

To find other versions of this reference environment, see Other Links below.  To learn more about reference environments, [see the detailed description here](http://uomsystemsbiology.github.io/reference-environments/).  

### Instructions for use

This shell script regenerates the figures shown in the manuscript from the data, and writes 
output to /home/sbl/budden2014predictive/output.

### Other links

[Manuscript link](http://dx.doi.org/10.1093/bib/bbu034)

[Project page link](http://uomsystemsbiology.github.io/publications/budden2014predictive/)

[Docker container](https://hub.docker.com/r/uomsystemsbiology/budden2014predictive/)

[Bootable ISO](https://dx.doi.org/10.5281/zenodo.30377)

[Vagrant-managed virtual machine](https://github.com/uomsystemsbiology/budden2014predictive_reference_environment)"
echo

# Change to project directory
cd /home/sbl/budden2014predictive

# Delete all figures from output folder
rm -f ./output/figures/*

# Generate all figures
Rscript generate.all.figures.R

echo Generated figures - output is written to /home/sbl/budden2014predictive/output/figures | tee -a $log
cd /home/sbl/budden2014predictive/output/figures
echo;echo
$SHELL