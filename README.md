# Human RNA-seq Analysis Pipeline (Alignment-based)

---

## Overview

This repository contains an **end-to-end Human RNA-seq analysis pipeline** implemented on **Linux**, following **industry-standard and production-grade genomics workflows**.

The pipeline processes **paired-end human RNA-seq data** starting from raw sequencing reads and produces **gene-level count matrices**, suitable for downstream **differential expression analysis**.

---

## Objectives

- Perform quality control and preprocessing of RNA-seq reads  
- Align reads to the human reference genome (**GRCh38**)  
- Quantify gene-level expression using annotation-aware methods  
- Organize the workflow in a **reproducible and scalable** manner  

---

## Dataset

- **Source:** NCBI SRA (public RNA-seq data)  
- **Organism:** *Homo sapiens*  
- **Samples:**  
  - SRR1039508  
  - SRR1039509  
  - SRR1039510  
  - SRR1039511  
- **Library Type:** Paired-end  
- **Reference Genome:** GRCh38 (GENCODE v44)  

---

## Tools & Technologies

- Linux / Bash  
- Conda environments  
- FastQC  
- MultiQC  
- Trim Galore  
- HISAT2  
- SAMtools  
- featureCounts (Subread)  
- R (DESeq2-ready outputs)  

---

## Workflow Summary

1. Raw data retrieval from SRA  
2. Read quality assessment (FastQC, MultiQC)  
3. Adapter and quality trimming  
4. Reference genome indexing (HISAT2)  
5. Paired-end read alignment  
6. BAM sorting and indexing  
7. Gene-level quantification using GENCODE annotation  

---

## Repository Structure
rnaseq-human-analysis/

├── README.md

├── scripts/

│ └── rnaseq_pipeline.sh

├── metadata/

│ └── samples.tsv

├── notes/

│ └── rnaseq_notes.md

└── results/

└── gene_counts_preview.txt

---

## Results

- A full **gene count matrix (~41 MB)** was generated using **featureCounts**  
- Large output files (FASTQ, BAM, full count matrices) are intentionally **excluded from version control**  
- A **small preview file** is included to demonstrate output format  
- All results are **fully reproducible** using the provided pipeline script  

---

## Reproducibility

- All commands are documented in the `scripts/` directory  
- Reference genome and annotation versions are explicitly specified  
- Pipeline can be easily adapted for **HPC or cloud-based environments**  

---

## Skills Demonstrated

- RNA-seq alignment-based analysis workflows  
- NGS data processing on Linux  
- Genomic reference and annotation handling  
- Reproducible pipeline design  
- Responsible and scalable data management  

---

## 📝 Notes

- Learning notes, observations, and practical insights are documented in the `notes/` directory  

---

*This repository reflects industry-level RNA-seq analysis practices used in real-world genomics pipelines.*
