menu_row <- tabItem(tabName = "row",
                    fluidRow(
                      column(width = 4,
                             box(
                               title = "步骤0：品牌选择", width = NULL, solidHeader = TRUE, status = "primary",
                               
                               mdl_ListChoose1('nsup_brand_sel','品牌选择',
                                               choiceNames = vect_as_list(brand_name),
                                               choiceValues = vect_as_list(brand_number),
                                               selected = 'JBLH'
                               )
                             )
                      ),
                      
                      column(width = 4,
                             box(
                               title = "步骤1:问答对全量ID化", width = NULL, solidHeader = TRUE, status = "primary",
                               actionButton('nsup_qalist_idize','问答对全量ID化')
                             ),
                             box(
                               title = "步骤2:NSCL全量更新", width = NULL, solidHeader = TRUE, status = "primary",
                               "Box content"
                             ),
                             box(
                               title = "步骤3:NSBL全量更新", width = NULL, solidHeader = TRUE, status = "primary",
                               "Box content"
                             )
                      ),
                      
                      column(width=4,
                             box(
                               title = "步骤4:NSDICT全量更新", width = NULL, solidHeader = TRUE, status = "primary",
                               "Box content"
                             ),
                             box(
                               title = "步骤5:NSCS全量更新", width = NULL, solidHeader = TRUE, status = "primary",
                               "Box content"
                             ),
                             box(
                               title = "步骤6:处理结果下载", width = NULL, solidHeader = TRUE, status = "primary",
                               "Box content"
                             )
                      )
                    )
)
