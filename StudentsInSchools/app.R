library(shiny)
library(shinythemes)
library(tidyverse)
library(shinydashboard)


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
               accessed at ________")))
        ),
    tabPanel("South",
             mainPanel(
                 fixedRow(
                     column(1, "", offset = 2, imageOutput("fl_superintendent")),
                     column(1, "", offset = 8, imageOutput("fl_teachers")),
                 fixedRow(
                     column(1, "", offset = 2, imageOutput("ky_act_teacher")),
                     column(1, "", offset = 8, imageOutput("ky_act_principal")),
                 fixedRow(
                     column(1, "", offset = 2, imageOutput("ok_act_staff")),
                     column(1, "", offset = 8, imageOutput("sc_act_financial")),
                 fixedRow(
                     column(1, "", offset = 2, imageOutput("tn_act_expenditures")),
                     column(1, "", offset = 8, imageOutput("tx_act_financial"))
                 )
                 )
                 )
                 )
                 )
    ),
    tabPanel("Midwest",
             mainPanel(
                 fixedRow(
                     column(1, "", offset = 2, imageOutput("co_sat_salary")),
                     column(1, "", offset = 8, imageOutput("wy_act_salary")),
                 fixedRow(
                     column(1, "", offset = 2, imageOutput("sd_act_stsr")),
                     column(1, "", offset = 8, imageOutput("wi_act_financial"))
                 )
                 )
                     )
             ),
    tabPanel("Northeast",
             mainPanel(
                 fixedRow(
                     column(1, "", imageOutput("conn_engl_doll")),
                     column(1, "", offset = 8, imageOutput("conn_math_doll"))),
                 fixedRow(
                     column(1, "", imageOutput("mass_math_sals")),
                     column(1, "", offset = 8, imageOutput("mass_reading_ppe"))
                 )
             )),
    tabPanel("West",
             mainPanel(
                 fixedRow(
                     column(1, "", imageOutput("test")),
                     column(1, "", offset = 8, imageOutput("test2")))
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

    output$co_sat_salary <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'colorado_sat_salary.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$conn_engl_doll <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'connecticut_sat_ela_expenditure.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$conn_math_doll <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'connecticut_sat_math_expenditure.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$conn_sat_demos <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'connecticut_sat_staffdemos.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$fl_school_board <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'florida_school_board.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$fl_superintendent <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'florida_superintendents.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$fl_teachers <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'florida_teachers.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )

    output$in_act_doll <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'indiana_act_spending.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$in_sat_doll <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'indiana_sat_spending.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$ky_act_teacher <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'kentucky-act-teacher.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$ky_act_principal <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'kentucky-act-principal.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$mass_math_demos <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'mass-sat-demos-math.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$mass_math_sals <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'mass-sat-sals-math.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$mass_reading_ppe <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'mass-sat-ppe-reading.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$ok_act_staff <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'ok-act-staff.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$sc_act_financial <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'sc-act-financial.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$sc_act_demos <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'sc-act-demos.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$sd_act_stsr <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'sd-act-stsr.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$test <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'nv-demo-outcomes.png', 
             height = 400,
             width = 700,
             style="display: block; margin-left: auto; margin-right: auto;")
        
    }, deleteFile = FALSE
    )
    
    output$test2 <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'nv-financial-outcomes.png', 
             height = 400,
             width = 700,
             style="display: block; margin-left: auto; margin-right: right;")
    }, deleteFile = FALSE
    )

    output$tn_act_expenditures <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'tn-act-expenditures.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$tn_act_demos <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'tn-act-demos.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$tx_act_financial <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'tx-act-financial.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$wi_act_financial <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'wi-act-financial.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
    )
    
    output$wy_act_salary <- renderImage({
        # Return a list containing the filename and alt text
        list(src = 'wy-act-salary.png', 
             height = 400,
             width = 700)
    }, deleteFile = FALSE
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
        list(src = 'classroom.jpeg', 
             height = 444,
             width = 800, style="display: block; margin-left: auto; margin-right: auto;")
    }, deleteFile = FALSE
    )
}

shinyApp(ui = ui, server = server)
