shinyApp(
    
    ui = fluidPage(
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
                            c("+","-","x","/")),
                numericInput("var2", 
                             label = "Please input another number",
                             value = 20
                ),
                actionButton("goButton",h2(strong("Calculate"))),
                p("Please click above 'Calculate' button to get result in right panel!")
                ),
            
            mainPanel(
                tabsetPanel(
                    tabPanel(h2(strong("Result")),
                             br(),
                             textOutput("var1"),
                             textOutput("operator"),
                             textOutput("var2"),
                             h2(strong(textOutput("goButton"))) 
                             
                    ),
                    tabPanel(h2(strong("Documentation")),
                             br(),
                             p("This is a calculator which can 
                               help you to calculate any two 
                               numbers for adding, subtracting, 
                               multiplication and division."),
                             p("You just need to input or choose two 
                               numbers and choose an operator,
                               then press 'Calculate' button 
                               to get the result in the right panel."),
                             p("Enjoy!")
                             )))
                )
                    ),
    
    server = function(input, output) {
        
        output$var1 <- renderText({ 
            paste("You have input ", input$var1)
            
        })
        output$operator <- renderText({ 
            paste("You have chosen an operator ", input$operator)
            
        })
        output$var2 <- renderText({ 
            paste("You have input ", input$var2)
        })},
    
    options = list(height = 500)
                )