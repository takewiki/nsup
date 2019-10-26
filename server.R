

#shinyserver start point----
 shinyServer(function(input, output,session) {
   
   
   #1.问答全量ID    ------
   brand <- var_ListChoose1('nsup_brand_sel');
   
   observeEvent(input$nsup_qalist_idize,{


        brand <-brand();
        #针对问题、答案,问答进行ID化处理
        # 不再显示打印的问题
        #print(brand)
        
        msg <-nsclpkg::qalist_idize(brand)
        pop_notice(msg)




     })

  
})
