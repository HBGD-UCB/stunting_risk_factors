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

**Intervention Variable:** enstunt

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

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000109-ResPak
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CMIN
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CMIN
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* NA
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* NA
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CMIN
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000109-ResPak
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* NA
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* NA
* NA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CMIN
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1135781-COHORTS
* NA
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
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* NA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CMIN
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 6 months, studyid: kiGH5241-JiVitA-4

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/61aaf650-c8bc-46d5-a72a-2f7247c82971/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/61aaf650-c8bc-46d5-a72a-2f7247c82971/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/61aaf650-c8bc-46d5-a72a-2f7247c82971/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/61aaf650-c8bc-46d5-a72a-2f7247c82971/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                      A       n     nA   nAY0   nAY1
----------  -------------------------  ---  ------  -----  -----  -----
12 months   ki1000108-CMC-V-BCS-2002     0      98     82     32     50
12 months   ki1000108-CMC-V-BCS-2002     1      98     16      0     16
12 months   ki1000108-IRC                0     408    361    200    161
12 months   ki1000108-IRC                1     408     47      1     46
12 months   ki1000109-EE                 0     373    245     65    180
12 months   ki1000109-EE                 1     373    128      0    128
12 months   ki1000109-ResPak             0      72     56     20     36
12 months   ki1000109-ResPak             1      72     16      0     16
12 months   ki1000304b-SAS-CompFeed      0     889    644    369    275
12 months   ki1000304b-SAS-CompFeed      1     889    245      1    244
12 months   ki1000304b-SAS-FoodSuppl     0      96     57     15     42
12 months   ki1000304b-SAS-FoodSuppl     1      96     39      0     39
12 months   ki1017093-NIH-Birth          0     541    455    265    190
12 months   ki1017093-NIH-Birth          1     541     86      0     86
12 months   ki1017093c-NIH-Crypto        0     729    627    452    175
12 months   ki1017093c-NIH-Crypto        1     729    102      0    102
12 months   ki1066203-TanzaniaChild2     0       5      5      2      3
12 months   ki1066203-TanzaniaChild2     1       5      0      0      0
12 months   ki1101329-Keneba             0    2384   2158   1406    752
12 months   ki1101329-Keneba             1    2384    226      7    219
12 months   ki1112895-Guatemala BSC      0      85     63     48     15
12 months   ki1112895-Guatemala BSC      1      85     22      0     22
12 months   ki1112895-iLiNS-Zinc         0     796    627    625      2
12 months   ki1112895-iLiNS-Zinc         1     796    169      0    169
12 months   ki1113344-GMS-Nepal          0     582    518    317    201
12 months   ki1113344-GMS-Nepal          1     582     64      0     64
12 months   ki1114097-CMIN               0    2260   1960   1583    377
12 months   ki1114097-CMIN               1    2260    300      0    300
12 months   ki1114097-CONTENT            0     215    197    161     36
12 months   ki1114097-CONTENT            1     215     18      0     18
12 months   ki1119695-PROBIT             0    7943   7882   6786   1096
12 months   ki1119695-PROBIT             1    7943     61      0     61
12 months   ki1126311-ZVITAMBO           0    2512   2264   1554    710
12 months   ki1126311-ZVITAMBO           1    2512    248     10    238
12 months   ki1135781-COHORTS            0   10061   8972   5881   3091
12 months   ki1135781-COHORTS            1   10061   1089      0   1089
12 months   ki1148112-LCNI-5             0     403    250    208     42
12 months   ki1148112-LCNI-5             1     403    153      0    153
12 months   kiGH5241-JiVitA-3            0    8376   5674   4529   1145
12 months   kiGH5241-JiVitA-3            1    8376   2702     63   2639
12 months   kiGH5241-JiVitA-4            0    1420   1022    791    231
12 months   kiGH5241-JiVitA-4            1    1420    398     12    386
18 months   ki1000108-CMC-V-BCS-2002     0      98     82     20     62
18 months   ki1000108-CMC-V-BCS-2002     1      98     16      0     16
18 months   ki1000108-IRC                0     409    361    178    183
18 months   ki1000108-IRC                1     409     48      1     47
18 months   ki1000109-EE                 0     363    241     32    209
18 months   ki1000109-EE                 1     363    122      0    122
18 months   ki1000109-ResPak             0      57     47     16     31
18 months   ki1000109-ResPak             1      57     10      0     10
18 months   ki1000304b-SAS-CompFeed      0     858    622    246    376
18 months   ki1000304b-SAS-CompFeed      1     858    236      1    235
18 months   ki1000304b-SAS-FoodSuppl     0      90     56     10     46
18 months   ki1000304b-SAS-FoodSuppl     1      90     34      0     34
18 months   ki1017093-NIH-Birth          0     497    416    174    242
18 months   ki1017093-NIH-Birth          1     497     81      0     81
18 months   ki1017093c-NIH-Crypto        0     715    614    398    216
18 months   ki1017093c-NIH-Crypto        1     715    101      0    101
18 months   ki1066203-TanzaniaChild2     0       4      4      2      2
18 months   ki1066203-TanzaniaChild2     1       4      0      0      0
18 months   ki1101329-Keneba             0    2284   2046   1134    912
18 months   ki1101329-Keneba             1    2284    238      9    229
18 months   ki1112895-Guatemala BSC      0      49     36     23     13
18 months   ki1112895-Guatemala BSC      1      49     13      0     13
18 months   ki1112895-iLiNS-Zinc         0     124    101     77     24
18 months   ki1112895-iLiNS-Zinc         1     124     23      0     23
18 months   ki1113344-GMS-Nepal          0     574    511    216    295
18 months   ki1113344-GMS-Nepal          1     574     63      0     63
18 months   ki1114097-CMIN               0    2145   1805   1249    556
18 months   ki1114097-CMIN               1    2145    340      0    340
18 months   ki1114097-CONTENT            0     214    196    154     42
18 months   ki1114097-CONTENT            1     214     18      0     18
18 months   ki1119695-PROBIT             0    7475   7423   6305   1118
18 months   ki1119695-PROBIT             1    7475     52      0     52
18 months   ki1126311-ZVITAMBO           0    1832   1645    932    713
18 months   ki1126311-ZVITAMBO           1    1832    187      7    180
18 months   ki1135781-COHORTS            0    3021   2784   1069   1715
18 months   ki1135781-COHORTS            1    3021    237      0    237
18 months   ki1148112-LCNI-5             0     328    208    141     67
18 months   ki1148112-LCNI-5             1     328    120      0    120
18 months   kiGH5241-JiVitA-3            0    7332   4982   3302   1680
18 months   kiGH5241-JiVitA-3            1    7332   2350     43   2307
18 months   kiGH5241-JiVitA-4            0    1373    985    612    373
18 months   kiGH5241-JiVitA-4            1    1373    388      9    379
24 months   ki1000108-CMC-V-BCS-2002     0      98     82      9     73
24 months   ki1000108-CMC-V-BCS-2002     1      98     16      0     16
24 months   ki1000108-IRC                0     410    362    146    216
24 months   ki1000108-IRC                1     410     48      1     47
24 months   ki1000109-EE                 0     338    225     27    198
24 months   ki1000109-EE                 1     338    113      0    113
24 months   ki1000109-ResPak             0       0      0      0      0
24 months   ki1000109-ResPak             1       0      0      0      0
24 months   ki1000304b-SAS-CompFeed      0      77     54     24     30
24 months   ki1000304b-SAS-CompFeed      1      77     23      0     23
24 months   ki1000304b-SAS-FoodSuppl     0       9      5      1      4
24 months   ki1000304b-SAS-FoodSuppl     1       9      4      0      4
24 months   ki1017093-NIH-Birth          0     470    392    115    277
24 months   ki1017093-NIH-Birth          1     470     78      0     78
24 months   ki1017093c-NIH-Crypto        0     634    543    316    227
24 months   ki1017093c-NIH-Crypto        1     634     91      0     91
24 months   ki1066203-TanzaniaChild2     0       2      2      2      0
24 months   ki1066203-TanzaniaChild2     1       2      0      0      0
24 months   ki1101329-Keneba             0    2207   1972    937   1035
24 months   ki1101329-Keneba             1    2207    235      8    227
24 months   ki1112895-Guatemala BSC      0       0      0      0      0
24 months   ki1112895-Guatemala BSC      1       0      0      0      0
24 months   ki1112895-iLiNS-Zinc         0     551    425    317    108
24 months   ki1112895-iLiNS-Zinc         1     551    126      1    125
24 months   ki1113344-GMS-Nepal          0     568    506    176    330
24 months   ki1113344-GMS-Nepal          1     568     62      0     62
24 months   ki1114097-CMIN               0    1999   1601    995    606
24 months   ki1114097-CMIN               1    1999    398      0    398
24 months   ki1114097-CONTENT            0     197    179    140     39
24 months   ki1114097-CONTENT            1     197     18      0     18
24 months   ki1119695-PROBIT             0    2076   2070   1648    422
24 months   ki1119695-PROBIT             1    2076      6      0      6
24 months   ki1126311-ZVITAMBO           0     464    398    128    270
24 months   ki1126311-ZVITAMBO           1     464     66      1     65
24 months   ki1135781-COHORTS            0    2973   2721    671   2050
24 months   ki1135781-COHORTS            1    2973    252      0    252
24 months   ki1148112-LCNI-5             0     355    223    122    101
24 months   ki1148112-LCNI-5             1     355    132      0    132
24 months   kiGH5241-JiVitA-3            0       3      2      2      0
24 months   kiGH5241-JiVitA-3            1       3      1      0      1
24 months   kiGH5241-JiVitA-4            0    1196    852    479    373
24 months   kiGH5241-JiVitA-4            1    1196    344      5    339
3 months    ki1000108-CMC-V-BCS-2002     0      97     81     56     25
3 months    ki1000108-CMC-V-BCS-2002     1      97     16      0     16
3 months    ki1000108-IRC                0     410    362    278     84
3 months    ki1000108-IRC                1     410     48      2     46
3 months    ki1000109-EE                 0     379    249    138    111
3 months    ki1000109-EE                 1     379    130      0    130
3 months    ki1000109-ResPak             0      90     69     40     29
3 months    ki1000109-ResPak             1      90     21      0     21
3 months    ki1000304b-SAS-CompFeed      0     975    698    653     45
3 months    ki1000304b-SAS-CompFeed      1     975    277      0    277
3 months    ki1000304b-SAS-FoodSuppl     0       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl     1       0      0      0      0
3 months    ki1017093-NIH-Birth          0     629    530    489     41
3 months    ki1017093-NIH-Birth          1     629     99      0     99
3 months    ki1017093c-NIH-Crypto        0     758    653    637     16
3 months    ki1017093c-NIH-Crypto        1     758    105      0    105
3 months    ki1066203-TanzaniaChild2     0       5      5      4      1
3 months    ki1066203-TanzaniaChild2     1       5      0      0      0
3 months    ki1101329-Keneba             0    2296   2079   1725    354
3 months    ki1101329-Keneba             1    2296    217      9    208
3 months    ki1112895-Guatemala BSC      0       0      0      0      0
3 months    ki1112895-Guatemala BSC      1       0      0      0      0
3 months    ki1112895-iLiNS-Zinc         0       0      0      0      0
3 months    ki1112895-iLiNS-Zinc         1       0      0      0      0
3 months    ki1113344-GMS-Nepal          0     593    528    499     29
3 months    ki1113344-GMS-Nepal          1     593     65      0     65
3 months    ki1114097-CMIN               0    1580   1355   1302     53
3 months    ki1114097-CMIN               1    1580    225      0    225
3 months    ki1114097-CONTENT            0     215    197    180     17
3 months    ki1114097-CONTENT            1     215     18      0     18
3 months    ki1119695-PROBIT             0    8125   8056   7523    533
3 months    ki1119695-PROBIT             1    8125     69      0     69
3 months    ki1126311-ZVITAMBO           0    3462   3086   2723    363
3 months    ki1126311-ZVITAMBO           1    3462    376     10    366
3 months    ki1135781-COHORTS            0   10685   9580   8784    796
3 months    ki1135781-COHORTS            1   10685   1105      0   1105
3 months    ki1148112-LCNI-5             0       0      0      0      0
3 months    ki1148112-LCNI-5             1       0      0      0      0
3 months    kiGH5241-JiVitA-3            0   13368   8715   7871    844
3 months    kiGH5241-JiVitA-3            1   13368   4653    104   4549
3 months    kiGH5241-JiVitA-4            0    1156    842    840      2
3 months    kiGH5241-JiVitA-4            1    1156    314      0    314
6 months    ki1000108-CMC-V-BCS-2002     0      96     80     42     38
6 months    ki1000108-CMC-V-BCS-2002     1      96     16      0     16
6 months    ki1000108-IRC                0     408    361    234    127
6 months    ki1000108-IRC                1     408     47      1     46
6 months    ki1000109-EE                 0     373    245     96    149
6 months    ki1000109-EE                 1     373    128      0    128
6 months    ki1000109-ResPak             0      81     64     26     38
6 months    ki1000109-ResPak             1      81     17      0     17
6 months    ki1000304b-SAS-CompFeed      0     805    590    461    129
6 months    ki1000304b-SAS-CompFeed      1     805    215      1    214
6 months    ki1000304b-SAS-FoodSuppl     0     103     61     60      1
6 months    ki1000304b-SAS-FoodSuppl     1     103     42      0     42
6 months    ki1017093-NIH-Birth          0     551    463    350    113
6 months    ki1017093-NIH-Birth          1     551     88      0     88
6 months    ki1017093c-NIH-Crypto        0     736    634    510    124
6 months    ki1017093c-NIH-Crypto        1     736    102      0    102
6 months    ki1066203-TanzaniaChild2     0       5      5      2      3
6 months    ki1066203-TanzaniaChild2     1       5      0      0      0
6 months    ki1101329-Keneba             0    2264   2044   1524    520
6 months    ki1101329-Keneba             1    2264    220      9    211
6 months    ki1112895-Guatemala BSC      0     115     84     79      5
6 months    ki1112895-Guatemala BSC      1     115     31      0     31
6 months    ki1112895-iLiNS-Zinc         0       0      0      0      0
6 months    ki1112895-iLiNS-Zinc         1       0      0      0      0
6 months    ki1113344-GMS-Nepal          0     567    505    405    100
6 months    ki1113344-GMS-Nepal          1     567     62      0     62
6 months    ki1114097-CMIN               0    1853   1610   1483    127
6 months    ki1114097-CMIN               1    1853    243      0    243
6 months    ki1114097-CONTENT            0     215    197    167     30
6 months    ki1114097-CONTENT            1     215     18      0     18
6 months    ki1119695-PROBIT             0    7807   7744   6993    751
6 months    ki1119695-PROBIT             1    7807     63      0     63
6 months    ki1126311-ZVITAMBO           0    2258   2019   1576    443
6 months    ki1126311-ZVITAMBO           1    2258    239     11    228
6 months    ki1135781-COHORTS            0    2931   2763   2182    581
6 months    ki1135781-COHORTS            1    2931    168      0    168
6 months    ki1148112-LCNI-5             0     133     81     81      0
6 months    ki1148112-LCNI-5             1     133     52      0     52
6 months    kiGH5241-JiVitA-3            0    9600   6412   5444    968
6 months    kiGH5241-JiVitA-3            1    9600   3188     71   3117
6 months    kiGH5241-JiVitA-4            0    1181    854    790     64
6 months    kiGH5241-JiVitA-4            1    1181    327      4    323

