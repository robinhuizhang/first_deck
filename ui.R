# ui.R

shinyUI(fluidPage(
    titlePanel("Simple Calculator"),
    
    sidebarLayout(
        sidebarPanel(
            helpText("This app is to create a simple calculator 
                     including adding, subtracting, multiplication and division!"),
            
            numericInput("var1", 
                        label = "Please input a number",
                        value = 12
                        ),
            selectInput("operator", "Please choose an operater",
                        c("+","-","x","/"),selected="+"),
            numericInput("var2", 
                         label = "Please input another number",
                         value = 20
                        )
                 ),
          
        mainPanel(
            tabsetPanel(
             tabPanel(h2(strong("Result")),
               br(),
               textOutput("var1"),
               textOutput("operator"),
               textOutput("var2"),
               h2(strong(textOutput("var3"))) 
           
        ),
        tabPanel(h2(strong("Documentation")),
                 br(),
                 p("This is a calculator which can 
                   help you to calculate any two 
                   numbers for adding, subtracting, 
                   multiplication and division."),
                 p("You just need to input or choose two 
                   numbers and choose an operator,
                   the result will show in the right panel automatically."),
                 p("Enjoy!")
                 )))
    )
))
