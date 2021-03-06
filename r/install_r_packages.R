
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
  , "svglite"
  , "rlist"
  , "yaml"
  , "here"
  , "IDPmisc" # utilities for data process
  , "furrr"
  , "tm"
  , "EBImage"
  , "tidymodels" # machine learning
  , "keras"
  , "tfruns"
  , "tfestimators"
  , "tfdatasets"
  , "soulong/bioTools"

  # system process
  , "cliapp" # style R output console
  , "callr" # call R form R
  , "progress" # progress bar in terminal
  , "future" # parreller computing


  # web process
  , "httr"
  , "rvest"
  , "RCurl"

  #  bioinformatic tools
  , "rtracklayer" # genomics data manipulation
  , "GenomicFeatures"
  , "Biostrings"
  , "SummarizedExperiment"
  , "DESeq2"
  , "edgeR"
  , "limma"
  , "sva"
  , "apeglm"
  , "ashr"
  , "tximport"
  , "DEGreport" # reporting tools for DEG analysis
  , "clusterProfiler"
  , "ReactomePA"
  , "Seurat"
  , "satijalab/seurat-wrappers"
  , "slingshot" # pseudotime
  , "batchelor" # batch remove
  # , "CEMiTool" # co-expression analysis
  # , "PCAtools" # PCA analysis
  , "factoextra"
  , "eulerr"
  , "AUCell" # scenic tf analysis
  , "RcisTarget" # scenic tf analysis
  , "GENIE3" # scenic tf analysis
  , "aertslab/SCENIC" # scenic tf analysis
  , "mojaveazure/loomR" # loom file
  , "dorothea" # TF regulon DB
  , "viper" # regulation analysis
  , "soGGi"
  , "ChIPseeker"
  , "ChIPQC"
  , "Rsubread"
  
  #  bioinformatic anntation
  , "AnnotationHub"
  , "biomaRt"
  , "org.Hs.eg.db"
  , "org.Mm.eg.db"
  , "TxDb.Hsapiens.UCSC.hg38.knownGene"
  , "TxDb.Mmusculus.UCSC.mm10.knownGene"
  , "BSgenome.Hsapiens.UCSC.hg38"
  , "BSgenome.Mmusculus.UCSC.mm10"

  # plot
  , "RColorBrewer" # color palettes
  , "gridExtra"
  , "patchwork" # plots composer
  , "pathview"
  , "plotly"
  , "GGally"
  , "ggforce"
  , "concaveman"
  , "ggfortify"
  , "igraph"
  , "network"
  , "sna"
  , "networkD3"
  , "ggraph"
  , "tidygraph"
  , "ggrepel"
  , "ggridges"
  , "ggstatsplot"
  , "ggbeeswarm"
  , "cowplot"
  , "ggpubr"
  , "corrplot" # correlation
  , "dendextend" # complex dendrogram
  , "circlize" # circular visualization
  , "ComplexHeatmap"
  , "pheatmap"
  , "heatmaply"
  , "wordcloud2"# shiny ggplot2
  , "esquisse"
  , "extrafont"

  # shiny
  , "shiny"
  , "shinydashboard"
  , "shinyjs"
  , "V8"
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
extrafont::fo

# re-install failed packages
pkgs_uninstalled <- setdiff(pkgs, rownames(installed.packages()))
BiocManager::install(pkgs_uninstalled)


# create KEGG.db
# devtools::install_github("YuLab-SMU/createKEGGdb")
# createKEGGdb::create_kegg_db(c("hsa", "mmu"))
# devtools::install_local("./KEGG.db_1.0.tar.gz")