## Results Table

### Parameter: TSM


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1101329-Keneba     0                    NA                0.3484708   0.3283630   0.3685786
12 months   ki1101329-Keneba     1                    NA                0.9690265   0.9464349   0.9916182
12 months   ki1126311-ZVITAMBO   0                    NA                0.3136042   0.2944892   0.3327193
12 months   ki1126311-ZVITAMBO   1                    NA                0.9596774   0.9351899   0.9841650
12 months   kiGH5241-JiVitA-3    0                    NA                0.2017977   0.1913542   0.2122411
12 months   kiGH5241-JiVitA-3    1                    NA                0.9766839   0.9709936   0.9823742
12 months   kiGH5241-JiVitA-4    0                    NA                0.2260274   0.2003755   0.2516793
12 months   kiGH5241-JiVitA-4    1                    NA                0.9698492   0.9530434   0.9866551
18 months   ki1101329-Keneba     0                    NA                0.4457478   0.4242057   0.4672899
18 months   ki1101329-Keneba     1                    NA                0.9621849   0.9379457   0.9864240
18 months   ki1126311-ZVITAMBO   0                    NA                0.4334347   0.4094811   0.4573882
18 months   ki1126311-ZVITAMBO   1                    NA                0.9625668   0.9353530   0.9897807
18 months   kiGH5241-JiVitA-3    0                    NA                0.3372140   0.3240855   0.3503425
18 months   kiGH5241-JiVitA-3    1                    NA                0.9817021   0.9762829   0.9871213
18 months   kiGH5241-JiVitA-4    0                    NA                0.3786802   0.3483775   0.4089830
18 months   kiGH5241-JiVitA-4    1                    NA                0.9768041   0.9618211   0.9917872
24 months   ki1101329-Keneba     0                    NA                0.5248479   0.5028021   0.5468937
24 months   ki1101329-Keneba     1                    NA                0.9659574   0.9427673   0.9891475
24 months   kiGH5241-JiVitA-4    0                    NA                0.4377934   0.4044667   0.4711201
24 months   kiGH5241-JiVitA-4    1                    NA                0.9854651   0.9728126   0.9981176
3 months    ki1101329-Keneba     0                    NA                0.1702742   0.1541136   0.1864348
3 months    ki1101329-Keneba     1                    NA                0.9585253   0.9319911   0.9850595
3 months    ki1126311-ZVITAMBO   0                    NA                0.1176280   0.1062597   0.1289963
3 months    ki1126311-ZVITAMBO   1                    NA                0.9734043   0.9571387   0.9896698
3 months    kiGH5241-JiVitA-3    0                    NA                0.0968445   0.0906351   0.1030539
3 months    kiGH5241-JiVitA-3    1                    NA                0.9776488   0.9734013   0.9818964
6 months    ki1101329-Keneba     0                    NA                0.2544031   0.2355181   0.2732881
6 months    ki1101329-Keneba     1                    NA                0.9590909   0.9329107   0.9852711
6 months    ki1126311-ZVITAMBO   0                    NA                0.2194156   0.2013596   0.2374715
6 months    ki1126311-ZVITAMBO   1                    NA                0.9539749   0.9274037   0.9805461
6 months    kiGH5241-JiVitA-3    0                    NA                0.1509669   0.1422034   0.1597304
6 months    kiGH5241-JiVitA-3    1                    NA                0.9777290   0.9726064   0.9828516


