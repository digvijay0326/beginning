library(shiny)
library(gapminder)
ui <- fluidPage(
  
  titlePanel("Gapminder Data ") , 
  
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("continent" , 
                         "choose which continent" , 
                         choices = levels(gapminder$continent),
                         selected = c("Asia" , "Africa")) ,
      sliderInput("years" , 
                  "select years" ,
                   min = min(gapminder$year) ,
                   max = max(gapminder$year) , 
                   value = c(min(gapminder$year), max(gapminder$year)),
                  step = 1) ,
      selectInput("count",
                  "select country for comparision" , 
                  choices = levels(gapminder$country) ,
                  selected = "France")
    ) ,
    mainPanel ()
  )
)
server <- function(input , output){
  
}
shinyApp(ui = ui , server = server)
