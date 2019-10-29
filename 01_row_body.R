menu_row <- tabItem(tabName = "row",
                    fluidRow(
                      column(width = 3,
                             box(
                               title = "步骤0：品牌选择", width = NULL, solidHeader = TRUE, status = "primary",
                               
                               mdl_ListChoose1('nsup_brand_sel','品牌选择',
                                               choiceNames = vect_as_list(brand_name),
                                               choiceValues = vect_as_list(brand_number),
                                               selected = 'JBLH'
                               )
                             )
                      ),
                      
                      column(width = 5,
                             box(
                               title = "步骤1:问答对全量ID化", width = NULL, solidHeader = TRUE, status = "primary"
                               ,div("提示:目前采用全量更新的方式对性能还是有些影响,由于不涉及版本化，可能考虑使用增量更新")
                               #,div("")
                               ,br()
                               ,actionButton('nsup_qalist_idize','QA对ID化')
                             ),
                             box(
                               title = "步骤2:NSCL全量更新", width = NULL, solidHeader = TRUE, status = "primary"
                               ,div("提示:此步骤主要应用关键词删除词库对ID化后的语料进行处理")
                               ,br()
                               ,actionButton('nsup_nscl_update','NSCL全量更新')
                             ),
                             box(
                               title = "步骤3:NSBL全量更新", width = NULL, solidHeader = TRUE, status = "primary"
                               ,div("提示:此步骤主要应用文件级黑名单,问题级黑名单,答案级黑名单针对语料进行处理")
                               ,br()
                               ,actionButton('nsup_nsbl_update','NSBL全量更新 ')
                             )
                      ),
                      
                      column(width=4,
                             box(
                               title = "步骤4:NSDICT全量更新", width = NULL, solidHeader = TRUE, status = "primary"
                               ,div("提示:更新分词")
                               ,actionButton('nsup_nsdict_update','NSDICT全量更新')
                               
                             ),
                             box(
                               title = "步骤5:NSCS全量更新", width = NULL, solidHeader = TRUE, status = "primary"
                               ,div('提示：更新聚类')
                               ,actionButton('nsup_nscs_update','NSCS全量更新')
                             ),
                             box(
                               title = "步骤6:处理结果下载", width = NULL, solidHeader = TRUE, status = "primary"
                               ,div('提示:下载数据适配来也')
                               ,mdl_integer('each_page','每页数量',min = 3000L,max = 8000L,value = 7000L,step = 1000L)
                               ,actionButton('save_page','保存每页设置，点击生效')
                               ,mdl_download_button('nsup_output_download','下载文件,更新知识库')
                             )
                      )
                    )
)
