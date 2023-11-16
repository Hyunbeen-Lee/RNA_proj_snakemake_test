Snakemake pipeline workflow of HMMER and INFERNAL.

Required Inputs: FASTA sequence data, Covariance model (CM) of query sequence, Hidden Markov Model (HMM) of query sequence

Snakefile - command to run HMMER and INFERNAL on given inputs. Change statistical paramter thresholds (e-value or bit-score) and input files

HMMER - edit wrapper.py to change configurations like sensitivity filters
INFERNAL - edit wrapper.py to change configurations like sensitivity filters
