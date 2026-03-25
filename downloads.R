# 1. Create the data directory
dir.create("data/raw_reads", recursive = TRUE)

# 2. Define the download URL
yeast_url <- "ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR153/001/ERR1539001/ERR1539001.fastq.gz"

# 3. Download the file
# method="wget" is used for robustness with larger sequencing files
download.file(url = yeast_url, 
              destfile = "data/raw_reads/ERR1539001.fastq.gz", 
              method = "wget")

# 4. Verify the file is present
list.files("data/raw_reads/")

