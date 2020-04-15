
packages <- c(
  ## tools
  "future", "BiocParallel", "parallel", "gamlss", "rlang", "httr", "RCurl", "xml2", "devtools", 
  "RSQLite", "jsonlite", "yaml",
  
  ## Data manipulation
  "tidyverse", "readxl", "writexl", "rslit", "tidyverse", "lubridate", "broom", "IDPmisc",
  
  ##  Bioinformatics
  "clusterExperiment", "SingleCellExperiment", "clusterProfiler", "tximport", "DESeq2", "DEGreport", 
  "edgeR", "Seurat", "ChIPseeker", "batchelor", "DropletUtils", "Biostrings", "rtracklayer", "slingshot",
  
  ## Annotation of genomic data
  "AnnotationHub", "biomaRt", "GO.db", "org.Ms.eg.db", "org.Hs.eg.db", "msigdbr", 
  "TxDb.Hsapiens.UCSC.hg38.knownGene", "TxDb.Mmusculus.UCSC.mm10.knownGene", "BSgenome",
  
  ## Data visualization
  "circlize", "dendextend", "patchwork", "ComplexHeatmap", "pheatmap", "corrplot", "cowplot", "ggpubr", 
  "eulerr", "ggfortify", "ggforce", "ggplotify", "ggrepel", "ggraph", "ggridges", "ggdendro", "RColorBrewer", 
  "heatmaply", "networkD3", "pathview", "KEGGgraph", "plotly", "UpSetR", "ggstatsplot",
  
  ## Shiny webpage
  "Shiny", "shinyalert", "shinyBS", "shinyjs", "shinydashboard", "shinythemes", "shinyWidgets", "DT", 
  "htmlwidgets", "bs4Dash", "shinyFeedback"
  
)


options("repos" = c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))
options(BioC_mirror="https://mirrors.tuna.tsinghua.edu.cn/bioconductor")


# install Bioconductor
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager", update = TRUE, ask = FALSE)

# install Packages
BiocManager::install(pkgs = packages, update = TRUE, ask = FALSE)


# Failded Packages
print("Failed installment : ")
print(paste0(setdiff(packages, rownames(installed.packages())),
             collapse = ", "))
