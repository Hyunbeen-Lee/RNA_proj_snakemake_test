rule all:
    input:
        "test-prot-tbl.txt",
        "tr-infernal-tblout.txt"

rule hmmsearch_profile:
    input:
        fasta="NODE_1517784_length_305_cov_1.fasta",
        profile="new_prokaryote_PTC.hmm",
    output:
        # only one of these is required
        tblout="test-prot-tbl.txt", # save parseable table of per-sequence hits to file <f>
        #domtblout="test-prot-domtbl.txt", # save parseable table of per-domain hits to file <f>
        #alignment_hits="test-prot-alignment-hits.txt", # Save a multiple alignment of all significant hits (those satisfying inclusion thresholds) to the file <f>
        #outfile="test-prot-out.txt", # Direct the main human-readable output to a file <f> instead of the default stdout.
    log:
        "logs/hmmsearch.log"
    params:
        evalue_threshold=0.00001,
        # if bitscore threshold provided, hmmsearch will use that instead
        #score_threshold=50,
        extra="",
    threads: 4
    wrapper:
        "https://github.com/Hyunbeen-Lee/RNA_proj_snakemake_test/raw/main/hmmer"

rule cmscan_profile:
    input:
        fasta="NODE_1517784_length_305_cov_1.fasta",
        profile="new_prokaryote_PTC.cm"
    output:
        tblout="tr-infernal-tblout.txt",
    log:
        "logs/cmscan.log"
    params:
        evalue_threshold=10, # In the per-target output, report target sequences with an E-value of <= <x>. default=10.0 (on average, ~10 false positives reported per query)
        extra= "",
        #score_threshold=50, # Instead of thresholding per-CM output on E-value, report target sequences with a bit score of >= <x>.
    threads: 4
    wrapper:
        "https://github.com/Hyunbeen-Lee/RNA_proj_snakemake_test/raw/main/INFERNAL"
