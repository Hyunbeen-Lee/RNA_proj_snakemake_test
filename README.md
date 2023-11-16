**Snakemake pipeline workflow of HMMER and INFERNAL.**


**Required Inputs**: FASTA sequence data, Covariance model (CM) of query sequence, Hidden Markov Model (HMM) of query sequence

**Snakefile** - command to run HMMER and INFERNAL on given inputs. Change statistical paramter thresholds (e-value or bit-score) and input files

**HMMER** - edit wrapper.py to change configurations like sensitivity filters
**INFERNAL** - edit wrapper.py to change configurations like sensitivity filters

**Outputs**: test-prot-tbl.txt (HMMER results), tr_infernal-tblout.txt (INFERNAL results)

**Future improvements/experiments:**


Current version runs HMMER first, then INFERNAL. Check if both HMMER and INFERNAL can operate in parallel.

Current version generates two outputs (test-prot-tbl.txt and tr-infernal-tblout.txt) find a method that parases through all sequences and merge them into one output file that shows E-values and/or bit scores from both HMMER and INFERNAL.

Generate plot based on bitscore from HMMER and INFERNAL.
