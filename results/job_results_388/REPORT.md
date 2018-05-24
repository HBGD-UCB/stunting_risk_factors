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

**Intervention Variable:** gagebrth

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
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: kiGH5241-JiVitA-3
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: kiGH5241-JiVitA-3

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1113344-GMS-Nepal

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/7d9cd612-578b-4392-94c5-074c4fbce445/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d9cd612-578b-4392-94c5-074c4fbce445/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/7d9cd612-578b-4392-94c5-074c4fbce445/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7d9cd612-578b-4392-94c5-074c4fbce445/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A              n     nA   nAY0   nAY1
----------  -------------------------  --------  ------  -----  -----  -----
12 months   ki1000108-CMC-V-BCS-2002   <=266        350     76     24     52
12 months   ki1000108-CMC-V-BCS-2002   >280         350    130     40     90
12 months   ki1000108-CMC-V-BCS-2002   266-273      350     60     20     40
12 months   ki1000108-CMC-V-BCS-2002   273-280      350     84     25     59
12 months   ki1000108-IRC              <=266        388     73     26     47
12 months   ki1000108-IRC              >280         388    172     92     80
12 months   ki1000108-IRC              266-273      388     66     32     34
12 months   ki1000108-IRC              273-280      388     77     42     35
12 months   ki1000109-EE               <=266        373    297     45    252
12 months   ki1000109-EE               >280         373     17      6     11
12 months   ki1000109-EE               266-273      373     51     13     38
12 months   ki1000109-EE               273-280      373      8      1      7
12 months   ki1000304b-SAS-CompFeed    <=266        886    854    350    504
12 months   ki1000304b-SAS-CompFeed    >280         886      3      1      2
12 months   ki1000304b-SAS-CompFeed    266-273      886     13      8      5
12 months   ki1000304b-SAS-CompFeed    273-280      886     16      8      8
12 months   ki1017093c-NIH-Crypto      <=266        729    729    452    277
12 months   ki1017093c-NIH-Crypto      >280         729      0      0      0
12 months   ki1017093c-NIH-Crypto      266-273      729      0      0      0
12 months   ki1017093c-NIH-Crypto      273-280      729      0      0      0
12 months   ki1066203-TanzaniaChild2   <=266        464    116     74     42
12 months   ki1066203-TanzaniaChild2   >280         464    196    138     58
12 months   ki1066203-TanzaniaChild2   266-273      464     72     50     22
12 months   ki1066203-TanzaniaChild2   273-280      464     80     56     24
12 months   ki1101329-Keneba           <=266       1521    444    228    216
12 months   ki1101329-Keneba           >280        1521    380    249    131
12 months   ki1101329-Keneba           266-273     1521    325    202    123
12 months   ki1101329-Keneba           273-280     1521    372    235    137
12 months   ki1113344-GMS-Nepal        <=266        582      1      0      1
12 months   ki1113344-GMS-Nepal        >280         582      4      3      1
12 months   ki1113344-GMS-Nepal        266-273      582    577    314    263
12 months   ki1113344-GMS-Nepal        273-280      582      0      0      0
12 months   ki1119695-PROBIT           <=266       7943   1634   1317    317
12 months   ki1119695-PROBIT           >280        7943    631    559     72
12 months   ki1119695-PROBIT           266-273     7943   2575   2193    382
12 months   ki1119695-PROBIT           273-280     7943   3103   2717    386
12 months   ki1135781-COHORTS          <=266       4441   1776    868    908
12 months   ki1135781-COHORTS          >280        4441    917    546    371
12 months   ki1135781-COHORTS          266-273     4441    844    504    340
12 months   ki1135781-COHORTS          273-280     4441    904    561    343
12 months   kiGH5241-JiVitA-3          <=266       6260   1978    783   1195
12 months   kiGH5241-JiVitA-3          >280        6260   2017   1304    713
12 months   kiGH5241-JiVitA-3          266-273     6260   1066    538    528
12 months   kiGH5241-JiVitA-3          273-280     6260   1199    698    501
18 months   ki1000108-CMC-V-BCS-2002   <=266        351     76     15     61
18 months   ki1000108-CMC-V-BCS-2002   >280         351    131     18    113
18 months   ki1000108-CMC-V-BCS-2002   266-273      351     60     10     50
18 months   ki1000108-CMC-V-BCS-2002   273-280      351     84     14     70
18 months   ki1000108-IRC              <=266        389     73     20     53
18 months   ki1000108-IRC              >280         389    173     82     91
18 months   ki1000108-IRC              266-273      389     66     31     35
18 months   ki1000108-IRC              273-280      389     77     37     40
18 months   ki1000109-EE               <=266        363    290     19    271
18 months   ki1000109-EE               >280         363     17      4     13
18 months   ki1000109-EE               266-273      363     49      9     40
18 months   ki1000109-EE               273-280      363      7      0      7
18 months   ki1000304b-SAS-CompFeed    <=266        856    825    234    591
18 months   ki1000304b-SAS-CompFeed    >280         856      3      1      2
18 months   ki1000304b-SAS-CompFeed    266-273      856     13      5      8
18 months   ki1000304b-SAS-CompFeed    273-280      856     15      4     11
18 months   ki1017093c-NIH-Crypto      <=266        715    715    398    317
18 months   ki1017093c-NIH-Crypto      >280         715      0      0      0
18 months   ki1017093c-NIH-Crypto      266-273      715      0      0      0
18 months   ki1017093c-NIH-Crypto      273-280      715      0      0      0
18 months   ki1066203-TanzaniaChild2   <=266        338     85     47     38
18 months   ki1066203-TanzaniaChild2   >280         338    143     89     54
18 months   ki1066203-TanzaniaChild2   266-273      338     53     30     23
18 months   ki1066203-TanzaniaChild2   273-280      338     57     29     28
18 months   ki1101329-Keneba           <=266       1473    436    186    250
18 months   ki1101329-Keneba           >280        1473    363    202    161
18 months   ki1101329-Keneba           266-273     1473    318    169    149
18 months   ki1101329-Keneba           273-280     1473    356    181    175
18 months   ki1113344-GMS-Nepal        <=266        574      1      0      1
18 months   ki1113344-GMS-Nepal        >280         574      4      2      2
18 months   ki1113344-GMS-Nepal        266-273      574    569    214    355
18 months   ki1113344-GMS-Nepal        273-280      574      0      0      0
18 months   ki1119695-PROBIT           <=266       7475   1518   1205    313
18 months   ki1119695-PROBIT           >280        7475    596    525     71
18 months   ki1119695-PROBIT           266-273     7475   2406   2022    384
18 months   ki1119695-PROBIT           273-280     7475   2955   2553    402
18 months   ki1135781-COHORTS          <=266       2916   1206    367    839
18 months   ki1135781-COHORTS          >280        2916    569    223    346
18 months   ki1135781-COHORTS          266-273     2916    538    220    318
18 months   ki1135781-COHORTS          273-280     2916    603    244    359
18 months   kiGH5241-JiVitA-3          <=266       5533   1751    580   1171
18 months   kiGH5241-JiVitA-3          >280        5533   1771    946    825
18 months   kiGH5241-JiVitA-3          266-273     5533    941    390    551
18 months   kiGH5241-JiVitA-3          273-280     5533   1070    518    552
24 months   ki1000108-CMC-V-BCS-2002   <=266        351     76      7     69
24 months   ki1000108-CMC-V-BCS-2002   >280         351    131     10    121
24 months   ki1000108-CMC-V-BCS-2002   266-273      351     60      3     57
24 months   ki1000108-CMC-V-BCS-2002   273-280      351     84      8     76
24 months   ki1000108-IRC              <=266        390     74     17     57
24 months   ki1000108-IRC              >280         390    173     64    109
24 months   ki1000108-IRC              266-273      390     66     26     40
24 months   ki1000108-IRC              273-280      390     77     31     46
24 months   ki1000109-EE               <=266        338    272     17    255
24 months   ki1000109-EE               >280         338     15      2     13
24 months   ki1000109-EE               266-273      338     45      8     37
24 months   ki1000109-EE               273-280      338      6      0      6
24 months   ki1000304b-SAS-CompFeed    <=266         79     71     21     50
24 months   ki1000304b-SAS-CompFeed    >280          79      0      0      0
24 months   ki1000304b-SAS-CompFeed    266-273       79      4      2      2
24 months   ki1000304b-SAS-CompFeed    273-280       79      4      0      4
24 months   ki1017093c-NIH-Crypto      <=266        634    634    316    318
24 months   ki1017093c-NIH-Crypto      >280         634      0      0      0
24 months   ki1017093c-NIH-Crypto      266-273      634      0      0      0
24 months   ki1017093c-NIH-Crypto      273-280      634      0      0      0
24 months   ki1066203-TanzaniaChild2   <=266        235     55     28     27
24 months   ki1066203-TanzaniaChild2   >280         235     95     54     41
24 months   ki1066203-TanzaniaChild2   266-273      235     40     19     21
24 months   ki1066203-TanzaniaChild2   273-280      235     45     22     23
24 months   ki1101329-Keneba           <=266       1446    427    155    272
24 months   ki1101329-Keneba           >280        1446    350    166    184
24 months   ki1101329-Keneba           266-273     1446    316    148    168
24 months   ki1101329-Keneba           273-280     1446    353    148    205
24 months   ki1113344-GMS-Nepal        <=266        568      1      0      1
24 months   ki1113344-GMS-Nepal        >280         568      4      2      2
24 months   ki1113344-GMS-Nepal        266-273      568    563    174    389
24 months   ki1113344-GMS-Nepal        273-280      568      0      0      0
24 months   ki1119695-PROBIT           <=266       2076    503    378    125
24 months   ki1119695-PROBIT           >280        2076    124    111     13
24 months   ki1119695-PROBIT           266-273     2076    730    572    158
24 months   ki1119695-PROBIT           273-280     2076    719    587    132
24 months   ki1135781-COHORTS          <=266       2856   1179    242    937
24 months   ki1135781-COHORTS          >280        2856    553    131    422
24 months   ki1135781-COHORTS          266-273     2856    537    134    403
24 months   ki1135781-COHORTS          273-280     2856    587    155    432
24 months   kiGH5241-JiVitA-3          <=266          3      0      0      0
24 months   kiGH5241-JiVitA-3          >280           3      1      1      0
24 months   kiGH5241-JiVitA-3          266-273        3      1      0      1
24 months   kiGH5241-JiVitA-3          273-280        3      1      1      0
3 months    ki1000108-CMC-V-BCS-2002   <=266        340     75     42     33
3 months    ki1000108-CMC-V-BCS-2002   >280         340    127     83     44
3 months    ki1000108-CMC-V-BCS-2002   266-273      340     56     33     23
3 months    ki1000108-CMC-V-BCS-2002   273-280      340     82     62     20
3 months    ki1000108-IRC              <=266        390     74     38     36
3 months    ki1000108-IRC              >280         390    173    119     54
3 months    ki1000108-IRC              266-273      390     66     50     16
3 months    ki1000108-IRC              273-280      390     77     57     20
3 months    ki1000109-EE               <=266        379    302    101    201
3 months    ki1000109-EE               >280         379     17      8      9
3 months    ki1000109-EE               266-273      379     52     23     29
3 months    ki1000109-EE               273-280      379      8      6      2
3 months    ki1000304b-SAS-CompFeed    <=266        965    933    621    312
3 months    ki1000304b-SAS-CompFeed    >280         965      3      3      0
3 months    ki1000304b-SAS-CompFeed    266-273      965     13     11      2
3 months    ki1000304b-SAS-CompFeed    273-280      965     16     13      3
3 months    ki1017093c-NIH-Crypto      <=266        758    758    637    121
3 months    ki1017093c-NIH-Crypto      >280         758      0      0      0
3 months    ki1017093c-NIH-Crypto      266-273      758      0      0      0
3 months    ki1017093c-NIH-Crypto      273-280      758      0      0      0
3 months    ki1066203-TanzaniaChild2   <=266        565    135    117     18
3 months    ki1066203-TanzaniaChild2   >280         565    246    227     19
3 months    ki1066203-TanzaniaChild2   266-273      565     90     81      9
3 months    ki1066203-TanzaniaChild2   273-280      565     94     84     10
3 months    ki1101329-Keneba           <=266       1558    469    324    145
3 months    ki1101329-Keneba           >280        1558    384    331     53
3 months    ki1101329-Keneba           266-273     1558    332    263     69
3 months    ki1101329-Keneba           273-280     1558    373    305     68
3 months    ki1113344-GMS-Nepal        <=266        593      1      0      1
3 months    ki1113344-GMS-Nepal        >280         593      4      4      0
3 months    ki1113344-GMS-Nepal        266-273      593    588    495     93
3 months    ki1113344-GMS-Nepal        273-280      593      0      0      0
3 months    ki1119695-PROBIT           <=266       8125   1668   1476    192
3 months    ki1119695-PROBIT           >280        8125    640    616     24
3 months    ki1119695-PROBIT           266-273     8125   2644   2447    197
3 months    ki1119695-PROBIT           273-280     8125   3173   2984    189
3 months    ki1135781-COHORTS          <=266       4749   1920   1494    426
3 months    ki1135781-COHORTS          >280        4749    979    864    115
3 months    ki1135781-COHORTS          266-273     4749    894    786    108
3 months    ki1135781-COHORTS          273-280     4749    956    842    114
3 months    kiGH5241-JiVitA-3          <=266      10029   3372   1430   1942
3 months    kiGH5241-JiVitA-3          >280       10029   3053   2183    870
3 months    kiGH5241-JiVitA-3          266-273    10029   1705    978    727
3 months    kiGH5241-JiVitA-3          273-280    10029   1899   1263    636
6 months    ki1000108-CMC-V-BCS-2002   <=266        345     76     34     42
6 months    ki1000108-CMC-V-BCS-2002   >280         345    127     63     64
6 months    ki1000108-CMC-V-BCS-2002   266-273      345     58     28     30
6 months    ki1000108-CMC-V-BCS-2002   273-280      345     84     44     40
6 months    ki1000108-IRC              <=266        388     74     33     41
6 months    ki1000108-IRC              >280         388    171    104     67
6 months    ki1000108-IRC              266-273      388     66     41     25
6 months    ki1000108-IRC              273-280      388     77     46     31
6 months    ki1000109-EE               <=266        373    299     69    230
6 months    ki1000109-EE               >280         373     17      8      9
6 months    ki1000109-EE               266-273      373     49     16     33
6 months    ki1000109-EE               273-280      373      8      3      5
6 months    ki1000304b-SAS-CompFeed    <=266        800    771    436    335
6 months    ki1000304b-SAS-CompFeed    >280         800      3      3      0
6 months    ki1000304b-SAS-CompFeed    266-273      800     12     10      2
6 months    ki1000304b-SAS-CompFeed    273-280      800     14     11      3
6 months    ki1017093c-NIH-Crypto      <=266        736    736    510    226
6 months    ki1017093c-NIH-Crypto      >280         736      0      0      0
6 months    ki1017093c-NIH-Crypto      266-273      736      0      0      0
6 months    ki1017093c-NIH-Crypto      273-280      736      0      0      0
6 months    ki1066203-TanzaniaChild2   <=266        522    119     92     27
6 months    ki1066203-TanzaniaChild2   >280         522    229    188     41
6 months    ki1066203-TanzaniaChild2   266-273      522     84     71     13
6 months    ki1066203-TanzaniaChild2   273-280      522     90     73     17
6 months    ki1101329-Keneba           <=266       1470    441    273    168
6 months    ki1101329-Keneba           >280        1470    362    275     87
6 months    ki1101329-Keneba           266-273     1470    319    228     91
6 months    ki1101329-Keneba           273-280     1470    348    259     89
6 months    ki1113344-GMS-Nepal        <=266        567      1      0      1
6 months    ki1113344-GMS-Nepal        >280         567      3      3      0
6 months    ki1113344-GMS-Nepal        266-273      567    563    402    161
6 months    ki1113344-GMS-Nepal        273-280      567      0      0      0
6 months    ki1119695-PROBIT           <=266       7807   1599   1366    233
6 months    ki1119695-PROBIT           >280        7807    619    582     37
6 months    ki1119695-PROBIT           266-273     7807   2535   2265    270
6 months    ki1119695-PROBIT           273-280     7807   3054   2780    274
6 months    ki1135781-COHORTS          <=266       2872   1206    796    410
6 months    ki1135781-COHORTS          >280        2872    531    444     87
6 months    ki1135781-COHORTS          266-273     2872    554    454    100
6 months    ki1135781-COHORTS          273-280     2872    581    453    128
6 months    kiGH5241-JiVitA-3          <=266       7135   2309    962   1347
6 months    kiGH5241-JiVitA-3          >280        7135   2190   1487    703
6 months    kiGH5241-JiVitA-3          266-273     7135   1241    678    563
6 months    kiGH5241-JiVitA-3          273-280     7135   1395    871    524

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.6842105   0.5795564   0.7888646
12 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.6923077   0.6128555   0.7717598
12 months   ki1000108-CMC-V-BCS-2002   266-273              NA                0.6666667   0.5472163   0.7861170
12 months   ki1000108-CMC-V-BCS-2002   273-280              NA                0.7023810   0.6044666   0.8002953
12 months   ki1000108-IRC              <=266                NA                0.6438356   0.5338439   0.7538273
12 months   ki1000108-IRC              >280                 NA                0.4651163   0.3904792   0.5397534
12 months   ki1000108-IRC              266-273              NA                0.5151515   0.3944238   0.6358792
12 months   ki1000108-IRC              273-280              NA                0.4545455   0.3431850   0.5659059
12 months   ki1066203-TanzaniaChild2   <=266                NA                0.3620690   0.2745162   0.4496218
12 months   ki1066203-TanzaniaChild2   >280                 NA                0.2959184   0.2319469   0.3598898
12 months   ki1066203-TanzaniaChild2   266-273              NA                0.3055556   0.1990397   0.4120714
12 months   ki1066203-TanzaniaChild2   273-280              NA                0.3000000   0.1994733   0.4005267
12 months   ki1101329-Keneba           <=266                NA                0.4864865   0.4399803   0.5329927
12 months   ki1101329-Keneba           >280                 NA                0.3447368   0.2969343   0.3925394
12 months   ki1101329-Keneba           266-273              NA                0.3784615   0.3257150   0.4312081
12 months   ki1101329-Keneba           273-280              NA                0.3682796   0.3192486   0.4173106
12 months   ki1119695-PROBIT           <=266                NA                0.1940024   0.1748281   0.2131768
12 months   ki1119695-PROBIT           >280                 NA                0.1141046   0.0892959   0.1389133
12 months   ki1119695-PROBIT           266-273              NA                0.1483495   0.1346198   0.1620792
12 months   ki1119695-PROBIT           273-280              NA                0.1243957   0.1127828   0.1360087
12 months   ki1135781-COHORTS          <=266                NA                0.5112613   0.4880106   0.5345119
12 months   ki1135781-COHORTS          >280                 NA                0.4045802   0.3728095   0.4363508
12 months   ki1135781-COHORTS          266-273              NA                0.4028436   0.3697505   0.4359367
12 months   ki1135781-COHORTS          273-280              NA                0.3794248   0.3477894   0.4110601
12 months   kiGH5241-JiVitA-3          <=266                NA                0.6041456   0.5825926   0.6256986
12 months   kiGH5241-JiVitA-3          >280                 NA                0.3534953   0.3326308   0.3743598
12 months   kiGH5241-JiVitA-3          266-273              NA                0.4953096   0.4652934   0.5253257
12 months   kiGH5241-JiVitA-3          273-280              NA                0.4178482   0.3899292   0.4457673
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.8026316   0.7130213   0.8922418
18 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.8625954   0.8035568   0.9216340
18 months   ki1000108-CMC-V-BCS-2002   266-273              NA                0.8333333   0.7388999   0.9277668
18 months   ki1000108-CMC-V-BCS-2002   273-280              NA                0.8333333   0.7535225   0.9131441
18 months   ki1000108-IRC              <=266                NA                0.7260274   0.6235860   0.8284688
18 months   ki1000108-IRC              >280                 NA                0.5260116   0.4515100   0.6005131
18 months   ki1000108-IRC              266-273              NA                0.5303030   0.4097423   0.6508638
18 months   ki1000108-IRC              273-280              NA                0.5194805   0.4077423   0.6312188
18 months   ki1066203-TanzaniaChild2   <=266                NA                0.4470588   0.3412057   0.5529120
18 months   ki1066203-TanzaniaChild2   >280                 NA                0.3776224   0.2980469   0.4571979
18 months   ki1066203-TanzaniaChild2   266-273              NA                0.4339623   0.3003328   0.5675917
18 months   ki1066203-TanzaniaChild2   273-280              NA                0.4912281   0.3612538   0.6212023
18 months   ki1101329-Keneba           <=266                NA                0.5733945   0.5269545   0.6198345
18 months   ki1101329-Keneba           >280                 NA                0.4435262   0.3924022   0.4946501
18 months   ki1101329-Keneba           266-273              NA                0.4685535   0.4136890   0.5234180
18 months   ki1101329-Keneba           273-280              NA                0.4915730   0.4396238   0.5435222
18 months   ki1119695-PROBIT           <=266                NA                0.2061924   0.1858390   0.2265457
18 months   ki1119695-PROBIT           >280                 NA                0.1191275   0.0931189   0.1451361
18 months   ki1119695-PROBIT           266-273              NA                0.1596010   0.1449661   0.1742359
18 months   ki1119695-PROBIT           273-280              NA                0.1360406   0.1236789   0.1484023
18 months   ki1135781-COHORTS          <=266                NA                0.6956882   0.6697156   0.7216608
18 months   ki1135781-COHORTS          >280                 NA                0.6080844   0.5679659   0.6482029
18 months   ki1135781-COHORTS          266-273              NA                0.5910781   0.5495278   0.6326284
18 months   ki1135781-COHORTS          273-280              NA                0.5953566   0.5561744   0.6345387
18 months   kiGH5241-JiVitA-3          <=266                NA                0.6687607   0.6467137   0.6908078
18 months   kiGH5241-JiVitA-3          >280                 NA                0.4658385   0.4426041   0.4890729
18 months   kiGH5241-JiVitA-3          266-273              NA                0.5855473   0.5540690   0.6170256
18 months   kiGH5241-JiVitA-3          273-280              NA                0.5158879   0.4859413   0.5458344
24 months   ki1000108-IRC              <=266                NA                0.7702703   0.6743037   0.8662368
24 months   ki1000108-IRC              >280                 NA                0.6300578   0.5580234   0.7020922
24 months   ki1000108-IRC              266-273              NA                0.6060606   0.4880268   0.7240944
24 months   ki1000108-IRC              273-280              NA                0.5974026   0.4877221   0.7070831
24 months   ki1066203-TanzaniaChild2   <=266                NA                0.4909091   0.3585082   0.6233100
24 months   ki1066203-TanzaniaChild2   >280                 NA                0.4315789   0.3317682   0.5313897
24 months   ki1066203-TanzaniaChild2   266-273              NA                0.5250000   0.3699147   0.6800853
24 months   ki1066203-TanzaniaChild2   273-280              NA                0.5111111   0.3647484   0.6574739
24 months   ki1101329-Keneba           <=266                NA                0.6370023   0.5913769   0.6826278
24 months   ki1101329-Keneba           >280                 NA                0.5257143   0.4733833   0.5780453
24 months   ki1101329-Keneba           266-273              NA                0.5316456   0.4766088   0.5866824
24 months   ki1101329-Keneba           273-280              NA                0.5807365   0.5292440   0.6322291
24 months   ki1119695-PROBIT           <=266                NA                0.2485089   0.2107342   0.2862837
24 months   ki1119695-PROBIT           >280                 NA                0.1048387   0.0509059   0.1587716
24 months   ki1119695-PROBIT           266-273              NA                0.2164384   0.1865574   0.2463193
24 months   ki1119695-PROBIT           273-280              NA                0.1835883   0.1552832   0.2118935
24 months   ki1135781-COHORTS          <=266                NA                0.7947413   0.7716828   0.8177998
24 months   ki1135781-COHORTS          >280                 NA                0.7631103   0.7276675   0.7985531
24 months   ki1135781-COHORTS          266-273              NA                0.7504655   0.7138583   0.7870728
24 months   ki1135781-COHORTS          273-280              NA                0.7359455   0.7002778   0.7716132
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.4400000   0.3274936   0.5525064
3 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.3464567   0.2635771   0.4293363
3 months    ki1000108-CMC-V-BCS-2002   266-273              NA                0.4107143   0.2816736   0.5397549
3 months    ki1000108-CMC-V-BCS-2002   273-280              NA                0.2439024   0.1508179   0.3369870
3 months    ki1000108-IRC              <=266                NA                0.4864865   0.3724612   0.6005117
3 months    ki1000108-IRC              >280                 NA                0.3121387   0.2430023   0.3812751
3 months    ki1000108-IRC              266-273              NA                0.2424242   0.1389018   0.3459467
3 months    ki1000108-IRC              273-280              NA                0.2597403   0.1616735   0.3578070
3 months    ki1066203-TanzaniaChild2   <=266                NA                0.1333333   0.0759400   0.1907266
3 months    ki1066203-TanzaniaChild2   >280                 NA                0.0772358   0.0438455   0.1106260
3 months    ki1066203-TanzaniaChild2   266-273              NA                0.1000000   0.0379656   0.1620344
3 months    ki1066203-TanzaniaChild2   273-280              NA                0.1063830   0.0439979   0.1687680
3 months    ki1101329-Keneba           <=266                NA                0.3091684   0.2673291   0.3510078
3 months    ki1101329-Keneba           >280                 NA                0.1380208   0.1035110   0.1725306
3 months    ki1101329-Keneba           266-273              NA                0.2078313   0.1641714   0.2514912
3 months    ki1101329-Keneba           273-280              NA                0.1823056   0.1431108   0.2215004
3 months    ki1119695-PROBIT           <=266                NA                0.1151079   0.0997909   0.1304249
3 months    ki1119695-PROBIT           >280                 NA                0.0375000   0.0227802   0.0522198
3 months    ki1119695-PROBIT           266-273              NA                0.0745083   0.0644984   0.0845183
3 months    ki1119695-PROBIT           273-280              NA                0.0595651   0.0513294   0.0678008
3 months    ki1135781-COHORTS          <=266                NA                0.2218750   0.2032875   0.2404625
3 months    ki1135781-COHORTS          >280                 NA                0.1174668   0.0972959   0.1376377
3 months    ki1135781-COHORTS          266-273              NA                0.1208054   0.0994400   0.1421708
3 months    ki1135781-COHORTS          273-280              NA                0.1192469   0.0987014   0.1397923
3 months    kiGH5241-JiVitA-3          <=266                NA                0.5759193   0.5592380   0.5926007
3 months    kiGH5241-JiVitA-3          >280                 NA                0.2849656   0.2689529   0.3009784
3 months    kiGH5241-JiVitA-3          266-273              NA                0.4263930   0.4029172   0.4498687
3 months    kiGH5241-JiVitA-3          273-280              NA                0.3349131   0.3136849   0.3561413
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.5526316   0.4406821   0.6645811
6 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.5039370   0.4168541   0.5910200
6 months    ki1000108-CMC-V-BCS-2002   266-273              NA                0.5172414   0.3884532   0.6460296
6 months    ki1000108-CMC-V-BCS-2002   273-280              NA                0.4761905   0.3692318   0.5831491
6 months    ki1000108-IRC              <=266                NA                0.5540541   0.4406549   0.6674532
6 months    ki1000108-IRC              >280                 NA                0.3918129   0.3185526   0.4650731
6 months    ki1000108-IRC              266-273              NA                0.3787879   0.2616076   0.4959682
6 months    ki1000108-IRC              273-280              NA                0.4025974   0.2929162   0.5122786
6 months    ki1066203-TanzaniaChild2   <=266                NA                0.2268908   0.1515691   0.3022124
6 months    ki1066203-TanzaniaChild2   >280                 NA                0.1790393   0.1293364   0.2287422
6 months    ki1066203-TanzaniaChild2   266-273              NA                0.1547619   0.0773431   0.2321807
6 months    ki1066203-TanzaniaChild2   273-280              NA                0.1888889   0.1079445   0.2698333
6 months    ki1101329-Keneba           <=266                NA                0.3809524   0.3356132   0.4262916
6 months    ki1101329-Keneba           >280                 NA                0.2403315   0.1963004   0.2843625
6 months    ki1101329-Keneba           266-273              NA                0.2852665   0.2356989   0.3348341
6 months    ki1101329-Keneba           273-280              NA                0.2557471   0.2098937   0.3016006
6 months    ki1119695-PROBIT           <=266                NA                0.1457161   0.1284216   0.1630105
6 months    ki1119695-PROBIT           >280                 NA                0.0597738   0.0410970   0.0784506
6 months    ki1119695-PROBIT           266-273              NA                0.1065089   0.0944994   0.1185184
6 months    ki1119695-PROBIT           273-280              NA                0.0897184   0.0795823   0.0998545
6 months    ki1135781-COHORTS          <=266                NA                0.3399668   0.3132275   0.3667062
6 months    ki1135781-COHORTS          >280                 NA                0.1638418   0.1323547   0.1953289
6 months    ki1135781-COHORTS          266-273              NA                0.1805054   0.1484732   0.2125376
6 months    ki1135781-COHORTS          273-280              NA                0.2203098   0.1866033   0.2540163
6 months    kiGH5241-JiVitA-3          <=266                NA                0.5833694   0.5632593   0.6034795
6 months    kiGH5241-JiVitA-3          >280                 NA                0.3210046   0.3014501   0.3405590
6 months    kiGH5241-JiVitA-3          266-273              NA                0.4536664   0.4259658   0.4813670
6 months    kiGH5241-JiVitA-3          273-280              NA                0.3756272   0.3502121   0.4010423


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6885714   0.6873419   0.6898009
12 months   ki1000108-IRC              NA                   NA                0.5051546   0.4982130   0.5120963
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3146552   0.3121438   0.3171666
12 months   ki1101329-Keneba           NA                   NA                0.3990796   0.3961957   0.4019635
12 months   ki1119695-PROBIT           NA                   NA                0.1456628   0.1450650   0.1462607
12 months   ki1135781-COHORTS          NA                   NA                0.4417924   0.4401037   0.4434811
12 months   kiGH5241-JiVitA-3          NA                   NA                0.4691693   0.4666080   0.4717306
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.8376068   0.8352516   0.8399621
18 months   ki1000108-IRC              NA                   NA                0.5629820   0.5551774   0.5707867
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4230769   0.4185214   0.4276325
18 months   ki1101329-Keneba           NA                   NA                0.4989817   0.4963718   0.5015915
18 months   ki1119695-PROBIT           NA                   NA                0.1565217   0.1558880   0.1571555
18 months   ki1135781-COHORTS          NA                   NA                0.6385460   0.6367926   0.6402994
18 months   kiGH5241-JiVitA-3          NA                   NA                0.5600940   0.5578785   0.5623095
24 months   ki1000108-IRC              NA                   NA                0.6461538   0.6400448   0.6522629
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4765957   0.4716432   0.4815483
24 months   ki1101329-Keneba           NA                   NA                0.5733057   0.5709210   0.5756903
24 months   ki1119695-PROBIT           NA                   NA                0.2061657   0.2046376   0.2076938
24 months   ki1135781-COHORTS          NA                   NA                0.7682073   0.7673325   0.7690821
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3529412   0.3453355   0.3605468
3 months    ki1000108-IRC              NA                   NA                0.3230769   0.3147552   0.3313986
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0991150   0.0972750   0.1009551
3 months    ki1101329-Keneba           NA                   NA                0.2150193   0.2117256   0.2183129
3 months    ki1119695-PROBIT           NA                   NA                0.0740923   0.0735901   0.0745945
3 months    ki1135781-COHORTS          NA                   NA                0.1606654   0.1592308   0.1621000
3 months    kiGH5241-JiVitA-3          NA                   NA                0.4162928   0.4138886   0.4186969
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5101449   0.5073470   0.5129428
6 months    ki1000108-IRC              NA                   NA                0.4226804   0.4162859   0.4290749
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1877395   0.1857113   0.1897676
6 months    ki1101329-Keneba           NA                   NA                0.2959184   0.2929644   0.2988723
6 months    ki1119695-PROBIT           NA                   NA                0.1042654   0.1037251   0.1048057
6 months    ki1135781-COHORTS          NA                   NA                0.2524373   0.2496335   0.2552411
6 months    kiGH5241-JiVitA-3          NA                   NA                0.4396636   0.4371386   0.4421887


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ---------  ----------  ---------
12 months   ki1000108-CMC-V-BCS-2002   >280                 <=266             2.750642   2.2718875   3.330284
12 months   ki1000108-CMC-V-BCS-2002   266-273              <=266             2.649468   2.0933713   3.353291
12 months   ki1000108-CMC-V-BCS-2002   273-280              <=266             2.791438   2.2696040   3.433253
12 months   ki1000108-IRC              >280                 <=266             2.059400   1.6291036   2.603351
12 months   ki1000108-IRC              266-273              <=266             2.225828   1.6654848   2.974696
12 months   ki1000108-IRC              273-280              <=266             2.025864   1.5027854   2.731011
12 months   ki1066203-TanzaniaChild2   >280                 <=266             2.264374   1.6371262   3.131945
12 months   ki1066203-TanzaniaChild2   266-273              <=266             2.325454   1.5214428   3.554348
12 months   ki1066203-TanzaniaChild2   273-280              <=266             2.290045   1.5148901   3.461839
12 months   ki1101329-Keneba           >280                 <=266             2.031198   1.7163550   2.403795
12 months   ki1101329-Keneba           266-273              <=266             2.177002   1.8384874   2.577846
12 months   ki1101329-Keneba           273-280              <=266             2.131912   1.8096219   2.511601
12 months   ki1119695-PROBIT           >280                 <=266             1.800673   1.4181170   2.286429
12 months   ki1119695-PROBIT           266-273              <=266             2.148304   1.8762516   2.459803
12 months   ki1119695-PROBIT           273-280              <=266             1.898772   1.6574047   2.175288
12 months   ki1135781-COHORTS          >280                 <=266             2.206345   2.0149452   2.415926
12 months   ki1135781-COHORTS          266-273              <=266             2.198864   2.0017945   2.415334
12 months   ki1135781-COHORTS          273-280              <=266             2.100415   1.9101114   2.309678
12 months   kiGH5241-JiVitA-3          >280                 <=266             1.795199   1.6755623   1.923379
12 months   kiGH5241-JiVitA-3          266-273              <=266             2.270162   2.1160039   2.435552
12 months   kiGH5241-JiVitA-3          273-280              <=266             1.996978   1.8513055   2.154113
18 months   ki1000108-CMC-V-BCS-2002   >280                 <=266             2.929140   2.5696101   3.338975
18 months   ki1000108-CMC-V-BCS-2002   266-273              <=266             2.824274   2.4089048   3.311266
18 months   ki1000108-CMC-V-BCS-2002   273-280              <=266             2.824274   2.4379450   3.271823
18 months   ki1000108-IRC              >280                 <=266             2.063712   1.6897547   2.520430
18 months   ki1000108-IRC              266-273              <=266             2.075947   1.5885908   2.712817
18 months   ki1000108-IRC              273-280              <=266             2.045231   1.5813290   2.645225
18 months   ki1066203-TanzaniaChild2   >280                 <=266             2.327237   1.6950505   3.195203
18 months   ki1066203-TanzaniaChild2   266-273              <=266             2.639805   1.7900937   3.892853
18 months   ki1066203-TanzaniaChild2   273-280              <=266             3.000562   2.1037772   4.279623
18 months   ki1101329-Keneba           >280                 <=266             2.167360   1.8825618   2.495242
18 months   ki1101329-Keneba           266-273              <=266             2.264054   1.9636066   2.610473
18 months   ki1101329-Keneba           273-280              <=266             2.356797   2.0629928   2.692443
18 months   ki1119695-PROBIT           >280                 <=266             1.782023   1.4023454   2.264497
18 months   ki1119695-PROBIT           266-273              <=266             2.168508   1.8951725   2.481266
18 months   ki1119695-PROBIT           273-280              <=266             1.934357   1.6914878   2.212099
18 months   ki1135781-COHORTS          >280                 <=266             2.396660   2.2216942   2.585404
18 months   ki1135781-COHORTS          266-273              <=266             2.338783   2.1598442   2.532546
18 months   ki1135781-COHORTS          273-280              <=266             2.353211   2.1817252   2.538175
18 months   kiGH5241-JiVitA-3          >280                 <=266             2.006857   1.8903891   2.130500
18 months   kiGH5241-JiVitA-3          266-273              <=266             2.400245   2.2535542   2.556484
18 months   kiGH5241-JiVitA-3          273-280              <=266             2.162811   2.0231427   2.312121
24 months   ki1000108-IRC              >280                 <=266             2.265895   1.9133845   2.683350
24 months   ki1000108-IRC              266-273              <=266             2.196391   1.7430189   2.767688
24 months   ki1000108-IRC              273-280              <=266             2.171841   1.7396745   2.711366
24 months   ki1066203-TanzaniaChild2   >280                 <=266             2.408833   1.6885307   3.436405
24 months   ki1066203-TanzaniaChild2   266-273              <=266             2.913760   1.9531457   4.346833
24 months   ki1066203-TanzaniaChild2   273-280              <=266             2.832479   1.9112870   4.197662
24 months   ki1101329-Keneba           >280                 <=266             2.282552   2.0191181   2.580356
24 months   ki1101329-Keneba           266-273              <=266             2.303905   2.0313913   2.612976
24 months   ki1101329-Keneba           273-280              <=266             2.488477   2.2204015   2.788918
24 months   ki1119695-PROBIT           >280                 <=266             1.524812   0.8917648   2.607247
24 months   ki1119695-PROBIT           266-273              <=266             2.389175   1.9456677   2.933777
24 months   ki1119695-PROBIT           273-280              <=266             2.093337   1.6858164   2.599369
24 months   ki1135781-COHORTS          >280                 <=266             2.612218   2.4730121   2.759260
24 months   ki1135781-COHORTS          266-273              <=266             2.570985   2.4291300   2.721124
24 months   ki1135781-COHORTS          273-280              <=266             2.524439   2.3857962   2.671139
3 months    ki1000108-CMC-V-BCS-2002   >280                 <=266             2.197678   1.5484408   3.119132
3 months    ki1000108-CMC-V-BCS-2002   266-273              <=266             2.543247   1.6961433   3.813419
3 months    ki1000108-CMC-V-BCS-2002   273-280              <=266             1.740763   1.0995910   2.755804
3 months    ki1000108-IRC              >280                 <=266             1.899553   1.3759375   2.622431
3 months    ki1000108-IRC              266-273              <=266             1.645948   1.0112538   2.678996
3 months    ki1000108-IRC              273-280              <=266             1.705589   1.0936457   2.659942
3 months    ki1066203-TanzaniaChild2   >280                 <=266             1.784732   0.9696688   3.284904
3 months    ki1066203-TanzaniaChild2   266-273              <=266             2.117000   0.9949538   4.504419
3 months    ki1066203-TanzaniaChild2   273-280              <=266             2.220811   1.0729675   4.596598
3 months    ki1101329-Keneba           >280                 <=266             1.562717   1.1760001   2.076602
3 months    ki1101329-Keneba           266-273              <=266             1.958594   1.5255229   2.514607
3 months    ki1101329-Keneba           273-280              <=266             1.803383   1.3988125   2.324965
3 months    ki1119695-PROBIT           >280                 <=266             1.385112   0.9151319   2.096459
3 months    ki1119695-PROBIT           266-273              <=266             1.910359   1.5812234   2.308004
3 months    ki1119695-PROBIT           273-280              <=266             1.677780   1.3848293   2.032703
3 months    ki1135781-COHORTS          >280                 <=266             1.697960   1.4026540   2.055439
3 months    ki1135781-COHORTS          266-273              <=266             1.723703   1.4173357   2.096294
3 months    ki1135781-COHORTS          273-280              <=266             1.711638   1.4132186   2.073072
3 months    kiGH5241-JiVitA-3          >280                 <=266             1.640172   1.5396937   1.747208
3 months    kiGH5241-JiVitA-3          266-273              <=266             2.096710   1.9702460   2.231290
3 months    kiGH5241-JiVitA-3          273-280              <=266             1.788769   1.6683568   1.917872
6 months    ki1000108-CMC-V-BCS-2002   >280                 <=266             2.489012   1.9071663   3.248371
6 months    ki1000108-CMC-V-BCS-2002   266-273              <=266             2.549662   1.8496067   3.514679
6 months    ki1000108-CMC-V-BCS-2002   273-280              <=266             2.367129   1.7492874   3.203191
6 months    ki1000108-IRC              >280                 <=266             2.028252   1.5371870   2.676192
6 months    ki1000108-IRC              266-273              <=266             1.981127   1.3671559   2.870825
6 months    ki1000108-IRC              273-280              <=266             2.068118   1.4709214   2.907779
6 months    ki1066203-TanzaniaChild2   >280                 <=266             2.201412   1.4281053   3.393459
6 months    ki1066203-TanzaniaChild2   266-273              <=266             1.978025   1.0851554   3.605550
6 months    ki1066203-TanzaniaChild2   273-280              <=266             2.299083   1.3370118   3.953429
6 months    ki1101329-Keneba           >280                 <=266             1.879245   1.5104343   2.338110
6 months    ki1101329-Keneba           266-273              <=266             2.114513   1.7129444   2.610222
6 months    ki1101329-Keneba           273-280              <=266             1.956850   1.5779679   2.426705
6 months    ki1119695-PROBIT           >280                 <=266             1.507130   1.0789279   2.105277
6 months    ki1119695-PROBIT           266-273              <=266             2.077020   1.7633697   2.446460
6 months    ki1119695-PROBIT           273-280              <=266             1.850965   1.5712117   2.180528
6 months    ki1135781-COHORTS          >280                 <=266             1.619204   1.3155863   1.992892
6 months    ki1135781-COHORTS          266-273              <=266             1.700547   1.4005183   2.064850
6 months    ki1135781-COHORTS          273-280              <=266             1.911777   1.6096297   2.270641
6 months    kiGH5241-JiVitA-3          >280                 <=266             1.733703   1.6165037   1.859399
6 months    kiGH5241-JiVitA-3          266-273              <=266             2.176386   2.0290084   2.334468
6 months    kiGH5241-JiVitA-3          273-280              <=266             1.903877   1.7646574   2.054081


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                 0.0043609   -0.1003004    0.1090222
12 months   ki1000108-IRC              <=266                NA                -0.1386810   -0.2488915   -0.0284705
12 months   ki1066203-TanzaniaChild2   <=266                NA                -0.0474138   -0.1350026    0.0401750
12 months   ki1101329-Keneba           <=266                NA                -0.0874069   -0.1340025   -0.0408114
12 months   ki1119695-PROBIT           <=266                NA                -0.0483396   -0.0675232   -0.0291560
12 months   ki1135781-COHORTS          <=266                NA                -0.0694689   -0.0927808   -0.0461570
12 months   kiGH5241-JiVitA-3          <=266                NA                -0.1349763   -0.1566809   -0.1132716
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                 0.0349753   -0.0546660    0.1246165
18 months   ki1000108-IRC              <=266                NA                -0.1630454   -0.2657837   -0.0603071
18 months   ki1066203-TanzaniaChild2   <=266                NA                -0.0239819   -0.1299330    0.0819692
18 months   ki1101329-Keneba           <=266                NA                -0.0744128   -0.1209261   -0.0278995
18 months   ki1119695-PROBIT           <=266                NA                -0.0496706   -0.0700338   -0.0293074
18 months   ki1135781-COHORTS          <=266                NA                -0.0571423   -0.0831740   -0.0311105
18 months   kiGH5241-JiVitA-3          <=266                NA                -0.1086667   -0.1308248   -0.0865086
24 months   ki1000108-IRC              <=266                NA                -0.1241164   -0.2202772   -0.0279556
24 months   ki1066203-TanzaniaChild2   <=266                NA                -0.0143133   -0.1468068    0.1181802
24 months   ki1101329-Keneba           <=266                NA                -0.0636967   -0.1093844   -0.0180090
24 months   ki1119695-PROBIT           <=266                NA                -0.0423432   -0.0801489   -0.0045376
24 months   ki1135781-COHORTS          <=266                NA                -0.0265340   -0.0496091   -0.0034589
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0870588   -0.1998221    0.0257044
3 months    ki1000108-IRC              <=266                NA                -0.1634096   -0.2777381   -0.0490810
3 months    ki1066203-TanzaniaChild2   <=266                NA                -0.0342183   -0.0916411    0.0232045
3 months    ki1101329-Keneba           <=266                NA                -0.0941492   -0.1361180   -0.0521804
3 months    ki1119695-PROBIT           <=266                NA                -0.0410156   -0.0563409   -0.0256903
3 months    ki1135781-COHORTS          <=266                NA                -0.0612096   -0.0798524   -0.0425668
3 months    kiGH5241-JiVitA-3          <=266                NA                -0.1596266   -0.1764803   -0.1427729
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0424867   -0.1544711    0.0694978
6 months    ki1000108-IRC              <=266                NA                -0.1313736   -0.2449529   -0.0177943
6 months    ki1066203-TanzaniaChild2   <=266                NA                -0.0391513   -0.1145002    0.0361977
6 months    ki1101329-Keneba           <=266                NA                -0.0850340   -0.1304693   -0.0395987
6 months    ki1119695-PROBIT           <=266                NA                -0.0414507   -0.0587535   -0.0241478
6 months    ki1135781-COHORTS          <=266                NA                -0.0875295   -0.1144155   -0.0606435
6 months    kiGH5241-JiVitA-3          <=266                NA                -0.1437058   -0.1639738   -0.1234378


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.6344578   0.5740389   0.6863069
12 months   ki1000108-IRC              <=266                NA                0.5436987   0.4583916   0.6155693
12 months   ki1066203-TanzaniaChild2   <=266                NA                0.5806493   0.4658633   0.6707677
12 months   ki1101329-Keneba           <=266                NA                0.5597137   0.5154145   0.5999633
12 months   ki1119695-PROBIT           <=266                NA                0.5280253   0.4789500   0.5724784
12 months   ki1135781-COHORTS          <=266                NA                0.5785788   0.5589006   0.5973791
12 months   kiGH5241-JiVitA-3          <=266                NA                0.5400250   0.5231211   0.5563298
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.6478069   0.6061932   0.6850233
18 months   ki1000108-IRC              <=266                NA                0.5394934   0.4693487   0.6003659
18 months   ki1066203-TanzaniaChild2   <=266                NA                0.6118472   0.5080286   0.6937574
18 months   ki1101329-Keneba           <=266                NA                0.5811423   0.5457302   0.6137939
18 months   ki1119695-PROBIT           <=266                NA                0.5319150   0.4833099   0.5759478
18 months   ki1135781-COHORTS          <=266                NA                0.6006281   0.5853945   0.6153020
18 months   kiGH5241-JiVitA-3          <=266                NA                0.5672133   0.5526020   0.5813474
24 months   ki1000108-IRC              <=266                NA                0.5677998   0.5102793   0.6185642
24 months   ki1066203-TanzaniaChild2   <=266                NA                0.6212365   0.5038800   0.7108324
24 months   ki1101329-Keneba           <=266                NA                0.5934326   0.5631912   0.6215803
24 months   ki1119695-PROBIT           <=266                NA                0.5637810   0.4920766   0.6253627
24 months   ki1135781-COHORTS          <=266                NA                0.6196308   0.6084245   0.6305165
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.5516311   0.4204690   0.6531081
3 months    ki1000108-IRC              <=266                NA                0.4852647   0.3483882   0.5933892
3 months    ki1066203-TanzaniaChild2   <=266                NA                0.5244878   0.2683938   0.6909378
3 months    ki1101329-Keneba           <=266                NA                0.5011631   0.4283814   0.5646778
3 months    ki1119695-PROBIT           <=266                NA                0.4746428   0.3997672   0.5401781
3 months    ki1135781-COHORTS          <=266                NA                0.5152518   0.4726424   0.5544185
3 months    kiGH5241-JiVitA-3          <=266                NA                0.5146241   0.5000748   0.5287500
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.6027222   0.5134764   0.6755971
6 months    ki1000108-IRC              <=266                NA                0.5336816   0.4274508   0.6202023
6 months    ki1066203-TanzaniaChild2   <=266                NA                0.5628349   0.3906091   0.6863863
6 months    ki1101329-Keneba           <=266                NA                0.5401182   0.4817784   0.5918902
6 months    ki1119695-PROBIT           <=266                NA                0.5110711   0.4493958   0.5658378
6 months    ki1135781-COHORTS          <=266                NA                0.5240941   0.4847494   0.5604344
6 months    kiGH5241-JiVitA-3          <=266                NA                0.5293603   0.5126219   0.5455239


