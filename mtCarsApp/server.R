
library(DataExplorer)
server <- function(input, output,session) {
  
  # Return the requested dataset ----
  datasetInput <- reactive({
    switch(input$dataset,
           "rock" = rock,
           "pressure" = pressure,
           "cars" = cars,
           "mtcars"=mtcars)
    
    
   
    
    
  })
  
  
  

  
  # Generate a dim of the dataset ----
  
  
  output$dim <- renderPrint({
    
    dim(datasetInput())
  })
  
  #get data set col names
  output$names <- renderPrint({
    
    names(datasetInput())
  })
  # Generate a str of the dataset ----
  output$str <- renderPrint({
    
    str(datasetInput())
  })
  

  # Generate a summary of the dataset ----
  output$summary <- renderPrint({
    
    summary(datasetInput())
  })
  
  # Show the first "5" observations ----
  output$head <- renderTable({
    head(datasetInput())
    
    
    
    
  })
  
  
  output$plot1 <- renderPlot({
    plot(datasetInput())
  })
  
  
  
  output$plot2 <- renderPlot({
    plot_histogram(datasetInput())
  })
  
  
  output$plot3 <- renderPlot({
    plot_missing(datasetInput())
  })
  
  
  output$plot4 <- renderPlot({
    plot_density(datasetInput())
  })
  
  output$plot5 <- renderPlot({
    plot_correlation(datasetInput(), type = 'continuous','Review.Date')
  })
  
  
}