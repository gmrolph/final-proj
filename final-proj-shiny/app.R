library(shiny)
library(shinythemes)
library(tidyverse)

ui <- fluidPage(
    theme = shinytheme("lumen"),
    navbarPage(tags$b("Students in Schools"),
    tabPanel("About this Project",
             imageOutput("image", width = "100%", height = "100%"),
             h1(tags$b("Students in Schools"), align = "center"),
             p(tags$em("An analysis of educational influences with standardized test scores"), align = "center"),
             
             h1(tags$b("Government 1005 Final Project"), align = "center"),
             fluidRow(column(2), column(8,
                                        p("This project was conducted as the cumulative assessment of Government
               1005 in the spring of 2020. The project began as a result of my 
               interest in education and education policy, and my desire to use my
               newly-acquired data analysis skills to look at trends across the nation.
               All of the data included in this project was originally gathered 
               from the internet, using each state's respective Department of Education
               websites to retrieve it. Because of the fact that states vary greatly 
               in terms of their individual data privacy policies, my search for 
               information on each of the 50 states was quickly reduced to a pool
               of about 20 states. However, the states that I was able to gather 
               the requisite information on proved to have data that was quite comprehensive.
               I joined these dozens of different datasets according to state and 
               was then able to plot educational outcome (coded as a district's 
               average SAT or ACT score) against several other variables including
               a school district's operating budget or the demographic makeup of 
               the school. I also drew a line of best fit for each of the graphs 
               to make the visualization more useful since most of the graphs are
               scatter plots that have a lot of data that can be hard to interpret
               with one's naked eye.")
             )),
             imageOutput("fakeimage", width = "100%", height = "100%"),
             h1(tags$b("Government 1033 Final Project"), align = "center"),
             fluidRow(column(2), column(8,
                                        p("Students in Schools was conducted in tandem with a final project
               for Government 1033: Educational Ethics (cross-listed as EDU A203
               at HGSE). The final project for Gov 1033 relied on the data analysis 
               that was conducted for Students in Schools, and consisted of a case
               study analyzing the normative considerations that stem from the data. 
               Though the data does not provide any hard-and-fast conclusions that 
               remain true across the entire nation, there certainly are trends 
               that are recognizable across many states (such as the fact that as 
               the percentage of white students goes up in a school, standardized 
               test scores increase, possibly indicating heavy divisions in quality 
               of schools split by race). Based on the data analysis that took place 
               for Students in Schools, I wrote a case study analysis from the 
               point of view of the incoming Secretary of Education in 2020 where 
               I analyzed the state of the nation's schools and broad trends across 
               the states to paint a picture of the nation's schools for the reader. 
               I then brought in evidence from outside the data to show that 
               classrooms with certain characteristics are more likely to lead 
               to successful students. The final product also included an analytic
               comment addressing the dilemma and offering one possible course of 
               action for the new Secretary. If you are interested in reading the
               case study and the accompanying analytic comment, the paper can be 
               accessed at ________"))),
        ),
    
    tabPanel("Outcome by State",
        sidebarLayout(
            sidebarPanel(
                selectInput("selectstate", "Choose a state",
                    choices = list("California", "Colorado", "Connecticut",
                                   "Florida", "Georgia", "Indiana",
                                   "Iowa", "Kentucky", "Louisiana",
                                   "Massachusetts", "Nevada", "Oklahoma",
                                   "Pennsylvania", "South Carolina", "South Dakota",
                                   "Tennessee", "Texas", "Wisconsin", "Wyoming"))),
                
            mainPanel(
                imageOutput("state"),
                width = 8)
    )),
    tabPanel("Correlation by Demographic",
        sidebarLayout(
            sidebarPanel(
                numericInput("obs", "Observations:", 10,
                             1, 100)
            ),
        mainPanel(width = 8) 
            )),
    tabPanel("Contact and Information",
             h1(tags$b("Contact and Info"), align = "center"),
             p("Project by Garrett Rolph, Harvard class of 2022.", align = "center"),
             p("Final project conducted jointly with Government 1005: Data and Government 1033: Educational Ethics", align = "center"),
             p("Email: garrett_rolph@college.harvard.edu", align = "center"),
             p(tags$a(href = "https://github.com/gmrolph", "GitHub: gmrolph"), align = "center")
    ))
)


server <- function(input, output) {
    output$state <- renderImage({
        case_when(input$selectstate == "California" ~ "ok-act-supt.png",
                  input$selectstate == "Colorado" ~ "colorado_gender_outcome.png",
                  input$selectstate == "Connecticut" ~ "connecticut_sat_staffdemos.png",
                  input$selectstate == "Florida" ~ "florida_school_board.png",
                  input$selectstate == "Georgia" ~ "florida_superintendents.png",
                  input$selectstate == "Indiana" ~ "indiana_sat_spending.png",
                  input$selectstate == "Iowa" ~ "indiana_act_spending.png",
                  input$selectstate == "Kentucky" ~ "kentucky-act-expenditure.png",
                  input$selectstate == "Louisiana" ~ "kentucky-act-teacher.png",
                  input$selectstate == "Massachusetts" ~ "kentucky-act-principal.png",
                  input$selectstate == "Nevada" ~ "mass-sat-ppe-math.png",
                  input$selectstate == "Oklahoma" ~ "mass-sat-ppe-reading.png",
                  input$selectstate == "Pennsylvania" ~ "mass-sat-demos-reading.png",
                  input$selectstate == "South Carolina" ~ "mass-sat-demos-math.png",
                  input$selectstate == "South Dakota" ~ "mass-sat-sals-reading.png",
                  input$selectstate == "Tennessee" ~ "mass-sat-sals-math.png",
                  input$selectstate == "Texas" ~ "nv-demo-outcomes.png",
                  input$selectstate == "Wisconsin" ~ "nv-financial-outcomes.png",
                  input$selectstate == "Wyoming" ~ "ok-act-staff.png")
        
        
        
        deleteFile = FALSE
    }
    )
    output$image <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'coe_hp_new.png', 
             height = 444,
             width = 800, style="display: block; margin-left: auto; margin-right: auto;")
    }, deleteFile = FALSE
    )
    
    output$fakeimage <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'fake-correlations.png', 
             height = 444,
             width = 800, style="display: block; margin-left: auto; margin-right: auto;")
    }, deleteFile = FALSE
    )
}
shinyApp(ui = ui, server = server)
