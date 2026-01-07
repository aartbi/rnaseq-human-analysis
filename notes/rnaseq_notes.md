# RNA-seq Learning Notes

## Key Concepts
- RNA-seq measures gene expression by sequencing RNA transcripts
- Paired-end reads improve alignment accuracy

## Why HISAT2
- Fast splice-aware aligner
- Suitable for human RNA-seq

## Why featureCounts
- Efficient gene-level quantification
- Uses exon overlap

## Important QC Metrics
- Alignment rate > 80% is acceptable
- Assigned reads ~70–80% is normal

## Things Learned
- Importance of matching genome and annotation versions
- Why BAM files must be sorted and indexed
