


# 1.00  shinyUI start point----

shinyUI(dashboardPage(skin = "blue",
                    
                
                    
                    dashboardHeader(title = app_title,
                                   
                                    headerMsg1,
                                    dynamicMsgMenu,
                                   # NotiMenuObj,
                                    disable = F
                    ),
                    
                    #ui.sideBar----
                    dashboardSidebar(
                    
                      use_pop(), 
                      sidebarMenu
                    ),
                    
                    #ui.body----
                    dashboardBody(
                      workAreaSetting
                    )
)
)


