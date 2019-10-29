

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
      brand <- brand();
      starttime <- Sys.time();
      print(starttime)
      nsblpkg::nsim_nsdict_version(brand);
      endtime <- Sys.time()
      print(endtime)
      pop_notice('NSDICT更新完成')
      
      #code end
      
   })
   
 #5.更新NSCS-------
   observeEvent(input$nsup_nscs_update,{
      #code here
      brand <- brand();
      starttime <- Sys.time();
      print(starttime)
      nscspkg::nsim_nscs_version(brand);
      endtime <- Sys.time()
      print(endtime)
      pop_notice('NSCS更新完成')
      
      #code end
   })
#6下载文件----
   each_page <- var_integer('each_page');
   
  data <- eventReactive(input$save_page,{
     each_page <- each_page();
     brand <- brand();
   res <-nsuppkg::nsim_output_download_nscs(brand,each_page);
     return(res);
      
   })
   
   run_download_button(proc_download_button,id = 'nsup_output_download',data = data());
   
   
   # 以下为全部更新内容------
   brand2 <- var_ListChoose1('nsup_brand_sel2');
   
   observeEvent(input$nsup_update_all,{
      brand2 <- brand2();
      print(brand2)
      print('step0:开始')
      print(Sys.time());
      nsclpkg::qalist_idize(brand2)
      print('step1：完成ID化')
      print(Sys.time());
      nsblpkg::nsim_nscl_version(brand2); 
      print('step2：完成NSCL更新')
      print(Sys.time());
      nsblpkg::nsim_nsbl_version(brand2)
      print('step3：完成NSBL更新')
      print(Sys.time());
      nsblpkg::nsim_nsdict_version(brand2);
      print('step4：完成NSDICT更新')
      print(Sys.time());
      nscspkg::nsim_nscs_version(brand2);
      print('step5：完成NSCS更新')
      print(Sys.time());
      
      
      
   })
   
   each_page2 <- var_integer('each_page2');
   
   data <- eventReactive(input$save_page2,{
      each_page2 <- each_page2();
      brand2 <- brand2();
      res <-nsuppkg::nsim_output_download_nscs(brand2,each_page2);
      return(res);
      
   })
   
   run_download_button(proc_download_button,id = 'nsup_output_download',data = data());
})
