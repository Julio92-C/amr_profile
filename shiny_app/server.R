# Load packages 
library(plotly)
library(ggplot2)
library(ggpubr)
library(tidyverse)
library(paletteer)
library(pheatmap)
library(DT)
library(datasets)




server <- function(input, output, session) { 
  #<----------Preliminary Results------------->
  genomes_dataset <- reactive({
    
    
    inFile <- input$file3
    
    
    if (is.null(inFile))
      return(NULL)
    
    data <-read.csv(inFile$datapath, header=input$header, sep=input$sep, quote=input$quote)
  })
  
  output$mytable3 = DT::renderDataTable({
    DT::datatable(genomes_dataset(), options = list(pageLength = input$num3))
  })
  
  output$genomes_stats <- renderPrint({
    genomes_stats_summary <- summary(genomes_dataset())
    print(genomes_stats_summary)
    
    })
  
    output$sample_source <- renderPlotly({
    # Load the data sets
    ss_data <- genomes_dataset()
    
    # Sample source Frequency
    s <- ggplot(ss_data, aes(x=factor(Source), fill=Source))
    s <- s + labs(x="Sample source", y="Frequency")
    s <- s + geom_bar(stat="count", width=0.7, color="black")
    s <- s + scale_x_discrete(limits=c("Clinical", "Environmental", 
                                       "Unknown"))
    s <- s +  theme_classic()
    s <- s + ggtitle("Sample Source Frequency")
    s <- s + theme(plot.title = element_text(hjust = 0.5))
    #s <- s + theme(legend.position="none")
    s
    
    # Sample source Bar Plot with PLOTLY ####
    sample_source_freq <- plotly::ggplotly(s)
    sample_source_freq
    
    })
  
  
  
  
  #<----------End Preliminary Results------------->
    
  #<----------Pangenomes Analysis----------------->
    genes_matrix <- reactive({
      
      
      inFile <- input$file4
      
      
      if (is.null(inFile))
        return(NULL)
      
      data <-read.csv(inFile$datapath, header=input$header, sep=input$sep, quote=input$quote)
    })
    
    output$mytable4 = DT::renderDataTable({
      DT::datatable(genes_matrix(), options = list(pageLength = input$num5))
    })
    
    output$Roary_scritp <- renderText({
      readLines(genes_matrix())
    })
    
  #<---------- End Pangenomes Analysis------------>
    
    
  #<----------Test------------->
    ## for display of first few observations of mtcars dataset
    mtcars <- reactive({
      inFile <- input$file4
      
      
      if (is.null(inFile))
        return(NULL)
      
      data <-read.csv(inFile$datapath, header=input$header, sep=input$sep, quote=input$quote)
      
    })
    
    
    # output$data <- renderTable({
    #   head(mtcars())
    # })
    
    output$mytable4 = DT::renderDataTable({
      DT::datatable(mtcars(), options = list(pageLength = input$num5))
    })
    
    ## Plotly Scatter Plot
    output$plot1 <- renderPlotly({
      plot_ly(data=mtcars(), 
              x=~wt, 
              y=~mpg,
              type = "scatter",
              mode = "markers")
      
    })
    
    
    ## Plotly Histogram
    output$plot2 <- renderPlotly({
      plot_ly(data=mtcars(), x=~mpg, type="histogram")
      
      
    })
    
    ## input widget
    output$inputwidget <- renderUI({
      selectInput(inputId = "in", "select a variable", choices = names(mtcars()))
    })
    
    
  #<----------End test------------->
    
  
  # <---------Analysis of AMR data sets ------>
  abundance_data <- reactive({
    # input$file1 will be NULL initially. After the user selects and uploads a 
    # file, it will be a data frame with 'name', 'size', 'type', and 'datapath' 
    # columns. The 'datapath' column will contain the local filenames where the 
    # data can be found.
    
    inFile <- input$file2
    
    
    if (is.null(inFile))
      return(NULL)
    
    data <-read.csv(inFile$datapath, header=input$header, sep=input$sep, quote=input$quote)
  })
  
  output$mytable2 = DT::renderDataTable({
    DT::datatable(abundance_data(), options = list(pageLength = input$num2))
  })
  
  output$abc_stats <- renderPrint({
    abc_stats_summary <- summary(abundance_data())
    print(abc_stats_summary)
  })
  
  
  output$abc_bar_plot <- renderPlotly({
    # Load the data sets
    data_list_merge <- abundance_data()
    
    # # Filter dataset
    input$updatePlot
    
    isolate(input_data <- data_list_merge[data_list_merge$batch1 > input$filter,])
      
      
    
    # Format the data-frame from "wide-format" to "long-format" using gather() ####
    input_data2 <- input_data %>%
      gather(Total, Value, -name)
    
    # more control over colours
    my_pallete <- viridis::cividis(841)
   

    p <- ggplot(input_data2, aes(x=Total, y=Value, fill=name))
    p <- p + geom_col(position = "fill", col = "white")
    p <- p + scale_y_continuous(labels = function(x) paste0(x*100, "%"))
    p <- p + labs(x="Splitted Data-sets", y="Relative Abundance (%)")
    p <- p + theme_classic()
    p <- p + theme(axis.text.x = element_text(angle = 0, vjust = 0.5, hjust=0.5))
    p <- p + theme(legend.position="right")
    p <- p + scale_fill_manual(values = my_pallete)
    p

    # Relative Abundance Bar Plot with PLOTLY ####
    fig_relative_abc <- plotly::ggplotly(p)
    fig_relative_abc
    
    
  })
  
  output$heatmap_plot <- renderPlot({
    # Load data sets 
    data_list_merge <- abundance_data()
    
    # Change rownames with an existing column name 
    input_data <- data.frame(data_list_merge, row.names = data_list_merge$name)
    
    # Convert from a dataframe to a matrix 
    input_data <- input_data[,2:6]
    
    # Filter dataset by Relative Abundance > 0.5% 
    input$updateHeatmap
    isolate(input_data <- input_data[data_list_merge$batch1 > input$filter,])
    
    # Sort data set by fraction_total_reads 
    input_data <- input_data[order(input_data$batch1),]
    
    # Change column names 
    names(input_data)[1] <- "20%"
    names(input_data)[2] <- "40%"
    names(input_data)[3] <- "60%"
    names(input_data)[4] <- "80%"
    names(input_data)[5] <- "100%"
    colnames(input_data)
    
    
    
    my_pallete1 <- viridis::cividis(22)
    
    #print(my_pallete)
    
    # Create heatmap using pheamap package ###################################################
    hm <- pheatmap(input_data*100, 
             cellwidth = input$cell_width, cellheight = input$cell_height, display_numbers = FALSE,
             col = my_pallete1,
             border_color = "black",
             legend_breaks = c(0.5, 2, 4, 6, 8),
       )
    
    hm
    
  
  })
  
  # <------------AMR stats analysis ---------->
  amra_data <- reactive({
    
    
    inFile <- input$file1
    
    
    if (is.null(inFile))
      return(NULL)
    
    data <-read.csv(inFile$datapath, header=input$header, sep=input$sep, quote=input$quote)
  })
  
  
  
  
  output$mytable = DT::renderDataTable({
    DT::datatable(amra_data(), options = list(pageLength = input$num))
  })
  
  
  output$stats <- renderPrint({
    stats_summary <- summary(amra_data())
    print(stats_summary)
  })
  
  output$amra_stats <- renderPlotly({
    # Load the data sets
    amra_data <- amra_data()
    
    # Set up some variables
    Accuracy <- amra_data$accuracy
    Identity <- amra_data$identity
    Model_Type <- amra_data$model
    Abundance <- (amra_data$abundance*100)
    Category <- amra_data$categories
    Coverage <- amra_data$coverage
    Seq_length <- amra_data$seq_len
    AMR <- amra_data$name
    Specie <- amra_data$taxon
    
    # ARM Model Types Frequency
    q <- ggplot(amra_data, aes(x=factor(Model_Type), fill=Model_Type))
    q <- q + labs(x="Models", y="Frequency")
    q <- q + geom_bar(stat="count", width=0.7, color="black")
    q <- q + scale_x_discrete(limits=c("rRNA mutation model", "protein homolog model",
                                       "protein wild type model", "protein variant model"))
    q <- q +  theme_classic()
    #q <- q + ggtitle("AMR: Model Types Frequency")
    q <- q + theme(plot.title = element_text(hjust = 0.5))
    q <- q + theme(legend.position="none")
    
    
    # # AMR: Identity vs Accuracy
    # r <- ggplot(amra_data, aes(x=Accuracy, y=Identity, size=Abundance,
    #                                     shape=Model_Type))
    # r <- r + geom_point(alpha = 0.5, aes(colour=Model_Type))
    # r <- r + theme_classic()
    # r <- r + theme(legend.position = "none")
    # #r <- r + ggtitle("AMR: Identity vs. Accuracy")
    # r <- r + theme(plot.title = element_text(hjust = 0.5))
    # r <- r + labs(x="Accurracy", y="Identity")
    # r <- r + theme(legend.position="none")
    
    
    #  Boxplot() Model type vs Identity
    b <- ggplot(amra_data, aes(x=reorder(Model_Type, Identity, FUN = median),
                               y=Identity, fill=factor(Model_Type)))
    b <- b + geom_boxplot()
    b <- b + stat_boxplot(geom = 'errorbar', width=0.2)
    b <- b + theme_classic()
    b <- b + theme(legend.position="none")
    
    
    #  Boxplot() Model type vs Accuracy
    a <- ggplot(amra_data, aes(x=reorder(Model_Type, Accuracy, FUN = median), y=Accuracy, fill=Model_Type))
    a <- a + geom_boxplot()
    a <- a + stat_boxplot(geom = 'errorbar', width=0.2)
    a <- a + theme_classic()
    a <- a + theme(legend.position="none")
    
    # Coverage vs sequence length
    c <- ggplot(amra_data, aes(x=Seq_length, y=Coverage, fill=Model_Type))
    c <- c + geom_bin_2d()
    c <- c + theme_classic()
    c <- c + labs(x="Sequence Length (bp)", y="Coverage (%)")
    c <- c + theme(legend.position="none")
    
    
    # Plot Model type vs Identity with PLOTLY ####
    fig1 <- plotly::ggplotly(q)
    
    
    #fig2 <- plotly::ggplotly(r)
    
    
    fig3 <- plotly::ggplotly(a)
    
    
    fig4 <- plotly::ggplotly(b)
    
    fig5 <- plotly::ggplotly(c)
    
    
    
    subplot(fig1, fig3, fig4, fig5,nrows = 4, titleX = TRUE, titleY = TRUE, margin = 0.03)
  })
  output$category_vs_model <- renderPlot({
    # AMR: Category vs Model Type
    j <- ggplot(amra_data(), aes(y=factor(categories), x=model, col=model, size=2, shape=model))
    j <- j + labs(x="Model Type", y="AMR Category")
    j <- j + geom_point()
    j <- j + theme_minimal()
    #j <- j + theme(axis.text.x = element_text(angle = 0, vjust = 0.5, hjust=1))
    #j <- j + ggtitle("AMR: Category vs Model Type")
    j <- j + theme(plot.title = element_text(hjust = 0.5))
    j <- j + theme(legend.position="none")
    j
  })
  output$dot_plot <- renderPlot({
    p <- ggplot(amra_data(), aes(x=accuracy, y=identity, shape=model, size=abundance, col=categories))
    p <- p + geom_point(alpha=0.5)
    p <- p + theme_bw()
    p <- p + facet_wrap( ~ taxon, ncol = 5)
    p <- p + theme(legend.position="none")
    p
    
  })
  output$model_vs_amr <- renderPlotly({
    f <- ggplot(amra_data(), aes(x=accuracy, y=identity, col=categories, 
                                 size=abundance, shape=model, fill=name, group_by=taxon))
    f <- f + geom_point(alpha=0.5)
    f <- f + theme_bw()
    f <- f + theme(legend.position="none")
    f <- f + facet_wrap( ~ model, ncol = 2)
    
    
    # Plot Model type vs Identity with PLOTLY ####
    fig <- plotly::ggplotly(f)
  })
  
  }
