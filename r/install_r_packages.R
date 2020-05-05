
# install BiocManager (package installer)
if(!requireNamespace("BiocManager")) install.packages("BiocManager")

# packages
pkgs <- c(
  # common useful packages
  "tidyverse"
  , "readxl"
  , "writexl"
  , "devtools"
  , "jsonlite"
  , "hdf5r"
  , "RSQLite"
  , "rlist"
  , "yaml"
  , "IDPmisc" # utilities for data process
  , "batchelor" # batch remove
  , "tm"
  , "caret" # machine learning
  
  # system process
  , "cliapp" # style R output console
  , "callr" # call R form R
  , "progress" # progress bar in terminal
  , "future" # pareller computing
  
  # web process
  , "httr"
  , "rvest"
  , "RCurl"

  #  bioinformatic tools
  , "rtracklayer"
  , "GenomicFeatures"
  , "Biostrings"
  , "SummarizedExperiment"
  , "DESeq2"
  , "edgeR"
  , "limma"
  , "tximport"
  , "DEGreport" # reporting tools for DEG analysis
  , "clusterProfiler"
  , "Seurat"
  , "slingshot" # pseudotime
  
  #  bioinformatic anntation
  , "AnnotationHub"
  , "biomaRt"
  , "BSgenome"
  , "org.Hs.eg.db"
  , "org.Mm.eg.db"
  , "TxDb.Hsapiens.UCSC.hg38.knownGene"
  , "TxDb.Mmusculus.UCSC.mm10.knownGene"
  , "ReactomePA"

  # plot
  , "RColorBrewer" # color palettes
  , "gridExtra"
  , "patchwork" # plots composer
  , "pathview"
  , "plotly"
  , "GGally"
  , "ggforce"
  , "ggfortify"
  , "igraph"
  , "intergraph"
  , "network"
  , "sna"
  , "networkD3"
  , "ggraph"
  , "tidygraph"
  , "ggrepel"
  , "ggridges"
  , "ggstatsplot"
  , "cowplot"
  , "ggpubr"
  , "corrplot" # correlation
  , "dendextend" # complex dendrogram
  , "circlize" # circular visualization
  , "ComplexHeatmap"
  , "wordcloud2"
  
  # shiny
  , "shiny"
  , "shinydashboard"
  , "bs4Dash" # more elegand dashboard based on bootstrap 4
  , "shinyjs"
  , "shinyalert"
  , "shinyBS"
  , "shinythemes"
  , "shinyWidgets"
  , "htmlwidgets"
  , "htmltools"
  , "DT"
  , "rhandsontable"
  
)


# mirror
options(repos=c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))
options(BioC_mirror="https://mirrors.tuna.tsinghua.edu.cn/bioconductor")

# install packages
BiocManager::install(pkgs)



# create KEGG.db
devtools::install_github("YuLab-SMU/createKEGGdb")
createKEGGdb::create_kegg_db(c("hsa", "mmu"))
devtools::install_local("./KEGG.db_1.0.tar.gz")



