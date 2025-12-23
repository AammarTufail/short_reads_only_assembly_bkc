echo "Setting up conda environments for short read quality control and multiqc"
# initialize conda for this script
eval "$(conda shell.bash hook)"

# remove previous conda environment if exists
conda env remove -n 01_short_read_qc -y
conda env remove -n 02_multiqc -y

# 01_fastqc and fastp
conda create -n 01_short_read_qc -y
conda activate 01_short_read_qc
# for quality check
conda install bioconda::fastqc -y
# for quality check and trimming
conda install bioconda::fastp -y

echo "--------------------------------------------"

echo "Setting up conda environment for multiqc"
# multiqc
conda create -n 02_multiqc -y
conda activate 02_multiqc
conda install bioconda::multiqc -y