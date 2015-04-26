INTRODUCTION
============

This repo contains a tidy dataset generated from the 'Human Activity Recognition Using Smartphones Dataset' by Jorge L. Reyes-Ortiz et. al.

The information regarding the original dataset can be found on UCI_HAR_Dataset/Readme.txt

The new dataset
===============

The new dataset genenerated consist of the average of some of the variables measured, for each of the 30 subjects and for each of the 6 activities. The explanation of the variables used and the transformations performed can be found on the codebook (CodeBook.md file). The dataset generated is in the file 'aggregated_averages.txt'

The analysis script
===================

The R script provided (run_analysis.R) generates the new dataset from the original data, located on the UCI_HAR_Dataset, and writes it to a file named 'aggregated_averages.txt'. It merges the train and test datasets, extract only the variables related to means or standard deviations, labels the columns and activity names and generates a new tidy dataset with the average of each extracted variable, grouped by subject and activity.

Dependencies: This script makes use of the readr and data.table libraries.

