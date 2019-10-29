menu_column <- tabItem(tabName = "column",
                       fluidRow(
                         column(width = 3,
                                box(
                                  title = "步骤0：品牌选择", width = NULL, solidHeader = TRUE, status = "primary",
                                  
                                  mdl_ListChoose1('nsup_brand_sel2','品牌选择',
                                                  choiceNames = vect_as_list(brand_name),
                                                  choiceValues = vect_as_list(brand_number),
                                                  selected = 'JBLH'
                                  )
                                )
                         ),
                         column(width = 3,
                              
                                box(
                                  title = "步骤1：更新全部", width = NULL, solidHeader = TRUE, status = "primary",
                                  actionButton('nsup_update_all','更新全部')
                                )
                         ),
                         column(width = 6,
                           
                                box(
                                  title = "步骤2:处理结果下载", width = NULL, solidHeader = TRUE, status = "primary"
                                  ,div('提示:下载数据适配来也')
                                  ,mdl_integer('each_page2','每页数量',min = 3000L,max = 8000L,value = 7000L,step = 1000L)
                                  ,actionButton('save_page2','保存每页设置，点击生效')
                                  ,mdl_download_button('nsup_output_download2','下载文件,更新知识库')
                                )
                         )
                        
                         
                        
                       )
)
