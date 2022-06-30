
library(shinydashboard)
library(plotly)

dashboardPage(
  dashboardHeader(title = "Research Project"),
  ## Sidebar content
  dashboardSidebar(
    sidebarMenu(
      menuItem("Description", tabName = "Description", icon = icon("bacteria")),
      menuItem("Reads QC", tabName = "Reads_QC", icon = icon("angle-right")),
      menuItem("Taxon Classification", tabName = "Taxonomy", icon = icon("angle-right")),
      menuItem("Relative Abundance", tabName = "Abundance", icon = icon("angle-right")),
      menuItem("AMR QC Analysis", tabName = "AMR", icon = icon("angle-right")),
      menuItem("Genome Assembly", tabName = "Assembly", icon = icon("angle-right")),
      menuItem("Genome Annotation", tabName = "Annotation", icon = icon("angle-right")),
      menuItem("Pangenomes", tabName = "Pangenomes", icon = icon("angle-right"))
      
      
    )
  ),
  
  ## Body content
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "Description",
              fluidPage(
                tags$head(
                  tags$style(HTML(
                    "
                                    .project_description {
                                    color: black;
                                    font-size: 24px;
                                    margin-left: 10%;
                                    }

                                    .introduction {
                                    font-size: 18px;
                                    color: black;
                                    width: 80%;
                                    margin: auto;
                                    text-align: justify;
                                    line-height: 1.6;
                                    padding-bottom: 5px;
                                    }

                                    #research_project {
                                    /*background: darkgray;*/
                                    width: 80%;
                                    height: auto;
                                    margin: auto;
                                    }

                                    #image_frame {
                                    /*background: red;*/
                                    padding: 20px 50px 20px 50px;
                                    width: 80%;
                                    height: 690px;
                                    margin: auto;
                                    }

                                    .amr_image {
                                    width: 100%;
                                    height: 650px;
                                    margin: auto;
                                    }

                                    "
                  ))
                ),
                tags$div(Id="research_project",
                         h2(class="project_description", "Research Project Description:"),
                         tags$p(class="introduction",
                                "After more than 70 years of extensive use of antibiotics to treat infectious diseases,
                                           antibiotic resistance (AMR) is now being recognized as a worldwide crisis in modern medicine
                                           (The Review on Antimicrobial Resistance, O’Neill 2016). The dramatic increase in prevalence of
                                           infections caused by multi-drug-resistant (MDR) and extremely drug resistant (XDR) pathogens
                                           belonging to the Enterobacteriaceae group poses a great concern since these pathogens are common
                                           natural inhabitants of our microbiome. Moreover, infections caused by these strains are often
                                           associated with high mortality rates, prolonged hospitalization and costs (Giske et al. 2008)."),
                         tags$p(class="introduction",
                                "The antimicrobial resistance (AMR) crisis facing hospitals globally is driven by the
                                                ESKAPE pathogens (Gram positives Enterococcus faecium, Staphylococcus aureus; and Gram
                                                negatives Klebsiella pneumoniae, Acinetobacter baumannii, Pseudomonas aeruginosa, Enterobacter),
                                                which are responsible for the majority of infections in hospital patients that are difficult
                                                to manage with antimicrobial therapy. Notably the ESKAPE pathogens are environmental or commensal
                                                bacteria that cause opportunistic infections in hospitalised or immunocompromised patients, but are
                                                generally not pathogenic otherwise. Each of these species has intrinsic resistance to one or more
                                                antibiotics, and individual strains have accumulated resistance to many additional drugs (Pendleton, Gorman, and Gilmore 2013)."),
                         tags$p(class="introduction",
                                "The Gram negative ESKAPE pathogens are considered the greatest threat, due to the emergence of
                                                strains that are resistant to all or most available antibiotics. Accumulation of AMR in these
                                                organisms is primarily due to horizontal gene transfer (HGT) aided by plasmids and mobile genetic
                                                elements. Hundreds of mobile AMR genes have been found in K. pneumoniae (Wyres and Holt 2018), the species associated
                                                with the earliest reports of many AMR genes before their dispersal among other clinically relevant
                                                Gram negatives pathogens (Holt, Wertheim, and Zadoks 2015). "
                         ),

                         tags$div(id="image_frame",
                                  tags$img(class="amr_image", src="https://www.tandfonline.com/na101/home/literatum/publisher/tandf/journals/content/best20/2020/best20.v050.i19/10643389.2019.1692611/20210709/images/medium/best_a_1692611_uf0001_c.jpg"),
                         ),
                         tags$p(class="introduction",
                                "Aquatic environments are recognized as one of the reservoirs and transmission routes for the
                                                dissemination of antibiotic resistance (Wellington et al.,2013). Drinking water and wastewater
                                                treatment processes are shown to be incapable of completely removing antibiotic resistance genes
                                                (ARGs) (Rodriguez-Mozaz et al.,2015). Wastewater treatment plant (WWTP) effluents containing ARB
                                                and ARGs can end up in aquatic environments like rivers and lakes. Usage of reclaimed wastewater
                                                in beneficial purposes like agricultural irrigation and recreational activities can introduce ARB
                                                and ARGs to the particular environment (Ben et al.,2017). Therefore, in addition to drinking,
                                                humans can be exposed to ARB and ARGs through activities like bathing, aquatic sports, occupational
                                                exposure during agricultural irrigation, and consumption of food produce irrigated with reclaimed water.
                                                However, potential human health risks caused by exposing to ARB and ARGs present in aquatic environments
                                                have not been completely evaluated yet, because specific information like the dose-response curves and
                                                exposure assessment data related to ARB and ARGs in different water usage scenarios needed to conduct a
                                                quantitative microbial risk assessment (QMRA) are scarce (Amarasiri, Sano, and Suzuki 2020). "
                         ),

                         tags$p(class="introduction",
                                "It should be possible to develop a bioinformatic analysis pipeline that assembles metagenomics data as they
                                           become available, performs plasmids search and AMR search against a database of clinically important
                                           AMR-encoding genes, and alerts the clinical microbiologist to important findings with very high precision.
                                           To implement such an approach in a routine clinical microbiology laboratory the development of a graphic user
                                           interface is a necessity, with the most basic information regarding bacterial identity and AMR presented in an
                                           easy-to-read fashion. More advanced analysis of virulence factors, sequence types, phylogeny and plasmids would
                                           require bioinformatic skills. With the rapid development of sequencing-technology, computational power and
                                           bioinformatic tools, we believe that such an approach may be the future of routine analysis in clinical microbiology
                                           (Tax et al., 2020). Here we explore AMR genes from environmental sources to human pathogen populations using Next
                                           Generation Sequencing ONT MinION Mk1B machine. Besides, we performed the meta-pangenomics analysis of relevant
                                           pathogens recovered from environmental samples."
                         ),
                ),
              )
              
      ),
      
      ### <-----End First tab content--------->
      
      # Second tab content
     tabItem(tabName = "Reads_QC",
              fluidPage(
                tags$head(
                  tags$style(HTML(
                    "h2 {
                          font-size: 24px;
                          color: red;
                        }
                        ol li {
                        padding: 6px 12px;
                        font-size: 18px;
                        }

                        ul li {
                        padding: 6px 12px;
                        font-size: 18px;
                        }


                        }
                        "
                  )),
                ),

                tabsetPanel(type = "tab",
                            tabPanel("Tools", htmlOutput(outputId = "qc_analysis"),
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
              )


       ),
     
     ### <-----End Second tab content--------->
     
     # Third tab content
     tabItem(tabName = "Taxonomy",
             fluidPage(
               tabsetPanel(type="tab",
                           tabPanel("Tools", htmlOutput(outputId="taxonomy_desciption"),
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
        )

     ),
     
     ### <-----End of Third tab content--------->
     
     # Fourth tab content
     tabItem(tabName = "Abundance",
             fluidPage(
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
                             label = "Number of Observations", 
                             value = 12, min = 1, max = 100),
                 
                 sliderInput(inputId = "filter",
                             label="Filter data sets", 
                             value = 0.0025, min = 0, max = 0.01),
                 actionButton("updatePlot", "Update Bar Plot", style="margin-bottom:10px"),
                 sliderInput(inputId = "cell_width",
                             label = "Heatmap Cell width",
                             value = 80, min = 40, max=150),
                 sliderInput(inputId = "cell_height",
                             label = "Heatmap Cell height",
                             value = 12, min = 1, max=40),
                 actionButton("updateHeatmap", "Update Heatmap", style="margin-bottom:10px"),
                 
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
                             tabPanel("Relative Abundance", plotlyOutput(outputId = "abc_bar_plot", height = 500)),
                             tabPanel("Heatmap", plotOutput(outputId = "heatmap_plot", height = 800))
                 )
                 
               )
             )
          ),
     ### <-----End of Fourth tab content--------->
     
     ### Start Fifth tab content 
     tabItem("AMR",
             fluidPage(
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
                             label = "Number of Observations", 
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
                                                         for real-time detection of antibiotic resistance genes using CARD database.")
                                      )
                                      
                             ),
                             tabPanel("Table", DT::dataTableOutput(outputId = "mytable")),
                             tabPanel("Summary", verbatimTextOutput(outputId = "stats")),
                             tabPanel("Plot", plotlyOutput(outputId = "amra_stats", height = 1600)),
                             tabPanel("category vs model", plotOutput(outputId = "category_vs_model", height = 800)),
                             tabPanel("Species vs AMR", plotOutput(outputId = "dot_plot", height = 700)),
                             tabPanel("Model vs AMR", plotlyOutput(outputId = "model_vs_amr", height = 800))
                             
                 )
                 
               )
             )
             
          ),
     ### <-----End of Fifth tab content--------->
     
     ### Start Sixth tab content
     tabItem("Assembly",
       fluidPage(
         tabsetPanel(type="tab",
                     tabPanel("Description", htmlOutput(outputId = "genome_assembly"),
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
                     tabPanel("Pomoxis (Assembler)", htmlOutput(outputId = "mini_assembly"),
                              h2("Genome Assembly Results"),
                     ),
                     tabPanel("Medaka (Polisher)", htmlOutput(outputId = "polisher"),
                              h2("Polishing Results"),
                     ),
                     tabPanel("QUAST (QC)", htmlOutput(outputId = "assembly_qc"),
                              h2("Assembly QC"),
                     ),
                     tabPanel("CheckM (QC)", htmlOutput(outputId = "CheckM"),
                              h2("CheckM Results"),
                     )
         )
       )
     ),
     
     ### <-----End of Sixth tab content--------->
     
     ## Start of the Seven tab content
     tabItem("Annotation",
             fluidPage(
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
             )
            ),
     ### <-----End of Sixth tab content--------->
     
     ### Start of the Seventh tab content
     tabItem("Pangenomes",
             fluidPage(
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
                 tags$li(tags$strong("Unique genes:"), "lineage-specific genes; found only within a particular accession"),
               )
             )
           )
        
     ### <-----End of Seventh tab content--------->
    )
  
  )
)
