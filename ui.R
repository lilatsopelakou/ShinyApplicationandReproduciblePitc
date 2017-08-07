library(shiny) 
shinyUI(
  pageWithSidebar(
   
    # Application title
    headerPanel("BMI Calculator"),
    
    sidebarPanel(
      numericInput('Weight', 'Insert your weight in kilograms', 56) ,
      numericInput('Height', 'Insert your height in meters', 1.72, min = 0.4, max = 2.2, step = 0.01)
    ), 
    mainPanel(
      p('Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.'),
      p('Regarding the BMI measure, the World Health Organization (WHO) proposes the following classification:'),
      tags$div(
        tags$ul(
          tags$li('BMI <18.5       : Underweight'),
          tags$li('BMI [18.5-24.9] : Normal weight'),
          tags$li('BMI [25-29.9]   : Overweight'),
          tags$li('BMI >=30        : Obesity')
        )
      ),
      
      h4('Taking into account the values entered by you:',style="color:blue;"), 
      p('weight:',style="color:blue;"), verbatimTextOutput("inputweightvalue"),
      p('height:',style="color:blue;"), verbatimTextOutput("inputheightvalue"),
      h4('Your calulated BMI is:',style="color:red;"),
      verbatimTextOutput("estimation"),
      p('It means that you are:',style="color:red;"),strong(verbatimTextOutput("diagnostic"))
      
      
    )
    
  )   
)