### Parameter: E(Y)


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1101329-Keneba     NA                   NA                0.4072987   0.4000000   0.4145973
12 months   ki1126311-ZVITAMBO   NA                   NA                0.3773885   0.3698506   0.3849264
12 months   kiGH5241-JiVitA-3    NA                   NA                0.4517670   0.4440091   0.4595249
12 months   kiGH5241-JiVitA-4    NA                   NA                0.4345070   0.4171249   0.4518892
18 months   ki1101329-Keneba     NA                   NA                0.4995622   0.4930899   0.5060345
18 months   ki1126311-ZVITAMBO   NA                   NA                0.4874454   0.4801079   0.4947829
18 months   kiGH5241-JiVitA-3    NA                   NA                0.5437807   0.5368958   0.5506655
18 months   kiGH5241-JiVitA-4    NA                   NA                0.5477058   0.5334554   0.5619561
24 months   ki1101329-Keneba     NA                   NA                0.5718169   0.5661392   0.5774947
24 months   kiGH5241-JiVitA-4    NA                   NA                0.5953177   0.5812620   0.6093734
3 months    ki1101329-Keneba     NA                   NA                0.2447735   0.2353393   0.2542078
3 months    ki1126311-ZVITAMBO   NA                   NA                0.2105719   0.2017009   0.2194429
3 months    kiGH5241-JiVitA-3    NA                   NA                0.4034261   0.3963132   0.4105390
6 months    ki1101329-Keneba     NA                   NA                0.3228799   0.3142803   0.3314795
6 months    ki1126311-ZVITAMBO   NA                   NA                0.2971656   0.2878427   0.3064886
6 months    kiGH5241-JiVitA-3    NA                   NA                0.4255208   0.4177315   0.4333102


