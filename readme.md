# Prompt

Act as a bioinformatcian, I would like to do the follwoing task please give me a script to these things:
1. copy the short reads .fastq.gz from this path /home/codanics/03_wgs_assembly/hybrid_genome_assembly_guide_bkc/01_raw_reads/short_reads and create a new dir here ./ called 00_raw_reads
2. create the following directories ./:
    - 01_qc_before_processing
    - 02_process_reads
    - 03_qc_after_processing

# Short Reads Only Assembly

## Setup

Run the setup script to create directories and copy raw reads:

```bash
chmod +x setup_directories.sh
./setup_directories.sh
```

## Directory Structure

- `00_raw_reads/` - Raw short reads (.fastq.gz)
- `01_qc_before_processing/` - QC results before processing
- `02_process_reads/` - Processed/trimmed reads
- `03_qc_after_processing/` - QC results after processing