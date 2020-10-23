#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Loan Calculator"),
        
    sidebarLayout(
            sidebarPanel(
                numericInput("Loan Amount",
                             label = h5("Enter the amount:"),
                             value = 1000),
            br(),
            sliderInput("Interest Rate",
                        label = h5("Indicate the rate of interest(in %)"),
                        min = 0, max = 25, value = 10),
            br(),
            sliderInput("Time Period",
                        label = h5("Select the duration of the loan"),
                        min = 0, max = 200, value = 2),
            
            )
        )
    )

)