### Parameter: RR


agecat      studyid              intervention_level   baseline_level        estimate       ci_lower       ci_upper
----------  -------------------  -------------------  ---------------  -------------  -------------  -------------
12 months   ki1101329-Keneba     1                    0                    16.131872      15.158513      17.167732
12 months   ki1126311-ZVITAMBO   1                    0                    21.330852      19.966909      22.787965
12 months   kiGH5241-JiVitA-3    1                    0                   126.458822     120.041527     133.219178
12 months   kiGH5241-JiVitA-4    1                    0                    73.028384      65.107701      81.912657
18 months   ki1101329-Keneba     1                    0                     8.658883       8.199605       9.143887
18 months   ki1126311-ZVITAMBO   1                    0                     9.214597       8.659980       9.804734
18 months   kiGH5241-JiVitA-3    1                    0                    18.379102      17.670430      19.116197
18 months   kiGH5241-JiVitA-4    1                    0                    13.190490      12.158364      14.310235
24 months   ki1101329-Keneba     1                    0                     6.299386       6.001872       6.611649
24 months   kiGH5241-JiVitA-4    1                    0                     9.497057       8.791475      10.259267
3 months    ki1101329-Keneba     1                    0                   278.468684     252.255312     307.406046
3 months    ki1126311-ZVITAMBO   1                    0                  3925.609667    3558.865619    4330.146993
3 months    kiGH5241-JiVitA-3    1                    0                 24222.445985   22714.773269   25830.189127
6 months    ki1101329-Keneba     1                    0                    43.378547      40.079810      46.948784
6 months    ki1126311-ZVITAMBO   1                    0                    77.308182      70.875360      84.324864
6 months    kiGH5241-JiVitA-3    1                    0                   649.656958     612.874036     688.647483


