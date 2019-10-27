

#shinyserver start point----
 shinyServer(function(input, output,session) {
   
   #0 共享品牌选择------
   
   brand <- var_ListChoose1('nsup_brand_sel');
   
   #1.问答全量ID    ------

   
   observeEvent(input$nsup_qalist_idize,{


        brand <-brand();
        #针对问题、答案,问答进行ID化处理
        # 不再显示打印的问题
        #print(brand)
        
        msg <-nsclpkg::qalist_idize(brand)
        pop_notice(msg)

     })
   
   #2 NSCL全量更新--------
   observeEvent(input$nsup_nscl_update,{
     #code here
      brand <- brand();
      nsblpkg::nsim_nscl_version(brand); 
      pop_notice('NSCL更新完成')
     
     #code end
   })
   
   #3 NSBL全量更新--------
   observeEvent(input$nsup_nsbl_update,{
     #code here
       brand <- brand();
       starttime <- Sys.time();
       print(starttime)
      nsblpkg::nsim_nsbl_version(brand)
      endtime <- Sys.time()
      print(endtime)
       pop_notice('NSBL更新完成')
       print(tsda::nsim_version_getCurrentVersion(brand,'nsbl'))
     #code end
   })

  #4 更新NSDICT------
   observeEvent(input$nsup_nsdict_update,{
      #code here
      
      
      
      #code end
      
   })
   
 #5.更新NSCS-------
   observeEvent(input$nsup_nscs_update,{
      #code here
      
      #code end
   })
#6下载文件----
   
   run_download_button(proc_download_button,id = 'nsup_output_download',data = iris)
})
