*** Settings ***
Library         Collections
Library         String
Library         REST
Library         BuiltIn
Library         sha.py


*** Variables ***
${key}          lumpsum3805325
#use lumpsum-android
${cmd00002}     {"cmd":"00002","param":[{"birth_date":"2019-06-28","gender":"1","age":"0","retire_age":"60","income_per_month":"0","expense_per_month":"0","growth_rate_income":"0.03","growth_rate_expense":"0.01","inflation":"0.03","invest_after_retire":"0.06","age_die":"76","expense_after_retire":"0.06","buy_car":"","baby":"","buy_insurance":"","advance_calculate":"N","user_id":"9999"}]}
${cmd00004}     {"cmd":"00004","param":["1111111541","222222"]}
${cmd00005}     {"cmd":"00005","param":["1111111627","222222"]}
${cmd00022}     {"cmd":"00022","param":{"":""}}
${cmd00023}     {"cmd":"00023","param":["1111111633","2019-06-26 11:33:01"]}
${cmd00024}     {"cmd":"00024","param":["1111111625","175130"]}
${cmd00025}     {"cmd":"00025","param":["1292"]}
${cmd00026}     {"cmd":"00026","param":["1292"]}
${cmd00027}     {"cmd":"00027","param":["1292"]}
${cmd00029}     {"cmd":"00029","param":["1292"]}
${cmd00030}     {"cmd":"00030","param":["1292",{"reserve_money_id":338,"suggestion_of_cash_reserve_id":0,"reserve_money":"0","insurance_coverage":{"insurance_coverage_id":337,"suggestion_of_insurance_coverage_id":0,"user_id":0,"expanse_for_family":0,"percent_expense_for_family":"0","list_life_insurance":[],"list_health_insurance":[]},"credit_buro":"N","list_home":[],"list_car":[],"list_cash_loan":[],"list_credit_card":[],"list_other":[],"list_other_dept":[],"list_land":[],"list_fund":[],"list_stock":[],"list_bond":[],"list_home_not_free_dept":[],"list_car_not_free_dept":[],"total_home":0,"total_car":0,"total_cash_loan":0,"total_credit_card":0,"total_other":0,"total_land":0,"total_fund":0,"total_stock":0,"total_bond":0,"total_home_not_free_dept":0,"total_car_not_free_dept":0,"total_cash_loan_not_free_dept":0,"total_credit_card_not_free_dept":0,"total_land_not_free_dept":0,"total_other_not_free_dept":0,"total_home_free_dept":0,"total_car_free_dept":0,"total_cash_loan_free_dept":0,"total_credit_card_free_dept":0,"total_land_free_dept":0,"total_other_free_dept":0}]}
${cmd00032}     {"cmd":"00032","param":["1292"]}
${cmd00033}     {"cmd":"00033","param":["1292",{\"tax_id\":\"\",\"annual_income\":-1,\"less_expenses\":\"0\",\"income_less_expenses\":-1,\"deduction_taxpayer\":\"0\",\"deduction_spouse\":-1,\"deduction_child\":-1,\"deduction_parent\":-1,\"deduction_antenatal_confined\":-1,\"deduction_disabled\":-1,\"insurance_premium\":-1,\"health_insurance_parant\":-1,\"self_health_insurance\":-1,\"life_insurance_pensioners\":-1,\"ltf_purchase\":-1,\"rmf_purchase\":-1,\"national_savings_fund\":-1,\"social_security_money\":-1,\"provident_fund\":-1,\"interest_residence\":-1,\"social_donation\":-1,\"general_donation\":-1,\"first_house_project\":-1,\"first_house_project_62\":-1,\"shopping_for_nation\":-1,\"travel_core_visited_area\":-1,\"travel_less_visited_area\":-1,\"cctv_purchase\":-1,\"political_donation\":-1,\"invest_startup\":-1,\"fee_debit_card\":-1,\"home_repairs\":-1,\"car_repairs\":-1,\"otop_purchase\":-1,\"ebook_purchase\":-1,\"educational_purchase\":-1,\"oList_parant\":[],\"oList_child\":[],\"total_income_per_year\":0}]}
${cmd00034}     {"cmd":"00034","param":["1292"]}

#use other
${cmd00001}     {"cmd":"00001","param":["wpudphuak@gmail.com"]}
${cmd00003}     {"cmd":"00003","param":["wpudphuak@gmail.com","222222"]}
${cmd00006}     {"cmd":"00006","param":["0890214962","222222"]}
${cmd00007}     {"cmd":"00007","param":["wpudphuak@gmail.com","222222"]}
${cmd00008}     {"cmd":"00008","param":["wpudphuak@gmail.com","alongkot@efinancethai.com"]}
${cmd00009}     {"cmd":"00009","param":["wpudphuak@gmail.com","222222"]}
${cmd00010}     {"cmd":"00010","param":["wpudphuak@gmail.com","alongkot@efinancethai.com","222222"]}
${cmd00011}     {"cmd":"00011","param":["wpudphuak@gmail.com"]}
${cmd00012}     {"cmd":"00012","param":[""]}
${cmd00013}     {"cmd":"00013","param":["1","wpudphuak@gmail.com"]}
${cmd00014}     {"cmd":"00014","param":["wpudphuak@gmail.com"]}
${cmd00015}     {"cmd":"00015","param":["wpudphuak@gmail.com","222222"]}
${cmd00016}     {"cmd":"00016","param":["wpudphuak@gmail.com","222222","333333"]}
${cmd00017}     {"cmd":"00017","param":["title","message","wpudphuak@gmail.com"]}
${cmd00018}     {"cmd":"00018","param":[{"ticket_no":"1","user_id":"1292",activity:[{"id":0,"timestamp":""},{"id":1,"timestamp":""}]}]}
${cmd00019}     {"cmd":"00019","param":[""]}
${cmd00020}     {"cmd":"00020","param":["1292"]}
${cmd00021}     {"cmd":"00021","param":["100000","1292"]}
${cmd00031}     {"cmd":"00031","param":["1292"]}
${cmd00035}     {"cmd":"00035","param":["1","1",{"incomePerMonth":"100000","outcomePerMonth":"50000","rateTax":"7","timeYear":"100"}]}
${cmd00036}     {"cmd":"00036","param":["1292",{"reserve_money_id": 0,"suggestion_of_cash_reserve_id": 0,"reserve_money": 0,"insurance_coverage": {"insurance_coverage_id": 0,"suggestion_of_insurance_coverage_id": 0,"user_id": 1276,"expanse_for_family": 0,"percent_expense_for_family": 0},"credit_buro":"N"}]}
${cmd00038}     {"cmd":"00038","param":["1292"]}
${cmd00039}     {"cmd":"00039","param":["1292",{"reserve_money_id": 0,"suggestion_of_cash_reserve_id": 0,"reserve_money": 0,"insurance_coverage": {"insurance_coverage_id": 0,"suggestion_of_insurance_coverage_id": 0,"user_id": 1276,"expanse_for_family": 0,"percent_expense_for_family": 0},"credit_buro":"N"}]}


*** Keywords ***
ASynceWorkerFirst
    ${header}=  Create Dictionary   
    ...     lumpsum_unique_id       0bc8083eaecfb6f7
    ...     lumpsum_token_id	    1234
    ...     device                  GoogldAndroidSDK()
    ...     app_version             1.0
    ...     os_version              AndroidSDK25(7.1.1)
    ...     lang                    en
    ...     os_type                 android
    ...     lumpsum_email           test@test.com
    Set Headers                     ${header}
    Post    http://10.88.40.96/LumpsumWS/Service.asmx/StartUpApplication   

    ${out}              Output                          response body    string
    # log to console      \n StartApplication(return-full)\n ${out}
    ${str}              Convert To String               ${out}
    ${str}              Replace String                  ${str}      u'      "
    ${str}              Replace String                  ${str}      "{      {
    ${str}              Replace String                  ${str}      '}      }
    ${out}              Replace String                  ${str}      '       "
    ${json}             evaluate                        json.loads('''${out}''')    json    
    ${json_string}      evaluate                        json.dumps(${json})         json
    ${token}            Convert To String               ${json['d']['token']}
    # log to console      \n StartApplication(return-token)\n ${token}
    [return]            ${token}

CreateHeader
    [Arguments]  ${tokens}
    ${headers}    Create Dictionary    
    ...    lumpsum_unique_id   0bc8083eaecfb6f7
    ...    lumpsum_token_id    ${tokens}
    ...    app_version         1.0
    ...    device              Samsung SM
    ...    os_version          Android
    ...    os_type             android
    ...    lumpsum_email       wasabiTitleTp@gmail.com
    ...    lang                th
    [return]   ${headers}

CallCmd
    [Arguments]         ${token}                        ${input}
    ${header}           CreateHeader                    ${token}
    ${header}           Convert To String               ${header}
    ${header}           Replace String                  ${header}   u'      "
    ${header}           Replace String                  ${header}   '       "

    #แบบ Non-Encrypt
    ${input}            Convert To String               ${input}
    ${input}            encrypt                         ${key}      ${input}
    ${input}=           Create Dictionary               param=${input}
    log to console      <Input> ${input}
    Set Headers         ${header}
    Post                http://10.88.40.96/LumpsumWS/Service.asmx/GetCmdValue               ${input}
    ${output}           Output                          response body    string
    ${output}           Convert To String               ${output}
    ${output}           Replace String                  ${output}   u'      "
    ${output}           Replace String                  ${output}   '       "
    ${json}             evaluate                        json.loads('''${output}''')     json    
    ${json_string}      evaluate                        json.dumps(${json})             json
    ${output}           Convert To String               ${json['d']}
    ${output}           decrypt                         ${key}      ${output}
    log to console      <Output> ${output}
    [return]            ${output}

CheckStatusCall
    [Arguments]         ${output} 
    ${json}             evaluate                        json.loads('''${output}''')     json    
    ${json_string}      evaluate                        json.dumps(${json})             json
    ${status}           Convert To String               ${json['d']['status']}
    Log To Console      <Status-Call> ${status} 

CheckMsgCall
    [Arguments]         ${output} 
    ${json}             evaluate                        json.loads('''${output}''')     json    
    ${json_string}      evaluate                        json.dumps(${json})             json
    ${msg}              Convert To String               ${json['d']['msg']}
    Log To Console      <Msg-Call> ${msg} 

CheckData
    [Arguments]         ${output} 
    ${json}             evaluate                        json.loads('''${output}''')     json    
    ${json_string}      evaluate                        json.dumps(${json})             json
    ${data}             Convert To String               ${json['d']['data']}
    ${data}             getStr                       ${data} 
    Log To Console      <Return-Data> ${data} 

*** Test Cases ***
TestWebService        
    #error-input -> 06

    log to console      \n 00002
    ${token}            ASynceWorkerFirst
    ${output00002}      CallCmd                         ${token}                    ${cmd00002}
    # CheckStatusCall     ${output00002}
    # CheckMsgCall        ${output00002}    
    # CheckData           ${output00002} 

    # log to console      \n 00004
    # ${token}            ASynceWorkerFirst
    # ${output00004}      CallCmd                         ${token}                    ${cmd00004}
    # CheckStatusCall     ${output00004}
    # CheckMsgCall        ${output00004}    
    # CheckData           ${output00004} 

    # log to console      \n 00005
    # ${token}            ASynceWorkerFirst
    # ${output00005}      CallCmd                         ${token}                    ${cmd00005}
    # CheckStatusCall     ${output00005}
    # CheckMsgCall        ${output00005}    
    # CheckData           ${output00005} 

    # log to console      \n 00022
    # ${token}            ASynceWorkerFirst
    # ${output00022}      CallCmd                         ${token}                    ${cmd00022}
    # CheckStatusCall     ${output00022}
    # CheckMsgCall        ${output00022}    
    # CheckData           ${output00022}

    # log to console      \n 00023
    # ${token}            ASynceWorkerFirst
    # ${output00023}      CallCmd                         ${token}                    ${cmd00023}  
    # CheckStatusCall     ${output00023}
    # CheckMsgCall        ${output00023}    
    # CheckData           ${output00023}

    # log to console      \n 00024
    # ${token}            ASynceWorkerFirst
    # ${output00024}      CallCmd                         ${token}                    ${cmd00024}   
    # CheckStatusCall     ${output00024}
    # CheckMsgCall        ${output00024}    
    # CheckData           ${output00024}

    # log to console      \n 00025
    # ${token}            ASynceWorkerFirst
    # ${output00025}      CallCmd                         ${token}                    ${cmd00025} 
    # CheckStatusCall     ${output00025}
    # CheckMsgCall        ${output00025}    
    # CheckData           ${output00025}

    # log to console      \n 00026
    # ${token}            ASynceWorkerFirst
    # ${output00026}      CallCmd                         ${token}                    ${cmd00026} 
    # CheckStatusCall     ${output00026}
    # CheckMsgCall        ${output00026}    
    # CheckData           ${output00026}

    # log to console      \n 00027
    # ${token}            ASynceWorkerFirst
    # ${output00027}      CallCmd                         ${token}                    ${cmd00027} 
    # CheckStatusCall     ${output00027}
    # CheckMsgCall        ${output00027}    
    # CheckData           ${output00027}

    # log to console      \n 00029
    # ${token}            ASynceWorkerFirst
    # ${output00029}      CallCmd                         ${token}                    ${cmd00029} 
    # CheckStatusCall     ${output00029}
    # CheckMsgCall        ${output00029}    
    # CheckData           ${output00029}

    # log to console      \n 00030
    # ${token}            ASynceWorkerFirst
    # ${output00030}      CallCmd                         ${token}                    ${cmd00030} 
    # CheckStatusCall     ${output00030}
    # CheckMsgCall        ${output00030}    
    # CheckData           ${output00030}

    # log to console      \n 00032
    # ${token}            ASynceWorkerFirst
    # ${output00032}      CallCmd                         ${token}                    ${cmd00032} 
    # CheckStatusCall     ${output00032}
    # CheckMsgCall        ${output00032}    
    # CheckData           ${output00032}

    # log to console      \n 00033
    # ${token}            ASynceWorkerFirst
    # ${output00033}      CallCmd                         ${token}                    ${cmd00033} 
    # CheckStatusCall     ${output00033}
    # CheckMsgCall        ${output00033}    
    # CheckData           ${output00033}

    # log to console      \n 00034
    # ${token}            ASynceWorkerFirst
    # ${output00034}      CallCmd                         ${token}                    ${cmd00034} 
    # CheckStatusCall     ${output00034}
    # CheckMsgCall        ${output00034}    
    # CheckData           ${output00034}

    # ###=======================================================================================

    # log to console      \n 00001
    # ${token}            ASynceWorkerFirst
    # ${output00001}      CallCmd                         ${token}                    ${cmd00001} 
    # CheckStatusCall     ${output00001}
    # CheckMsgCall        ${output00001}    
    # CheckData           ${output00001}

    # log to console      \n 00003
    # ${token}            ASynceWorkerFirst
    # ${output00003}      CallCmd                         ${token}                    ${cmd00003} 
    # CheckStatusCall     ${output00003}
    # CheckMsgCall        ${output00003}    
    # CheckData           ${output00003}

    # log to console      \n 00006
    # ${token}            ASynceWorkerFirst
    # ${output00006}      CallCmd                         ${token}                    ${cmd00006} 
    # CheckStatusCall     ${output00006}
    # CheckMsgCall        ${output00006}    
    # CheckData           ${output00006}

    # log to console      \n 00007
    # ${token}            ASynceWorkerFirst
    # ${output00007}      CallCmd                         ${token}                    ${cmd00007} 
    # CheckStatusCall     ${output00007}
    # CheckMsgCall        ${output00007}    
    # CheckData           ${output00007}

    # log to console      \n 00008
    # ${token}            ASynceWorkerFirst
    # ${output00008}      CallCmd                         ${token}                    ${cmd00008} 
    # CheckStatusCall     ${output00008}
    # CheckMsgCall        ${output00008}    
    # CheckData           ${output00008}

    # log to console      \n 00009
    # ${token}            ASynceWorkerFirst
    # ${output00009}      CallCmd                         ${token}                    ${cmd00009} 
    # CheckStatusCall     ${output00009}
    # CheckMsgCall        ${output00009}    
    # CheckData           ${output00009}

    # log to console      \n 00010
    # ${token}            ASynceWorkerFirst
    # ${output00010}      CallCmd                         ${token}                    ${cmd00010} 
    # CheckStatusCall     ${output00010}
    # CheckMsgCall        ${output00010}    
    # CheckData           ${output00010}

    # log to console      \n 00011
    # ${token}            ASynceWorkerFirst
    # ${output00011}      CallCmd                         ${token}                    ${cmd00011} 
    # CheckStatusCall     ${output00011}
    # CheckMsgCall        ${output00011}    
    # CheckData           ${output00011}

    # # log to console      \n 00012
    # # ${token}            ASynceWorkerFirst
    # # ${output00012}      CallCmd                         ${token}                    ${cmd00012} 
    # # CheckStatusCall     ${output00012}
    # # CheckMsgCall        ${output00012}    
    # # CheckData           ${output00012}

    # log to console      \n 00013
    # ${token}            ASynceWorkerFirst
    # ${output00013}      CallCmd                         ${token}                    ${cmd00013} 
    # CheckStatusCall     ${output00013}
    # CheckMsgCall        ${output00013}    
    # CheckData           ${output00013}

    # log to console      \n 00014
    # ${token}            ASynceWorkerFirst
    # ${output00014}      CallCmd                         ${token}                    ${cmd00014} 
    # CheckStatusCall     ${output00014}
    # CheckMsgCall        ${output00014}    
    # CheckData           ${output00014}    

    # log to console      \n 00015
    # ${token}            ASynceWorkerFirst
    # ${output00015}      CallCmd                         ${token}                    ${cmd00015} 
    # CheckStatusCall     ${output00015}
    # CheckMsgCall        ${output00015}    
    # CheckData           ${output00015}   

    # log to console      \n 00016
    # ${token}            ASynceWorkerFirst
    # ${output00016}      CallCmd                         ${token}                    ${cmd00016} 
    # CheckStatusCall     ${output00016}
    # CheckMsgCall        ${output00016}    
    # CheckData           ${output00016}    

    # log to console      \n 00017
    # ${token}            ASynceWorkerFirst
    # ${output00017}      CallCmd                         ${token}                    ${cmd00017} 
    # CheckStatusCall     ${output00017}
    # CheckMsgCall        ${output00017}    
    # CheckData           ${output00017}    

    # # log to console      \n 00018
    # # ${token}            ASynceWorkerFirst
    # # ${output00018}      CallCmd                         ${token}                    ${cmd00018} 
    # # CheckStatusCall     ${output00018}
    # # CheckMsgCall        ${output00018}    
    # # CheckData           ${output00018} 

    # log to console      \n 00019
    # ${token}            ASynceWorkerFirst
    # ${output00019}      CallCmd                         ${token}                    ${cmd00019} 
    # CheckStatusCall     ${output00019}
    # CheckMsgCall        ${output00019}    
    # CheckData           ${output00019}    

    # # log to console      \n 00020
    # # ${token}            ASynceWorkerFirst
    # # ${output00020}      CallCmd                         ${token}                    ${cmd00020} 
    # # CheckStatusCall     ${output00020}
    # # CheckMsgCall        ${output00020}    
    # # CheckData           ${output00020}   

    # # log to console      \n 00021
    # # ${token}            ASynceWorkerFirst
    # # ${output00021}      CallCmd                         ${token}                    ${cmd00021} 
    # # CheckStatusCall     ${output00021}
    # # CheckMsgCall        ${output00021}    
    # # CheckData           ${output00021}   

    # log to console      \n 00031
    # ${token}            ASynceWorkerFirst
    # ${output00031}      CallCmd                         ${token}                    ${cmd00031} 
    # CheckStatusCall     ${output00031}
    # CheckMsgCall        ${output00031}    
    # CheckData           ${output00031}

    # log to console      \n 00035
    # ${token}            ASynceWorkerFirst
    # ${output00035}      CallCmd                         ${token}                    ${cmd00035} 
    # CheckStatusCall     ${output00035}
    # CheckMsgCall        ${output00035}    
    # CheckData           ${output00035}

    # log to console      \n 00036
    # ${token}            ASynceWorkerFirst
    # ${output00036}      CallCmd                         ${token}                    ${cmd00036} 
    # CheckStatusCall     ${output00036}
    # CheckMsgCall        ${output00036}    
    # CheckData           ${output00036}

    # log to console      \n 00038
    # ${token}            ASynceWorkerFirst
    # ${output00038}      CallCmd                         ${token}                    ${cmd00038} 
    # CheckStatusCall     ${output00038}
    # CheckMsgCall        ${output00038}    
    # CheckData           ${output00038}

    # log to console      \n 00039
    # ${token}            ASynceWorkerFirst
    # ${output00039}      CallCmd                         ${token}                    ${cmd00039} 
    # CheckStatusCall     ${output00039}
    # CheckMsgCall        ${output00039}    
    # CheckData           ${output00039}

    