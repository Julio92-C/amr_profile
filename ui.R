
library(shiny)
library(plotly)

shinyUI(
  
  
  navbarPage(title = "",
             
             tabPanel("Research Project"),
             tabPanel("Reads QC",
                      tags$head(
                        tags$style(HTML(
                          "h2 {
                          color: red;
                        }
                        ol li {
                        padding: 6px 12px;
                        }
                        
                        ul li {
                        padding: 6px 12px;
                        }
                        
                        
                        }
                        "
                        )),
                      ),
                      
                      tabsetPanel(type = "tab",
                                  tabPanel("Description", htmlOutput(outputId = "qc_analysis"),
                                           h2("Quality Control  (QC) of reads:"),
                                           tags$ol(style = "font-size:24px",
                                                   tags$li(tags$strong("Porechop:"), "adapter trimmer for Oxford Nanopore reads in Python."),
                                                   tags$li(tags$strong("NanoFilt:"), "Streaming script for filtering a fastq file based on a minimum
                                                        length, minimum quality cut-off, minimum and maximum average GC."),
                                                   tags$li(tags$strong("Seqkit:"), " A cross-platform and ultrafast toolkit for FASTA/Q file manipulation
                                                        in Golang (GO) programming language."),
                                                   tags$li(tags$strong("NanoPlot:"), "NanoPlot: creating many relevant plots derived from reads (fastq),
                                                        alignments (bam) and albacore summary files."),
                                                   tags$li(tags$strong("NanoComp:"), "comparing multiple runs on read length and quality based on reads (fastq),
                                                        alignments (bam) or albacore summary files."),
                                           ),
                                  ),
                                  tabPanel("Report", htmlOutput(outputId = "qc_report"),
                                           tags$iframe(seamless="seamless", 
                                                       src= "http://127.0.0.1:5000/Guppy-basecalling-test-qc",
                                                       width="100%", 
                                                       height= 850),
                                  )
                      )
                      
             ),
             tabPanel("Taxonomy Classification",
                      tabsetPanel(type="tab",
                                  tabPanel("Description", htmlOutput(outputId="taxonomy_desciption"),
                                           h2("Read Taxonomy Classification"),
                                           
                                           
                                           tags$ul(style = "font-size:24px",
                                                   tags$li("Kraken2: fast taxonomic clasifier using in-memory k-mer
                                search of metagenomics reads against a database built from multiples genomes."),
                                                   tags$li("Krona: GUI to interactively explore metagenomes and more from a web browser.")
                                           )
                                  ),
                                  tabPanel(
                                    "Krona Results", htmlOutput(outputId="krona_results"),
                                    tags$iframe(seamless="seamless", 
                                                src= "http://127.0.0.1:5000/krona_taxonomy_class",
                                                width="100%", 
                                                height= 920),
                                    
                                    
                                    
                                  )
                      )
                      
             ), 
             
             
             
             
             tabPanel("Relative Abundance",
                      sidebarPanel(
                        fileInput('file2', 'Choose CSV File',
                                  accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv')),
                        tags$hr(),
                        checkboxInput('header', 'Header', TRUE),
                        radioButtons('sep', 'Separator',
                                     c(Comma=',',
                                       Semicolon=';',
                                       Tab='\t'),
                                     'Comma'),
                        radioButtons('quote', 'Quote',
                                     c(None='',
                                       'Double Quote'='"',
                                       'Single Quote'="'"),
                                     'Double Quote'),
                        sliderInput(inputId = "num2", 
                                    label = "Choose a number of row", 
                                    value = 10, min = 1, max = 100),
                        sliderInput(inputId = "filter",
                                    label="Filter data sets", 
                                    value = 0.0022, min = 0, max = 0.01),
                        sliderInput(inputId = "cell_width",
                                    label = "Cell width",
                                    value = 80, min = 40, max=150),
                        sliderInput(inputId = "cell_height",
                                    label = "Cell height",
                                    value = 11, min = 1, max=40),
                        
                      ),
                      mainPanel(
                        tabsetPanel(type = "tab",
                                    tabPanel("Description", htmlOutput(outputId="abundance_desciption"),
                                             h2("Relative Abundance:"),
                                             tags$ul(style = "font-size:20px",
                                                     tags$li("Braken: (Bayesian Reestimation of Abundance with KrakEN) is a highly
                                                       accurate statistical method that computes the abundance of species in
                                                       DNA sequences from a metagenomics sample."),
                                                     tags$li("ggplot2: Packages writing in R for Elegant Graphics for Data Analysis."),
                                                     tags$li("pHeatmap: A function in R to draw clustered heatmaps where one has better control over some graphical parameters
                                                       such as cell size, etc.")
                                             )
                                             
                                    ),
                                    tabPanel("Table", DT::dataTableOutput(outputId = "mytable2")),
                                    tabPanel("Summary", verbatimTextOutput(outputId = "abc_stats")),
                                    tabPanel("Relative Abundance", plotOutput(outputId = "abc_bar_plot", height = 800)),
                                    tabPanel("Heatmap", plotOutput(outputId = "heatmap_plot", height = 800))
                        )
                        
                      )
                      
             ),
             tabPanel("AMR QC Analysis",
                      sidebarPanel(
                        fileInput('file1', 'Choose CSV File',
                                  accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv')),
                        tags$hr(),
                        checkboxInput('header', 'Header', TRUE),
                        radioButtons('sep', 'Separator',
                                     c(Comma=',',
                                       Semicolon=';',
                                       Tab='\t'),
                                     'Comma'),
                        radioButtons('quote', 'Quote',
                                     c(None='',
                                       'Double Quote'='"',
                                       'Single Quote'="'"),
                                     'Double Quote'),
                        sliderInput(inputId = "num", 
                                    label = "Choose a number of row", 
                                    value = 10, min = 1, max = 100),
                        #sliderInput(inputId = "accuracy", label = "Accuracy", value=90, min=70, max=100),
                        #sliderInput(inputId = "identity", label = "Identity", value=90, min=70, max=100),
                      ),
                      mainPanel(
                        # Output: Tabset w/ plot, summary, and table ----
                        tabsetPanel(type = "tab",
                                    tabPanel("Description", htmlOutput(outputId = "amr_description"),
                                             h3("ARMA alignment for pathogen identification and resistance gene detection"),
                                             tags$ul(
                                               tags$li("The ONT ‘What’s in my pot?’ (WIMP)1 Metrichor application 
                                                       identifies the pathogen in real-time, using a reference database and centrifuge. "),
                                               tags$li("Metrichor’s Antimicrobial Resistance Mapping Application (ARMA)2 
                                                         for real-time detection of antibiotic resistance genes.")
                                             )
                                             
                                    ),
                                    tabPanel("Table", DT::dataTableOutput(outputId = "mytable")),
                                    tabPanel("Summary", verbatimTextOutput(outputId = "stats")),
                                    tabPanel("Plot", plotlyOutput(outputId = "amra_stats", height = 800)),
                                    tabPanel("category vs model", plotOutput(outputId = "category_vs_model", height = 800)),
                                    tabPanel("Species vs AMR", plotOutput(outputId = "dot_plot", height = 800)),
                                    tabPanel("Model vs AMR", plotlyOutput(outputId = "model_vs_amr", height = 800))
                        )
                        
                      )
                      
             ),
             tabPanel("Genome Assembly",
                      h3("Metagenomes genomes assembly"),
                      tags$ol(
                        tags$li("Extracted reads classified by", tags$strong("Kraken2"), "with higher relative abudance."),
                        tags$li("Downloaded the corresponding reference genomes from", tags$strong("NCBI"), "database."),
                        tags$li("Performed the assembled with", tags$strong("Pomoxis"), "(mini_assemble script) using the
                           reference-guided consensus approach instead of de novo assembly."),
                        tags$li("Polished the draft assebly with the tool", tags$strong("Medaka.")),
                        tags$li("Assessed the consensus sequence with the programs", tags$strong("Pomoxis"),
                                "(assess_assembly script) and", tags$strong("Quast"), "."),
                        tags$li(tags$strong("CheckM:"), "to assess the quality of microbial
                            genomes recovered from isolates, single cells, and metagenomes.")
                      )
             ),
             tabPanel("Genome Annotation",
                      h3("Meta-genome Annotation"),
                      tags$ul(
                        tags$li("Re-classified the resultant consensus-sequece with CAT/BAT tools. The core algorithm
                         of both programs involves gene calling, mapping of predicted ORFs against the nr protein database,
                         and voting-based classification of the entire contig / MAG based on classification of the individual ORFs."),
                        tags$li("Run BUSCO for assessing genome assembly and annotation completeness."),
                        tags$li("Prokka: Rapid prokaryotic genome annotation."),
                        tags$li("Run the BLAST Ring Image Generator (BRIG). It is a cross-platform desktop application written in Java 1.6.
                                 It uses CGView for image rendering and the Basic Local Alignment Search Tool (BLAST) for genome comparisons.")
                      )
                      
             ),
             tabPanel("Pangenomes", 
                      h3("Why a pangenomes?"),
                      tags$ul(
                        tags$li("A single reference genome cannot represent the diversity within a given species."),
                        tags$li("Advances in sequencing technology and lowered costs has made generating a pangenome
                                a feasible goal for many genome research groups."),
                      ),
                      h3("Features of a pangenome (genes as unit)"),
                      tags$ul(
                        tags$li(tags$strong("Core genes:"), "Made up of genes present it all accessions in the pangenome."),
                        tags$li(tags$strong("Accessory genes:"), "The genes that are present in some, but not all, accession in the pangenome."),
                        tags$li(tags$strong("Unique genes:"), "lineage-specific genes; found only within a particular accession")
                      )
             )
  )
)