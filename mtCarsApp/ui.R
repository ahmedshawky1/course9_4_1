# Define UI for dataset viewer app ----
ui <- fluidPage(
  
  # App title ----
  titlePanel("Basic Data Explortery"),
  
  # Sidebar layout with a input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      # Input: Selector for choosing dataset ----
      selectInput(inputId = "dataset",
                  label = "Choose a dataset:",
                  choices = c("rock", "pressure", "cars" , "mtcars"))
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      
      h3('names of col Dataset'),
      verbatimTextOutput("names"),
      h3('dim Dataset'),
      verbatimTextOutput("dim"),
      h3('str Dataset'),
      verbatimTextOutput("str"),
      h3('summary Dataset'),
      verbatimTextOutput("summary"),
      h3('head Dataset'),
      tableOutput("head"),
      h3('Plot all variable vs each others'),
      plotOutput("plot1"),
      h3('histogram for each variable'),
      plotOutput("plot2") , 
      h3('Plot Missing values for each variable'),
      plotOutput("plot3")  ,
      h3('Plot density for each variable '),
      plotOutput("plot4")  ,
      h3('Plot correlation between variables'),
      plotOutput("plot5")  
    )
    
    
    
  )
)