### Parameter: PAR


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1101329-Keneba     0                    NA                0.0588279   0.0374365   0.0802192
12 months   ki1126311-ZVITAMBO   0                    NA                0.0637843   0.0432367   0.0843319
12 months   kiGH5241-JiVitA-3    0                    NA                0.2499693   0.2369596   0.2629789
12 months   kiGH5241-JiVitA-4    0                    NA                0.2084796   0.1774932   0.2394661
18 months   ki1101329-Keneba     0                    NA                0.0538144   0.0313209   0.0763078
18 months   ki1126311-ZVITAMBO   0                    NA                0.0540108   0.0289586   0.0790630
18 months   kiGH5241-JiVitA-3    0                    NA                0.2065667   0.1917425   0.2213910
18 months   kiGH5241-JiVitA-4    0                    NA                0.1690256   0.1355393   0.2025118
24 months   ki1101329-Keneba     0                    NA                0.0469691   0.0242039   0.0697343
24 months   kiGH5241-JiVitA-4    0                    NA                0.1575243   0.1213548   0.1936938
3 months    ki1101329-Keneba     0                    NA                0.0744993   0.0557865   0.0932122
3 months    ki1126311-ZVITAMBO   0                    NA                0.0929439   0.0785241   0.1073638
3 months    kiGH5241-JiVitA-3    0                    NA                0.3065816   0.2971397   0.3160235
6 months    ki1101329-Keneba     0                    NA                0.0684767   0.0477259   0.0892275
6 months    ki1126311-ZVITAMBO   0                    NA                0.0777501   0.0574293   0.0980708
6 months    kiGH5241-JiVitA-3    0                    NA                0.2745539   0.2628290   0.2862788


