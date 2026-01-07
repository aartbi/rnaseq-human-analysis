Human RNA-seq Analysis Pipeline (Alignment-based)
Overview
-This repository contains an end-to-end RNA-seq analysis pipeline implemented on Linux, following best practices used in production genomics workflows.
-The pipeline processes paired-end human RNA-seq data from raw sequencing reads to gene-level count matrices suitable for downstream differential expression analysis.

Objectives
-Perform quality control and preprocessing of RNA-seq reads
-Align reads to the human reference genome (GRCh38)
-Quantify gene-level expression using annotation-aware methods
-Organize the workflow in a reproducible, industry-standard manner

Dataset
-Source: NCBI SRA (public RNA-seq data)
-Organism: Homo sapiens
-Samples: SRR1039508, SRR1039509, SRR1039510, SRR1039511
-Library type: Paired-end
-Reference: GRCh38 (GENCODE v44)

Tools & Technologies
-Linux / Bash
-Conda environments
-FastQC, MultiQC
-Trim Galore
-HISAT2
-SAMtools
-featureCounts (Subread)
-R (DESeq2-ready outputs)

Workflow Summary
-Raw data retrieval from SRA
-Read quality assessment (FastQC, MultiQC)
-Adapter and quality trimming
-Reference genome indexing (HISAT2)
-Paired-end read alignment
-BAM sorting and indexing
-Gene-level quantification using GENCODE annotation

Repository Structure
rnaseq-human-analysis/
├── README.md
├── .gitignore
├── scripts/
│   └── rnaseq_pipeline.sh
├── metadata/
│   └── samples.tsv
├── notes/
│   └── rnaseq_notes.md
└── results/
    └── gene_counts_preview.txt

Results
-A full gene count matrix (~41 MB) was generated using featureCounts.
-Large output files (FASTQ, BAM, full count matrices) are intentionally excluded from version control.
-A small preview file is provided to demonstrate output format.
-All results can be reproduced using the pipeline script.

Reproducibility
-All commands are documented in scripts/
-Reference genome and annotation versions are explicitly specified
-Pipeline is portable to cloud or HPC environments

Skills Demonstrated
-RNA-seq alignment-based workflows
-NGS data processing on Linux
-Genomic reference and annotation handling
-Reproducible pipeline design
-Responsible data management

#Notes
-Learning notes and observations are documented in notes/rnaseq_notes.md.
