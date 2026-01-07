#!/bin/bash
# Human RNA-seq analysis pipeline
# Reference: GRCh38 (GENCODE v44)

# Quality Control
fastqc raw_data/*.fastq -o qc/
multiqc qc/ -o qc/

# Trimming
trim_galore raw_data/*.fastq -o trimmed/

# Alignment and BAM processing
for srr in SRR1039508 SRR1039509 SRR1039510 SRR1039511
do
  hisat2 -p 4 \
    -x reference/GRCh38_chr_index \
    -1 trimmed/${srr}_1_val_1.fq \
    -2 trimmed/${srr}_2_val_2.fq \
  | samtools view -bS - \
  | samtools sort -o aligned/${srr}_sorted.bam

  samtools index aligned/${srr}_sorted.bam
done

# Gene quantification
featureCounts -T 4 -p -t exon -g gene_id \
  -a reference/gencode.v44.annotation.gtf \
  -o counts/gene_counts.txt aligned/*_sorted.bam