### Parameter: PAF


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1101329-Keneba     0                    NA                0.6892657   0.6699120   0.7074847
12 months   ki1126311-ZVITAMBO   0                    NA                0.6998254   0.6799408   0.7184747
12 months   kiGH5241-JiVitA-3    0                    NA                0.8934043   0.8874306   0.8990610
12 months   kiGH5241-JiVitA-4    0                    NA                0.8537393   0.8350364   0.8703217
18 months   ki1101329-Keneba     0                    NA                0.6739577   0.6572294   0.6898697
18 months   ki1126311-ZVITAMBO   0                    NA                0.6752212   0.6560755   0.6933012
18 months   kiGH5241-JiVitA-3    0                    NA                0.8006252   0.7922935   0.8086226
18 months   kiGH5241-JiVitA-4    0                    NA                0.7645730   0.7439055   0.7835725
24 months   ki1101329-Keneba     0                    NA                0.6636123   0.6487753   0.6778225
24 months   kiGH5241-JiVitA-4    0                    NA                0.7432915   0.7219940   0.7629575
3 months    ki1101329-Keneba     0                    NA                0.7624853   0.7368653   0.7856109
3 months    ki1126311-ZVITAMBO   0                    NA                0.8330651   0.8145041   0.8497688
3 months    kiGH5241-JiVitA-3    0                    NA                0.9844813   0.9834143   0.9854797
6 months    ki1101329-Keneba     0                    NA                0.7189341   0.6958701   0.7402491
6 months    ki1126311-ZVITAMBO   0                    NA                0.7418852   0.7181224   0.7636448
6 months    kiGH5241-JiVitA-3    0                    NA                0.9403127   0.9365669   0.9438373


