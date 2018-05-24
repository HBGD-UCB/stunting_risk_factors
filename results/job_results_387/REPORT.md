---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.csv'
  nodes:
    value:
      strata: ['study_id']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000109-ResPak
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CMIN
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 12 months, studyid: kiGH5241-JiVitA-4
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CMIN
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: kiGH5241-JiVitA-4
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CMIN
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 24 months, studyid: kiGH5241-JiVitA-4
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000109-ResPak
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CMIN
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: kiGH5241-JiVitA-4
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000109-ResPak
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CMIN
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 6 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: kiGH5241-JiVitA-4

### Dropped Strata

Some strata were dropped due to rare outcomes:

* NA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* NA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* NA
* NA
* NA
* NA
* NA

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/2dc37e33-1ce0-4d7f-bf89-100716a6db87/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2dc37e33-1ce0-4d7f-bf89-100716a6db87/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/2dc37e33-1ce0-4d7f-bf89-100716a6db87/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2dc37e33-1ce0-4d7f-bf89-100716a6db87/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n     nA   nAY0   nAY1
----------  -------------------------  -------  ------  -----  -----  -----
12 months   ki1000108-CMC-V-BCS-2002   Female      372    186     68    118
12 months   ki1000108-CMC-V-BCS-2002   Male        372    186     44    142
12 months   ki1000108-IRC              Female      408    183     97     86
12 months   ki1000108-IRC              Male        408    225    104    121
12 months   ki1000109-EE               Female      373    182     35    147
12 months   ki1000109-EE               Male        373    191     30    161
12 months   ki1000109-ResPak           Female      230    106     40     66
12 months   ki1000109-ResPak           Male        230    124     45     79
12 months   ki1000304b-SAS-CompFeed    Female      893    393    183    210
12 months   ki1000304b-SAS-CompFeed    Male        893    500    188    312
12 months   ki1000304b-SAS-FoodSuppl   Female       99     55      9     46
12 months   ki1000304b-SAS-FoodSuppl   Male         99     44      6     38
12 months   ki1017093-NIH-Birth        Female      541    246    132    114
12 months   ki1017093-NIH-Birth        Male        541    295    133    162
12 months   ki1017093c-NIH-Crypto      Female      729    368    239    129
12 months   ki1017093c-NIH-Crypto      Male        729    361    213    148
12 months   ki1066203-TanzaniaChild2   Female      496    242    182     60
12 months   ki1066203-TanzaniaChild2   Male        496    254    156     98
12 months   ki1101329-Keneba           Female     2384   1150    723    427
12 months   ki1101329-Keneba           Male       2384   1234    690    544
12 months   ki1112895-Guatemala BSC    Female       85     43     27     16
12 months   ki1112895-Guatemala BSC    Male         85     42     21     21
12 months   ki1112895-iLiNS-Zinc       Female      796    399    323     76
12 months   ki1112895-iLiNS-Zinc       Male        796    397    302     95
12 months   ki1113344-GMS-Nepal        Female      582    282    161    121
12 months   ki1113344-GMS-Nepal        Male        582    300    156    144
12 months   ki1114097-CMIN             Female     2260   1098    803    295
12 months   ki1114097-CMIN             Male       2260   1162    780    382
12 months   ki1114097-CONTENT          Female      215    106     99      7
12 months   ki1114097-CONTENT          Male        215    109     62     47
12 months   ki1119695-PROBIT           Female     7943   4119   3920    199
12 months   ki1119695-PROBIT           Male       7943   3824   2866    958
12 months   ki1126311-ZVITAMBO         Female     2546   1254    829    425
12 months   ki1126311-ZVITAMBO         Male       2546   1292    757    535
12 months   ki1135781-COHORTS          Female    10273   4894   3016   1878
12 months   ki1135781-COHORTS          Male      10273   5379   2983   2396
12 months   ki1148112-LCNI-5           Female      403    203    124     79
12 months   ki1148112-LCNI-5           Male        403    200     84    116
12 months   kiGH5241-JiVitA-3          Female     8376   4148   2400   1748
12 months   kiGH5241-JiVitA-3          Male       8376   4228   2192   2036
12 months   kiGH5241-JiVitA-4          Female     1420    732    424    308
12 months   kiGH5241-JiVitA-4          Male       1420    688    379    309
18 months   ki1000108-CMC-V-BCS-2002   Female      373    187     33    154
18 months   ki1000108-CMC-V-BCS-2002   Male        373    186     24    162
18 months   ki1000108-IRC              Female      409    184     86     98
18 months   ki1000108-IRC              Male        409    225     93    132
18 months   ki1000109-EE               Female      363    178     16    162
18 months   ki1000109-EE               Male        363    185     16    169
18 months   ki1000109-ResPak           Female      184     83     27     56
18 months   ki1000109-ResPak           Male        184    101     32     69
18 months   ki1000304b-SAS-CompFeed    Female      862    385    127    258
18 months   ki1000304b-SAS-CompFeed    Male        862    477    120    357
18 months   ki1000304b-SAS-FoodSuppl   Female       93     51      5     46
18 months   ki1000304b-SAS-FoodSuppl   Male         93     42      5     37
18 months   ki1017093-NIH-Birth        Female      497    227     86    141
18 months   ki1017093-NIH-Birth        Male        497    270     88    182
18 months   ki1017093c-NIH-Crypto      Female      715    362    211    151
18 months   ki1017093c-NIH-Crypto      Male        715    353    187    166
18 months   ki1066203-TanzaniaChild2   Female      360    169    108     61
18 months   ki1066203-TanzaniaChild2   Male        360    191     99     92
18 months   ki1101329-Keneba           Female     2284   1107    602    505
18 months   ki1101329-Keneba           Male       2284   1177    541    636
18 months   ki1112895-Guatemala BSC    Female       49     24     13     11
18 months   ki1112895-Guatemala BSC    Male         49     25     10     15
18 months   ki1112895-iLiNS-Zinc       Female      124     63     45     18
18 months   ki1112895-iLiNS-Zinc       Male        124     61     32     29
18 months   ki1113344-GMS-Nepal        Female      574    277    105    172
18 months   ki1113344-GMS-Nepal        Male        574    297    111    186
18 months   ki1114097-CMIN             Female     2146   1047    651    396
18 months   ki1114097-CMIN             Male       2146   1099    599    500
18 months   ki1114097-CONTENT          Female      214    105     96      9
18 months   ki1114097-CONTENT          Male        214    109     58     51
18 months   ki1119695-PROBIT           Female     7475   3890   3702    188
18 months   ki1119695-PROBIT           Male       7475   3585   2603    982
18 months   ki1126311-ZVITAMBO         Female     1857    981    559    422
18 months   ki1126311-ZVITAMBO         Male       1857    876    396    480
18 months   ki1135781-COHORTS          Female     3084   1459    574    885
18 months   ki1135781-COHORTS          Male       3084   1625    512   1113
18 months   ki1148112-LCNI-5           Female      328    165     80     85
18 months   ki1148112-LCNI-5           Male        328    163     61    102
18 months   kiGH5241-JiVitA-3          Female     7332   3631   1779   1852
18 months   kiGH5241-JiVitA-3          Male       7332   3701   1566   2135
18 months   kiGH5241-JiVitA-4          Female     1373    711    334    377
18 months   kiGH5241-JiVitA-4          Male       1373    662    287    375
24 months   ki1000108-CMC-V-BCS-2002   Female      373    187     13    174
24 months   ki1000108-CMC-V-BCS-2002   Male        373    186     15    171
24 months   ki1000108-IRC              Female      410    185     72    113
24 months   ki1000108-IRC              Male        410    225     75    150
24 months   ki1000109-EE               Female      338    165     13    152
24 months   ki1000109-EE               Male        338    173     14    159
24 months   ki1000109-ResPak           Female        0      0      0      0
24 months   ki1000109-ResPak           Male          0      0      0      0
24 months   ki1000304b-SAS-CompFeed    Female       80     29     10     19
24 months   ki1000304b-SAS-CompFeed    Male         80     51     14     37
24 months   ki1000304b-SAS-FoodSuppl   Female        9      5      1      4
24 months   ki1000304b-SAS-FoodSuppl   Male          9      4      0      4
24 months   ki1017093-NIH-Birth        Female      470    216     53    163
24 months   ki1017093-NIH-Birth        Male        470    254     62    192
24 months   ki1017093c-NIH-Crypto      Female      634    319    166    153
24 months   ki1017093c-NIH-Crypto      Male        634    315    150    165
24 months   ki1066203-TanzaniaChild2   Female      250    118     68     50
24 months   ki1066203-TanzaniaChild2   Male        250    132     63     69
24 months   ki1101329-Keneba           Female     2207   1071    503    568
24 months   ki1101329-Keneba           Male       2207   1136    442    694
24 months   ki1112895-Guatemala BSC    Female        0      0      0      0
24 months   ki1112895-Guatemala BSC    Male          0      0      0      0
24 months   ki1112895-iLiNS-Zinc       Female      551    272    162    110
24 months   ki1112895-iLiNS-Zinc       Male        551    279    156    123
24 months   ki1113344-GMS-Nepal        Female      568    273     86    187
24 months   ki1113344-GMS-Nepal        Male        568    295     90    205
24 months   ki1114097-CMIN             Female     2002    971    516    455
24 months   ki1114097-CMIN             Male       2002   1031    479    552
24 months   ki1114097-CONTENT          Female      197    100     91      9
24 months   ki1114097-CONTENT          Male        197     97     49     48
24 months   ki1119695-PROBIT           Female     2076   1070    978     92
24 months   ki1119695-PROBIT           Male       2076   1006    670    336
24 months   ki1126311-ZVITAMBO         Female      471    273     78    195
24 months   ki1126311-ZVITAMBO         Male        471    198     54    144
24 months   ki1135781-COHORTS          Female     3038   1441    361   1080
24 months   ki1135781-COHORTS          Male       3038   1597    322   1275
24 months   ki1148112-LCNI-5           Female      355    181     75    106
24 months   ki1148112-LCNI-5           Male        355    174     47    127
24 months   kiGH5241-JiVitA-3          Female        3      1      1      0
24 months   kiGH5241-JiVitA-3          Male          3      2      1      1
24 months   kiGH5241-JiVitA-4          Female     1196    618    257    361
24 months   kiGH5241-JiVitA-4          Male       1196    578    227    351
3 months    ki1000108-CMC-V-BCS-2002   Female      362    182    122     60
3 months    ki1000108-CMC-V-BCS-2002   Male        362    180    115     65
3 months    ki1000108-IRC              Female      410    185    132     53
3 months    ki1000108-IRC              Male        410    225    148     77
3 months    ki1000109-EE               Female      379    185     77    108
3 months    ki1000109-EE               Male        379    194     61    133
3 months    ki1000109-ResPak           Female      276    132     65     67
3 months    ki1000109-ResPak           Male        276    144     70     74
3 months    ki1000304b-SAS-CompFeed    Female      977    436    313    123
3 months    ki1000304b-SAS-CompFeed    Male        977    541    341    200
3 months    ki1000304b-SAS-FoodSuppl   Female        0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   Male          0      0      0      0
3 months    ki1017093-NIH-Birth        Female      629    297    242     55
3 months    ki1017093-NIH-Birth        Male        629    332    247     85
3 months    ki1017093c-NIH-Crypto      Female      758    381    319     62
3 months    ki1017093c-NIH-Crypto      Male        758    377    318     59
3 months    ki1066203-TanzaniaChild2   Female      602    293    272     21
3 months    ki1066203-TanzaniaChild2   Male        602    309    271     38
3 months    ki1101329-Keneba           Female     2296   1102    857    245
3 months    ki1101329-Keneba           Male       2296   1194    877    317
3 months    ki1112895-Guatemala BSC    Female        0      0      0      0
3 months    ki1112895-Guatemala BSC    Male          0      0      0      0
3 months    ki1112895-iLiNS-Zinc       Female        0      0      0      0
3 months    ki1112895-iLiNS-Zinc       Male          0      0      0      0
3 months    ki1113344-GMS-Nepal        Female      593    281    240     41
3 months    ki1113344-GMS-Nepal        Male        593    312    259     53
3 months    ki1114097-CMIN             Female     1580    761    635    126
3 months    ki1114097-CMIN             Male       1580    819    667    152
3 months    ki1114097-CONTENT          Female      215    106    101      5
3 months    ki1114097-CONTENT          Male        215    109     79     30
3 months    ki1119695-PROBIT           Female     8125   4217   4116    101
3 months    ki1119695-PROBIT           Male       8125   3908   3407    501
3 months    ki1126311-ZVITAMBO         Female     3502   1688   1360    328
3 months    ki1126311-ZVITAMBO         Male       3502   1814   1407    407
3 months    ki1135781-COHORTS          Female    10747   5154   4342    812
3 months    ki1135781-COHORTS          Male      10747   5593   4483   1110
3 months    ki1148112-LCNI-5           Female        0      0      0      0
3 months    ki1148112-LCNI-5           Male          0      0      0      0
3 months    kiGH5241-JiVitA-3          Female    13368   6601   4044   2557
3 months    kiGH5241-JiVitA-3          Male      13368   6767   3931   2836
3 months    kiGH5241-JiVitA-4          Female     1156    597    437    160
3 months    kiGH5241-JiVitA-4          Male       1156    559    403    156
6 months    ki1000108-CMC-V-BCS-2002   Female      367    184    101     83
6 months    ki1000108-CMC-V-BCS-2002   Male        367    183     78    105
6 months    ki1000108-IRC              Female      408    184    111     73
6 months    ki1000108-IRC              Male        408    224    124    100
6 months    ki1000109-EE               Female      373    181     54    127
6 months    ki1000109-EE               Male        373    192     42    150
6 months    ki1000109-ResPak           Female      255    120     52     68
6 months    ki1000109-ResPak           Male        255    135     52     83
6 months    ki1000304b-SAS-CompFeed    Female      807    363    226    137
6 months    ki1000304b-SAS-CompFeed    Male        807    444    238    206
6 months    ki1000304b-SAS-FoodSuppl   Female      105     59     38     21
6 months    ki1000304b-SAS-FoodSuppl   Male        105     46     24     22
6 months    ki1017093-NIH-Birth        Female      551    257    181     76
6 months    ki1017093-NIH-Birth        Male        551    294    169    125
6 months    ki1017093c-NIH-Crypto      Female      736    369    265    104
6 months    ki1017093c-NIH-Crypto      Male        736    367    245    122
6 months    ki1066203-TanzaniaChild2   Female      557    271    230     41
6 months    ki1066203-TanzaniaChild2   Male        557    286    219     67
6 months    ki1101329-Keneba           Female     2264   1088    770    318
6 months    ki1101329-Keneba           Male       2264   1176    763    413
6 months    ki1112895-Guatemala BSC    Female      115     60     43     17
6 months    ki1112895-Guatemala BSC    Male        115     55     36     19
6 months    ki1112895-iLiNS-Zinc       Female        0      0      0      0
6 months    ki1112895-iLiNS-Zinc       Male          0      0      0      0
6 months    ki1113344-GMS-Nepal        Female      567    275    203     72
6 months    ki1113344-GMS-Nepal        Male        567    292    202     90
6 months    ki1114097-CMIN             Female     1853    871    722    149
6 months    ki1114097-CMIN             Male       1853    982    761    221
6 months    ki1114097-CONTENT          Female      215    106     99      7
6 months    ki1114097-CONTENT          Male        215    109     68     41
6 months    ki1119695-PROBIT           Female     7807   4042   3919    123
6 months    ki1119695-PROBIT           Male       7807   3765   3074    691
6 months    ki1126311-ZVITAMBO         Female     2286   1109    804    305
6 months    ki1126311-ZVITAMBO         Male       2286   1177    804    373
6 months    ki1135781-COHORTS          Female     2947   1386   1087    299
6 months    ki1135781-COHORTS          Male       2947   1561   1108    453
6 months    ki1148112-LCNI-5           Female      133     61     47     14
6 months    ki1148112-LCNI-5           Male        133     72     34     38
6 months    kiGH5241-JiVitA-3          Female     9600   4767   2813   1954
6 months    kiGH5241-JiVitA-3          Male       9600   4833   2702   2131
6 months    kiGH5241-JiVitA-4          Female     1181    615    421    194
6 months    kiGH5241-JiVitA-4          Male       1181    566    373    193

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.6344086   0.5651045   0.7037127
12 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.7634409   0.7022856   0.8245961
12 months   ki1000108-IRC              Female               NA                0.4699454   0.3975452   0.5423455
12 months   ki1000108-IRC              Male                 NA                0.5377778   0.4725524   0.6030031
12 months   ki1000109-EE               Female               NA                0.8076923   0.7503577   0.8650269
12 months   ki1000109-EE               Male                 NA                0.8429319   0.7912600   0.8946039
12 months   ki1000109-ResPak           Female               NA                0.6226415   0.5301637   0.7151193
12 months   ki1000109-ResPak           Male                 NA                0.6370968   0.5522800   0.7219135
12 months   ki1000304b-SAS-CompFeed    Female               NA                0.5343511   0.4850068   0.5836955
12 months   ki1000304b-SAS-CompFeed    Male                 NA                0.6240000   0.5815192   0.6664808
12 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.8363636   0.7380964   0.9346309
12 months   ki1000304b-SAS-FoodSuppl   Male                 NA                0.8636364   0.7617207   0.9655521
12 months   ki1017093-NIH-Birth        Female               NA                0.4634146   0.4010431   0.5257862
12 months   ki1017093-NIH-Birth        Male                 NA                0.5491525   0.4923196   0.6059855
12 months   ki1017093c-NIH-Crypto      Female               NA                0.3505435   0.3017605   0.3993264
12 months   ki1017093c-NIH-Crypto      Male                 NA                0.4099723   0.3592024   0.4607422
12 months   ki1066203-TanzaniaChild2   Female               NA                0.2479339   0.1934743   0.3023935
12 months   ki1066203-TanzaniaChild2   Male                 NA                0.3858268   0.3259014   0.4457522
12 months   ki1101329-Keneba           Female               NA                0.3713043   0.3433741   0.3992346
12 months   ki1101329-Keneba           Male                 NA                0.4408428   0.4131357   0.4685498
12 months   ki1112895-Guatemala BSC    Female               NA                0.3720930   0.2267624   0.5174236
12 months   ki1112895-Guatemala BSC    Male                 NA                0.5000000   0.3478881   0.6521119
12 months   ki1112895-iLiNS-Zinc       Female               NA                0.1904762   0.1519222   0.2290302
12 months   ki1112895-iLiNS-Zinc       Male                 NA                0.2392947   0.1972994   0.2812900
12 months   ki1113344-GMS-Nepal        Female               NA                0.4290780   0.3712613   0.4868947
12 months   ki1113344-GMS-Nepal        Male                 NA                0.4800000   0.4234174   0.5365826
12 months   ki1114097-CMIN             Female               NA                0.2686703   0.2424457   0.2948949
12 months   ki1114097-CMIN             Male                 NA                0.3287435   0.3017280   0.3557591
12 months   ki1114097-CONTENT          Female               NA                0.0660377   0.0186497   0.1134257
12 months   ki1114097-CONTENT          Male                 NA                0.4311927   0.3380035   0.5243818
12 months   ki1119695-PROBIT           Female               NA                0.0483127   0.0417640   0.0548614
12 months   ki1119695-PROBIT           Male                 NA                0.2505230   0.2367883   0.2642577
12 months   ki1126311-ZVITAMBO         Female               NA                0.3389155   0.3127120   0.3651189
12 months   ki1126311-ZVITAMBO         Male                 NA                0.4140867   0.3872231   0.4409503
12 months   ki1135781-COHORTS          Female               NA                0.3837352   0.3701102   0.3973602
12 months   ki1135781-COHORTS          Male                 NA                0.4454360   0.4321532   0.4587187
12 months   ki1148112-LCNI-5           Female               NA                0.3891626   0.3220092   0.4563159
12 months   ki1148112-LCNI-5           Male                 NA                0.5800000   0.5115125   0.6484875
12 months   kiGH5241-JiVitA-3          Female               NA                0.4214079   0.4063802   0.4364356
12 months   kiGH5241-JiVitA-3          Male                 NA                0.4815516   0.4664896   0.4966135
12 months   kiGH5241-JiVitA-4          Female               NA                0.4207650   0.3849889   0.4565411
12 months   kiGH5241-JiVitA-4          Male                 NA                0.4491279   0.4119472   0.4863086
18 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.8235294   0.7688170   0.8782418
18 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.8709677   0.8227258   0.9192097
18 months   ki1000108-IRC              Female               NA                0.5326087   0.4604290   0.6047884
18 months   ki1000108-IRC              Male                 NA                0.5866667   0.5222446   0.6510887
18 months   ki1000109-EE               Female               NA                0.9101124   0.8680363   0.9521884
18 months   ki1000109-EE               Male                 NA                0.9135135   0.8729540   0.9540730
18 months   ki1000109-ResPak           Female               NA                0.6746988   0.5736363   0.7757613
18 months   ki1000109-ResPak           Male                 NA                0.6831683   0.5921877   0.7741489
18 months   ki1000304b-SAS-CompFeed    Female               NA                0.6701299   0.6231382   0.7171215
18 months   ki1000304b-SAS-CompFeed    Male                 NA                0.7484277   0.7094651   0.7873902
18 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.9019608   0.8199059   0.9840156
18 months   ki1000304b-SAS-FoodSuppl   Male                 NA                0.8809524   0.7824816   0.9794232
18 months   ki1017093-NIH-Birth        Female               NA                0.6211454   0.5579762   0.6843146
18 months   ki1017093-NIH-Birth        Male                 NA                0.6740741   0.6181090   0.7300391
18 months   ki1017093c-NIH-Crypto      Female               NA                0.4171271   0.3662972   0.4679569
18 months   ki1017093c-NIH-Crypto      Male                 NA                0.4702550   0.4181517   0.5223582
18 months   ki1066203-TanzaniaChild2   Female               NA                0.3609467   0.2884366   0.4334569
18 months   ki1066203-TanzaniaChild2   Male                 NA                0.4816754   0.4107154   0.5526354
18 months   ki1101329-Keneba           Female               NA                0.4561879   0.4268408   0.4855350
18 months   ki1101329-Keneba           Male                 NA                0.5403568   0.5118791   0.5688346
18 months   ki1112895-Guatemala BSC    Female               NA                0.4583333   0.2569254   0.6597413
18 months   ki1112895-Guatemala BSC    Male                 NA                0.6000000   0.4059735   0.7940265
18 months   ki1112895-iLiNS-Zinc       Female               NA                0.2857143   0.1737091   0.3977195
18 months   ki1112895-iLiNS-Zinc       Male                 NA                0.4754098   0.3495794   0.6012402
18 months   ki1113344-GMS-Nepal        Female               NA                0.6209386   0.5637558   0.6781215
18 months   ki1113344-GMS-Nepal        Male                 NA                0.6262626   0.5711933   0.6813320
18 months   ki1114097-CMIN             Female               NA                0.3782235   0.3488424   0.4076045
18 months   ki1114097-CMIN             Male                 NA                0.4549591   0.4255114   0.4844067
18 months   ki1114097-CONTENT          Female               NA                0.0857143   0.0320435   0.1393851
18 months   ki1114097-CONTENT          Male                 NA                0.4678899   0.3739988   0.5617810
18 months   ki1119695-PROBIT           Female               NA                0.0483290   0.0415892   0.0550689
18 months   ki1119695-PROBIT           Male                 NA                0.2739191   0.2593197   0.2885185
18 months   ki1126311-ZVITAMBO         Female               NA                0.4301733   0.3991831   0.4611634
18 months   ki1126311-ZVITAMBO         Male                 NA                0.5479452   0.5149784   0.5809120
18 months   ki1135781-COHORTS          Female               NA                0.6065798   0.5815093   0.6316504
18 months   ki1135781-COHORTS          Male                 NA                0.6849231   0.6623328   0.7075133
18 months   ki1148112-LCNI-5           Female               NA                0.5151515   0.4387785   0.5915245
18 months   ki1148112-LCNI-5           Male                 NA                0.6257669   0.5513631   0.7001706
18 months   kiGH5241-JiVitA-3          Female               NA                0.5100523   0.4937913   0.5263133
18 months   kiGH5241-JiVitA-3          Male                 NA                0.5768711   0.5609529   0.5927893
18 months   kiGH5241-JiVitA-4          Female               NA                0.5302391   0.4935408   0.5669374
18 months   kiGH5241-JiVitA-4          Male                 NA                0.5664653   0.5287014   0.6042291
24 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.9304813   0.8939794   0.9669831
24 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.9193548   0.8801712   0.9585385
24 months   ki1000108-IRC              Female               NA                0.6108108   0.5404669   0.6811547
24 months   ki1000108-IRC              Male                 NA                0.6666667   0.6049957   0.7283376
24 months   ki1000109-EE               Female               NA                0.9212121   0.8800442   0.9623801
24 months   ki1000109-EE               Male                 NA                0.9190751   0.8783760   0.9597743
24 months   ki1000304b-SAS-CompFeed    Female               NA                0.6551724   0.4810882   0.8292566
24 months   ki1000304b-SAS-CompFeed    Male                 NA                0.7254902   0.6022396   0.8487408
24 months   ki1017093-NIH-Birth        Female               NA                0.7546296   0.6971834   0.8120759
24 months   ki1017093-NIH-Birth        Male                 NA                0.7559055   0.7030237   0.8087873
24 months   ki1017093c-NIH-Crypto      Female               NA                0.4796238   0.4247577   0.5344900
24 months   ki1017093c-NIH-Crypto      Male                 NA                0.5238095   0.4686129   0.5790062
24 months   ki1066203-TanzaniaChild2   Female               NA                0.4237288   0.3343911   0.5130665
24 months   ki1066203-TanzaniaChild2   Male                 NA                0.5227273   0.4373480   0.6081065
24 months   ki1101329-Keneba           Female               NA                0.5303455   0.5004490   0.5602420
24 months   ki1101329-Keneba           Male                 NA                0.6109155   0.5825579   0.6392731
24 months   ki1112895-iLiNS-Zinc       Female               NA                0.4044118   0.3460346   0.4627889
24 months   ki1112895-iLiNS-Zinc       Male                 NA                0.4408602   0.3825491   0.4991713
24 months   ki1113344-GMS-Nepal        Female               NA                0.6849817   0.6298303   0.7401331
24 months   ki1113344-GMS-Nepal        Male                 NA                0.6949153   0.6423261   0.7475044
24 months   ki1114097-CMIN             Female               NA                0.4685891   0.4371942   0.4999839
24 months   ki1114097-CMIN             Male                 NA                0.5354025   0.5049512   0.5658538
24 months   ki1114097-CONTENT          Female               NA                0.0900000   0.0337665   0.1462335
24 months   ki1114097-CONTENT          Male                 NA                0.4948454   0.3950951   0.5945957
24 months   ki1119695-PROBIT           Female               NA                0.0859813   0.0691801   0.1027825
24 months   ki1119695-PROBIT           Male                 NA                0.3339960   0.3048444   0.3631476
24 months   ki1126311-ZVITAMBO         Female               NA                0.7142857   0.6606406   0.7679308
24 months   ki1126311-ZVITAMBO         Male                 NA                0.7272727   0.6651730   0.7893725
24 months   ki1135781-COHORTS          Female               NA                0.7494795   0.7271032   0.7718559
24 months   ki1135781-COHORTS          Male                 NA                0.7983719   0.7786910   0.8180529
24 months   ki1148112-LCNI-5           Female               NA                0.5856354   0.5137689   0.6575018
24 months   ki1148112-LCNI-5           Male                 NA                0.7298851   0.6638176   0.7959525
24 months   kiGH5241-JiVitA-4          Female               NA                0.5841424   0.5452677   0.6230171
24 months   kiGH5241-JiVitA-4          Male                 NA                0.6072664   0.5674370   0.6470959
3 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.3296703   0.2612796   0.3980611
3 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.3611111   0.2908450   0.4313772
3 months    ki1000108-IRC              Female               NA                0.2864865   0.2212567   0.3517162
3 months    ki1000108-IRC              Male                 NA                0.3422222   0.2801524   0.4042921
3 months    ki1000109-EE               Female               NA                0.5837838   0.5126589   0.6549086
3 months    ki1000109-EE               Male                 NA                0.6855670   0.6201471   0.7509869
3 months    ki1000109-ResPak           Female               NA                0.5075758   0.4221341   0.5930174
3 months    ki1000109-ResPak           Male                 NA                0.5138889   0.4321069   0.5956708
3 months    ki1000304b-SAS-CompFeed    Female               NA                0.2821101   0.2398466   0.3243736
3 months    ki1000304b-SAS-CompFeed    Male                 NA                0.3696858   0.3289884   0.4103832
3 months    ki1017093-NIH-Birth        Female               NA                0.1851852   0.1409724   0.2293980
3 months    ki1017093-NIH-Birth        Male                 NA                0.2560241   0.2090407   0.3030075
3 months    ki1017093c-NIH-Crypto      Female               NA                0.1627297   0.1256412   0.1998181
3 months    ki1017093c-NIH-Crypto      Male                 NA                0.1564987   0.1197990   0.1931984
3 months    ki1066203-TanzaniaChild2   Female               NA                0.0716724   0.0421125   0.1012322
3 months    ki1066203-TanzaniaChild2   Male                 NA                0.1229773   0.0863296   0.1596251
3 months    ki1101329-Keneba           Female               NA                0.2223230   0.1977678   0.2468783
3 months    ki1101329-Keneba           Male                 NA                0.2654941   0.2404408   0.2905475
3 months    ki1113344-GMS-Nepal        Female               NA                0.1459075   0.1045977   0.1872172
3 months    ki1113344-GMS-Nepal        Male                 NA                0.1698718   0.1281685   0.2115751
3 months    ki1114097-CMIN             Female               NA                0.1655716   0.1391548   0.1919884
3 months    ki1114097-CMIN             Male                 NA                0.1855922   0.1589577   0.2122267
3 months    ki1114097-CONTENT          Female               NA                0.0471698   0.0067171   0.0876225
3 months    ki1114097-CONTENT          Male                 NA                0.2752294   0.1911877   0.3592711
3 months    ki1119695-PROBIT           Female               NA                0.0239507   0.0193357   0.0285656
3 months    ki1119695-PROBIT           Male                 NA                0.1281986   0.1177165   0.1386807
3 months    ki1126311-ZVITAMBO         Female               NA                0.1943128   0.1754347   0.2131909
3 months    ki1126311-ZVITAMBO         Male                 NA                0.2243660   0.2051662   0.2435659
3 months    ki1135781-COHORTS          Female               NA                0.1575475   0.1476009   0.1674941
3 months    ki1135781-COHORTS          Male                 NA                0.1984624   0.1880092   0.2089155
3 months    kiGH5241-JiVitA-3          Female               NA                0.3873656   0.3756133   0.3991178
3 months    kiGH5241-JiVitA-3          Male                 NA                0.4190927   0.4073362   0.4308491
3 months    kiGH5241-JiVitA-4          Female               NA                0.2680067   0.2324620   0.3035514
3 months    kiGH5241-JiVitA-4          Male                 NA                0.2790698   0.2418706   0.3162689
6 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.4510870   0.3790901   0.5230838
6 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.5737705   0.5020231   0.6455178
6 months    ki1000108-IRC              Female               NA                0.3967391   0.3259646   0.4675137
6 months    ki1000108-IRC              Male                 NA                0.4464286   0.3812478   0.5116094
6 months    ki1000109-EE               Female               NA                0.7016575   0.6349135   0.7684014
6 months    ki1000109-EE               Male                 NA                0.7812500   0.7226970   0.8398030
6 months    ki1000109-ResPak           Female               NA                0.5666667   0.4778314   0.6555020
6 months    ki1000109-ResPak           Male                 NA                0.6148148   0.5325638   0.6970659
6 months    ki1000304b-SAS-CompFeed    Female               NA                0.3774105   0.3275138   0.4273072
6 months    ki1000304b-SAS-CompFeed    Male                 NA                0.4639640   0.4175483   0.5103797
6 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.3559322   0.2331743   0.4786901
6 months    ki1000304b-SAS-FoodSuppl   Male                 NA                0.4782609   0.3332147   0.6233070
6 months    ki1017093-NIH-Birth        Female               NA                0.2957198   0.2398742   0.3515654
6 months    ki1017093-NIH-Birth        Male                 NA                0.4251701   0.3686087   0.4817314
6 months    ki1017093c-NIH-Crypto      Female               NA                0.2818428   0.2359079   0.3277778
6 months    ki1017093c-NIH-Crypto      Male                 NA                0.3324251   0.2841962   0.3806539
6 months    ki1066203-TanzaniaChild2   Female               NA                0.1512915   0.1085903   0.1939927
6 months    ki1066203-TanzaniaChild2   Male                 NA                0.2342657   0.1851355   0.2833960
6 months    ki1101329-Keneba           Female               NA                0.2922794   0.2652486   0.3193103
6 months    ki1101329-Keneba           Male                 NA                0.3511905   0.3239026   0.3784784
6 months    ki1112895-Guatemala BSC    Female               NA                0.2833333   0.1688146   0.3978520
6 months    ki1112895-Guatemala BSC    Male                 NA                0.3454545   0.2192344   0.4716747
6 months    ki1113344-GMS-Nepal        Female               NA                0.2618182   0.2098130   0.3138234
6 months    ki1113344-GMS-Nepal        Male                 NA                0.3082192   0.2552096   0.3612287
6 months    ki1114097-CMIN             Female               NA                0.1710677   0.1460528   0.1960827
6 months    ki1114097-CMIN             Male                 NA                0.2250509   0.1989241   0.2511777
6 months    ki1114097-CONTENT          Female               NA                0.0660377   0.0186497   0.1134257
6 months    ki1114097-CONTENT          Male                 NA                0.3761468   0.2849946   0.4672990
6 months    ki1119695-PROBIT           Female               NA                0.0304305   0.0251348   0.0357262
6 months    ki1119695-PROBIT           Male                 NA                0.1835325   0.1711668   0.1958983
6 months    ki1126311-ZVITAMBO         Female               NA                0.2750225   0.2487366   0.3013085
6 months    ki1126311-ZVITAMBO         Male                 NA                0.3169074   0.2903209   0.3434939
6 months    ki1135781-COHORTS          Female               NA                0.2157287   0.1940703   0.2373872
6 months    ki1135781-COHORTS          Male                 NA                0.2901986   0.2676802   0.3127169
6 months    ki1148112-LCNI-5           Female               NA                0.2295082   0.1235816   0.3354348
6 months    ki1148112-LCNI-5           Male                 NA                0.5277778   0.4120282   0.6435274
6 months    kiGH5241-JiVitA-3          Female               NA                0.4099014   0.3959393   0.4238635
6 months    kiGH5241-JiVitA-3          Male                 NA                0.4409270   0.4269285   0.4549254
6 months    kiGH5241-JiVitA-4          Female               NA                0.3154472   0.2787053   0.3521890
6 months    kiGH5241-JiVitA-4          Male                 NA                0.3409894   0.3019197   0.3800591


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6989247   0.6923598   0.7054897
12 months   ki1000108-IRC              NA                   NA                0.5073529   0.5040754   0.5106305
12 months   ki1000109-EE               NA                   NA                0.8257373   0.8239473   0.8275273
12 months   ki1000109-ResPak           NA                   NA                0.6304348   0.6295015   0.6313680
12 months   ki1000304b-SAS-CompFeed    NA                   NA                0.5845465   0.5816261   0.5874669
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.8484848   0.8458018   0.8511679
12 months   ki1017093-NIH-Birth        NA                   NA                0.5101664   0.5065655   0.5137672
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3799726   0.3778142   0.3821310
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3185484   0.3124764   0.3246204
12 months   ki1101329-Keneba           NA                   NA                0.4072987   0.4059035   0.4086938
12 months   ki1112895-Guatemala BSC    NA                   NA                0.4352941   0.4216186   0.4489696
12 months   ki1112895-iLiNS-Zinc       NA                   NA                0.2148241   0.2131274   0.2165209
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4553265   0.4532571   0.4573958
12 months   ki1114097-CMIN             NA                   NA                0.2995575   0.2983194   0.3007957
12 months   ki1114097-CONTENT          NA                   NA                0.2511628   0.2267034   0.2756222
12 months   ki1119695-PROBIT           NA                   NA                0.1456628   0.1434408   0.1478849
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3770621   0.3756020   0.3785221
12 months   ki1135781-COHORTS          NA                   NA                0.4160421   0.4154461   0.4166380
12 months   ki1148112-LCNI-5           NA                   NA                0.4838710   0.4745437   0.4931983
12 months   kiGH5241-JiVitA-3          NA                   NA                0.4517670   0.4511229   0.4524110
12 months   kiGH5241-JiVitA-4          NA                   NA                0.4345070   0.4337695   0.4352446
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.8471850   0.8447747   0.8495953
18 months   ki1000108-IRC              NA                   NA                0.5623472   0.5597377   0.5649567
18 months   ki1000109-EE               NA                   NA                0.9118457   0.9116706   0.9120209
18 months   ki1000109-ResPak           NA                   NA                0.6793478   0.6787372   0.6799584
18 months   ki1000304b-SAS-CompFeed    NA                   NA                0.7134571   0.7108570   0.7160571
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.8924731   0.8903368   0.8946095
18 months   ki1017093-NIH-Birth        NA                   NA                0.6498994   0.6475791   0.6522197
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4433566   0.4414083   0.4453049
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4250000   0.4187674   0.4312326
18 months   ki1101329-Keneba           NA                   NA                0.4995622   0.4978367   0.5012877
18 months   ki1112895-Guatemala BSC    NA                   NA                0.5306122   0.5105779   0.5506466
18 months   ki1112895-iLiNS-Zinc       NA                   NA                0.3790323   0.3622726   0.3957920
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6236934   0.6234756   0.6239112
18 months   ki1114097-CMIN             NA                   NA                0.4175210   0.4158978   0.4191442
18 months   ki1114097-CONTENT          NA                   NA                0.2803738   0.2547163   0.3060314
18 months   ki1119695-PROBIT           NA                   NA                0.1565217   0.1539667   0.1590768
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4857297   0.4830550   0.4884044
18 months   ki1135781-COHORTS          NA                   NA                0.6478599   0.6464792   0.6492406
18 months   ki1148112-LCNI-5           NA                   NA                0.5701220   0.5641275   0.5761164
18 months   kiGH5241-JiVitA-3          NA                   NA                0.5437807   0.5430159   0.5445454
18 months   kiGH5241-JiVitA-4          NA                   NA                0.5477058   0.5467479   0.5486636
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.9249330   0.9243676   0.9254983
24 months   ki1000108-IRC              NA                   NA                0.6414634   0.6387697   0.6441571
24 months   ki1000109-EE               NA                   NA                0.9201183   0.9200043   0.9202324
24 months   ki1000304b-SAS-CompFeed    NA                   NA                0.7000000   0.6925459   0.7074541
24 months   ki1017093-NIH-Birth        NA                   NA                0.7553191   0.7552616   0.7553767
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5015773   0.4998563   0.5032983
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4760000   0.4698615   0.4821385
24 months   ki1101329-Keneba           NA                   NA                0.5718169   0.5701366   0.5734973
24 months   ki1112895-iLiNS-Zinc       NA                   NA                0.4228675   0.4213446   0.4243904
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6901408   0.6897323   0.6905494
24 months   ki1114097-CMIN             NA                   NA                0.5029970   0.5015339   0.5044601
24 months   ki1114097-CONTENT          NA                   NA                0.2893401   0.2610047   0.3176755
24 months   ki1119695-PROBIT           NA                   NA                0.2061657   0.2008326   0.2114988
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7197452   0.7191657   0.7203248
24 months   ki1135781-COHORTS          NA                   NA                0.7751810   0.7743128   0.7760493
24 months   ki1148112-LCNI-5           NA                   NA                0.6563380   0.6488262   0.6638499
24 months   kiGH5241-JiVitA-4          NA                   NA                0.5953177   0.5946626   0.5959729
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3453039   0.3436822   0.3469255
3 months    ki1000108-IRC              NA                   NA                0.3170732   0.3143853   0.3197611
3 months    ki1000109-EE               NA                   NA                0.6358839   0.6307550   0.6410128
3 months    ki1000109-ResPak           NA                   NA                0.5108696   0.5104968   0.5112423
3 months    ki1000304b-SAS-CompFeed    NA                   NA                0.3306039   0.3278727   0.3333351
3 months    ki1017093-NIH-Birth        NA                   NA                0.2225755   0.2198096   0.2253414
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.1596306   0.1594087   0.1598525
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0980066   0.0959565   0.1000568
3 months    ki1101329-Keneba           NA                   NA                0.2447735   0.2438911   0.2456559
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1585160   0.1575521   0.1594799
3 months    ki1114097-CMIN             NA                   NA                0.1759494   0.1754560   0.1764428
3 months    ki1114097-CONTENT          NA                   NA                0.1627907   0.1475144   0.1780670
3 months    ki1119695-PROBIT           NA                   NA                0.0740923   0.0729597   0.0752249
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2098801   0.2093826   0.2103775
3 months    ki1135781-COHORTS          NA                   NA                0.1788406   0.1784541   0.1792271
3 months    kiGH5241-JiVitA-3          NA                   NA                0.4034261   0.4031572   0.4036950
3 months    kiGH5241-JiVitA-4          NA                   NA                0.2733564   0.2730376   0.2736752
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.5059772   0.5185460
6 months    ki1000108-IRC              NA                   NA                0.4240196   0.4216175   0.4264217
6 months    ki1000109-EE               NA                   NA                0.7426273   0.7385850   0.7466697
6 months    ki1000109-ResPak           NA                   NA                0.5921569   0.5892014   0.5951123
6 months    ki1000304b-SAS-CompFeed    NA                   NA                0.4250310   0.4220584   0.4280036
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4095238   0.3978591   0.4211886
6 months    ki1017093-NIH-Birth        NA                   NA                0.3647913   0.3593942   0.3701884
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.3070652   0.3052368   0.3088936
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1938959   0.1904487   0.1973431
6 months    ki1101329-Keneba           NA                   NA                0.3228799   0.3216672   0.3240925
6 months    ki1112895-Guatemala BSC    NA                   NA                0.3130435   0.3073472   0.3187398
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2857143   0.2838038   0.2876248
6 months    ki1114097-CMIN             NA                   NA                0.1996762   0.1984491   0.2009033
6 months    ki1114097-CONTENT          NA                   NA                0.2232558   0.2024836   0.2440281
6 months    ki1119695-PROBIT           NA                   NA                0.1042654   0.1025683   0.1059625
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2965879   0.2957296   0.2974462
6 months    ki1135781-COHORTS          NA                   NA                0.2551748   0.2538326   0.2565169
6 months    ki1148112-LCNI-5           NA                   NA                0.3909774   0.3656233   0.4163316
6 months    kiGH5241-JiVitA-3          NA                   NA                0.4255208   0.4252105   0.4258312
6 months    kiGH5241-JiVitA-4          NA                   NA                0.3276884   0.3269603   0.3284165


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower      ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ------------
12 months   ki1000108-CMC-V-BCS-2002   Male                 Female              3.331391     2.909338      3.814670
12 months   ki1000108-IRC              Male                 Female              3.140371     2.581231      3.820631
12 months   ki1000109-EE               Male                 Female              2.839506     2.585294      3.118714
12 months   ki1000109-ResPak           Male                 Female              2.782128     2.279050      3.396255
12 months   ki1000304b-SAS-CompFeed    Male                 Female              3.214820     2.866366      3.605635
12 months   ki1000304b-SAS-FoodSuppl   Male                 Female              2.808383     2.377582      3.317241
12 months   ki1017093-NIH-Birth        Male                 Female              3.270731     2.760006      3.875962
12 months   ki1017093c-NIH-Crypto      Male                 Female              3.220489     2.673124      3.879936
12 months   ki1066203-TanzaniaChild2   Male                 Female              4.740620     3.622445      6.203954
12 months   ki1101329-Keneba           Male                 Female              3.278157     2.972069      3.615769
12 months   ki1112895-Guatemala BSC    Male                 Female              3.833392     2.336543      6.289160
12 months   ki1112895-iLiNS-Zinc       Male                 Female              3.512392     2.686936      4.591437
12 months   ki1113344-GMS-Nepal        Male                 Female              3.060804     2.559075      3.660902
12 months   ki1114097-CMIN             Male                 Female              3.399385     2.992169      3.862021
12 months   ki1114097-CONTENT          Male                 Female            685.047966   323.778886   1449.417293
12 months   ki1119695-PROBIT           Male                 Female            178.653582   154.351487    206.781957
12 months   ki1126311-ZVITAMBO         Male                 Female              3.393288     3.067527      3.753643
12 months   ki1135781-COHORTS          Male                 Female              3.192454     3.047809      3.343964
12 months   ki1148112-LCNI-5           Male                 Female              4.438781     3.601271      5.471061
12 months   kiGH5241-JiVitA-3          Male                 Female              3.135287     2.990040      3.287590
12 months   kiGH5241-JiVitA-4          Male                 Female              2.907832     2.582447      3.274216
18 months   ki1000108-CMC-V-BCS-2002   Male                 Female              2.879463     2.640865      3.139617
18 months   ki1000108-IRC              Male                 Female              3.008665     2.527097      3.582003
18 months   ki1000109-EE               Male                 Female              2.728459     2.559055      2.909078
18 months   ki1000109-ResPak           Male                 Female              2.752620     2.252685      3.363504
18 months   ki1000304b-SAS-CompFeed    Male                 Female              3.055184     2.799679      3.334007
18 months   ki1000304b-SAS-FoodSuppl   Male                 Female              2.655699     2.299262      3.067392
18 months   ki1017093-NIH-Birth        Male                 Female              2.960066     2.595883      3.375340
18 months   ki1017093c-NIH-Crypto      Male                 Female              3.087514     2.618675      3.640292
18 months   ki1066203-TanzaniaChild2   Male                 Female              3.798012     2.960508      4.872439
18 months   ki1101329-Keneba           Male                 Female              3.269068     3.008202      3.552556
18 months   ki1112895-Guatemala BSC    Male                 Female              3.702806     2.145759      6.389707
18 months   ki1112895-iLiNS-Zinc       Male                 Female              5.280044     3.290142      8.473453
18 months   ki1113344-GMS-Nepal        Male                 Female              2.741689     2.413900      3.113989
18 months   ki1114097-CMIN             Male                 Female              3.329706     3.009491      3.683994
18 months   ki1114097-CONTENT          Male                 Female            234.795658   121.654749    453.159466
18 months   ki1119695-PROBIT           Male                 Female            289.395493   249.260601    335.992737
18 months   ki1126311-ZVITAMBO         Male                 Female              3.574330     3.254107      3.926065
18 months   ki1135781-COHORTS          Male                 Female              3.093044     2.933739      3.260999
18 months   ki1148112-LCNI-5           Male                 Female              3.369364     2.786207      4.074577
18 months   kiGH5241-JiVitA-3          Male                 Female              3.098765     2.970824      3.232216
18 months   kiGH5241-JiVitA-4          Male                 Female              2.910487     2.643819      3.204053
24 months   ki1000108-CMC-V-BCS-2002   Male                 Female              2.685971     2.534803      2.846154
24 months   ki1000108-IRC              Male                 Female              2.978576     2.569543      3.452721
24 months   ki1000109-EE               Male                 Female              2.711983     2.546621      2.888084
24 months   ki1000304b-SAS-CompFeed    Male                 Female              3.026259     2.207701      4.148317
24 months   ki1017093-NIH-Birth        Male                 Female              2.722882     2.455431      3.019464
24 months   ki1017093c-NIH-Crypto      Male                 Female              2.980603     2.551278      3.482175
24 months   ki1066203-TanzaniaChild2   Male                 Female              3.433693     2.629868      4.483209
24 months   ki1101329-Keneba           Male                 Female              3.164262     2.941432      3.403973
24 months   ki1112895-iLiNS-Zinc       Male                 Female              2.974652     2.445727      3.617965
24 months   ki1113344-GMS-Nepal        Male                 Female              2.757989     2.469472      3.080215
24 months   ki1114097-CMIN             Male                 Female              3.134859     2.871114      3.422833
24 months   ki1114097-CONTENT          Male                 Female            244.271860   126.691265    470.977552
24 months   ki1119695-PROBIT           Male                 Female             48.643538    39.271799     60.251730
24 months   ki1126311-ZVITAMBO         Male                 Female              2.768157     2.470610      3.101539
24 months   ki1135781-COHORTS          Male                 Female              2.901521     2.791328      3.016065
24 months   ki1148112-LCNI-5           Male                 Female              3.477498     2.985674      4.050340
24 months   kiGH5241-JiVitA-4          Male                 Female              2.828047     2.575769      3.105034
3 months    ki1000108-CMC-V-BCS-2002   Male                 Female              2.990290     2.250029      3.974097
3 months    ki1000108-IRC              Male                 Female              3.302069     2.468105      4.417826
3 months    ki1000109-EE               Male                 Female              3.236042     2.772072      3.777668
3 months    ki1000109-ResPak           Male                 Female              2.752302     2.183188      3.469774
3 months    ki1000304b-SAS-CompFeed    Male                 Female              3.707771     3.078740      4.465322
3 months    ki1017093-NIH-Birth        Male                 Female              3.984971     2.948813      5.385216
3 months    ki1017093c-NIH-Crypto      Male                 Female              2.616165     1.886450      3.628149
3 months    ki1066203-TanzaniaChild2   Male                 Female              5.561272     3.343438      9.250281
3 months    ki1101329-Keneba           Male                 Female              3.300856     2.854541      3.816953
3 months    ki1113344-GMS-Nepal        Male                 Female              3.203498     2.202308      4.659839
3 months    ki1114097-CMIN             Male                 Female              3.067669     2.475202      3.801948
3 months    ki1114097-CONTENT          Male                 Female            342.017636   137.624112    849.967798
3 months    ki1119695-PROBIT           Male                 Female            211.158175   171.278558    260.323156
3 months    ki1126311-ZVITAMBO         Male                 Female              3.172958     2.787646      3.611528
3 months    ki1135781-COHORTS          Male                 Female              3.524358     3.246179      3.826376
3 months    kiGH5241-JiVitA-3          Male                 Female              2.950294     2.830871      3.074755
3 months    kiGH5241-JiVitA-4          Male                 Female              2.832838     2.347245      3.418890
6 months    ki1000108-CMC-V-BCS-2002   Male                 Female              3.567886     2.913092      4.369862
6 months    ki1000108-IRC              Male                 Female              3.080970     2.446655      3.879737
6 months    ki1000109-EE               Male                 Female              3.044799     2.697521      3.436786
6 months    ki1000109-ResPak           Male                 Female              2.959343     2.408190      3.636636
6 months    ki1000304b-SAS-CompFeed    Male                 Female              3.418956     2.896613      4.035492
6 months    ki1000304b-SAS-FoodSuppl   Male                 Female              3.833144     2.421571      6.067545
6 months    ki1017093-NIH-Birth        Male                 Female              4.211194     3.342594      5.305506
6 months    ki1017093c-NIH-Crypto      Male                 Female              3.252649     2.615013      4.045764
6 months    ki1066203-TanzaniaChild2   Male                 Female              4.704123     3.309537      6.686366
6 months    ki1101329-Keneba           Male                 Female              3.325292     2.946936      3.752224
6 months    ki1112895-Guatemala BSC    Male                 Female              3.384653     1.962856      5.836331
6 months    ki1113344-GMS-Nepal        Male                 Female              3.245359     2.495486      4.220563
6 months    ki1114097-CMIN             Male                 Female              3.726860     3.092120      4.491898
6 months    ki1114097-CONTENT          Male                 Female            297.655593   139.565518    634.819070
6 months    ki1119695-PROBIT           Male                 Female            416.217275   345.362439    501.608747
6 months    ki1126311-ZVITAMBO         Male                 Female              3.165453     2.787436      3.594733
6 months    ki1135781-COHORTS          Male                 Female              3.838960     3.381479      4.358334
6 months    ki1148112-LCNI-5           Male                 Female              9.970225     5.981122     16.619857
6 months    kiGH5241-JiVitA-3          Male                 Female              2.932016     2.798621      3.071769
6 months    kiGH5241-JiVitA-4          Male                 Female              2.947542     2.503242      3.470700


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   Female               NA                 0.0645161   -0.0050982   0.1341304
12 months   ki1000108-IRC              Female               NA                 0.0374076   -0.0350667   0.1098819
12 months   ki1000109-EE               Female               NA                 0.0180450   -0.0393176   0.0754075
12 months   ki1000109-ResPak           Female               NA                 0.0077933   -0.0846892   0.1002758
12 months   ki1000304b-SAS-CompFeed    Female               NA                 0.0501953    0.0007646   0.0996261
12 months   ki1000304b-SAS-FoodSuppl   Female               NA                 0.0121212   -0.0861827   0.1104251
12 months   ki1017093-NIH-Birth        Female               NA                 0.0467517   -0.0157237   0.1092271
12 months   ki1017093c-NIH-Crypto      Female               NA                 0.0294291   -0.0194016   0.0782598
12 months   ki1066203-TanzaniaChild2   Female               NA                 0.0706145    0.0158174   0.1254116
12 months   ki1101329-Keneba           Female               NA                 0.0359943    0.0080292   0.0639594
12 months   ki1112895-Guatemala BSC    Female               NA                 0.0632011   -0.0827715   0.2091737
12 months   ki1112895-iLiNS-Zinc       Female               NA                 0.0243479   -0.0142434   0.0629393
12 months   ki1113344-GMS-Nepal        Female               NA                 0.0262484   -0.0316053   0.0841022
12 months   ki1114097-CMIN             Female               NA                 0.0308872    0.0046334   0.0571411
12 months   ki1114097-CONTENT          Female               NA                 0.1851251    0.1317970   0.2384531
12 months   ki1119695-PROBIT           Female               NA                 0.0973502    0.0904347   0.1042656
12 months   ki1126311-ZVITAMBO         Female               NA                 0.0381466    0.0119025   0.0643907
12 months   ki1135781-COHORTS          Female               NA                 0.0323069    0.0186688   0.0459449
12 months   ki1148112-LCNI-5           Female               NA                 0.0947084    0.0269104   0.1625065
12 months   kiGH5241-JiVitA-3          Female               NA                 0.0303590    0.0153176   0.0454005
12 months   kiGH5241-JiVitA-4          Female               NA                 0.0137420   -0.0220417   0.0495257
18 months   ki1000108-CMC-V-BCS-2002   Female               NA                 0.0236556   -0.0311099   0.0784211
18 months   ki1000108-IRC              Female               NA                 0.0297385   -0.0424884   0.1019654
18 months   ki1000109-EE               Female               NA                 0.0017334   -0.0403430   0.0438098
18 months   ki1000109-ResPak           Female               NA                 0.0046490   -0.0964154   0.1057134
18 months   ki1000304b-SAS-CompFeed    Female               NA                 0.0433272   -0.0037363   0.0903907
18 months   ki1000304b-SAS-FoodSuppl   Female               NA                -0.0094877   -0.0915703   0.0725950
18 months   ki1017093-NIH-Birth        Female               NA                 0.0287540   -0.0344578   0.0919658
18 months   ki1017093c-NIH-Crypto      Female               NA                 0.0262296   -0.0246376   0.0770967
18 months   ki1066203-TanzaniaChild2   Female               NA                 0.0640533   -0.0087243   0.1368308
18 months   ki1101329-Keneba           Female               NA                 0.0433743    0.0139765   0.0727721
18 months   ki1112895-Guatemala BSC    Female               NA                 0.0722789   -0.1301230   0.2746809
18 months   ki1112895-iLiNS-Zinc       Female               NA                 0.0933180   -0.0199342   0.2065701
18 months   ki1113344-GMS-Nepal        Female               NA                 0.0027548   -0.0544285   0.0599380
18 months   ki1114097-CMIN             Female               NA                 0.0392975    0.0098716   0.0687233
18 months   ki1114097-CONTENT          Female               NA                 0.1946595    0.1351712   0.2541479
18 months   ki1119695-PROBIT           Female               NA                 0.1081927    0.1009848   0.1154006
18 months   ki1126311-ZVITAMBO         Female               NA                 0.0555564    0.0244510   0.0866617
18 months   ki1135781-COHORTS          Female               NA                 0.0412801    0.0161716   0.0663886
18 months   ki1148112-LCNI-5           Female               NA                 0.0549704   -0.0216374   0.1315783
18 months   kiGH5241-JiVitA-3          Female               NA                 0.0337284    0.0174494   0.0500073
18 months   kiGH5241-JiVitA-4          Female               NA                 0.0174667   -0.0192441   0.0541774
24 months   ki1000108-CMC-V-BCS-2002   Female               NA                -0.0055483   -0.0420545   0.0309579
24 months   ki1000108-IRC              Female               NA                 0.0306526   -0.0397428   0.1010480
24 months   ki1000109-EE               Female               NA                -0.0010938   -0.0422619   0.0400743
24 months   ki1000304b-SAS-CompFeed    Female               NA                 0.0448276   -0.1294161   0.2190713
24 months   ki1017093-NIH-Birth        Female               NA                 0.0006895   -0.0567568   0.0581358
24 months   ki1017093c-NIH-Crypto      Female               NA                 0.0219535   -0.0329397   0.0768466
24 months   ki1066203-TanzaniaChild2   Female               NA                 0.0522712   -0.0372772   0.1418196
24 months   ki1101329-Keneba           Female               NA                 0.0414715    0.0115278   0.0714152
24 months   ki1112895-iLiNS-Zinc       Female               NA                 0.0184557   -0.0399413   0.0768528
24 months   ki1113344-GMS-Nepal        Female               NA                 0.0051592   -0.0499938   0.0603121
24 months   ki1114097-CMIN             Female               NA                 0.0344079    0.0029790   0.0658368
24 months   ki1114097-CONTENT          Female               NA                 0.1993401    0.1363711   0.2623091
24 months   ki1119695-PROBIT           Female               NA                 0.1201844    0.1025571   0.1378117
24 months   ki1126311-ZVITAMBO         Female               NA                 0.0054595   -0.0481887   0.0591078
24 months   ki1135781-COHORTS          Female               NA                 0.0257015    0.0033083   0.0480947
24 months   ki1148112-LCNI-5           Female               NA                 0.0707027   -0.0015553   0.1429607
24 months   kiGH5241-JiVitA-4          Female               NA                 0.0111753   -0.0277049   0.0500556
3 months    ki1000108-CMC-V-BCS-2002   Female               NA                 0.0156335   -0.0527764   0.0840435
3 months    ki1000108-IRC              Female               NA                 0.0305867   -0.0346984   0.0958718
3 months    ki1000109-EE               Female               NA                 0.0521001   -0.0192094   0.1234097
3 months    ki1000109-ResPak           Female               NA                 0.0032938   -0.0821486   0.0887362
3 months    ki1000304b-SAS-CompFeed    Female               NA                 0.0484938    0.0061421   0.0908455
3 months    ki1017093-NIH-Birth        Female               NA                 0.0373903   -0.0069089   0.0816896
3 months    ki1017093c-NIH-Crypto      Female               NA                -0.0030991   -0.0401881   0.0339900
3 months    ki1066203-TanzaniaChild2   Female               NA                 0.0263343   -0.0032965   0.0559651
3 months    ki1101329-Keneba           Female               NA                 0.0224505   -0.0021206   0.0470215
3 months    ki1113344-GMS-Nepal        Female               NA                 0.0126085   -0.0287125   0.0539295
3 months    ki1114097-CMIN             Female               NA                 0.0103778   -0.0160437   0.0367992
3 months    ki1114097-CONTENT          Female               NA                 0.1156209    0.0723799   0.1588619
3 months    ki1119695-PROBIT           Female               NA                 0.0501416    0.0453897   0.0548935
3 months    ki1126311-ZVITAMBO         Female               NA                 0.0155673   -0.0033174   0.0344519
3 months    ki1135781-COHORTS          Female               NA                 0.0212931    0.0113390   0.0312472
3 months    kiGH5241-JiVitA-3          Female               NA                 0.0160605    0.0043052   0.0278159
3 months    kiGH5241-JiVitA-4          Female               NA                 0.0053497   -0.0301965   0.0408959
6 months    ki1000108-CMC-V-BCS-2002   Female               NA                 0.0611746   -0.0110960   0.1334452
6 months    ki1000108-IRC              Female               NA                 0.0272805   -0.0435348   0.0980958
6 months    ki1000109-EE               Female               NA                 0.0409699   -0.0258964   0.1078361
6 months    ki1000109-ResPak           Female               NA                 0.0254902   -0.0633943   0.1143746
6 months    ki1000304b-SAS-CompFeed    Female               NA                 0.0476205   -0.0023647   0.0976057
6 months    ki1000304b-SAS-FoodSuppl   Female               NA                 0.0535916   -0.0697193   0.1769025
6 months    ki1017093-NIH-Birth        Female               NA                 0.0690714    0.0129657   0.1251772
6 months    ki1017093c-NIH-Crypto      Female               NA                 0.0252224   -0.0207489   0.0711937
6 months    ki1066203-TanzaniaChild2   Female               NA                 0.0426044   -0.0002358   0.0854445
6 months    ki1101329-Keneba           Female               NA                 0.0306004    0.0035424   0.0576585
6 months    ki1112895-Guatemala BSC    Female               NA                 0.0297101   -0.0849501   0.1443704
6 months    ki1113344-GMS-Nepal        Female               NA                 0.0238961   -0.0281442   0.0759364
6 months    ki1114097-CMIN             Female               NA                 0.0286085    0.0035634   0.0536535
6 months    ki1114097-CONTENT          Female               NA                 0.1572181    0.1054773   0.2089588
6 months    ki1119695-PROBIT           Female               NA                 0.0738349    0.0682740   0.0793959
6 months    ki1126311-ZVITAMBO         Female               NA                 0.0215654   -0.0047346   0.0478653
6 months    ki1135781-COHORTS          Female               NA                 0.0394460    0.0177460   0.0611460
6 months    ki1148112-LCNI-5           Female               NA                 0.1614692    0.0525505   0.2703880
6 months    kiGH5241-JiVitA-3          Female               NA                 0.0156194    0.0016539   0.0295850
6 months    kiGH5241-JiVitA-4          Female               NA                 0.0122412   -0.0245078   0.0489903


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.6676926   0.6291842   0.7022020
12 months   ki1000108-IRC              Female               NA                0.6602686   0.6036286   0.7088149
12 months   ki1000109-EE               Female               NA                0.6402484   0.6137701   0.6649113
12 months   ki1000109-ResPak           Female               NA                0.6366964   0.5785205   0.6868424
12 months   ki1000304b-SAS-CompFeed    Female               NA                0.6651046   0.6326563   0.6946866
12 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.6374137   0.5921912   0.6776214
12 months   ki1017093-NIH-Birth        Female               NA                0.6674235   0.6194391   0.7093576
12 months   ki1017093c-NIH-Crypto      Female               NA                0.6617442   0.6111933   0.7057226
12 months   ki1066203-TanzaniaChild2   Female               NA                0.7232974   0.6550420   0.7780473
12 months   ki1101329-Keneba           Female               NA                0.6661088   0.6399960   0.6903276
12 months   ki1112895-Guatemala BSC    Female               NA                0.6895874   0.5406833   0.7902189
12 months   ki1112895-iLiNS-Zinc       Female               NA                0.6762639   0.6035732   0.7356257
12 months   ki1113344-GMS-Nepal        Female               NA                0.6539507   0.6040039   0.6975977
12 months   ki1114097-CMIN             Female               NA                0.6720727   0.6384181   0.7025948
12 months   ki1114097-CONTENT          Female               NA                0.9777034   0.9540019   0.9891922
12 months   ki1119695-PROBIT           Female               NA                0.9509542   0.9437864   0.9572081
12 months   ki1126311-ZVITAMBO         Female               NA                0.6712819   0.6448242   0.6957688
12 months   ki1135781-COHORTS          Female               NA                0.6618246   0.6495914   0.6736307
12 months   ki1148112-LCNI-5           Female               NA                0.7115878   0.6568997   0.7575589
12 months   kiGH5241-JiVitA-3          Female               NA                0.6576912   0.6452538   0.6696925
12 months   kiGH5241-JiVitA-4          Female               NA                0.6439413   0.6123360   0.6729698
18 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.6425374   0.6179590   0.6655347
18 months   ki1000108-IRC              Female               NA                0.6520984   0.6015746   0.6962153
18 months   ki1000109-EE               Female               NA                0.6328205   0.6154466   0.6494096
18 months   ki1000109-ResPak           Female               NA                0.6346467   0.5756084   0.6854721
18 months   ki1000304b-SAS-CompFeed    Female               NA                0.6551532   0.6300684   0.6785370
18 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.6282304   0.5928101   0.6605696
18 months   ki1017093-NIH-Birth        Female               NA                0.6487623   0.6111382   0.6827460
18 months   ki1017093c-NIH-Crypto      Female               NA                0.6545411   0.6097412   0.6941981
18 months   ki1066203-TanzaniaChild2   Female               NA                0.6919395   0.6231981   0.7481401
18 months   ki1101329-Keneba           Female               NA                0.6654871   0.6432271   0.6863582
18 months   ki1112895-Guatemala BSC    Female               NA                0.6857918   0.5116118   0.7978518
18 months   ki1112895-iLiNS-Zinc       Female               NA                0.7346254   0.6062775   0.8211337
18 months   ki1113344-GMS-Nepal        Female               NA                0.6337490   0.5984185   0.6659712
18 months   ki1114097-CMIN             Female               NA                0.6684246   0.6416056   0.6932368
18 months   ki1114097-CONTENT          Female               NA                0.9620326   0.9285114   0.9798357
18 months   ki1119695-PROBIT           Female               NA                0.9607839   0.9548723   0.9659211
18 months   ki1126311-ZVITAMBO         Female               NA                0.6766917   0.6524677   0.6992272
18 months   ki1135781-COHORTS          Female               NA                0.6563233   0.6418015   0.6702563
18 months   ki1148112-LCNI-5           Female               NA                0.6693541   0.6163718   0.7150191
18 months   kiGH5241-JiVitA-3          Female               NA                0.6556605   0.6444947   0.6664756
18 months   kiGH5241-JiVitA-4          Female               NA                0.6440415   0.6185243   0.6678518
24 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.6299204   0.6151122   0.6441589
24 months   ki1000108-IRC              Female               NA                0.6501264   0.6073914   0.6882098
24 months   ki1000109-EE               Female               NA                0.6316835   0.6148505   0.6477809
24 months   ki1000304b-SAS-CompFeed    Female               NA                0.6564495   0.5517931   0.7366686
24 months   ki1017093-NIH-Birth        Female               NA                0.6324565   0.6033847   0.6593974
24 months   ki1017093c-NIH-Crypto      Female               NA                0.6485797   0.6059694   0.6865821
24 months   ki1066203-TanzaniaChild2   Female               NA                0.6748147   0.5983318   0.7367342
24 months   ki1101329-Keneba           Female               NA                0.6597917   0.6400351   0.6784639
24 months   ki1112895-iLiNS-Zinc       Female               NA                0.6485318   0.5939343   0.6957884
24 months   ki1113344-GMS-Nepal        Female               NA                0.6348810   0.6042666   0.6631270
24 months   ki1114097-CMIN             Female               NA                0.6581656   0.6344554   0.6803378
24 months   ki1114097-CONTENT          Female               NA                0.9598402   0.9244111   0.9786635
24 months   ki1119695-PROBIT           Female               NA                0.9090820   0.8892729   0.9253472
24 months   ki1126311-ZVITAMBO         Female               NA                0.6349217   0.6064455   0.6613374
24 months   ki1135781-COHORTS          Female               NA                0.6445222   0.6337414   0.6549857
24 months   ki1148112-LCNI-5           Female               NA                0.6739577   0.6311924   0.7117641
24 months   kiGH5241-JiVitA-4          Female               NA                0.6390916   0.6142524   0.6623314
3 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.6491589   0.5682535   0.7149033
3 months    ki1000108-IRC              Female               NA                0.6693731   0.5847682   0.7367395
3 months    ki1000109-EE               Female               NA                0.6635298   0.6198330   0.7022040
3 months    ki1000109-ResPak           Female               NA                0.6345001   0.5674922   0.6911265
3 months    ki1000304b-SAS-CompFeed    Female               NA                0.6902212   0.6400741   0.7333815
3 months    ki1017093-NIH-Birth        Female               NA                0.6993799   0.6181913   0.7633043
3 months    ki1017093c-NIH-Crypto      Female               NA                0.6250475   0.5290659   0.7014669
3 months    ki1066203-TanzaniaChild2   Female               NA                0.7452381   0.6149823   0.8314269
3 months    ki1101329-Keneba           Female               NA                0.6674554   0.6285994   0.7022462
3 months    ki1113344-GMS-Nepal        Female               NA                0.6625759   0.5521184   0.7457921
3 months    ki1114097-CMIN             Female               NA                0.6544709   0.5946905   0.7054340
3 months    ki1114097-CONTENT          Female               NA                0.9682913   0.9248634   0.9866185
3 months    ki1119695-PROBIT           Female               NA                0.9546587   0.9449903   0.9626278
3 months    ki1126311-ZVITAMBO         Female               NA                0.6604434   0.6257879   0.6918894
3 months    ki1135781-COHORTS          Female               NA                0.6786272   0.6576708   0.6983006
3 months    kiGH5241-JiVitA-3          Female               NA                0.6470613   0.6361868   0.6576108
3 months    kiGH5241-JiVitA-4          Female               NA                0.6393910   0.5882462   0.6841830
6 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.6787758   0.6230104   0.7262922
6 months    ki1000108-IRC              Female               NA                0.6565665   0.5894597   0.7127040
6 months    ki1000109-EE               Female               NA                0.6529860   0.6182965   0.6845229
6 months    ki1000109-ResPak           Female               NA                0.6483021   0.5885777   0.6993566
6 months    ki1000304b-SAS-CompFeed    Female               NA                0.6757294   0.6298267   0.7159400
6 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.6835427   0.5526891   0.7761172
6 months    ki1017093-NIH-Birth        Female               NA                0.7087492   0.6480076   0.7590090
6 months    ki1017093c-NIH-Crypto      Female               NA                0.6636123   0.6040239   0.7142336
6 months    ki1066203-TanzaniaChild2   Female               NA                0.7224084   0.6316790   0.7907883
6 months    ki1101329-Keneba           Female               NA                0.6686884   0.6365584   0.6979779
6 months    ki1112895-Guatemala BSC    Female               NA                0.6687425   0.5035469   0.7789690
6 months    ki1113344-GMS-Nepal        Female               NA                0.6642102   0.5903804   0.7247329
6 months    ki1114097-CMIN             Female               NA                0.6887736   0.6397212   0.7311474
6 months    ki1114097-CONTENT          Female               NA                0.9659774   0.9298511   0.9834989
6 months    ki1119695-PROBIT           Female               NA                0.9674946   0.9612863   0.9727072
6 months    ki1126311-ZVITAMBO         Female               NA                0.6598652   0.6257353   0.6908827
6 months    ki1135781-COHORTS          Female               NA                0.6935958   0.6611900   0.7229021
6 months    ki1148112-LCNI-5           Female               NA                0.8179629   0.7098838   0.8857785
6 months    kiGH5241-JiVitA-3          Female               NA                0.6458750   0.6336021   0.6577368
6 months    kiGH5241-JiVitA-4          Female               NA                0.6461230   0.6024002   0.6850378


