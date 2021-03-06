#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

#load("./data/distancias_radio.RData")
#df_acc <- read_sf("./data/distancias_radio.geojson")


# Define UI for application that draws a histogram

    dashboardPage(

        dashboardHeader(title="Mapa de accesibilidad a servicios básicos V1.0",
                        titleWidth = 500,
                        
                        dropdownMenu(type = "messages",
                                     headerText="Acerca del mapa",
                                     icon= icon("list", lib = "glyphicon"),
                                     badgeStatus='info',
                                     notificationItem(
                                         icon= icon("map", lib = "glyphicon"),
                                         #from = "Sales Dept",
                                         text = "Acerca del mapa",
                                         status ="info",
                                         href = ""
                                     )
                        )
        ),
         dashboardSidebar(title= div(img(src="logo.png")),
                           width=500,
                           
            
            actionButton(inputId = "supermarkets", label = "Supermercados"),
            actionButton(inputId = "grocery_or_supermarket", label = "Alamcenes"),
            actionButton(inputId = "convenience_store", label = "Tiendas"),
            actionButton(inputId = "atm", label = "Cajeros automáticos"),
            actionButton(inputId = "banks", label = "Bancos")
            
        )
        , dashboardBody(
        
            mapdeckOutput(outputId = "map", height = "900px")
        )
    )
    
