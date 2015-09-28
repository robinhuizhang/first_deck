# server.R

shinyServer(function(input, output) {
    
    output$var1 <- renderText({ 
        paste("You have input ", input$var1)
        
    })
    output$operator <- renderText({ 
        paste("You have chosen an operator ", input$operator)
        
    })
    output$var2 <- renderText({ 
        paste("You have input ", input$var2)
    })
    
    cal=function(var1,operator,var2){
        switch(operator,
               "+"=var1+var2,
               "-"=var1-var2,
               "x"=var1*var2,
               "/"=var1/var2)
    }
   
    output$var3 <- renderText({ 
        #formula <- paste0(input$var1, input$operator, input$var2)
        #result <- eval(parse( text=formula))
        paste("The result is ", cal(input$var1, input$operator, input$var2))
    })
    
}
)
