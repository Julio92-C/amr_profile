
library(shinydashboard)
library(plotly)

dashboardPage(
  dashboardHeader(title = "Research Project"),
  ## Sidebar content
  dashboardSidebar(
    sidebarMenu(
      menuItem("Background", tabName = "Description", icon = icon("angle-right")),
      menuItem("Research Status", tabName = "Research_Status", icon = icon("angle-right")),
      menuItem("Aim & Contents", tabName = "Research_Contents", icon = icon("angle-right")),
      menuItem("Research Plan", tabName = "Research_Plan", icon = icon("angle-right")),
      menuItem("Data Collection", tabName = "Data_Collection", icon = icon("angle-right")),
      menuItem("Pangenomes Analysis", tabName = "Pangenomes_Analysis", icon = icon("angle-right")),
      menuItem("Test", tabName = "Test", icon = icon("angle-right")),
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
                                    margin-left: 20%;
                                    font-weight: bold;
                                    
                                    }
                                    
                                    .project_description1 {
                                    color: black;
                                    font-size: 24px;
                                    margin-left: 10%;
                                    font-weight: bold;
                                    
                                    }

                                    .introduction {
                                    font-size: 18px;
                                    color: black;
                                    width: 60%;
                                    margin: auto;
                                    text-align: justify;
                                    line-height: 1.6;
                                    padding-bottom: 5px;
                                    }
                                    
                                    .introduction1 {
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
                                    width: 100%;
                                    height: auto;
                                    margin: auto;
                                    }

                                    #image_frame {
                                    /*background: red;*/
                                    padding: 20px 50px 20px 50px;
                                    width: 50%;
                                    height: 390px;
                                    margin: auto;
                                    }
                                    
                                    #image_frame1 {
                                    /*background: red;*/
                                    padding: 20px 50px 20px 50px;
                                    width: 60%;
                                    height: 490px;
                                    margin: auto;
                                    }
                                    
                                    #image_frame2 {
                                    /*background: red;*/
                                    padding: 20px 50px 20px 50px;
                                    width: 60%;
                                    height: 490px;
                                    margin: auto;
                                    }
                                    
                                    .amr_image {
                                    width: 100%;
                                    height: 350px;
                                    margin: auto;
                                    }
                                    
                                    .amr_image1 {
                                    width: 100%;
                                    height: 450px;
                                    margin: auto;
                                    }
                                    
                                    .amr_image2 {
                                    width: 100%;
                                    height: 450px;
                                    margin: auto;
                                    }
                                    
                                    .figure_caption {
                                    text-align: center;
                                    font-size: 16px;
                                    font-weight: bold;
                                    padding: 0px 10px 10px 10px;
                                    }
                                    
                                    "
                  ))
                ),
                tags$div(Id="research_project",
                         h2(class="project_description", "Introduction"),
                         tags$p(class="introduction",
                                "Legionella pneumophila is an environmental organism and an important human pathogen causing nosocomial and 
                                community-acquired pneumonia (CAP). L. pneumophila was first found to be associated with an infectious outbreak 
                                in 1976 in Philadelphia (USA) and was later reported worldwide. The previously unrecognized bacterium was responsible 
                                for 182 infections, including 29 deaths (1)."),
                         tags$p(class="introduction",
                                "About half of these species are responsible, after inhalation of contaminated water, of two forms of pneumonia that are 
                                collectively termed as legionellosis (Figure 1). Pontiac fever is a benign form classically described as a flu-like illness, while 
                                Legionnaires’ disease (LD) is a severe form of pneumonia. Approximately 90% of LD is caused by L. pneumophila serogroup 1. 
                                Legionella pneumophila has a high epidemiological significance and is currently on the candidate contaminant list 3 (CCL3) 
                                at US EPA (United States Environmental Protection Agency). However, despite early administration of an appropriate antibiotic, 
                                treatment failures are still reported and mortality rates remain high (approximately 10%, and up to 30% in immunocompromised persons). 
                                Antibiotic resistance has been referred to as “the silent tsunami facing modern medicine” (4). Several studies have been reported a 
                                decrease in the sensitivity to antibiotics of this bacterium and it correlates with the presence of the lpeAB genes encoding a 
                                macrolide efflux pump (5-7)."),
                         tags$p(class="introduction",
                                "As the vast majority of LD cases are caused by L. pneumophila and this species is very common in the environment, strain 
                                differentiation using appropriate subtyping methods is necessary to identify the sources of contamination and determination 
                                of routes of transmission, together with population structure analysis to determine the genetic, epidemiological characteristics, 
                                resistance mechanism and pathogenic potential of L. pneumophila. A large number of subtyping techniques have been used for 
                                epidemiological typing purposes, including sequence-based typing (SBT) and pulsed field gel electrophoresis (PFGE), which typically 
                                take several days to obtain results. Nevertheless, the discriminatory power of SBT could not meet the need for distinguishing outbreak 
                                isolates or non-outbreak isolates and can not give information related to antibiotics sensitivity. "),

                         tags$div(id="image_frame",
                                  tags$figure(
                                    tags$img(class="amr_image", src="https://www.usmslab.com/wp-content/uploads/2018/11/legionella-300x200.jpg"),
                                    tags$figcaption(class="figure_caption","Figure 1. Legionnaires’ Disease")
                                  ),
                                  
                         ),
                         tags$p(class="introduction",
                                "Recently, whole genome sequencing (WGS) has been applied to subtype various pathogens including L. pneumophila. For L. pneumophila 
                                subtyping, WGS-based methods provided better discriminatory power to distinguish outbreak isolates from non-outbreak isolates and provides
                                much more information about the bacterium as antibiotics resistance genes (ARGs) and virulence factors (VFs) profiles. Besides, few studies 
                                proposed the concept of core genome MLST (cgMLST) (8) and whole genome MLST (wgMLST) scheme for epidemiological typing (9). The aim of this 
                                study is to examine the antibiotic resistance, genetic diversity, and population structure of environmental L. pneumophila isolates using this 
                                approach, to provide basic information for Legionella Health Risk Assessment in Beijing. "),
                        
                          h2(class="project_description", "Pathways leading to Legionnaires’ Disease"),

                         tags$p(class="introduction",
                                "The microbe is present in low concentration in soil and fresh water and proliferates intracellularly in protozoa. In humans, alveolar macrophages 
                                are infected after inhalation of contaminated aerosols produced from man-made water systems, or after aspiration of water containing the bacteria. 
                                However, There is no direct report of human-to-human transmission (10)."),
                         tags$p(class="introduction",
                                "The growth of pathogenic legionellae seems to be favored in various engineered environments that support free-living protozoa associated with biofilms 
                                and that generate aerosols. The bacteria live and grow in water systems at temperatures of 20 to 50 degrees Celsius (optimal 35 degrees Celsius). The 
                                engineered environments that support Legionella growth include drinking water treatment plants, plumbing within buildings (i.e., premise plumbing), 
                                cooling towers, wastewater treatment plants that receive warm industrial effluents (11), and a myriad of devices that operate with warm water including 
                                hot tubs. As shown in the Figure 2, these compartments are a potential source of Legionnaires’ disease if contaminated aerosols are generated that can be 
                                inhaled or aspirated by people in their vicinity."),
                         tags$p(class="introduction",
                                "Biofilm and amoeba in the water systems provide optimal growth environment for L. pneumophila and is important for persistence and replication of the 
                                bacterium. In addition, Free-living-amoebae (FLA) offer a cozy niche, protecting bacteria from environmental stresses such as biocides, antibiotics, acid, 
                                or osmotic stress ,and play also a role in the spread of the pathogen in anthropogenic aquatic systems. Biofilms confer the bacteria up to 1000 times more 
                                antibiotic resistance than planktonic bacteria (free-swimming)."),
                         
                         tags$figure(
                           
                           tags$div(id="image_frame1",
                                    tags$img(class="amr_image1", src="img/lnp_env_pathways-70.jpg"),
                           ),
                           
                           tags$figcaption(class="figure_caption", "Figure 2. Pathways leading to Legionnaires’ Disease in the environment.")
                         ),
                         
                         tags$p(class="introduction",
                                "In addition to Legionella, these biofilms can become transient or long-term habitats for hygienically relevant microorganisms among which fecal indicator 
                                bacteria (Escherichia coli), obligate bacterial pathogens of fecal origin (Campylobacter sp.), opportunistic bacteria of environmental origin (Pseudomonas 
                                aeruginosa, Mycobacterium sp., Aeromonas sp.), enteric viruses (adenoviruses, rotaviruses, noroviruses), and parasitic protozoa (Cryptosporidium parvum). 
                                These organisms can attach to preexisting biofilms, where they become integrated and survive for days to weeks or even longer, depending on the biology and 
                                ecology of the organism and the environmental conditions (12). Biofilm formation is driven by quorum sensing (QS), defined as the process of the excretion of 
                                small signaling molecules that allow microorganisms to communicate. In general, biofilms and free-living amoebae are thus considered to serve as main environmental 
                                reservoirs for L. pneumophila and represent a potential source of drinking water contamination, resulting in a potential health risk for humans."),
                         h2(class="project_description", "Distribution of Legionnaires’ Disease"),
                         tags$p(class="introduction", 
                                "Since 2000, the United States has seen an 967 percent spike in the disease, according to the Centers for Disease Control and Prevention (CDC), with a reported 
                                9,933 cases of legionellosis in 2019 (Figure 3). However, because Legionnaires’ Disease is likely underdiagnosed, this number may underestimate the true incidence. 
                                A recent study estimated that the true number of Legionnaires’ disease cases may be 1.8–2.7 times higher than what is reported (13). More illness is usually found in 
                                the summer and early fall, but it can happen any time of year. It is unclear whether this increase represents artifact (due to increased awareness and testing), increased 
                                susceptibility of the population, increased Legionella in the environment, or some combination of factors."),
                         
                         tags$figure(
                           
                           tags$div(id="image_frame2",
                                    tags$img(class="amr_image2", src="img/LD_US.png"),
                           ),
                           
                           tags$figcaption(class="figure_caption", "Figure 3. Distribution of Legionnaires’ Disease in US.")
                           
                         ),
                         
                         tags$p(class="introduction", 
                                "In Europe , during the period 2015−2019, the number of reported cases increased by 65% from 6 947 to 11 298 showing an increasing trend in recent years (14). In 2019, 
                                people aged 45 years and older accounted for 10 236 of 11 279 cases with known age (91%). A total of 8 % of cases with a known outcome were reported as fatalities. This 
                                increase in incidence could be due to improved diagnostics and surveillance efforts. Additionally, other studies indicate that rising temperatures, higher than average 
                                atmospheric changes and increases in humidity may be responsible for the proliferation of LD incidence (15). Among L. pneumophila isolates, over 80% are reported as serogroup 1. 
                                The vast majority of cases in 2019 (90%) were reported using the laboratory method of urine antigen tests (UAT). This was similar to the range of 88−90% cases with UAT testing reported 
                                since 2012. In comparison, few cases were reported with a culture test (1 148 cases; 10%) and use of polymerase chain reaction (PCR) method tests was reported for 1 024 cases (9%)."),
                         tags$p(class="introduction", 
                                "During 2014–2016, a survey conducted a surveillance of Legionnaires’ Disease in 18 hospitals in China. Urine samples from 11 (3.85%) of 286 patients with severe pneumonia of unknown cause 
                                were positive for the L. pneumophila serogroup 1 antigen and Legionella strains was isolated from 7 patients (16). All isolated Legionella strains were L. pneumophila serogroup 1. Moreover, 
                                improved diagnostic testing is needed for this underestimated disease in China due to the relatively high mortality associated with disease and considerable challenges for the rapid identification 
                                and control of environmental sources. Also, it remains important to be vigilant through surveillance for the detection of clusters and outbreak events."),
                         h2(class="project_description", "Legionnaires’ Disease: Diagnosis & Treatment"),
                         tags$p(class="introduction", 
                                "The most commonly used laboratory test for diagnosis of Legionnaires' disease is the urinary antigen test (UAT), which detects a molecule of the Legionella bacterium in urine. If the patient has 
                                pneumonia and the test is positive, then you should consider the patient to have Legionnaires' disease. Disadvantages include the ability to only reliably detect urinary L. penumophila serogroup 1 
                                antigen and the inability to diagnose relapse or reinfection due to persistence of antigen excretion."),
                         tags$p(class="introduction", 
                                "Bronchoalveolar lavage (BAL) is a procedure that is sometimes done during a bronchoscopy. It is also called bronchoalveolar washing. BAL is used to collect a sample from the lungs for testing. 
                                During the procedure, a saline solution is put through the bronchoscope to wash the airways and capture a fluid sample."),
                         tags$p(class="introduction", 
                                "The culture test is considered the “gold standard” for diagnosing an infection caused by Legionella bacteria. A positive culture may be determined in about 48 to 72 hours and negative cultures 
                                are held for at least 7 days before a final result is reported. PCR is a sensitive and rapid test that can detect Legionella species from clinical and environmental sources. Similar to culture, 
                                PCR is able to detect all Legionella species and serogroups (25)."),
                         tags$p(class="introduction", 
                                "Both the National Institute for Health and Care Excellence (NICE) and British Thoracic Society therapeutic guidelines recommend amoxicillin combined with a macrolide for patients with moderate-severity 
                                community acquired pneumonia (CAP) while those with high severity CAP should be treated with dual combination antimicrobials comprising a b-lactamase-stable b-lactam (such as co-amoxiclav) and a macrolide (17)."),
                         tags$p(class="introduction", 
                                "However, monotherapeutic antimicrobial intervention is common as initial empirical therapy in patients with low-severity CAP and can include amoxicillin, clarithromycin, doxycycline and levofloxacin as the recommended 
                                first-line therapeutic agents. Tetracyclines, fluoroquinolones and other macrolides have been reported as potentially effective treatments as well."),
                         tags$p(class="introduction", 
                                "Antimicrobial therapy is basically based on antibiotics able to reach high intracellular concentrations, such as macrolides, fluoroquinolones, and rifampicin. Macrolides (especially azithromycin) and fluoroquinolones are 
                                recommended as first-line treatments of LD because of their efficiency against intracellular L. pneumophila in vitro. However, despite early administration of an appropriate antibiotic, treatment failures are still reported 
                                and mortality rates remain high (approximately 10%, and up to 30% in immunocompromised persons). Antibiotic resistance has been referred to as “the silent tsunami facing modern medicine” (4)."),
                         
                ),
              )
              
      ),
      
      ### <-----End First tab content--------->
      
      ### Research Status content ###
      tabItem(tabName = "Research_Status",
              fluidPage(
                tags$head(
                  tags$style(HTML(
                                "
                                .main_research_status {
                                width: 100%;
                                margin: auto;
                                
                                }
                                
                                .nav-tabs {
                                  display: flex !important;
                                  justify-content: center !important;
                                  width: 100%;
                                }
                                
                                h2 {
                                      font-size: 24px;
                                      color: black;
                                    }
                        
                                    #image_frame3 {
                                    /*background: red;*/
                                    padding: 20px 50px 20px 50px;
                                    width: 60%;
                                    height: 490px;
                                    margin: auto;
                                    }
                                    
                                    .amr_image3 {
                                    width: 100%;
                                    height: 450px;
                                    margin: auto;
                                    }
                                    
                                    #image_frame4 {
                                    /*background: red;*/
                                    padding: 20px 50px 20px 50px;
                                    width: 60%;
                                    height: 490px;
                                    margin: auto;
                                    }
                                    
                                    .amr_image4 {
                                    width: 100%;
                                    height: 450px;
                                    margin: auto;
                                    }
                                    
                                    #image_frame5 {
                                    /*background: red;*/
                                    padding: 20px 50px 20px 50px;
                                    width: 60%;
                                    height: 590px;
                                    margin: auto;
                                    }
                                    
                                    .amr_image5 {
                                    width: 100%;
                                    height: 550px;
                                    margin: auto;
                                    }
                                    
                                    #image_frame6 {
                                    /*background: red;*/
                                    padding: 20px 50px 20px 50px;
                                    width: 60%;
                                    height: 440px;
                                    margin: auto;
                                    }
                                    
                                    
                                    .amr_image6 {
                                    width: 100%;
                                    height: 400px;
                                    margin: auto;
                                    }
                                    
                                    #image_frame7 {
                                    /*background: red;*/
                                    padding: 20px 50px 20px 50px;
                                    width: 60%;
                                    height: 490px;
                                    margin: auto;
                                    }
                                    
                                    .amr_image7 {
                                    width: 100%;
                                    height: 450px;
                                    margin: auto;
                                    }
                                    
                                    #image_frame8 {
                                    /*background: red;*/
                                    padding: 20px 50px 20px 50px;
                                    width: 50%;
                                    height: 520px;
                                    margin: auto;
                                    }
                                    
                                    .amr_image8 {
                                    width: 100%;
                                    height: 480px;
                                    margin: auto;
                                    }
                                    
                                    #image_frame9 {
                                    /*background: red;*/
                                    padding: 20px 50px 20px 50px;
                                    width: 45%;
                                    height: 460px;
                                    margin: auto;
                                    }
                                    
                                    .amr_image9 {
                                    width: 100%;
                                    height: 420px;
                                    margin: auto;
                                    }
                        
                        "
                  )),
                ),
                
                tags$div(class="main_research_status",
                             tabsetPanel(type = "tab",
                             tabPanel("AMR mechanism", htmlOutput(outputId = "AMR_mechanism"),
                                      h2(class="project_description", "Antimicrobial Resistance (AMR) mechanism in bacterial pathogens"),
                                      tags$p(class="introduction",
                                             "Bacteria exchange genetic information with one another using horizontal routes of conjugation,
                                             phage transduction, and natural transformation (Figure 4). In conjugation (i), donor and recipient
                                             cells are physically connected through the formation of a transient bridge (pilus), and DNA copied from one cell flows to the next.
                                             Cells can transfer plasmid DNA, integrative conjugative elements (chromosomally encoded gene clusters with autonomous conjugation machinery),
                                             or chromosomal DNA through high frequency of recombination mediated by F plasmids. Phages or bacterial viruses serve as vehicles for bacterial
                                             gene transfer (ii) by transducing DNA from one host cell to another. During lysis, phages can inadvertently package bacterial DNA, either
                                             randomly incorporating pieces of the bacterial genome into phage particles (generalized transduction) or taking up bacterial DNA positioned
                                             near the phage integration site (specialized transduction). Upon lysogenic infection of a new host, genetic material can be maintained in the
                                             genome by homologous recombination or site-specific integration. In the process of natural transformation (iii), certain bacterial species can
                                             take up free DNA from the environment using membrane protein complexes. While some species exhibit competence during phases of their life cycle,
                                             others respond to extracellular cues to initiate DNA uptake (19)."),
                                      tags$figure(

                                         tags$div(id="image_frame3",
                                                 tags$img(class="amr_image3", src="img/AMR_mechanism.png"),
                                        ),

                                        tags$figcaption(class="figure_caption", "Figure 4. Mechanisms for the acquisition of resistance genes.")
                                      ),

                                      tags$p(class="introduction",
                                             "AMR is a natural mechanism that allows microorganisms to survive. The process is accelerated by increasing levels of antibiotic use: selective
                                             pressure enables the spread of mutations that promote survival, shortening the time bacteria need to acquire resistance to new drugs. This, coupled
                                             with low rates of new antibiotic development, has contributed to alarming rates of resistance for selected pathogens, including priority pathogens list
                                             (WHO) for which few treatment options are available. Example of antibiotics resistance are integrons carrying mecA gen which converts methicillin-sensitive
                                             S. aureu (MSSA) to the resistant “superbug” MRSA (18). Mutations in topoisomerase subunits gyrA and parC confering resistance to fluoroquinoles or in different
                                             penicilling-binding proteins, wich confer resistance to beta-lactams (20). Also, few recent studies correlate the reduced susceptibility in L. pneumophila strains
                                             against macrolides with the presence of the lpeAB genes efflux pump in their bacteria genomes (5-7)."),

                             ),

                             tabPanel("MDR Efflux Pumps", htmlOutput(outputId = "MDR_EPs"),
                             h2(class="project_description", "Multi-Drug Efflux Pumps in Gram-negative pathogens"),
                             tags$p(class="introduction",
                                    "Drug efflux protein complexes confer multidrug resistance on bacteria by transporting a wide spectrum of structurally diverse antibiotics. Moreover, organisms can only acquire resistance in the presence of an active efflux pump. The substrate range of drug efflux pumps is not limited to antibiotics, but it also includes toxins, dyes, detergents, lipids, and molecules involved in quorum sensing; hence efflux pumps are also associated with virulence and biofilm formation. Inhibitors of efflux pumps are therefore attractive compounds to reverse multidrug resistance and to prevent the development of resistance in clinically relevant bacterial pathogens (27)."),
                             tags$p(class="introduction",
                                    "Efflux system of bacteria can be divided into five classes—Major facilitator superfamily (MFS), resistance-nodulation division (RND) family, ATP binding cassette (ABC) family, small multidrug resistance (SMR) family and multi-drug and toxic compound extrusion (MATE) family. The structural analysis of multidrug transport proteins has revealed that they possess hydrophobic binding sites. They bind to the substrates by both hydrophobic interactions as well as electrostatic attraction (21). Figure 5 shows the schematic representation of a tripartite drug efflux pumps complex, (A) The complex consists of three proteins which span the inner-membrane (CM), the outer membrane (OM), and the periplasmic space. The inner-membrane protein (IMP), e.g., AcrB or MexB is responsible for substrate specificity and catalyzes pH dependent drug transport. Examples of the outer membrane protein (OMP) are TolC or OprM. The periplasmic membrane fusion protein (MFP), e.g., AcrA or MexA connects the IMP and the OMP. (B) Structures of the individual components of the efflux pump. The MexA (pdb: 2V4D), MexB (pdb: 2V50), and OprM (pdb: 1WP1) proteins from Pseudomonas aeruginosa are given as examples."),
                             tags$p(class="introduction",
                                    "The rise in multidrug resistance (MDR) is one of the greatest threats to human health worldwide (26). MDR in bacterial pathogens is a major challenge in healthcare, as bacterial infections are becoming untreatable by commercially available antibiotics. One of the main causes of MDR is the over-expression of intrinsic and acquired multidrug efflux pumps, belonging to the resistance nodulation-division (RND) superfamily, which can efflux a wide range of structurally different antibiotics."),
                             tags$figure(

                               tags$div(id="image_frame4",
                                        tags$img(class="amr_image4", src="img/MDR_efflux_pumps.png"),
                               ),

                               tags$figcaption(class="figure_caption", "Figure 5. Schematic representation of a tripartite drug efflux complex.")
                             ),


                             tags$p(class="introduction",
                                    "Besides over-expression, however, recent amino acid substitutions within the pumps themselves are causing an increased drug efflux efficiency are causing additional worry. One survey took a closer look at clinically, environmentally and laboratory-evolved Gram-negative pathogens strains and their decreased drug sensitivity as a result of mutations directly in the RNDtype pumps themselves from Escherichia coli (AcrB-Ec), Salmonella enterica (MexB-Pa), Neisseria gonorrhoeae (MtrD-Ng), Pseudomonas aeruginosa (MexAB-OprM), Acinetobacter baumannii (AdeB-Ab) and Legionella pneumophila (lpeAB). They also focus on the evolution of the efflux pumps by comparing hundreds of efflux pumps to determine where conservation is concentrated and where differences in amino acids can shed light on the broad and even broadening drug recognition (28). Knowledge of conservation, as well as of novel gain-of-function efflux pump mutations, is essential for the development of novel antibiotics and efflux pump inhibitors."),
                             ),

                             tabPanel("ARG profile", htmlOutput(outputId = "ARG_profile"),
                                      h2(class="project_description", "Antibiotics Resistance profile in Legionella pneumophila"),
                                      tags$p(class="introduction",
                                             "A systematic review investigates the antibiotic susceptibility pattern of Legionella pneumophila isolates from the 1980s to the present day, deriving data from clinical and/or water samples from studies carried out all over the world (Figure 5). Eighty-nine papers meeting the inclusion criteria, i.e., “Legionella pneumophila” and “resistance to antibiotics”, were evaluated according to pre-defined validity criteria. Sixty articles referred to clinical isolates, and 18 articles reported water-related L. pneumophila isolates, while 11 articles included both clinical and water isolates. It was reported that in 27 articles (45%; 27/60) the clinical isolates are from Broncho Alveolar Lavages/BAL and secretions from Respiratory Tract Infections/RTIs , and all of them were related to patients with CAP. The majority of water samples involved drinking water supplies (13 articles), while six (6) papers implicated drinking water networks along with cooling towers in the presence of L. pneumophila (22)."),
                                      # tags$div(id="image_frame5",
                                      #          tags$img(class="amr_image5", src="img/Lpn_ARG_profile.png"),
                                      # ),

                                      tags$p(class="introduction",
                                             "Several methods had been proposed as suitable for the determination of MICs, such as the E-test, broth and agar dilution, and disk diffusion methods, in vivo and in vitro, using various media. The E-test method proposed by the European Society of Clinical Microbiology and Infectious Diseases (EUCAST) seems to be the second most frequently used method overall, but it is the preferred method in the most recent publications (2000–2019) for the interpretation criteria. Erythromycin has been proved to be the preference for resistance testing over the years. However, in the last 19 years, the antibiotics ciprofloxacin (CIP), erythromycin (ERM), levofloxacin (LEV) and azithromycin (AZM) were the ones that saw an increase in their use. A decrease in the sensitivity to antibiotics was identified in approximately half of the reviewed articles (46%; 41/89). Figure 6 highlight the antibiotics mechanism of action (A) and mechanism of resistance (B) in L. pneumophila strains reported so far (5-7)."),
                                      tags$figure(
                                        tags$div(id="image_frame6",
                                                 tags$img(class="amr_image6", src="img/Lpn_ARG.png"),
                                        ),
                                        tags$figcaption(class="figure_caption", "Figure 6. Antibiotics Resistance profile in Legionella pneumophila.")
                                      ),

                                      tags$p(class="introduction",
                                             "Recently, a study described the susceptibility of clinical strains of L. pneumophila to eight antibiotics used for treatment of legionellosis in France (5). The minimum inhibitory concentrations (MICs) of 109 well-characterised clinical strains of L. pneumophila serogroup 1 were determined by the broth microdilution method without charcoal and were compared with antibiotic-resistant strains selected in vitro. All strains were inhibited by low concentrations of fluoroquinolones, macrolides and rifampicin. The epidemiological cut-off values (ECOFFs) were 0.064 mg/L for ciprofloxacin, 0.064 mg/L for moxifloxacin, 0.032 mg/L for levofloxacin, 1 mg/L for erythromycin, 2 mg/L for azithromycin, 0.064 mg/L for clarithromycin, 2 mg/L for doxycycline and 0.001 mg/L for rifampicin. However, MIC distributions revealed a subpopulation of strains displaying reduced susceptibility to some macrolides (especially azithromycin), which correlated with the presence of the lpeAB genes encoding a macrolide efflux pump found specifically in sequence type (ST) ST1, ST701 and closely related STs. Thus, all isolates could be considered susceptible to the tested antibiotics, although macrolides were less active against some strains harbouring a specific efflux system."),
                                      tags$p(class="introduction",
                                             "Similar study investigate the azithromycin resistance mechanism of L. pneumophila serogroup 1 in China (6). The sensitivities of 149 strains, isolated from clinical cases or environmental water in China from 2005 to 2012, to five antibiotics including erythromycin, azithromycin, levofloxacin, moxifloxacin and rifampicin were evaluated. The expression levels of efflux pump gene lpeAB and the minimum inhibitory concentration (MIC) of azithromycin-resistant strains in the presence and absence of the efflux pump inhibitor carbonyl cyanide-chlorophenylhydrazone (CCCP) were also detected. They found out that 25 strains were resistant to azithromycin, including ST1, ST150, ST144, ST629 and ST154, among which ST1 (84%) was the main type. They concluded that the expression levels of efflux pump gene of lpeAB was responsible for the 42 reduced azithromycin susceptibility in all these 25 strains."),
                                      tags$p(class="introduction",
                                             "Besides, a total of 122 clinical and environmental strains of L. pneumophila were collected between 2000 and 2017 in Norway (7). Fifty-five of the strains had been isolated from patients with Legionnaires’ Disease, and 67 were environmental strains isolated from water systems in private homes and public buildings or from water tanks on ships. Gradient diffusion tests on BCYE-a test medium detected strains with reduced susceptibility to azithromycin. All strains of L. pneumophila serogroup 1, ST1 (18/122; 14.7%) showed reduced susceptibility to azithromycin (MIC 0.5–1 mg/L) and harboured the efflux pump gene lpeAB. Two strains, serogroup 5 (ST1328) and serogroup 4 (ST1973) also showed reduced susceptibility to azithromycin (MIC 0.5 mg/L). They harboured lpeAB gene variants with 91.37% and 92.52% nucleotide identity, respectively, compared with the lpeAB genes of serogroup 1, ST1 strains. Reduced susceptibility to azithromycin in non-serogroup 1 strains may be due to the presence of an lpeAB efflux pump variant."),
                             ),

                             tabPanel("Subtyping methods", htmlOutput(outputId = "Subtyping_methods"),
                                      h2(class="project_description", "Subtyping of Legionella pneumophila strains"),
                                      tags$p(class="introduction",
                                             "As the vast majority of LD cases are caused by L. pneumophila and this species is very common in the environment, strain differentiation using appropriate subtyping methods is necessary to identify the sources of contamination and determination of routes of transmission, together with population structure analysis to determine the genetic, epidemiological characteristics, resistance mechanism and pathogenic potential of L. pneumophila."),
                                      tags$p(class="introduction",
                                             "A large number of subtyping techniques have been used for epidemiological typing purposes (Figure 7), including sequence-based typing (SBT) and pulsed field gel electrophoresis (PFGE), which typically take several days to obtain results. SBT, which is commonly called multilocus sequence typing (MLST) in other species, was developed by members of the European Working Group for Legionella Infections (EWGLI) and is a powerful method based on the sequencing of seven gene loci (23). It is now considered the gold standard tool for L. pneumophila typing and a large SBT database is available. Many clinical and environmental isolates have been sequence typed and there are currently 14,054 entries and 3,026 STs (https://bioinformatics.phe.org.uk/ legionella/legionella_sbt/php/sbt_homepage.php; the data are accessible on request directly to the owner via legionella-sbt@ phe.gov.uk). PFGE is a highly discriminative epidemiological subtyping tool for L. pneumophila (24) and is the most commonly used method to investigate LD outbreaks and trace the environmental source of infection while SBT is the mostly used population structure analysis tool of L. pneumophila. However, the discriminatory power of SBT could not meet the need for distinguishing outbreak isolates or non-outbreak isolates."),
                                      tags$figure(
                                        tags$div(id="image_frame7",
                                                 tags$img(class="amr_image7", src="img/MLST.png"),
                                        ),

                                        tags$figcaption(class="figure_caption", "Figure 7. Pyramid of sequencing base typing technique")
                                      ),

                                      tags$p(class="introduction",
                                             "Recently, whole genome sequencing (WGS) has been applied to subtype various pathogens including L. pneumophila. For L. pneumophila subtyping, WGS-based methods provided better discriminatory power to distinguish outbreak isolates from non-outbreak isolates. The use of whole genome sequencing for epidemiological typing is generally based on either whole genome single nucleotide polymorphisms (SNP) comparison or gene by gene comparison. Lately, it proposed the concept of core genome MLST (cgMLST) scheme (8). cgMLST is defined as the non-repetitive genes present in all strains of a species. Moreover, pangenome based whole genome MLST (wgMLST) has also a good discriminatory power and is performed on a set of strains from the same species, or very closely related species."),
                             ),

                             tabPanel("Pangenomes studies", htmlOutput(outputId = "Pangenomes_studies"),
                                      h2(class="project_description", "Legionella pneumophila pangenomes analysis"),
                                      tags$p(class="introduction",
                                             "In pangenome analysis, the set of all coding sequences (CDS) are clustered by sequence similarity with the objective of generating groups of orthologous genes. This is a multistep process that begins with whole-genome sequencing (WGS) of multiple independent bacterial (nonclonal, nonderivative) strains selected to represent the broadest geographic and phenotypic ranges of the species of interest. Following sequencing, the remaining steps are computational (Figure 8), and include (1) assembly of genomes into contigs, (2) annotation of protein-coding sequences (CDS), and (3) clustering of CDSs based on the sequence similarity of nucleic acids or amino acids of their cognate encoded proteins. Once clusters are defined, they are classified based on strain prevalence into core or accessory (distributed) clusters. The accessory/distributed set of gene clusters is often further organized into those that are widely distributed (near core/soft core) in a population and those that are rare (shell) or unique."),

                                      tags$figure(
                                        tags$div(id="image_frame8",
                                                 tags$img(class="amr_image8", src="img/Roary_pangenome.png"),
                                        ),

                                        tags$figcaption(class="figure_caption", "Figure 8. Roary: rapid large-scale prokaryote pangenome analysis tool")
                                      ),

                                      tags$p(class="introduction",
                                             "The core genome is always responsible for the basic life process and shared phenotypic characteristics of a group of strains. On the contrary, the dispensable genome, which contributes to the species’s own unique characteristics, is probably not essential to their basic life but provides selective advantages, including drug resistance and niche adaptation. It is a reasonable assumption that unique genome contents of an organism are related directly to its unique phenotypes, which lead to the ability to adapt to unique and complicated conditions of its niche."),

                                      tags$p(class="introduction",
                                             "A pangenome study of 902 L. pneumophila isolates from human clinical and environmental samples carried out to examine their genetic diversity, global distribution and the basis for human pathogenicity (28). It identified a single gene (lag-1) to be most strongly associated with clinical isolates. lag-1, which encodes an O-acetyltransferase for lipopolysaccharide modification, has been distributed horizontally across all major phylogenetic clades of L. pneumophila by frequent recent recombination events. The gene confers resistance to complement-mediated killing in human serum by inhibiting deposition of classical pathway molecules on the bacterial surface. Furthermore, acquisition of lag-1 inhibits complement-dependent phagocytosis by human neutrophils, and promoted survival in a mouse model of pulmonary legionellosis. Figure 9, shows a maximum-likelihood phylogeny of 902 isolates based on 139,142 core genome SNPs, it divides the subspecies into seven major clades. Isolates linked to five major outbreaks that have occurred in Scotland, UK between 1985 and 2012 originated from different lineages are indicated."),

                                      tags$figure(
                                        tags$div(id="image_frame9",
                                           tags$img(class="amr_image9", src="img/902_Lpn_SNPs_tree.png"),
                                        ),
                                        tags$figcaption(class="figure_caption", "Figure 9. A maximum-likelihood phylogeny of 902 isolates based on 139,142 core genome SNPs.")
                                      ),

                                      tags$p(class="introduction",
                                             "In addition, isolates associated with sporadic cases of human infection have also emerged from diverse genetic backgrounds across all major clades. For reference, the position of five major disease associated clones (ST1, 23, 36/37, 47 and 62) and well-characterised reference genomes are indicated. The tree scale indicates the number of subtitutions per site."),
                                      tags$p(class="introduction",
                                             "New bacterial pangenomes, or updating existing ones with larger and more representative data sets, gives a better understanding of the population structure, biogeography, and evolution of microbes. Moreover, by linking virulence and antibiotic resistance profiles to pangenomic data, we can generate hypotheses on the evolutionary trajectories of resistance and virulence genes. Finally, combining pangenomic data (e.g., the phylogeny) with antibiotic resistance data and real-time sequencing data could have important implications for the development of diagnostic tools as well as to improve current therapy regimens to treat Legionnaires' disease."),
                             )
                           )
                  
                )
                
              
               )
              
              
      ),
      
      ### <-----End Research Status content--------->
      
      
      ### Research Gap, Aim and Research Contents ####
      tabItem(tabName = "Research_Contents", 
              fluidPage(
                tags$head(
                  tags$style(HTML(
                    ""
                  ))
                ),
                
                tags$div(Id="research_project",
                         h2(class="project_description", "Research Gap, Aim and Research Contents"),
                         tags$p(class="introduction", 
                                "As presented in the above literature review section, many research studies have investigated the antimicrobial susceptibility of L. pneumophila strains using different methods. Besides, the vast majority of Legionnaires’ disease (LD) cases worldwide (about 90 %) are caused by L. pneumophila serogroup 1 and this species is very common in the environment. Moreover, few recent studies correlate the reduced susceptibility with the presence of the lpeAB genes encoding a macrolide efflux pump. The importance of genetic diversity of L. pneumophila and non-pneumophila strains in human disease remains an area of ongoing research."),
                         tags$p(class="introduction", 
                                tags$strong("Research Gap:"), " Strain differentiation using appropriate subtyping methods is necessary to identify the sources of contamination and determination of routes of transmission, together with population structure analysis to determine the genetic, epidemiological characteristics, antibiotics resistant mechanism and pathogenic potential of L. pneumophila. The current study rectifies these shortcomings using pangenome based whole genome MLST (wgMLST) as epidemiological subtyping method."),
                         tags$p(class="introduction", 
                                tags$strong("Research Project Aim:"), "This study aims to examine the potential antibiotic resistance mechanism of L. pneumophila isolates from the Beijing area, reveal their genetic diversity with other reported strains, characterize their responsible Antibiotic Resistance Genes (ARGs), analyze the correlation between Virulence Factors (VFs) and ARGs, to provide basic information for Legionella Health Risk Assessment in Beijing."),
                         tags$p(class="introduction", tags$strong("Research contents:")),
                         tags$ol(class="introduction",
                           tags$li("It will study the antimicrobial susceptibility of environmental L. pneumophila isolates in Beijing."),
                           tags$li("It will employ a population structure analysis of L. pneumophila strains from clinical and environmental sources to investigate the diversity of genotypes associated with human disease."),
                           tags$li("Besides, it will link the virulence and antibiotic resistance profiles to pangenomic data to generate hypothesis on the evolutionary trajectories of resistance and virulence genes."),
                           
                         )
                ),
              )
            ),
     
      
      ### <-----End Research Gap, Aim and Research Contents--------->
      
      #### Research Plan ####
      tabItem(tabName = "Research_Plan",
              fluidPage(
                tags$head(
                  tags$style(HTML(
                    ".main_research_plan {
                          
                          width: 100%;
                          margin: auto;
                          
                    }
                      
                    #map_frame {
                          /*background: red;*/
                          padding: 20px 0px 20px 0px;
                          width: 60%;
                          height: 560px;
                          margin: auto;
                       }
                    
                    .sample_location {
                      width: 100%;
                      height: 520px;
                      margin: auto;
                    }
                    
                    #video_frame {
                      /*background: red;*/
                      padding: 20px 0px 20px 0px;
                      width: 60%;
                      height: 560px;
                      margin: auto;
                    }
                    
                    .gpu_basecalling {
                      width: 100%;
                      height: 520px;
                      margin: auto;
                    }  
                      
                    #image_frame10 {
                   /*background: red;*/
                   padding: 20px 0px 20px 0px;
                   width: 90%;
                   height: 760px;
                   margin: auto;
                   }
                                    
                   .amr_image10 {
                   width: 100%;
                   height: 720px;
                   margin: auto;
                   }
                        
                        
                        "
                  )),
                ),
                
                tags$div(class = 'main_research_plan',
                         tabsetPanel(type = "tab",
                                     tabPanel("Sample Collection", htmlOutput(outputId = "sample_collection"),
                                              h2(class="project_description", "Sample Collection in Beijing city"),
                                              tags$p(class="introduction", 
                                                     "The sample is collected from the environment in Beijing city including: 3 Waste Water Treatment Plants (WWTPs) effluents, 8 Rivers, 4 Pharmaceutical Plants effluents, 2 Livestock effluent, 2 Water Reservoir. The collection period will be from June-December 2022, which correspond with the season of summer, autumn and early winter. The map shows the samples locations sites in Beijing area."),
                                              tags$div(id="map_frame", 
                                                        tags$iframe(class="sample_location", src="https://www.google.com/maps/d/embed?mid=1rL8PvpID8bjqMO9JsQbJZMmdylqgvBsc&ehbc=2E312F", width="640", height="480"),
                                                       ),
                                              
                                              
                                     ),
                                     tabPanel("Isolation, culture and MIC test", htmlOutput(outputId = "MIC_test"),
                                           h2(class="project_description", "Antimicrobial Susceptibility Testing"),
                                           tags$p(class="introduction", 
                                                  "Minimum Inhibitory Concentration (MIC) testing use as recommended by the European Committee on Antimicrobial Susceptibility Testing (EUCAST) guidelines (44). The MICs of five antibiotics including azithromycin, erythromycin, rifampicin, moxifloxacin and levofloxacin is determined by E-test (Biomerieux) according to  EUCAST recommendations and the manufacturers’ instructions (44). Each L. pneumophila strain is re-suspended in phosphate-buffered saline (PBS) and adjusted to 0.5 McFarland standard. Buffered charcoal yeast extract agar with α-ketoglutarate (BCYE-α) plates is then inoculated with L. pneumophila strains by evenly swabbing the entire surface and applying an E-test gradient strip to the plate. Finally, the MIC is read at the point of intersection of the ellipse with the gradient strip after 48 h at 35°C. The epidemiological cut-off values (ECOFFs) for resistance breakpoints is determined according to EUCAST guidelines as 1 mg/L for azithromycin, erythromycin and moxifloxacin, 0.5 mg/L for levofloxacin, and 0.032 mg/L for rifampicin (45). If  the MIC value is greater than or equal to ECOFF, the test is repeated three times."),
                                     ),
                                     
                                     tabPanel("Nanopore sequencing", htmlOutput(outputId = "Nanopore_sequencing"),
                                              h2(class="project_description", "DNA extraction, Library preparation and Sequencing"), 
                                              tags$p(class="introduction", 
                                                     "Nanopore sequencing is performed on a MinION Mk1B instrument (Oxford Nanopore Technologies, UK) using a SpotON FLO MIN106 flowcells and R9.4.1 chemistry. The sequencing library was constructed from ~4–4.5 μg of size-selected genomic DNA using SQK-LSK 109 Ligation Sequencing Kit and ~900 ng of the library is loaded onto each flowcell. Data acquisition is performed using MinKNOW software, without live basecalling, running on a Lenovo laptop (i7-10900K, 64 bit, 64 GB RAM, 1 Tb SSD HD; Windows 10). Basecalling is performed with Guppy basecaller software, Oxford Nanopore Technologies, GPU version 4.4.1 on our Lab workstation (running Ubuntu 20.0.4.2 LTS, Core(TM) i9-10900K CPU @ 3.70GHZ (20 threads) , 128 GB RAM , Nvidia Quadro GP100, CUDA cores 3584 GPU, 500 GB + 2 TB HHD )."),
                                              tags$div(id="video_frame", 
                                                       tags$iframe(class="gpu_basecalling", width="560", height="315", src="https://www.youtube.com/embed/EEN3NGA0mf8", title="YouTube video player", frameborder="0", allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture, allowfullscreen"),
                                                       ),
                                     ),
                                     
                                     tabPanel("Data Analysis", htmlOutput(outputId = "Data_analysis"),
                                              h2(class="project_description", "Bioinformatics Data Analysis"),
                                              tags$p(class="introduction", 
                                                     "The sequencing reads generated from the MinION Mk1B sequencer is trimmed using the Porechop Tool version 0.2.4 (https://github.com/rrwick/Porechop) and filtered by NanoFilt Tools version 2.8.0 (29) with a Phred quality score (Q-score) of 10 and a minimum read length of 100 bp. The results of the quality control (QC) is analyzed and visualized with NanoComp Tool version 1.14.0 (29). After, the taxonomy clasification is carried out using Kraken2 Tool version 2.1.1 (https://github.com/DerrickWood/kraken2) (30) and displayed using Krona toolkit version 2.8 (31), the relative species abundance estimation is calculated with Bracken tool version 2.6.2 (32). The assembly is performed with Pomoxis (https://github.com/nanoporetech/pomoxis) (mini_assemble script) tool version 0.3.7 using the reference-guided consensus approach. The references genomes is downloaded from NCBI database using the taxonomy ids assigned by Kraken2. The draft assemblies is polished with Medaka software version 1.2.1 (https://github.com/nanoporetech/medaka). The quality of the consensus sequences is assessed with CheckM tool version 1.1.3 (34). The results generated on a scaffold based on the number of contigs, GC-depth analysis, coverage analysis of assembly, and comparison of N50 to ensure its quality. Scaffolds greater than 500 Mbp in sequence length is used for downstream analysis. The scaffolds is re-classified using CAT/BAT tools. The core algorithm of both programs involves gene calling, mapping of predicted ORFs against the nr protein database, and voting-based classification of the entire contig / MAG based on classification of the individual ORFs (35). Next, genome annotation (DNA annotation) is conducted through the “rapid prokaryotic genome annotation” (Prokka) tools version 1.14.6 (36) in a FASTA file format. The analysis of bacterial pangenome is performed by Roary, a rapid large-scale prokaryote pangenome analysis tools (37) using the retrieved published complete genomes of L. pneumophila from the NCBI database. Antibiotic resistance (AMR) and Virulence Factors (VFs) genes in the genome assembled is detected with ABRicate tool version v1.0.1 (https://github.com/tseemann/abricate) by searching against a local antibiotic resistance gene sequence from the CARD (Comprehensive Antibiotic Resistance Database) database (38) and VFDB database respectively (39). For plasmid finding the PlasmidFinder database is used (40). Taxonomic and functional data is visualized using the R packages ggplot2 version 3.1.0 (41) and pheatmap version 1.0.1 (https://github.com/raivokolde/pheatmap). In silico sequence based typing of L. pneumophila strains is performed with LegSTA tool version 0.5.1 (https://github.com/tseemann/legsta). Phylogeny base on core gene and genetic distances between isolates is visualized with iTOL web application version 4 (42), and multi-drug efflux pumps genes alignment to pangenome is made with tBLASTN tool version 2.8.1+ (43)."),
                                     ),
                                     
                                     tabPanel("Road Map", htmlOutput(outputId = "Road_map"),
                                              tags$div(id="road_map_frame", 
                                                       tags$figure(
                                                         tags$div(id="image_frame10",
                                                                  tags$img(class="amr_image10", src="img/road_map.png"),
                                                         ),
                                                         tags$figcaption(class="figure_caption", "Figure 10. It shows the work flow of the research project.")
                                                       ),
                                                       ),
                                              
                                     )
                         )
                )
                
                
              ),
              
              
              
      ),
      
      ### <-----End Research Plan--------->
      
      ### Preliminary Results ###
      tabItem(tabName = "Data_Collection",
              fluidPage(
                tags$head(
                  tags$style(HTML(
                    "h2 {
                          font-size: 24px;
                          color: red;
                      }

                      .main_preliminary_results{
                        width: 100%;
                        margin: auto;
                      }
                      
                      #mytable3 {
                        background: red important!;
                        width:50% important!;
                        height: auto;
                      }
                      
                      .plot_container {
                        width: 80%;
                      }
                      
                      .dataTable_container {
                        width: 80%;
                        margin: auto;
                      }

                        "
                  )),
                ),
                sidebarPanel(
                  fileInput('file3', 'Choose CSV File',
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
                  sliderInput(inputId = "num3", 
                              label = "Number of Observations", 
                              value = 12, min = 1, max = 100),
                  
                  # sliderInput(inputId = "filter",
                  #             label="Filter data sets", 
                  #             value = 0.0025, min = 0, max = 0.01),
                  # actionButton("updatePlot", "Update Bar Plot", style="margin-bottom:10px"),
                  # sliderInput(inputId = "cell_width",
                  #             label = "Heatmap Cell width",
                  #             value = 80, min = 40, max=150),
                  # sliderInput(inputId = "cell_height",
                  #             label = "Heatmap Cell height",
                  #             value = 12, min = 1, max=40),
                  # actionButton("updateHeatmap", "Update Heatmap", style="margin-bottom:10px"),
                  
                ),
              
                mainPanel(
                  tabsetPanel(type = "tab",
                              tabPanel("Genomes collection", htmlOutput(outputId="Genomes_collection"),
                                       tags$div(class="main_preliminary_results",
                                                          h2(class="project_description1", "L. pneumophila genomes"),
                                                         tags$p(class="introduction1",
                                                                "A of total 61 complete published genomes of L. pneumophila was retrieved from the NCBI database, the year range includes from 1950s-2020. The sample source are: 39 clinical, 16 environmental and 6 unknown. Sample region includes: 46 USA, 6 Norway, 4 France, 1 Germany, 1 Canada, 1 China, 1 Denmark and 1 Spain. The dataset also cover 15 serotypes of L. pneumophila: ST36 (40% ), ST1 (7%), and others STs (53 %). In addition, the four well characterized L. pneumophila subspecies have been also included (pneumophila, fraseri, pasculeii and raphaeli). Table 2 showcases a summary of the genomes dataset and the annotation performed with Prokka (v1.14.6) on this study."),
                                                          tags$p(class="introduction1",
                                                                "Genome annotation is the process of identifying and labeling all the relevant features on a genome sequence (46). At minimum, this should include coordinates of predicted coding regions and their putative products, but it is desirable to go beyond this to non-coding RNAs, signal peptides and so on. With the development of ultra-high-throughput technologies, the cost of sequencing bacterial genomes has been vastly reduced. As more genomes are sequenced, less time can be spent manually annotating those genomes, resulting in an increased reliance on automatic annotation pipelines. However, automatic pipelines can produce inaccurate genome annotation and their results often require manual curation."),
                                                          tags$p(class="introduction1",
                                                                    "Here we used Prokka (36). Prokka relies on external feature prediction tools to identify the coordinates of genomics features within contigs. These tools are Prodigal (47) for coding sequence (CDS), RNAmmer (48) for Ribosomal RNA genes (rRNA), Aragorn (49) for Transfer RNA genes, SignalP (50) for Signal leader peptides and Infernal (51) for Non-coding RNA and all of them, except for Prodigal, provide coordinates and appropriate labels to describe the feature. The 61 L. pneumophila references genomes were relatively conserved in genome size, G+C content, number of protein-coding sequence (CDS) and gene size (Table 2). The number of genes per strain ranged from 2,926 to 3,490. All genomes have approximately the same codon usage frequency. All of the references genomes were annotated successfully and they can be used for downstream analysis like pangenome analysis."),
                                                ),
                                      ),
                              tabPanel("Dataset", DT::dataTableOutput(outputId = "mytable3"),),
                              tabPanel("Summary", verbatimTextOutput(outputId = "genomes_stats")),
                              tabPanel("Sample source", plotlyOutput(outputId = "sample_source", height = 500))
                          )
                )
                
            )  
              
      ),
      
      
      
      ### <-----End Preliminary Results and Challenges--------->
      
      
      ### Pangenomes Analysis ####
      
      tabItem(tabName = "Pangenomes_Analysis",
              fluidPage(
                tags$head(
                  tags$style(HTML(
                    "h2 {
                          font-size: 24px;
                          color: red;
                        }
                        
                        .pangenomes_theme {
                          
                          width: 100%;
                          margin: auto;
                          
                        }
                        
                        #image_frame11 {
                            /*background: red;*/
                            padding: 20px 50px 20px 50px;
                            width: 80%;
                            height: 490px;
                            margin: auto;
                            }
                                    
                      .amr_image11 {
                            width: 100%;
                            height: 460px;
                            margin: auto;
                      }
                            
                        #image_frame12 {
                            /*background: red;*/
                            padding: 20px 50px 20px 50px;
                            width: 100%;
                            height: 560px;
                            margin: auto;
                            }
                                    
                      .amr_image12 {
                            width: 100%;
                            height: 520px;
                            margin: auto;
                      }
                            
                       #image_frame13 {
                            /*background: red;*/
                            padding: 20px 50px 20px 50px;
                            width: 100%;
                            height: 560px;
                            margin: auto;
                            }
                                    
                      .amr_image13 {
                            width: 100%;
                            height: 520px;
                            margin: auto;
                            } 
                        
                        "
                  )),
                ),
                
                sidebarPanel(
                  fileInput('file4', 'Choose CSV File',
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
                  sliderInput(inputId = "num5", 
                              label = "Number of Observations", 
                              value = 12, min = 1, max = 100),
                ),
                
                mainPanel(
                  tags$div(class = 'pangenomes_theme',
                           tabsetPanel(type = "tab",
                                       tabPanel("Pangenomes studies", htmlOutput(outputId = "Pangenome_studies"),
                                                h2(class="project_description1", "L. pneumophila genomes"),
                                                tags$p(class="introduction1", 
                                                       "Pangenomes studies can disclose characteristics that are not easily perceptible using standard annotation analysis (52). For example, pangenome studies have facilitated identification of virulence factors or anti-drugs systems in Escherichia coli and Streptococcus agalactiae (53, 54). The dispensable genome compartment can provide evidence of lateral gene transfer events that have occurred during the evolutionary history of a strain, probably offering additional evolutionary potential to the organism. Besides, pangenome analysis facilitated the identification of strain-specific features, as well as some that are shared by two or more strains. On survey identified in L. pneumophila the following: 1- three islands related to anti-drug resistance systems; 2- a system for transport and secretion of heavy metals; 3- three systems related to DNA transfer; 4- two CRISPR (Clustered Regularly Interspaced Short Palindromic Repeats) systems, known to provide resistance against phage infections, one similar in the Lens and Alcoy strains, and another specific to the Paris strain; and 5- seven islands of phage-related proteins, five of which seem to be strain-specific and two shared."),
                                                tags$p(class="introduction1", 
                                                       "On this study to assess the gene content among the genomes, putative genes from all the genomes were grouped into clusters where each cluster member is homologous to one another. The clusters represented proteins shared between the genomes, and the presence of a member within these clusters for a particular strain represents the existence of the gene for this protein within the genome of that strain. As determined by Roary pipeline (Figure 11), the pangenome consisted of 1145 core genes clusters and 6133 accessory genes clusters out of a total of 10373 genes (including 249 soft-core genes and 2846 shell not counted in the core and accessory genome). Core gene clusters present in all 61 L. pneumophila genomes were used in downstream phylogenetic analysis."),
                                                tags$figure(
                                                  tags$div(id="image_frame11",
                                                           tags$img(class="amr_image11", src="img/Pangenomes_stats.png"),
                                                  ),
                                                  tags$figcaption(class="figure_caption", "Figure 11. L. pneumophila pangenome statistics.")
                                                ),
                                       ),
                                       
                                       tabPanel("Dataset", DT::dataTableOutput(outputId = "mytable4"),),
                                       
                                       tabPanel("Roary scritp", textOutput(outputId = "Roary_scritp"),
                                                #tags$code(class="project_description1", "#!/bin/bash"),
                                                ),
                                       
                                       tabPanel("Pangenomes matrix", htmlOutput(outputId = "Pangenome_matrix"),
                                                tags$figure(
                                                  tags$div(id="image_frame12",
                                                           tags$img(class="amr_image12", src="img/pangenome_matrix.png"),
                                                  ),
                                                  tags$figcaption(class="figure_caption", "Figure 12. L. pneumophila pangenome matrix.")
                                                ),
                                       ),
                                       tabPanel("Pangenomes frequency", htmlOutput(outputId = "pangenome_frequency"),
                                                tags$figure(
                                                  tags$div(id="image_frame13",
                                                           tags$img(class="amr_image13", src="img/pangenome_frequency.png"),
                                                  ),
                                                  tags$figcaption(class="figure_caption", "Figure 13. L. pneumophila pangenome frequency.")
                                                ), 
                                       )
                           )
                  )
                )
                
                
                
                
                
              ),
              
              
              
      ),
      
      ### <-----End Pangenomes Analysis--------->
      
      ### Test ####
      tabItem(tabName = "Test",
              fluidPage(
                tags$head(
                  tags$style(HTML(
                    "h2 {
                          font-size: 24px;
                          color: red;
                        }
                        
                        
                        "
                  )),
                ),
                
                sidebarPanel(
                  fileInput('file4', 'Choose CSV File',
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
                  sliderInput(inputId = "num5", 
                              label = "Number of Observations", 
                              value = 12, min = 1, max = 100),
                ),
                
                mainPanel(
                  tabsetPanel(type = "tab",
                              
                              tabPanel("Dataset", 
                                       DT::dataTableOutput(outputId = "mytable4"), ),
                              
                              tabPanel("Plot1", 
                                       plotlyOutput(outputId = "plot1", height = 250),),
                              
                              tabPanel("Plot2", 
                                       plotlyOutput(outputId = "plot2", height = 250),),
                              
                              tabPanel("Variable", 
                                       uiOutput(outputId = "inputwidget", height = 250))
                              
                              #)
                  )
                  
                )
                
                
                
                
              ),
              
              
              
      ),
      
      ### <-----End test--------->
      
      ### Second tab content ###
     tabItem(tabName = "Reads_QC",
              fluidPage(
                tags$head(
                  tags$style(HTML(
                    "h2 {
                          font-size: 24px;
                          color: red;
                        }
                        
                        .main_menu_theme {
                          
                          width: 80%;
                          margin: auto;
                          
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

                tags$div(class = 'main_menu_theme',
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
