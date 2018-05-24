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

**Intervention Variable:** mage

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
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: kiGH5241-JiVitA-3
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
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 6 months, studyid: kiGH5241-JiVitA-3

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* NA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1000109-EE
* NA
* NA
* NA
* NA
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* NA

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/f60bac37-c32f-4139-b5ef-d3058edc172b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f60bac37-c32f-4139-b5ef-d3058edc172b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/f60bac37-c32f-4139-b5ef-d3058edc172b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f60bac37-c32f-4139-b5ef-d3058edc172b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A            n     nA   nAY0   nAY1
----------  -------------------------  ------  ------  -----  -----  -----
12 months   ki1000108-CMC-V-BCS-2002   <=20       372     71     19     52
12 months   ki1000108-CMC-V-BCS-2002   >28        372     51     17     34
12 months   ki1000108-CMC-V-BCS-2002   20-24      372    150     44    106
12 months   ki1000108-CMC-V-BCS-2002   24-28      372    100     32     68
12 months   ki1000108-IRC              <=20       408     86     41     45
12 months   ki1000108-IRC              >28        408     44     27     17
12 months   ki1000108-IRC              20-24      408    170     79     91
12 months   ki1000108-IRC              24-28      408    108     54     54
12 months   ki1000109-EE               <=20       371      4      1      3
12 months   ki1000109-EE               >28        371    236     45    191
12 months   ki1000109-EE               20-24      371     17      2     15
12 months   ki1000109-EE               24-28      371    114     17     97
12 months   ki1000304b-SAS-CompFeed    <=20       893    227     92    135
12 months   ki1000304b-SAS-CompFeed    >28        893    101     39     62
12 months   ki1000304b-SAS-CompFeed    20-24      893    339    159    180
12 months   ki1000304b-SAS-CompFeed    24-28      893    226     81    145
12 months   ki1000304b-SAS-FoodSuppl   <=20        99     27      6     21
12 months   ki1000304b-SAS-FoodSuppl   >28         99     18      1     17
12 months   ki1000304b-SAS-FoodSuppl   20-24       99     17      3     14
12 months   ki1000304b-SAS-FoodSuppl   24-28       99     37      5     32
12 months   ki1017093-NIH-Birth        <=20       539    125     69     56
12 months   ki1017093-NIH-Birth        >28        539    131     67     64
12 months   ki1017093-NIH-Birth        20-24      539    134     64     70
12 months   ki1017093-NIH-Birth        24-28      539    149     65     84
12 months   ki1017093c-NIH-Crypto      <=20       729    219    134     85
12 months   ki1017093c-NIH-Crypto      >28        729    143     93     50
12 months   ki1017093c-NIH-Crypto      20-24      729    163     93     70
12 months   ki1017093c-NIH-Crypto      24-28      729    204    132     72
12 months   ki1066203-TanzaniaChild2   <=20       494     57     35     22
12 months   ki1066203-TanzaniaChild2   >28        494    170    124     46
12 months   ki1066203-TanzaniaChild2   20-24      494    127     84     43
12 months   ki1066203-TanzaniaChild2   24-28      494    140     94     46
12 months   ki1101329-Keneba           <=20      2360    452    285    167
12 months   ki1101329-Keneba           >28       2360    996    557    439
12 months   ki1101329-Keneba           20-24     2360    471    278    193
12 months   ki1101329-Keneba           24-28     2360    441    274    167
12 months   ki1112895-Guatemala BSC    <=20        80     23      9     14
12 months   ki1112895-Guatemala BSC    >28         80     18     10      8
12 months   ki1112895-Guatemala BSC    20-24       80     27     17     10
12 months   ki1112895-Guatemala BSC    24-28       80     12      8      4
12 months   ki1112895-iLiNS-Zinc       <=20       778    155    120     35
12 months   ki1112895-iLiNS-Zinc       >28        778    275    218     57
12 months   ki1112895-iLiNS-Zinc       20-24      778    164    133     31
12 months   ki1112895-iLiNS-Zinc       24-28      778    184    145     39
12 months   ki1113344-GMS-Nepal        <=20       582    169     87     82
12 months   ki1113344-GMS-Nepal        >28        582     99     50     49
12 months   ki1113344-GMS-Nepal        20-24      582    149     88     61
12 months   ki1113344-GMS-Nepal        24-28      582    165     92     73
12 months   ki1119695-PROBIT           <=20      7943   1428   1173    255
12 months   ki1119695-PROBIT           >28       7943   1763   1525    238
12 months   ki1119695-PROBIT           20-24     7943   2849   2432    417
12 months   ki1119695-PROBIT           24-28     7943   1903   1656    247
12 months   ki1126311-ZVITAMBO         <=20      2540    620    361    259
12 months   ki1126311-ZVITAMBO         >28       2540    531    354    177
12 months   ki1126311-ZVITAMBO         20-24     2540    823    514    309
12 months   ki1126311-ZVITAMBO         24-28     2540    566    352    214
12 months   ki1135781-COHORTS          <=20      8286   1321    674    647
12 months   ki1135781-COHORTS          >28       8286   2516   1348   1168
12 months   ki1135781-COHORTS          20-24     8286   2229   1329    900
12 months   ki1135781-COHORTS          24-28     8286   2220   1333    887
12 months   ki1148112-LCNI-5           <=20       331     80     41     39
12 months   ki1148112-LCNI-5           >28        331     93     46     47
12 months   ki1148112-LCNI-5           20-24      331     79     43     36
12 months   ki1148112-LCNI-5           24-28      331     79     40     39
12 months   kiGH5241-JiVitA-3          <=20      8374   4677   2405   2272
12 months   kiGH5241-JiVitA-3          >28       8374    739    423    316
12 months   kiGH5241-JiVitA-3          20-24     8374   1877   1121    756
12 months   kiGH5241-JiVitA-3          24-28     8374   1081    642    439
18 months   ki1000108-CMC-V-BCS-2002   <=20       373     71      9     62
18 months   ki1000108-CMC-V-BCS-2002   >28        373     51      9     42
18 months   ki1000108-CMC-V-BCS-2002   20-24      373    150     22    128
18 months   ki1000108-CMC-V-BCS-2002   24-28      373    101     17     84
18 months   ki1000108-IRC              <=20       409     87     35     52
18 months   ki1000108-IRC              >28        409     44     27     17
18 months   ki1000108-IRC              20-24      409    170     71     99
18 months   ki1000108-IRC              24-28      409    108     46     62
18 months   ki1000109-EE               <=20       361      4      1      3
18 months   ki1000109-EE               >28        361    228     24    204
18 months   ki1000109-EE               20-24      361     16      1     15
18 months   ki1000109-EE               24-28      361    113      6    107
18 months   ki1000304b-SAS-CompFeed    <=20       862    222     65    157
18 months   ki1000304b-SAS-CompFeed    >28        862     97     22     75
18 months   ki1000304b-SAS-CompFeed    20-24      862    332    110    222
18 months   ki1000304b-SAS-CompFeed    24-28      862    211     50    161
18 months   ki1000304b-SAS-FoodSuppl   <=20        93     25      2     23
18 months   ki1000304b-SAS-FoodSuppl   >28         93     16      1     15
18 months   ki1000304b-SAS-FoodSuppl   20-24       93     16      2     14
18 months   ki1000304b-SAS-FoodSuppl   24-28       93     36      5     31
18 months   ki1017093-NIH-Birth        <=20       495    115     38     77
18 months   ki1017093-NIH-Birth        >28        495    117     40     77
18 months   ki1017093-NIH-Birth        20-24      495    122     45     77
18 months   ki1017093-NIH-Birth        24-28      495    141     51     90
18 months   ki1017093c-NIH-Crypto      <=20       715    213    120     93
18 months   ki1017093c-NIH-Crypto      >28        715    141     80     61
18 months   ki1017093c-NIH-Crypto      20-24      715    161     87     74
18 months   ki1017093c-NIH-Crypto      24-28      715    200    111     89
18 months   ki1066203-TanzaniaChild2   <=20       358     35     18     17
18 months   ki1066203-TanzaniaChild2   >28        358    123     78     45
18 months   ki1066203-TanzaniaChild2   20-24      358     92     50     42
18 months   ki1066203-TanzaniaChild2   24-28      358    108     60     48
18 months   ki1101329-Keneba           <=20      2263    415    228    187
18 months   ki1101329-Keneba           >28       2263    977    450    527
18 months   ki1101329-Keneba           20-24     2263    444    217    227
18 months   ki1101329-Keneba           24-28     2263    427    230    197
18 months   ki1112895-Guatemala BSC    <=20        49     16      4     12
18 months   ki1112895-Guatemala BSC    >28         49      9      4      5
18 months   ki1112895-Guatemala BSC    20-24       49     18     11      7
18 months   ki1112895-Guatemala BSC    24-28       49      6      4      2
18 months   ki1112895-iLiNS-Zinc       <=20       121     24     10     14
18 months   ki1112895-iLiNS-Zinc       >28        121     44     32     12
18 months   ki1112895-iLiNS-Zinc       20-24      121     29     16     13
18 months   ki1112895-iLiNS-Zinc       24-28      121     24     17      7
18 months   ki1113344-GMS-Nepal        <=20       574    168     62    106
18 months   ki1113344-GMS-Nepal        >28        574     97     35     62
18 months   ki1113344-GMS-Nepal        20-24      574    145     62     83
18 months   ki1113344-GMS-Nepal        24-28      574    164     57    107
18 months   ki1119695-PROBIT           <=20      7475   1340   1081    259
18 months   ki1119695-PROBIT           >28       7475   1645   1408    237
18 months   ki1119695-PROBIT           20-24     7475   2688   2267    421
18 months   ki1119695-PROBIT           24-28     7475   1802   1549    253
18 months   ki1126311-ZVITAMBO         <=20      1854    449    215    234
18 months   ki1126311-ZVITAMBO         >28       1854    399    218    181
18 months   ki1126311-ZVITAMBO         20-24     1854    587    306    281
18 months   ki1126311-ZVITAMBO         24-28     1854    419    213    206
18 months   ki1135781-COHORTS          <=20      3083    550    184    366
18 months   ki1135781-COHORTS          >28       3083   1055    343    712
18 months   ki1135781-COHORTS          20-24     3083    777    300    477
18 months   ki1135781-COHORTS          24-28     3083    701    259    442
18 months   ki1148112-LCNI-5           <=20       275     63     27     36
18 months   ki1148112-LCNI-5           >28        275     80     30     50
18 months   ki1148112-LCNI-5           20-24      275     66     27     39
18 months   ki1148112-LCNI-5           24-28      275     66     29     37
18 months   kiGH5241-JiVitA-3          <=20      7330   4053   1748   2305
18 months   kiGH5241-JiVitA-3          >28       7330    667    306    361
18 months   kiGH5241-JiVitA-3          20-24     7330   1648    823    825
18 months   kiGH5241-JiVitA-3          24-28     7330    962    467    495
24 months   ki1000108-CMC-V-BCS-2002   <=20       373     71      5     66
24 months   ki1000108-CMC-V-BCS-2002   >28        373     51      3     48
24 months   ki1000108-CMC-V-BCS-2002   20-24      373    150     12    138
24 months   ki1000108-CMC-V-BCS-2002   24-28      373    101      8     93
24 months   ki1000108-IRC              <=20       410     87     28     59
24 months   ki1000108-IRC              >28        410     44     24     20
24 months   ki1000108-IRC              20-24      410    171     55    116
24 months   ki1000108-IRC              24-28      410    108     40     68
24 months   ki1000109-EE               <=20       337      4      1      3
24 months   ki1000109-EE               >28        337    217     21    196
24 months   ki1000109-EE               20-24      337     15      1     14
24 months   ki1000109-EE               24-28      337    101      4     97
24 months   ki1000304b-SAS-CompFeed    <=20        80     25      8     17
24 months   ki1000304b-SAS-CompFeed    >28         80      8      1      7
24 months   ki1000304b-SAS-CompFeed    20-24       80     31     10     21
24 months   ki1000304b-SAS-CompFeed    24-28       80     16      5     11
24 months   ki1000304b-SAS-FoodSuppl   <=20         9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   >28          9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   20-24        9      3      0      3
24 months   ki1000304b-SAS-FoodSuppl   24-28        9      6      1      5
24 months   ki1017093-NIH-Birth        <=20       468    110     23     87
24 months   ki1017093-NIH-Birth        >28        468    112     30     82
24 months   ki1017093-NIH-Birth        20-24      468    115     35     80
24 months   ki1017093-NIH-Birth        24-28      468    131     27    104
24 months   ki1017093c-NIH-Crypto      <=20       634    194    102     92
24 months   ki1017093c-NIH-Crypto      >28        634    122     57     65
24 months   ki1017093c-NIH-Crypto      20-24      634    141     71     70
24 months   ki1017093c-NIH-Crypto      24-28      634    177     86     91
24 months   ki1066203-TanzaniaChild2   <=20       250     25     13     12
24 months   ki1066203-TanzaniaChild2   >28        250     94     55     39
24 months   ki1066203-TanzaniaChild2   20-24      250     58     28     30
24 months   ki1066203-TanzaniaChild2   24-28      250     73     35     38
24 months   ki1101329-Keneba           <=20      2186    396    182    214
24 months   ki1101329-Keneba           >28       2186    950    376    574
24 months   ki1101329-Keneba           20-24     2186    426    188    238
24 months   ki1101329-Keneba           24-28     2186    414    185    229
24 months   ki1112895-Guatemala BSC    <=20         0      0      0      0
24 months   ki1112895-Guatemala BSC    >28          0      0      0      0
24 months   ki1112895-Guatemala BSC    20-24        0      0      0      0
24 months   ki1112895-Guatemala BSC    24-28        0      0      0      0
24 months   ki1112895-iLiNS-Zinc       <=20       538    101     54     47
24 months   ki1112895-iLiNS-Zinc       >28        538    196    110     86
24 months   ki1112895-iLiNS-Zinc       20-24      538    107     68     39
24 months   ki1112895-iLiNS-Zinc       24-28      538    134     81     53
24 months   ki1113344-GMS-Nepal        <=20       568    170     52    118
24 months   ki1113344-GMS-Nepal        >28        568     95     30     65
24 months   ki1113344-GMS-Nepal        20-24      568    143     53     90
24 months   ki1113344-GMS-Nepal        24-28      568    160     41    119
24 months   ki1119695-PROBIT           <=20      2076    350    273     77
24 months   ki1119695-PROBIT           >28       2076    503    418     85
24 months   ki1119695-PROBIT           20-24     2076    731    568    163
24 months   ki1119695-PROBIT           24-28     2076    492    389    103
24 months   ki1126311-ZVITAMBO         <=20       470    103     23     80
24 months   ki1126311-ZVITAMBO         >28        470    115     38     77
24 months   ki1126311-ZVITAMBO         20-24      470    146     40    106
24 months   ki1126311-ZVITAMBO         24-28      470    106     30     76
24 months   ki1135781-COHORTS          <=20      3036    556    102    454
24 months   ki1135781-COHORTS          >28       3036   1021    217    804
24 months   ki1135781-COHORTS          20-24     3036    762    189    573
24 months   ki1135781-COHORTS          24-28     3036    697    175    522
24 months   ki1148112-LCNI-5           <=20       296     71     24     47
24 months   ki1148112-LCNI-5           >28        296     85     29     56
24 months   ki1148112-LCNI-5           20-24      296     72     27     45
24 months   ki1148112-LCNI-5           24-28      296     68     21     47
24 months   kiGH5241-JiVitA-3          <=20         3      0      0      0
24 months   kiGH5241-JiVitA-3          >28          3      0      0      0
24 months   kiGH5241-JiVitA-3          20-24        3      2      1      1
24 months   kiGH5241-JiVitA-3          24-28        3      1      1      0
3 months    ki1000108-CMC-V-BCS-2002   <=20       362     69     37     32
3 months    ki1000108-CMC-V-BCS-2002   >28        362     50     37     13
3 months    ki1000108-CMC-V-BCS-2002   20-24      362    146    100     46
3 months    ki1000108-CMC-V-BCS-2002   24-28      362     97     63     34
3 months    ki1000108-IRC              <=20       410     87     55     32
3 months    ki1000108-IRC              >28        410     44     32     12
3 months    ki1000108-IRC              20-24      410    171    119     52
3 months    ki1000108-IRC              24-28      410    108     74     34
3 months    ki1000109-EE               <=20       377      4      1      3
3 months    ki1000109-EE               >28        377    240     97    143
3 months    ki1000109-EE               20-24      377     18      5     13
3 months    ki1000109-EE               24-28      377    115     34     81
3 months    ki1000304b-SAS-CompFeed    <=20       977    245    155     90
3 months    ki1000304b-SAS-CompFeed    >28        977    119     83     36
3 months    ki1000304b-SAS-CompFeed    20-24      977    360    261     99
3 months    ki1000304b-SAS-CompFeed    24-28      977    253    155     98
3 months    ki1000304b-SAS-FoodSuppl   <=20         0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   >28          0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   20-24        0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   24-28        0      0      0      0
3 months    ki1017093-NIH-Birth        <=20       627    159    128     31
3 months    ki1017093-NIH-Birth        >28        627    144    113     31
3 months    ki1017093-NIH-Birth        20-24      627    154    117     37
3 months    ki1017093-NIH-Birth        24-28      627    170    129     41
3 months    ki1017093c-NIH-Crypto      <=20       758    228    185     43
3 months    ki1017093c-NIH-Crypto      >28        758    148    129     19
3 months    ki1017093c-NIH-Crypto      20-24      758    171    141     30
3 months    ki1017093c-NIH-Crypto      24-28      758    211    182     29
3 months    ki1066203-TanzaniaChild2   <=20       599     72     60     12
3 months    ki1066203-TanzaniaChild2   >28        599    197    183     14
3 months    ki1066203-TanzaniaChild2   20-24      599    159    142     17
3 months    ki1066203-TanzaniaChild2   24-28      599    171    155     16
3 months    ki1101329-Keneba           <=20      2282    469    340    129
3 months    ki1101329-Keneba           >28       2282    956    735    221
3 months    ki1101329-Keneba           20-24     2282    457    348    109
3 months    ki1101329-Keneba           24-28     2282    400    302     98
3 months    ki1112895-Guatemala BSC    <=20         0      0      0      0
3 months    ki1112895-Guatemala BSC    >28          0      0      0      0
3 months    ki1112895-Guatemala BSC    20-24        0      0      0      0
3 months    ki1112895-Guatemala BSC    24-28        0      0      0      0
3 months    ki1112895-iLiNS-Zinc       <=20         0      0      0      0
3 months    ki1112895-iLiNS-Zinc       >28          0      0      0      0
3 months    ki1112895-iLiNS-Zinc       20-24        0      0      0      0
3 months    ki1112895-iLiNS-Zinc       24-28        0      0      0      0
3 months    ki1113344-GMS-Nepal        <=20       593    176    136     40
3 months    ki1113344-GMS-Nepal        >28        593    102     86     16
3 months    ki1113344-GMS-Nepal        20-24      593    150    128     22
3 months    ki1113344-GMS-Nepal        24-28      593    165    149     16
3 months    ki1119695-PROBIT           <=20      8125   1466   1317    149
3 months    ki1119695-PROBIT           >28       8125   1793   1676    117
3 months    ki1119695-PROBIT           20-24     8125   2912   2700    212
3 months    ki1119695-PROBIT           24-28     8125   1954   1830    124
3 months    ki1126311-ZVITAMBO         <=20      3492    893    693    200
3 months    ki1126311-ZVITAMBO         >28       3492    689    573    116
3 months    ki1126311-ZVITAMBO         20-24     3492   1147    891    256
3 months    ki1126311-ZVITAMBO         24-28     3492    763    601    162
3 months    ki1135781-COHORTS          <=20      8705   1405   1106    299
3 months    ki1135781-COHORTS          >28       8705   2633   2140    493
3 months    ki1135781-COHORTS          20-24     8705   2335   1950    385
3 months    ki1135781-COHORTS          24-28     8705   2332   1949    383
3 months    ki1148112-LCNI-5           <=20         0      0      0      0
3 months    ki1148112-LCNI-5           >28          0      0      0      0
3 months    ki1148112-LCNI-5           20-24        0      0      0      0
3 months    ki1148112-LCNI-5           24-28        0      0      0      0
3 months    kiGH5241-JiVitA-3          <=20     13364   7017   3958   3059
3 months    kiGH5241-JiVitA-3          >28      13364   1403    844    559
3 months    kiGH5241-JiVitA-3          20-24    13364   3111   1997   1114
3 months    kiGH5241-JiVitA-3          24-28    13364   1833   1173    660
6 months    ki1000108-CMC-V-BCS-2002   <=20       367     70     27     43
6 months    ki1000108-CMC-V-BCS-2002   >28        367     50     29     21
6 months    ki1000108-CMC-V-BCS-2002   20-24      367    148     75     73
6 months    ki1000108-CMC-V-BCS-2002   24-28      367     99     48     51
6 months    ki1000108-IRC              <=20       408     86     48     38
6 months    ki1000108-IRC              >28        408     44     29     15
6 months    ki1000108-IRC              20-24      408    170     95     75
6 months    ki1000108-IRC              24-28      408    108     63     45
6 months    ki1000109-EE               <=20       371      4      1      3
6 months    ki1000109-EE               >28        371    234     65    169
6 months    ki1000109-EE               20-24      371     18      3     15
6 months    ki1000109-EE               24-28      371    115     26     89
6 months    ki1000304b-SAS-CompFeed    <=20       807    198    109     89
6 months    ki1000304b-SAS-CompFeed    >28        807     96     57     39
6 months    ki1000304b-SAS-CompFeed    20-24      807    305    193    112
6 months    ki1000304b-SAS-CompFeed    24-28      807    208    105    103
6 months    ki1000304b-SAS-FoodSuppl   <=20       105     30     19     11
6 months    ki1000304b-SAS-FoodSuppl   >28        105     20     14      6
6 months    ki1000304b-SAS-FoodSuppl   20-24      105     18     11      7
6 months    ki1000304b-SAS-FoodSuppl   24-28      105     37     18     19
6 months    ki1017093-NIH-Birth        <=20       549    126     89     37
6 months    ki1017093-NIH-Birth        >28        549    131     84     47
6 months    ki1017093-NIH-Birth        20-24      549    141     85     56
6 months    ki1017093-NIH-Birth        24-28      549    151     92     59
6 months    ki1017093c-NIH-Crypto      <=20       736    220    146     74
6 months    ki1017093c-NIH-Crypto      >28        736    145    106     39
6 months    ki1017093c-NIH-Crypto      20-24      736    167    113     54
6 months    ki1017093c-NIH-Crypto      24-28      736    204    145     59
6 months    ki1066203-TanzaniaChild2   <=20       555     64     48     16
6 months    ki1066203-TanzaniaChild2   >28        555    187    160     27
6 months    ki1066203-TanzaniaChild2   20-24      555    144    112     32
6 months    ki1066203-TanzaniaChild2   24-28      555    160    128     32
6 months    ki1101329-Keneba           <=20      2246    459    312    147
6 months    ki1101329-Keneba           >28       2246    942    627    315
6 months    ki1101329-Keneba           20-24     2246    449    312    137
6 months    ki1101329-Keneba           24-28     2246    396    269    127
6 months    ki1112895-Guatemala BSC    <=20        90     26     16     10
6 months    ki1112895-Guatemala BSC    >28         90     20     13      7
6 months    ki1112895-Guatemala BSC    20-24       90     31     24      7
6 months    ki1112895-Guatemala BSC    24-28       90     13     10      3
6 months    ki1112895-iLiNS-Zinc       <=20         0      0      0      0
6 months    ki1112895-iLiNS-Zinc       >28          0      0      0      0
6 months    ki1112895-iLiNS-Zinc       20-24        0      0      0      0
6 months    ki1112895-iLiNS-Zinc       24-28        0      0      0      0
6 months    ki1113344-GMS-Nepal        <=20       567    162    105     57
6 months    ki1113344-GMS-Nepal        >28        567     97     71     26
6 months    ki1113344-GMS-Nepal        20-24      567    146    112     34
6 months    ki1113344-GMS-Nepal        24-28      567    162    117     45
6 months    ki1119695-PROBIT           <=20      7807   1405   1215    190
6 months    ki1119695-PROBIT           >28       7807   1723   1558    165
6 months    ki1119695-PROBIT           20-24     7807   2801   2516    285
6 months    ki1119695-PROBIT           24-28     7807   1878   1704    174
6 months    ki1126311-ZVITAMBO         <=20      2280    556    363    193
6 months    ki1126311-ZVITAMBO         >28       2280    485    366    119
6 months    ki1126311-ZVITAMBO         20-24     2280    723    510    213
6 months    ki1126311-ZVITAMBO         24-28     2280    516    364    152
6 months    ki1135781-COHORTS          <=20      2947    529    367    162
6 months    ki1135781-COHORTS          >28       2947    982    707    275
6 months    ki1135781-COHORTS          20-24     2947    756    598    158
6 months    ki1135781-COHORTS          24-28     2947    680    523    157
6 months    ki1148112-LCNI-5           <=20       110     31     23      8
6 months    ki1148112-LCNI-5           >28        110     31     15     16
6 months    ki1148112-LCNI-5           20-24      110     29     20      9
6 months    ki1148112-LCNI-5           24-28      110     19      8     11
6 months    kiGH5241-JiVitA-3          <=20      9597   5151   2769   2382
6 months    kiGH5241-JiVitA-3          >28       9597    971    576    395
6 months    kiGH5241-JiVitA-3          20-24     9597   2180   1366    814
6 months    kiGH5241-JiVitA-3          24-28     9597   1295    802    493

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.7323944   0.6292790   0.8355098
12 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.6666667   0.5371155   0.7962178
12 months   ki1000108-CMC-V-BCS-2002   20-24                NA                0.7066667   0.6337083   0.7796250
12 months   ki1000108-CMC-V-BCS-2002   24-28                NA                0.6800000   0.5884492   0.7715508
12 months   ki1000108-IRC              <=20                 NA                0.5232558   0.4175664   0.6289452
12 months   ki1000108-IRC              >28                  NA                0.3863636   0.2423153   0.5304120
12 months   ki1000108-IRC              20-24                NA                0.5352941   0.4602284   0.6103599
12 months   ki1000108-IRC              24-28                NA                0.5000000   0.4055854   0.5944146
12 months   ki1000304b-SAS-CompFeed    <=20                 NA                0.5947137   0.5308118   0.6586155
12 months   ki1000304b-SAS-CompFeed    >28                  NA                0.6138614   0.5188584   0.7088644
12 months   ki1000304b-SAS-CompFeed    20-24                NA                0.5309735   0.4778206   0.5841263
12 months   ki1000304b-SAS-CompFeed    24-28                NA                0.6415929   0.5790389   0.7041469
12 months   ki1017093-NIH-Birth        <=20                 NA                0.4480000   0.3607421   0.5352579
12 months   ki1017093-NIH-Birth        >28                  NA                0.4885496   0.4028711   0.5742281
12 months   ki1017093-NIH-Birth        20-24                NA                0.5223881   0.4377369   0.6070393
12 months   ki1017093-NIH-Birth        24-28                NA                0.5637584   0.4840566   0.6434602
12 months   ki1017093c-NIH-Crypto      <=20                 NA                0.3881279   0.3235413   0.4527144
12 months   ki1017093c-NIH-Crypto      >28                  NA                0.3496503   0.2714392   0.4278615
12 months   ki1017093c-NIH-Crypto      20-24                NA                0.4294479   0.3534056   0.5054902
12 months   ki1017093c-NIH-Crypto      24-28                NA                0.3529412   0.2873185   0.4185639
12 months   ki1066203-TanzaniaChild2   <=20                 NA                0.3859649   0.2594560   0.5124738
12 months   ki1066203-TanzaniaChild2   >28                  NA                0.2705882   0.2037378   0.3374387
12 months   ki1066203-TanzaniaChild2   20-24                NA                0.3385827   0.2561961   0.4209692
12 months   ki1066203-TanzaniaChild2   24-28                NA                0.3285714   0.2506891   0.4064538
12 months   ki1101329-Keneba           <=20                 NA                0.3694690   0.3249636   0.4139745
12 months   ki1101329-Keneba           >28                  NA                0.4407631   0.4099233   0.4716028
12 months   ki1101329-Keneba           20-24                NA                0.4097665   0.3653433   0.4541897
12 months   ki1101329-Keneba           24-28                NA                0.3786848   0.3334038   0.4239658
12 months   ki1112895-iLiNS-Zinc       <=20                 NA                0.2258065   0.1599415   0.2916714
12 months   ki1112895-iLiNS-Zinc       >28                  NA                0.2072727   0.1593332   0.2552123
12 months   ki1112895-iLiNS-Zinc       20-24                NA                0.1890244   0.1290635   0.2489853
12 months   ki1112895-iLiNS-Zinc       24-28                NA                0.2119565   0.1528661   0.2710469
12 months   ki1113344-GMS-Nepal        <=20                 NA                0.4852071   0.4097921   0.5606221
12 months   ki1113344-GMS-Nepal        >28                  NA                0.4949495   0.3963779   0.5935211
12 months   ki1113344-GMS-Nepal        20-24                NA                0.4093960   0.3303739   0.4884180
12 months   ki1113344-GMS-Nepal        24-28                NA                0.4424242   0.3665751   0.5182734
12 months   ki1119695-PROBIT           <=20                 NA                0.1785714   0.1587058   0.1984371
12 months   ki1119695-PROBIT           >28                  NA                0.1349972   0.1190450   0.1509494
12 months   ki1119695-PROBIT           20-24                NA                0.1463671   0.1333868   0.1593475
12 months   ki1119695-PROBIT           24-28                NA                0.1297951   0.1146944   0.1448957
12 months   ki1126311-ZVITAMBO         <=20                 NA                0.4177419   0.3789135   0.4565703
12 months   ki1126311-ZVITAMBO         >28                  NA                0.3333333   0.2932300   0.3734366
12 months   ki1126311-ZVITAMBO         20-24                NA                0.3754557   0.3423658   0.4085455
12 months   ki1126311-ZVITAMBO         24-28                NA                0.3780919   0.3381354   0.4180483
12 months   ki1135781-COHORTS          <=20                 NA                0.4897805   0.4628216   0.5167394
12 months   ki1135781-COHORTS          >28                  NA                0.4642289   0.4447406   0.4837173
12 months   ki1135781-COHORTS          20-24                NA                0.4037685   0.3833984   0.4241386
12 months   ki1135781-COHORTS          24-28                NA                0.3995495   0.3791734   0.4199257
12 months   ki1148112-LCNI-5           <=20                 NA                0.4875000   0.3778031   0.5971969
12 months   ki1148112-LCNI-5           >28                  NA                0.5053763   0.4036090   0.6071437
12 months   ki1148112-LCNI-5           20-24                NA                0.4556962   0.3457070   0.5656854
12 months   ki1148112-LCNI-5           24-28                NA                0.4936709   0.3832562   0.6040856
12 months   kiGH5241-JiVitA-3          <=20                 NA                0.4857815   0.4714568   0.5001062
12 months   kiGH5241-JiVitA-3          >28                  NA                0.4276049   0.3919334   0.4632763
12 months   kiGH5241-JiVitA-3          20-24                NA                0.4027704   0.3805812   0.4249596
12 months   kiGH5241-JiVitA-3          24-28                NA                0.4061055   0.3768279   0.4353830
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.8732394   0.7957468   0.9507321
18 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.8235294   0.7187631   0.9282957
18 months   ki1000108-CMC-V-BCS-2002   20-24                NA                0.8533333   0.7966428   0.9100239
18 months   ki1000108-CMC-V-BCS-2002   24-28                NA                0.8316832   0.7586175   0.9047488
18 months   ki1000108-IRC              <=20                 NA                0.5977011   0.4945352   0.7008671
18 months   ki1000108-IRC              >28                  NA                0.3863636   0.2423157   0.5304116
18 months   ki1000108-IRC              20-24                NA                0.5823529   0.5081275   0.6565784
18 months   ki1000108-IRC              24-28                NA                0.5740741   0.4807016   0.6674465
18 months   ki1000304b-SAS-CompFeed    <=20                 NA                0.7072072   0.6473141   0.7671004
18 months   ki1000304b-SAS-CompFeed    >28                  NA                0.7731959   0.6898115   0.8565802
18 months   ki1000304b-SAS-CompFeed    20-24                NA                0.6686747   0.6180146   0.7193348
18 months   ki1000304b-SAS-CompFeed    24-28                NA                0.7630332   0.7056249   0.8204414
18 months   ki1017093-NIH-Birth        <=20                 NA                0.6695652   0.5835099   0.7556205
18 months   ki1017093-NIH-Birth        >28                  NA                0.6581197   0.5720830   0.7441564
18 months   ki1017093-NIH-Birth        20-24                NA                0.6311475   0.5454439   0.7168511
18 months   ki1017093-NIH-Birth        24-28                NA                0.6382979   0.5589080   0.7176877
18 months   ki1017093c-NIH-Crypto      <=20                 NA                0.4366197   0.3699675   0.5032720
18 months   ki1017093c-NIH-Crypto      >28                  NA                0.4326241   0.3507902   0.5144580
18 months   ki1017093c-NIH-Crypto      20-24                NA                0.4596273   0.3825922   0.5366624
18 months   ki1017093c-NIH-Crypto      24-28                NA                0.4450000   0.3760771   0.5139229
18 months   ki1066203-TanzaniaChild2   <=20                 NA                0.4857143   0.3199030   0.6515256
18 months   ki1066203-TanzaniaChild2   >28                  NA                0.3658537   0.2806121   0.4510952
18 months   ki1066203-TanzaniaChild2   20-24                NA                0.4565217   0.3545961   0.5584474
18 months   ki1066203-TanzaniaChild2   24-28                NA                0.4444444   0.3505984   0.5382905
18 months   ki1101329-Keneba           <=20                 NA                0.4506024   0.4027217   0.4984831
18 months   ki1101329-Keneba           >28                  NA                0.5394063   0.5081446   0.5706681
18 months   ki1101329-Keneba           20-24                NA                0.5112613   0.4647549   0.5577676
18 months   ki1101329-Keneba           24-28                NA                0.4613583   0.4140651   0.5086516
18 months   ki1112895-iLiNS-Zinc       <=20                 NA                0.5833333   0.3852731   0.7813936
18 months   ki1112895-iLiNS-Zinc       >28                  NA                0.2727273   0.1405865   0.4048680
18 months   ki1112895-iLiNS-Zinc       20-24                NA                0.4482759   0.2665215   0.6300302
18 months   ki1112895-iLiNS-Zinc       24-28                NA                0.2916667   0.1090641   0.4742692
18 months   ki1113344-GMS-Nepal        <=20                 NA                0.6309524   0.5579207   0.7039841
18 months   ki1113344-GMS-Nepal        >28                  NA                0.6391753   0.5435222   0.7348283
18 months   ki1113344-GMS-Nepal        20-24                NA                0.5724138   0.4918185   0.6530091
18 months   ki1113344-GMS-Nepal        24-28                NA                0.6524390   0.5794949   0.7253831
18 months   ki1119695-PROBIT           <=20                 NA                0.1932836   0.1721398   0.2144274
18 months   ki1119695-PROBIT           >28                  NA                0.1440729   0.1271021   0.1610438
18 months   ki1119695-PROBIT           20-24                NA                0.1566220   0.1428816   0.1703624
18 months   ki1119695-PROBIT           24-28                NA                0.1403996   0.1243586   0.1564405
18 months   ki1126311-ZVITAMBO         <=20                 NA                0.5211581   0.4749389   0.5673774
18 months   ki1126311-ZVITAMBO         >28                  NA                0.4536341   0.4047718   0.5024963
18 months   ki1126311-ZVITAMBO         20-24                NA                0.4787053   0.4382829   0.5191277
18 months   ki1126311-ZVITAMBO         24-28                NA                0.4916468   0.4437653   0.5395283
18 months   ki1135781-COHORTS          <=20                 NA                0.6654545   0.6260157   0.7048934
18 months   ki1135781-COHORTS          >28                  NA                0.6748815   0.6466114   0.7031516
18 months   ki1135781-COHORTS          20-24                NA                0.6138996   0.5796617   0.6481375
18 months   ki1135781-COHORTS          24-28                NA                0.6305278   0.5947921   0.6662635
18 months   ki1148112-LCNI-5           <=20                 NA                0.5714286   0.4490060   0.6938511
18 months   ki1148112-LCNI-5           >28                  NA                0.6250000   0.5187204   0.7312796
18 months   ki1148112-LCNI-5           20-24                NA                0.5909091   0.4720760   0.7097422
18 months   ki1148112-LCNI-5           24-28                NA                0.5606061   0.4406497   0.6805624
18 months   kiGH5241-JiVitA-3          <=20                 NA                0.5687145   0.5534663   0.5839627
18 months   kiGH5241-JiVitA-3          >28                  NA                0.5412294   0.5034110   0.5790478
18 months   kiGH5241-JiVitA-3          20-24                NA                0.5006068   0.4764650   0.5247485
18 months   kiGH5241-JiVitA-3          24-28                NA                0.5145530   0.4829684   0.5461377
24 months   ki1000108-IRC              <=20                 NA                0.6781609   0.5798720   0.7764498
24 months   ki1000108-IRC              >28                  NA                0.4545455   0.3072396   0.6018513
24 months   ki1000108-IRC              20-24                NA                0.6783626   0.6082664   0.7484588
24 months   ki1000108-IRC              24-28                NA                0.6296296   0.5384438   0.7208154
24 months   ki1017093-NIH-Birth        <=20                 NA                0.7909091   0.7148332   0.8669850
24 months   ki1017093-NIH-Birth        >28                  NA                0.7321429   0.6500410   0.8142447
24 months   ki1017093-NIH-Birth        20-24                NA                0.6956522   0.6114652   0.7798391
24 months   ki1017093-NIH-Birth        24-28                NA                0.7938931   0.7245499   0.8632364
24 months   ki1017093c-NIH-Crypto      <=20                 NA                0.4742268   0.4039063   0.5445474
24 months   ki1017093c-NIH-Crypto      >28                  NA                0.5327869   0.4441845   0.6213892
24 months   ki1017093c-NIH-Crypto      20-24                NA                0.4964539   0.4138614   0.5790464
24 months   ki1017093c-NIH-Crypto      24-28                NA                0.5141243   0.4404356   0.5878130
24 months   ki1066203-TanzaniaChild2   <=20                 NA                0.4800000   0.2837676   0.6762324
24 months   ki1066203-TanzaniaChild2   >28                  NA                0.4148936   0.3150914   0.5146959
24 months   ki1066203-TanzaniaChild2   20-24                NA                0.5172414   0.3883820   0.6461008
24 months   ki1066203-TanzaniaChild2   24-28                NA                0.5205479   0.4057167   0.6353792
24 months   ki1101329-Keneba           <=20                 NA                0.5404040   0.4913079   0.5895002
24 months   ki1101329-Keneba           >28                  NA                0.6042105   0.5731068   0.6353142
24 months   ki1101329-Keneba           20-24                NA                0.5586854   0.5115226   0.6058483
24 months   ki1101329-Keneba           24-28                NA                0.5531401   0.5052384   0.6010418
24 months   ki1112895-iLiNS-Zinc       <=20                 NA                0.4653465   0.3679786   0.5627144
24 months   ki1112895-iLiNS-Zinc       >28                  NA                0.4387755   0.3692389   0.5083121
24 months   ki1112895-iLiNS-Zinc       20-24                NA                0.3644860   0.2732086   0.4557634
24 months   ki1112895-iLiNS-Zinc       24-28                NA                0.3955224   0.3126566   0.4783882
24 months   ki1113344-GMS-Nepal        <=20                 NA                0.6941176   0.6247910   0.7634443
24 months   ki1113344-GMS-Nepal        >28                  NA                0.6842105   0.5906565   0.7777646
24 months   ki1113344-GMS-Nepal        20-24                NA                0.6293706   0.5501413   0.7085999
24 months   ki1113344-GMS-Nepal        24-28                NA                0.7437500   0.6760457   0.8114543
24 months   ki1119695-PROBIT           <=20                 NA                0.2200000   0.1765912   0.2634088
24 months   ki1119695-PROBIT           >28                  NA                0.1689861   0.1362295   0.2017426
24 months   ki1119695-PROBIT           20-24                NA                0.2229822   0.1928005   0.2531640
24 months   ki1119695-PROBIT           24-28                NA                0.2093496   0.1733913   0.2453078
24 months   ki1126311-ZVITAMBO         <=20                 NA                0.7766990   0.6961865   0.8572116
24 months   ki1126311-ZVITAMBO         >28                  NA                0.6695652   0.5835053   0.7556251
24 months   ki1126311-ZVITAMBO         20-24                NA                0.7260274   0.6536064   0.7984484
24 months   ki1126311-ZVITAMBO         24-28                NA                0.7169811   0.6311353   0.8028270
24 months   ki1135781-COHORTS          <=20                 NA                0.8165468   0.7843705   0.8487230
24 months   ki1135781-COHORTS          >28                  NA                0.7874633   0.7623653   0.8125613
24 months   ki1135781-COHORTS          20-24                NA                0.7519685   0.7212998   0.7826372
24 months   ki1135781-COHORTS          24-28                NA                0.7489240   0.7167263   0.7811217
24 months   ki1148112-LCNI-5           <=20                 NA                0.6619718   0.5517545   0.7721892
24 months   ki1148112-LCNI-5           >28                  NA                0.6588235   0.5578639   0.7597831
24 months   ki1148112-LCNI-5           20-24                NA                0.6250000   0.5129860   0.7370140
24 months   ki1148112-LCNI-5           24-28                NA                0.6911765   0.5811802   0.8011728
3 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.4637681   0.3459394   0.5815968
3 months    ki1000108-CMC-V-BCS-2002   >28                  NA                0.2600000   0.1382507   0.3817493
3 months    ki1000108-CMC-V-BCS-2002   20-24                NA                0.3150685   0.2396117   0.3905253
3 months    ki1000108-CMC-V-BCS-2002   24-28                NA                0.3505155   0.2554329   0.4455980
3 months    ki1000108-IRC              <=20                 NA                0.3678161   0.2663652   0.4692670
3 months    ki1000108-IRC              >28                  NA                0.2727273   0.1409729   0.4044816
3 months    ki1000108-IRC              20-24                NA                0.3040936   0.2350602   0.3731270
3 months    ki1000108-IRC              24-28                NA                0.3148148   0.2271151   0.4025145
3 months    ki1000304b-SAS-CompFeed    <=20                 NA                0.3673469   0.3069509   0.4277430
3 months    ki1000304b-SAS-CompFeed    >28                  NA                0.3025210   0.2199476   0.3850944
3 months    ki1000304b-SAS-CompFeed    20-24                NA                0.2750000   0.2288518   0.3211482
3 months    ki1000304b-SAS-CompFeed    24-28                NA                0.3873518   0.3272941   0.4474095
3 months    ki1017093-NIH-Birth        <=20                 NA                0.1949686   0.1333396   0.2565975
3 months    ki1017093-NIH-Birth        >28                  NA                0.2152778   0.1480930   0.2824626
3 months    ki1017093-NIH-Birth        20-24                NA                0.2402597   0.1727281   0.3077914
3 months    ki1017093-NIH-Birth        24-28                NA                0.2411765   0.1768176   0.3055353
3 months    ki1017093c-NIH-Crypto      <=20                 NA                0.1885965   0.1377861   0.2394069
3 months    ki1017093c-NIH-Crypto      >28                  NA                0.1283784   0.0744504   0.1823063
3 months    ki1017093c-NIH-Crypto      20-24                NA                0.1754386   0.1183945   0.2324827
3 months    ki1017093c-NIH-Crypto      24-28                NA                0.1374408   0.0909522   0.1839293
3 months    ki1066203-TanzaniaChild2   <=20                 NA                0.1666667   0.0805121   0.2528213
3 months    ki1066203-TanzaniaChild2   >28                  NA                0.0710660   0.0351572   0.1069748
3 months    ki1066203-TanzaniaChild2   20-24                NA                0.1069182   0.0588472   0.1549893
3 months    ki1066203-TanzaniaChild2   24-28                NA                0.0935673   0.0498812   0.1372533
3 months    ki1101329-Keneba           <=20                 NA                0.2750533   0.2346313   0.3154754
3 months    ki1101329-Keneba           >28                  NA                0.2311715   0.2044417   0.2579014
3 months    ki1101329-Keneba           20-24                NA                0.2385120   0.1994305   0.2775936
3 months    ki1101329-Keneba           24-28                NA                0.2450000   0.2028430   0.2871570
3 months    ki1113344-GMS-Nepal        <=20                 NA                0.2272727   0.1653079   0.2892375
3 months    ki1113344-GMS-Nepal        >28                  NA                0.1568627   0.0862272   0.2274983
3 months    ki1113344-GMS-Nepal        20-24                NA                0.1466667   0.0900044   0.2033289
3 months    ki1113344-GMS-Nepal        24-28                NA                0.0969697   0.0517798   0.1421596
3 months    ki1119695-PROBIT           <=20                 NA                0.1016371   0.0861682   0.1171060
3 months    ki1119695-PROBIT           >28                  NA                0.0652538   0.0538214   0.0766861
3 months    ki1119695-PROBIT           20-24                NA                0.0728022   0.0633651   0.0822393
3 months    ki1119695-PROBIT           24-28                NA                0.0634596   0.0526496   0.0742695
3 months    ki1126311-ZVITAMBO         <=20                 NA                0.2239642   0.1966168   0.2513115
3 months    ki1126311-ZVITAMBO         >28                  NA                0.1683599   0.1404160   0.1963039
3 months    ki1126311-ZVITAMBO         20-24                NA                0.2231909   0.1990905   0.2472913
3 months    ki1126311-ZVITAMBO         24-28                NA                0.2123198   0.1832984   0.2413412
3 months    ki1135781-COHORTS          <=20                 NA                0.2128114   0.1914085   0.2342142
3 months    ki1135781-COHORTS          >28                  NA                0.1872389   0.1723375   0.2021403
3 months    ki1135781-COHORTS          20-24                NA                0.1648822   0.1498304   0.1799341
3 months    ki1135781-COHORTS          24-28                NA                0.1642367   0.1491989   0.1792745
3 months    kiGH5241-JiVitA-3          <=20                 NA                0.4359413   0.4243384   0.4475441
3 months    kiGH5241-JiVitA-3          >28                  NA                0.3984319   0.3728134   0.4240505
3 months    kiGH5241-JiVitA-3          20-24                NA                0.3580842   0.3412363   0.3749321
3 months    kiGH5241-JiVitA-3          24-28                NA                0.3600655   0.3380898   0.3820411
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.6142857   0.5001006   0.7284709
6 months    ki1000108-CMC-V-BCS-2002   >28                  NA                0.4200000   0.2830083   0.5569917
6 months    ki1000108-CMC-V-BCS-2002   20-24                NA                0.4932432   0.4125866   0.5738999
6 months    ki1000108-CMC-V-BCS-2002   24-28                NA                0.5151515   0.4165705   0.6137326
6 months    ki1000108-IRC              <=20                 NA                0.4418605   0.3367743   0.5469467
6 months    ki1000108-IRC              >28                  NA                0.3409091   0.2006773   0.4811409
6 months    ki1000108-IRC              20-24                NA                0.4411765   0.3664456   0.5159073
6 months    ki1000108-IRC              24-28                NA                0.4166667   0.3235726   0.5097607
6 months    ki1000304b-SAS-CompFeed    <=20                 NA                0.4494949   0.3801639   0.5188260
6 months    ki1000304b-SAS-CompFeed    >28                  NA                0.4062500   0.3079440   0.5045560
6 months    ki1000304b-SAS-CompFeed    20-24                NA                0.3672131   0.3130810   0.4213453
6 months    ki1000304b-SAS-CompFeed    24-28                NA                0.4951923   0.4272038   0.5631808
6 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                0.3666667   0.1933991   0.5399343
6 months    ki1000304b-SAS-FoodSuppl   >28                  NA                0.3000000   0.0982002   0.5017998
6 months    ki1000304b-SAS-FoodSuppl   20-24                NA                0.3888889   0.1626003   0.6151775
6 months    ki1000304b-SAS-FoodSuppl   24-28                NA                0.5135135   0.3516919   0.6753351
6 months    ki1017093-NIH-Birth        <=20                 NA                0.2936508   0.2140561   0.3732455
6 months    ki1017093-NIH-Birth        >28                  NA                0.3587786   0.2765684   0.4409888
6 months    ki1017093-NIH-Birth        20-24                NA                0.3971631   0.3163245   0.4780017
6 months    ki1017093-NIH-Birth        24-28                NA                0.3907285   0.3128355   0.4686215
6 months    ki1017093c-NIH-Crypto      <=20                 NA                0.3363636   0.2738893   0.3988380
6 months    ki1017093c-NIH-Crypto      >28                  NA                0.2689655   0.1967423   0.3411887
6 months    ki1017093c-NIH-Crypto      20-24                NA                0.3233533   0.2523621   0.3943445
6 months    ki1017093c-NIH-Crypto      24-28                NA                0.2892157   0.2269558   0.3514755
6 months    ki1066203-TanzaniaChild2   <=20                 NA                0.2500000   0.1438181   0.3561819
6 months    ki1066203-TanzaniaChild2   >28                  NA                0.1443850   0.0939631   0.1948069
6 months    ki1066203-TanzaniaChild2   20-24                NA                0.2222222   0.1542581   0.2901864
6 months    ki1066203-TanzaniaChild2   24-28                NA                0.2000000   0.1379646   0.2620354
6 months    ki1101329-Keneba           <=20                 NA                0.3202614   0.2775679   0.3629549
6 months    ki1101329-Keneba           >28                  NA                0.3343949   0.3042609   0.3645290
6 months    ki1101329-Keneba           20-24                NA                0.3051225   0.2625222   0.3477228
6 months    ki1101329-Keneba           24-28                NA                0.3207071   0.2747259   0.3666882
6 months    ki1113344-GMS-Nepal        <=20                 NA                0.3518519   0.2782496   0.4254541
6 months    ki1113344-GMS-Nepal        >28                  NA                0.2680412   0.1798166   0.3562658
6 months    ki1113344-GMS-Nepal        20-24                NA                0.2328767   0.1642567   0.3014967
6 months    ki1113344-GMS-Nepal        24-28                NA                0.2777778   0.2087446   0.3468110
6 months    ki1119695-PROBIT           <=20                 NA                0.1352313   0.1173489   0.1531137
6 months    ki1119695-PROBIT           >28                  NA                0.0957632   0.0818677   0.1096587
6 months    ki1119695-PROBIT           20-24                NA                0.1017494   0.0905528   0.1129459
6 months    ki1119695-PROBIT           24-28                NA                0.0926518   0.0795376   0.1057660
6 months    ki1126311-ZVITAMBO         <=20                 NA                0.3471223   0.3075435   0.3867011
6 months    ki1126311-ZVITAMBO         >28                  NA                0.2453608   0.2070568   0.2836649
6 months    ki1126311-ZVITAMBO         20-24                NA                0.2946058   0.2613697   0.3278420
6 months    ki1126311-ZVITAMBO         24-28                NA                0.2945736   0.2552330   0.3339143
6 months    ki1135781-COHORTS          <=20                 NA                0.3062382   0.2669530   0.3455234
6 months    ki1135781-COHORTS          >28                  NA                0.2800407   0.2519521   0.3081294
6 months    ki1135781-COHORTS          20-24                NA                0.2089947   0.1800067   0.2379827
6 months    ki1135781-COHORTS          24-28                NA                0.2308824   0.1992043   0.2625605
6 months    ki1148112-LCNI-5           <=20                 NA                0.2580645   0.1033263   0.4128027
6 months    ki1148112-LCNI-5           >28                  NA                0.5161290   0.3394055   0.6928525
6 months    ki1148112-LCNI-5           20-24                NA                0.3103448   0.1411954   0.4794942
6 months    ki1148112-LCNI-5           24-28                NA                0.5789474   0.3559282   0.8019665
6 months    kiGH5241-JiVitA-3          <=20                 NA                0.4624345   0.4488180   0.4760510
6 months    kiGH5241-JiVitA-3          >28                  NA                0.4067971   0.3758976   0.4376966
6 months    kiGH5241-JiVitA-3          20-24                NA                0.3733945   0.3530885   0.3937005
6 months    kiGH5241-JiVitA-3          24-28                NA                0.3806950   0.3542480   0.4071420


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6989247   0.6967026   0.7011469
12 months   ki1000108-IRC              NA                   NA                0.5073529   0.5030392   0.5116667
12 months   ki1000304b-SAS-CompFeed    NA                   NA                0.5845465   0.5815849   0.5875080
12 months   ki1017093-NIH-Birth        NA                   NA                0.5083488   0.5047265   0.5119711
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3799726   0.3777311   0.3822140
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3178138   0.3144558   0.3211717
12 months   ki1101329-Keneba           NA                   NA                0.4093220   0.4081136   0.4105305
12 months   ki1112895-iLiNS-Zinc       NA                   NA                0.2082262   0.2073857   0.2090668
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4553265   0.4526130   0.4580399
12 months   ki1119695-PROBIT           NA                   NA                0.1456628   0.1452945   0.1460312
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3775591   0.3764558   0.3786623
12 months   ki1135781-COHORTS          NA                   NA                0.4347091   0.4339218   0.4354965
12 months   ki1148112-LCNI-5           NA                   NA                0.4864048   0.4844181   0.4883916
12 months   kiGH5241-JiVitA-3          NA                   NA                0.4517554   0.4509245   0.4525864
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.8471850   0.8454665   0.8489035
18 months   ki1000108-IRC              NA                   NA                0.5623472   0.5563655   0.5683289
18 months   ki1000304b-SAS-CompFeed    NA                   NA                0.7134571   0.7106345   0.7162797
18 months   ki1017093-NIH-Birth        NA                   NA                0.6484848   0.6471509   0.6498188
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4433566   0.4426357   0.4440776
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4245810   0.4200220   0.4291400
18 months   ki1101329-Keneba           NA                   NA                0.5028723   0.5013214   0.5044232
18 months   ki1112895-iLiNS-Zinc       NA                   NA                0.3801653   0.3582158   0.4021148
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6236934   0.6211614   0.6262254
18 months   ki1119695-PROBIT           NA                   NA                0.1565217   0.1561043   0.1569392
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4865156   0.4854492   0.4875821
18 months   ki1135781-COHORTS          NA                   NA                0.6477457   0.6468359   0.6486555
18 months   ki1148112-LCNI-5           NA                   NA                0.5890909   0.5860905   0.5920913
18 months   kiGH5241-JiVitA-3          NA                   NA                0.5437926   0.5431152   0.5444701
24 months   ki1000108-IRC              NA                   NA                0.6414634   0.6348619   0.6480650
24 months   ki1017093-NIH-Birth        NA                   NA                0.7542735   0.7505159   0.7580311
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5015773   0.4998954   0.5032592
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4760000   0.4699409   0.4820591
24 months   ki1101329-Keneba           NA                   NA                0.5741080   0.5729757   0.5752402
24 months   ki1112895-iLiNS-Zinc       NA                   NA                0.4182156   0.4151974   0.4212338
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6901408   0.6866976   0.6935841
24 months   ki1119695-PROBIT           NA                   NA                0.2061657   0.2052337   0.2070977
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7212766   0.7179654   0.7245878
24 months   ki1135781-COHORTS          NA                   NA                0.7750329   0.7741206   0.7759453
24 months   ki1148112-LCNI-5           NA                   NA                0.6587838   0.6561788   0.6613888
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3453039   0.3387342   0.3518735
3 months    ki1000108-IRC              NA                   NA                0.3170732   0.3142828   0.3198636
3 months    ki1000304b-SAS-CompFeed    NA                   NA                0.3306039   0.3275254   0.3336823
3 months    ki1017093-NIH-Birth        NA                   NA                0.2232855   0.2217673   0.2248037
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.1596306   0.1578334   0.1614278
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0984975   0.0961859   0.1008091
3 months    ki1101329-Keneba           NA                   NA                0.2440841   0.2434057   0.2447626
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1585160   0.1544939   0.1625381
3 months    ki1119695-PROBIT           NA                   NA                0.0740923   0.0737990   0.0743856
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2101947   0.2094908   0.2108986
3 months    ki1135781-COHORTS          NA                   NA                0.1792074   0.1788334   0.1795813
3 months    kiGH5241-JiVitA-3          NA                   NA                0.4034720   0.4028621   0.4040820
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.5063824   0.5181407
6 months    ki1000108-IRC              NA                   NA                0.4240196   0.4210268   0.4270124
6 months    ki1000304b-SAS-CompFeed    NA                   NA                0.4250310   0.4214298   0.4286322
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4095238   0.3938003   0.4252473
6 months    ki1017093-NIH-Birth        NA                   NA                0.3624772   0.3591084   0.3658461
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.3070652   0.3051647   0.3089657
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1927928   0.1896697   0.1959159
6 months    ki1101329-Keneba           NA                   NA                0.3232413   0.3227868   0.3236959
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2857143   0.2819933   0.2894353
6 months    ki1119695-PROBIT           NA                   NA                0.1042654   0.1039340   0.1045969
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2969298   0.2955177   0.2983419
6 months    ki1135781-COHORTS          NA                   NA                0.2551748   0.2538444   0.2565051
6 months    ki1148112-LCNI-5           NA                   NA                0.4000000   0.3754308   0.4245692
6 months    kiGH5241-JiVitA-3          NA                   NA                0.4255497   0.4247356   0.4263637


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ---------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   >28                  <=20              2.484960   1.9547983    3.158906
12 months   ki1000108-CMC-V-BCS-2002   20-24                <=20              2.624451   2.2040182    3.125085
12 months   ki1000108-CMC-V-BCS-2002   24-28                <=20              2.530613   2.0826841    3.074879
12 months   ki1000108-IRC              >28                  <=20              2.092551   1.3693756    3.197639
12 months   ki1000108-IRC              20-24                <=20              2.781545   2.1751870    3.556932
12 months   ki1000108-IRC              24-28                <=20              2.600115   1.9720079    3.428281
12 months   ki1000304b-SAS-CompFeed    >28                  <=20              2.807225   2.3251626    3.389231
12 months   ki1000304b-SAS-CompFeed    20-24                <=20              2.442011   2.1084795    2.828303
12 months   ki1000304b-SAS-CompFeed    24-28                <=20              2.941226   2.5439956    3.400482
12 months   ki1017093-NIH-Birth        >28                  <=20              2.975799   2.2897006    3.867483
12 months   ki1017093-NIH-Birth        20-24                <=20              3.209274   2.4909817    4.134691
12 months   ki1017093-NIH-Birth        24-28                <=20              3.519747   2.7668697    4.477487
12 months   ki1017093c-NIH-Crypto      >28                  <=20              2.461729   1.8627828    3.253255
12 months   ki1017093c-NIH-Crypto      20-24                <=20              3.023635   2.3713729    3.855306
12 months   ki1017093c-NIH-Crypto      24-28                <=20              2.482690   1.9344459    3.186312
12 months   ki1066203-TanzaniaChild2   >28                  <=20              2.015908   1.3372512    3.038983
12 months   ki1066203-TanzaniaChild2   20-24                <=20              2.404247   1.5984219    3.616320
12 months   ki1066203-TanzaniaChild2   24-28                <=20              2.342687   1.5633002    3.510640
12 months   ki1101329-Keneba           >28                  <=20              3.296837   2.8681262    3.789629
12 months   ki1101329-Keneba           20-24                <=20              3.031533   2.5779892    3.564869
12 months   ki1101329-Keneba           24-28                <=20              2.786938   2.3518771    3.302477
12 months   ki1112895-iLiNS-Zinc       >28                  <=20              2.504082   1.7257551    3.633439
12 months   ki1112895-iLiNS-Zinc       20-24                <=20              2.309678   1.5010612    3.553893
12 months   ki1112895-iLiNS-Zinc       24-28                <=20              2.556565   1.7077487    3.827276
12 months   ki1113344-GMS-Nepal        >28                  <=20              2.773413   2.1542686    3.570503
12 months   ki1113344-GMS-Nepal        20-24                <=20              2.325082   1.8147255    2.978965
12 months   ki1113344-GMS-Nepal        24-28                <=20              2.488862   1.9747020    3.136896
12 months   ki1119695-PROBIT           >28                  <=20              2.129706   1.8106572    2.504974
12 months   ki1119695-PROBIT           20-24                <=20              2.269719   1.9687246    2.616732
12 months   ki1119695-PROBIT           24-28                <=20              2.068559   1.7609998    2.429834
12 months   ki1126311-ZVITAMBO         >28                  <=20              2.220963   1.9077192    2.585640
12 months   ki1126311-ZVITAMBO         20-24                <=20              2.456590   2.1612471    2.792292
12 months   ki1126311-ZVITAMBO         24-28                <=20              2.472142   2.1475887    2.845742
12 months   ki1135781-COHORTS          >28                  <=20              2.580106   2.4075416    2.765040
12 months   ki1135781-COHORTS          20-24                <=20              2.280482   2.1164103    2.457273
12 months   ki1135781-COHORTS          24-28                <=20              2.260922   2.0974791    2.437101
12 months   ki1148112-LCNI-5           >28                  <=20              2.819810   2.0848640    3.813835
12 months   ki1148112-LCNI-5           20-24                <=20              2.546606   1.8308409    3.542198
12 months   ki1148112-LCNI-5           24-28                <=20              2.752909   2.0044952    3.780757
12 months   kiGH5241-JiVitA-3          >28                  <=20              2.411481   2.2072806    2.634573
12 months   kiGH5241-JiVitA-3          20-24                <=20              2.291298   2.1525036    2.439042
12 months   kiGH5241-JiVitA-3          24-28                <=20              2.307083   2.1342019    2.493968
18 months   ki1000108-CMC-V-BCS-2002   >28                  <=20              2.567863   2.1989154    2.998715
18 months   ki1000108-CMC-V-BCS-2002   20-24                <=20              2.657018   2.3782156    2.968504
18 months   ki1000108-CMC-V-BCS-2002   24-28                <=20              2.591952   2.2876813    2.936693
18 months   ki1000108-IRC              >28                  <=20              1.908688   1.2656300    2.878479
18 months   ki1000108-IRC              20-24                <=20              2.649368   2.1377565    3.283420
18 months   ki1000108-IRC              24-28                <=20              2.612925   2.0612356    3.312273
18 months   ki1000304b-SAS-CompFeed    >28                  <=20              2.984132   2.6017549    3.422706
18 months   ki1000304b-SAS-CompFeed    20-24                <=20              2.574137   2.2976403    2.883908
18 months   ki1000304b-SAS-CompFeed    24-28                <=20              2.941556   2.6265103    3.294390
18 months   ki1017093-NIH-Birth        >28                  <=20              2.672210   2.2246024    3.209881
18 months   ki1017093-NIH-Birth        20-24                <=20              2.566705   2.1290033    3.094394
18 months   ki1017093-NIH-Birth        24-28                <=20              2.594262   2.1693977    3.102333
18 months   ki1017093c-NIH-Crypto      >28                  <=20              2.693520   2.1122988    3.434670
18 months   ki1017093c-NIH-Crypto      20-24                <=20              2.865362   2.2841440    3.594476
18 months   ki1017093c-NIH-Crypto      24-28                <=20              2.770959   2.2293847    3.444096
18 months   ki1066203-TanzaniaChild2   >28                  <=20              2.123845   1.4048350    3.210852
18 months   ki1066203-TanzaniaChild2   20-24                <=20              2.559719   1.7023237    3.848953
18 months   ki1066203-TanzaniaChild2   24-28                <=20              2.496857   1.6713483    3.730099
18 months   ki1101329-Keneba           >28                  <=20              3.310430   2.9330459    3.736372
18 months   ki1101329-Keneba           20-24                <=20              3.109983   2.7040229    3.576891
18 months   ki1101329-Keneba           24-28                <=20              2.783948   2.4018157    3.226878
18 months   ki1112895-iLiNS-Zinc       >28                  <=20              1.596051   0.8832850    2.883983
18 months   ki1112895-iLiNS-Zinc       20-24                <=20              2.156471   1.2707808    3.659455
18 months   ki1112895-iLiNS-Zinc       24-28                <=20              1.648721   0.8087964    3.360897
18 months   ki1113344-GMS-Nepal        >28                  <=20              2.753940   2.2792398    3.327506
18 months   ki1113344-GMS-Nepal        20-24                <=20              2.477430   2.0646334    2.972761
18 months   ki1113344-GMS-Nepal        24-28                <=20              2.812445   2.3943877    3.303495
18 months   ki1119695-PROBIT           >28                  <=20              2.107277   1.7943487    2.474779
18 months   ki1119695-PROBIT           20-24                <=20              2.248633   1.9544264    2.587127
18 months   ki1119695-PROBIT           24-28                <=20              2.067606   1.7651106    2.421942
18 months   ki1126311-ZVITAMBO         >28                  <=20              2.387948   2.0769691    2.745490
18 months   ki1126311-ZVITAMBO         20-24                <=20              2.505633   2.2168460    2.832040
18 months   ki1126311-ZVITAMBO         24-28                <=20              2.568632   2.2516297    2.930265
18 months   ki1135781-COHORTS          >28                  <=20              2.757064   2.5640580    2.964597
18 months   ki1135781-COHORTS          20-24                <=20              2.515639   2.3190223    2.728925
18 months   ki1135781-COHORTS          24-28                <=20              2.579291   2.3762194    2.799717
18 months   ki1148112-LCNI-5           >28                  <=20              2.985448   2.2710161    3.924632
18 months   ki1148112-LCNI-5           20-24                <=20              2.812548   2.0964661    3.773220
18 months   ki1148112-LCNI-5           24-28                <=20              2.667284   1.9704588    3.610531
18 months   kiGH5241-JiVitA-3          >28                  <=20              2.590035   2.4032670    2.791318
18 months   kiGH5241-JiVitA-3          20-24                <=20              2.411485   2.2820303    2.548283
18 months   kiGH5241-JiVitA-3          24-28                <=20              2.471351   2.3112353    2.642559
24 months   ki1000108-IRC              >28                  <=20              1.954749   1.3706101    2.787842
24 months   ki1000108-IRC              20-24                <=20              2.719090   2.2757258    3.248832
24 months   ki1000108-IRC              24-28                <=20              2.530551   2.0617319    3.105974
24 months   ki1017093-NIH-Birth        >28                  <=20              2.523629   2.1770205    2.925421
24 months   ki1017093-NIH-Birth        20-24                <=20              2.409840   2.0646724    2.812711
24 months   ki1017093-NIH-Birth        24-28                <=20              2.728557   2.3961049    3.107136
24 months   ki1017093c-NIH-Crypto      >28                  <=20              3.075555   2.4612667    3.843159
24 months   ki1017093c-NIH-Crypto      20-24                <=20              2.848721   2.2796283    3.559884
24 months   ki1017093c-NIH-Crypto      24-28                <=20              2.956871   2.4058426    3.634106
24 months   ki1066203-TanzaniaChild2   >28                  <=20              2.373491   1.4770173    3.814077
24 months   ki1066203-TanzaniaChild2   20-24                <=20              2.937580   1.8200089    4.741393
24 months   ki1066203-TanzaniaChild2   24-28                <=20              2.957886   1.8588124    4.706817
24 months   ki1101329-Keneba           >28                  <=20              3.058950   2.7556413    3.395644
24 months   ki1101329-Keneba           20-24                <=20              2.811812   2.4838561    3.183070
24 months   ki1101329-Keneba           24-28                <=20              2.783106   2.4548247    3.155289
24 months   ki1112895-iLiNS-Zinc       >28                  <=20              2.567418   1.9747078    3.338030
24 months   ki1112895-iLiNS-Zinc       20-24                <=20              2.188589   1.5792064    3.033120
24 months   ki1112895-iLiNS-Zinc       24-28                <=20              2.339535   1.7399447    3.145747
24 months   ki1113344-GMS-Nepal        >28                  <=20              2.679759   2.2623427    3.174192
24 months   ki1113344-GMS-Nepal        20-24                <=20              2.476188   2.1086023    2.907854
24 months   ki1113344-GMS-Nepal        24-28                <=20              2.919768   2.5506974    3.342241
24 months   ki1119695-PROBIT           >28                  <=20              2.155707   1.6347989    2.842595
24 months   ki1119695-PROBIT           20-24                <=20              2.755380   2.1690279    3.500242
24 months   ki1119695-PROBIT           24-28                <=20              2.589822   1.9936947    3.364195
24 months   ki1126311-ZVITAMBO         >28                  <=20              2.368046   2.0076044    2.793201
24 months   ki1126311-ZVITAMBO         20-24                <=20              2.546603   2.2053835    2.940616
24 months   ki1126311-ZVITAMBO         24-28                <=20              2.517114   2.1484415    2.949052
24 months   ki1135781-COHORTS          >28                  <=20              2.623167   2.4935341    2.759539
24 months   ki1135781-COHORTS          20-24                <=20              2.511582   2.3731111    2.658133
24 months   ki1135781-COHORTS          24-28                <=20              2.502235   2.3604815    2.652502
24 months   ki1148112-LCNI-5           >28                  <=20              2.705385   2.1575190    3.392371
24 months   ki1148112-LCNI-5           20-24                <=20              2.570625   2.0127899    3.283060
24 months   ki1148112-LCNI-5           24-28                <=20              2.840891   2.2564553    3.576698
3 months    ki1000108-CMC-V-BCS-2002   >28                  <=20              1.751767   1.0282658    2.984333
3 months    ki1000108-CMC-V-BCS-2002   20-24                <=20              1.972628   1.3912654    2.796921
3 months    ki1000108-CMC-V-BCS-2002   24-28                <=20              2.129312   1.4683413    3.087817
3 months    ki1000108-IRC              >28                  <=20              2.099034   1.2034408    3.661122
3 months    ki1000108-IRC              20-24                <=20              2.285888   1.5992370    3.267359
3 months    ki1000108-IRC              24-28                <=20              2.353498   1.5902344    3.483105
3 months    ki1000304b-SAS-CompFeed    >28                  <=20              2.278528   1.6567972    3.133569
3 months    ki1000304b-SAS-CompFeed    20-24                <=20              2.114062   1.6714336    2.673907
3 months    ki1000304b-SAS-CompFeed    24-28                <=20              2.870418   2.2898114    3.598243
3 months    ki1017093-NIH-Birth        >28                  <=20              3.016710   1.9347274    4.703782
3 months    ki1017093-NIH-Birth        20-24                <=20              3.429107   2.2463536    5.234606
3 months    ki1017093-NIH-Birth        24-28                <=20              3.445269   2.2780630    5.210513
3 months    ki1017093c-NIH-Crypto      >28                  <=20              1.975268   1.1992092    3.253546
3 months    ki1017093c-NIH-Crypto      20-24                <=20              2.535099   1.6619116    3.867068
3 months    ki1017093c-NIH-Crypto      24-28                <=20              2.072500   1.3449129    3.193706
3 months    ki1066203-TanzaniaChild2   >28                  <=20              1.531727   0.7434404    3.155852
3 months    ki1066203-TanzaniaChild2   20-24                <=20              1.899346   0.9573475    3.768239
3 months    ki1066203-TanzaniaChild2   24-28                <=20              1.753131   0.8735738    3.518271
3 months    ki1101329-Keneba           >28                  <=20              2.317435   1.9221909    2.793950
3 months    ki1101329-Keneba           20-24                <=20              2.380114   1.9098859    2.966116
3 months    ki1101329-Keneba           24-28                <=20              2.436924   1.9434222    3.055742
3 months    ki1113344-GMS-Nepal        >28                  <=20              1.994107   1.1779627    3.375710
3 months    ki1113344-GMS-Nepal        20-24                <=20              1.906623   1.1882495    3.059298
3 months    ki1113344-GMS-Nepal        24-28                <=20              1.532142   0.8929264    2.628950
3 months    ki1119695-PROBIT           >28                  <=20              1.900329   1.5067468    2.396720
3 months    ki1119695-PROBIT           20-24                <=20              2.046836   1.6759461    2.499806
3 months    ki1119695-PROBIT           24-28                <=20              1.867077   1.4857830    2.346221
3 months    ki1126311-ZVITAMBO         >28                  <=20              2.120659   1.7257694    2.605908
3 months    ki1126311-ZVITAMBO         20-24                <=20              2.708913   2.3014637    3.188497
3 months    ki1126311-ZVITAMBO         24-28                <=20              2.580564   2.1484000    3.099660
3 months    ki1135781-COHORTS          >28                  <=20              2.410502   2.1203545    2.740353
3 months    ki1135781-COHORTS          20-24                <=20              2.170117   1.8945028    2.485828
3 months    ki1135781-COHORTS          24-28                <=20              2.163544   1.8884176    2.478755
3 months    kiGH5241-JiVitA-3          >28                  <=20              2.494174   2.3265078    2.673924
3 months    kiGH5241-JiVitA-3          20-24                <=20              2.273691   2.1540465    2.399982
3 months    kiGH5241-JiVitA-3          24-28                <=20              2.284048   2.1369212    2.441305
6 months    ki1000108-CMC-V-BCS-2002   >28                  <=20              1.981236   1.3611113    2.883891
6 months    ki1000108-CMC-V-BCS-2002   20-24                <=20              2.232125   1.7426057    2.859157
6 months    ki1000108-CMC-V-BCS-2002   24-28                <=20              2.313170   1.7715190    3.020433
6 months    ki1000108-IRC              >28                  <=20              2.163076   1.3449825    3.478778
6 months    ki1000108-IRC              20-24                <=20              2.714077   2.0268205    3.634370
6 months    ki1000108-IRC              24-28                <=20              2.567628   1.8527460    3.558347
6 months    ki1000304b-SAS-CompFeed    >28                  <=20              2.468948   1.8530456    3.289560
6 months    ki1000304b-SAS-CompFeed    20-24                <=20              2.263576   1.8286696    2.801916
6 months    ki1000304b-SAS-CompFeed    24-28                <=20              3.009168   2.4477431    3.699365
6 months    ki1000304b-SAS-FoodSuppl   >28                  <=20              2.266375   0.9961303    5.156411
6 months    ki1000304b-SAS-FoodSuppl   20-24                <=20              2.888121   1.3648052    6.111672
6 months    ki1000304b-SAS-FoodSuppl   24-28                <=20              4.057193   2.2990755    7.159755
6 months    ki1017093-NIH-Birth        >28                  <=20              3.393245   2.3794243    4.839032
6 months    ki1017093-NIH-Birth        20-24                <=20              3.867087   2.7553256    5.427438
6 months    ki1017093-NIH-Birth        24-28                <=20              3.783271   2.7023464    5.296559
6 months    ki1017093c-NIH-Crypto      >28                  <=20              2.224711   1.6050077    3.083687
6 months    ki1017093c-NIH-Crypto      20-24                <=20              2.615148   1.9615750    3.486483
6 months    ki1017093c-NIH-Crypto      24-28                <=20              2.362760   1.7780341    3.139779
6 months    ki1066203-TanzaniaChild2   >28                  <=20              1.781650   1.0280660    3.087621
6 months    ki1066203-TanzaniaChild2   20-24                <=20              2.432425   1.4412416    4.105275
6 months    ki1066203-TanzaniaChild2   24-28                <=20              2.225541   1.3153058    3.765689
6 months    ki1101329-Keneba           >28                  <=20              2.840929   2.4186793    3.336894
6 months    ki1101329-Keneba           20-24                <=20              2.592777   2.1376145    3.144857
6 months    ki1101329-Keneba           24-28                <=20              2.722067   2.2380789    3.310718
6 months    ki1113344-GMS-Nepal        >28                  <=20              2.142132   1.4503537    3.163868
6 months    ki1113344-GMS-Nepal        20-24                <=20              1.938395   1.3505279    2.782152
6 months    ki1113344-GMS-Nepal        24-28                <=20              2.202237   1.5914325    3.047473
6 months    ki1119695-PROBIT           >28                  <=20              2.030219   1.6683331    2.470604
6 months    ki1119695-PROBIT           20-24                <=20              2.122108   1.7867124    2.520462
6 months    ki1119695-PROBIT           24-28                <=20              1.984041   1.6346566    2.408100
6 months    ki1126311-ZVITAMBO         >28                  <=20              2.027579   1.6711710    2.459998
6 months    ki1126311-ZVITAMBO         20-24                <=20              2.336628   1.9903485    2.743154
6 months    ki1126311-ZVITAMBO         24-28                <=20              2.336412   1.9601348    2.784921
6 months    ki1135781-COHORTS          >28                  <=20              2.495412   2.1204185    2.936724
6 months    ki1135781-COHORTS          20-24                <=20              1.978736   1.6380841    2.390228
6 months    ki1135781-COHORTS          24-28                <=20              2.125338   1.7613782    2.564503
6 months    ki1148112-LCNI-5           >28                  <=20              7.389056   3.7043707   14.738846
6 months    ki1148112-LCNI-5           20-24                <=20              3.328714   1.4803504    7.484944
6 months    ki1148112-LCNI-5           24-28                <=20              9.425521   4.6215663   19.223018
6 months    kiGH5241-JiVitA-3          >28                  <=20              2.410143   2.2215837    2.614706
6 months    kiGH5241-JiVitA-3          20-24                <=20              2.242192   2.1077307    2.385231
6 months    kiGH5241-JiVitA-3          24-28                <=20              2.277870   2.1123222    2.456393


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.0334696   -0.1366090    0.0696697
12 months   ki1000108-IRC              <=20                 NA                -0.0159029   -0.1216803    0.0898745
12 months   ki1000304b-SAS-CompFeed    <=20                 NA                -0.0101672   -0.0741376    0.0538033
12 months   ki1017093-NIH-Birth        <=20                 NA                 0.0603488   -0.0269843    0.1476819
12 months   ki1017093c-NIH-Crypto      <=20                 NA                -0.0081553   -0.0727807    0.0564701
12 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.0681511   -0.1947046    0.0584023
12 months   ki1101329-Keneba           <=20                 NA                 0.0398530   -0.0046688    0.0843749
12 months   ki1112895-iLiNS-Zinc       <=20                 NA                -0.0175802   -0.0834506    0.0482901
12 months   ki1113344-GMS-Nepal        <=20                 NA                -0.0298806   -0.1053445    0.0455832
12 months   ki1119695-PROBIT           <=20                 NA                -0.0329086   -0.0527776   -0.0130395
12 months   ki1126311-ZVITAMBO         <=20                 NA                -0.0401829   -0.0790270   -0.0013388
12 months   ki1135781-COHORTS          <=20                 NA                -0.0550713   -0.0820417   -0.0281009
12 months   ki1148112-LCNI-5           <=20                 NA                -0.0010952   -0.1108101    0.1086197
12 months   kiGH5241-JiVitA-3          <=20                 NA                -0.0340261   -0.0483748   -0.0196773
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.0260545   -0.1035662    0.0514573
18 months   ki1000108-IRC              <=20                 NA                -0.0353540   -0.1386932    0.0679853
18 months   ki1000304b-SAS-CompFeed    <=20                 NA                 0.0062499   -0.0537098    0.0662095
18 months   ki1017093-NIH-Birth        <=20                 NA                -0.0210804   -0.1071460    0.0649853
18 months   ki1017093c-NIH-Crypto      <=20                 NA                 0.0067369   -0.0599192    0.0733931
18 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.0611333   -0.2270072    0.1047407
18 months   ki1101329-Keneba           <=20                 NA                 0.0522699    0.0043641    0.1001757
18 months   ki1112895-iLiNS-Zinc       <=20                 NA                -0.2031680   -0.4024408   -0.0038953
18 months   ki1113344-GMS-Nepal        <=20                 NA                -0.0072590   -0.0803346    0.0658166
18 months   ki1119695-PROBIT           <=20                 NA                -0.0367618   -0.0579097   -0.0156139
18 months   ki1126311-ZVITAMBO         <=20                 NA                -0.0346425   -0.0808740    0.0115891
18 months   ki1135781-COHORTS          <=20                 NA                -0.0177088   -0.0571582    0.0217405
18 months   ki1148112-LCNI-5           <=20                 NA                 0.0176623   -0.1047970    0.1401217
18 months   kiGH5241-JiVitA-3          <=20                 NA                -0.0249219   -0.0401852   -0.0096586
24 months   ki1000108-IRC              <=20                 NA                -0.0366975   -0.1352079    0.0618128
24 months   ki1017093-NIH-Birth        <=20                 NA                -0.0366356   -0.1128042    0.0395331
24 months   ki1017093c-NIH-Crypto      <=20                 NA                 0.0273505   -0.0429902    0.0976911
24 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.0040000   -0.2003259    0.1923259
24 months   ki1101329-Keneba           <=20                 NA                 0.0337039   -0.0154053    0.0828131
24 months   ki1112895-iLiNS-Zinc       <=20                 NA                -0.0471309   -0.1445456    0.0502838
24 months   ki1113344-GMS-Nepal        <=20                 NA                -0.0039768   -0.0733889    0.0654353
24 months   ki1119695-PROBIT           <=20                 NA                -0.0138343   -0.0572531    0.0295845
24 months   ki1126311-ZVITAMBO         <=20                 NA                -0.0554224   -0.1360031    0.0251582
24 months   ki1135781-COHORTS          <=20                 NA                -0.0415138   -0.0737030   -0.0093246
24 months   ki1148112-LCNI-5           <=20                 NA                -0.0031880   -0.1134362    0.1070601
3 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.1184642   -0.2364759   -0.0004526
3 months    ki1000108-IRC              <=20                 NA                -0.0507429   -0.1522322    0.0507463
3 months    ki1000304b-SAS-CompFeed    <=20                 NA                -0.0367430   -0.0972175    0.0237314
3 months    ki1017093-NIH-Birth        <=20                 NA                 0.0283169   -0.0333307    0.0899646
3 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0289659   -0.0798081    0.0218763
3 months    ki1066203-TanzaniaChild2   <=20                 NA                -0.0681692   -0.1543548    0.0180164
3 months    ki1101329-Keneba           <=20                 NA                -0.0309692   -0.0713969    0.0094586
3 months    ki1113344-GMS-Nepal        <=20                 NA                -0.0687567   -0.1308519   -0.0066615
3 months    ki1119695-PROBIT           <=20                 NA                -0.0275448   -0.0430165   -0.0120731
3 months    ki1126311-ZVITAMBO         <=20                 NA                -0.0137694   -0.0411258    0.0135869
3 months    ki1135781-COHORTS          <=20                 NA                -0.0336040   -0.0550102   -0.0121979
3 months    kiGH5241-JiVitA-3          <=20                 NA                -0.0324693   -0.0440881   -0.0208504
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.1020241   -0.2163605    0.0123123
6 months    ki1000108-IRC              <=20                 NA                -0.0178409   -0.1229697    0.0872880
6 months    ki1000304b-SAS-CompFeed    <=20                 NA                -0.0244640   -0.0938885    0.0449605
6 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                 0.0428571   -0.1311224    0.2168367
6 months    ki1017093-NIH-Birth        <=20                 NA                 0.0688264   -0.0108395    0.1484924
6 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0292984   -0.0918016    0.0332048
6 months    ki1066203-TanzaniaChild2   <=20                 NA                -0.0572072   -0.1634350    0.0490206
6 months    ki1101329-Keneba           <=20                 NA                 0.0029799   -0.0397160    0.0456758
6 months    ki1113344-GMS-Nepal        <=20                 NA                -0.0661376   -0.1398338    0.0075587
6 months    ki1119695-PROBIT           <=20                 NA                -0.0309659   -0.0488514   -0.0130804
6 months    ki1126311-ZVITAMBO         <=20                 NA                -0.0501925   -0.0897965   -0.0105884
6 months    ki1135781-COHORTS          <=20                 NA                -0.0510634   -0.0903711   -0.0117557
6 months    ki1148112-LCNI-5           <=20                 NA                 0.1419355   -0.0147411    0.2986121
6 months    kiGH5241-JiVitA-3          <=20                 NA                -0.0368848   -0.0505256   -0.0232440


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.6149188   0.5566842   0.6655036
12 months   ki1000108-IRC              <=20                 NA                0.6207683   0.5358023   0.6901822
12 months   ki1000304b-SAS-CompFeed    <=20                 NA                0.6257772   0.5832776   0.6639426
12 months   ki1017093-NIH-Birth        <=20                 NA                0.6784837   0.6092959   0.7354195
12 months   ki1017093c-NIH-Crypto      <=20                 NA                0.6243089   0.5562431   0.6819345
12 months   ki1066203-TanzaniaChild2   <=20                 NA                0.5610749   0.3907236   0.6837967
12 months   ki1101329-Keneba           <=20                 NA                0.6697369   0.6274454   0.7072276
12 months   ki1112895-iLiNS-Zinc       <=20                 NA                0.6023347   0.4676367   0.7029516
12 months   ki1113344-GMS-Nepal        <=20                 NA                0.6087532   0.5429095   0.6651121
12 months   ki1119695-PROBIT           <=20                 NA                0.5576757   0.5056125   0.6042562
12 months   ki1126311-ZVITAMBO         <=20                 NA                0.5949761   0.5555044   0.6309428
12 months   ki1135781-COHORTS          <=20                 NA                0.5883407   0.5650336   0.6103989
12 months   ki1148112-LCNI-5           <=20                 NA                0.6312932   0.5382341   0.7055982
12 months   kiGH5241-JiVitA-3          <=20                 NA                0.6054290   0.5935973   0.6169161
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.6209789   0.5857968   0.6531727
18 months   ki1000108-IRC              <=20                 NA                0.6097041   0.5360220   0.6716851
18 months   ki1000304b-SAS-CompFeed    <=20                 NA                0.6353573   0.6030938   0.6649982
18 months   ki1017093-NIH-Birth        <=20                 NA                0.6203541   0.5682790   0.6661478
18 months   ki1017093c-NIH-Crypto      <=20                 NA                0.6377533   0.5780067   0.6890408
18 months   ki1066203-TanzaniaChild2   <=20                 NA                0.5827782   0.4129189   0.7034924
18 months   ki1101329-Keneba           <=20                 NA                0.6724125   0.6356703   0.7054493
18 months   ki1112895-iLiNS-Zinc       <=20                 NA                0.4788472   0.2645745   0.6306896
18 months   ki1113344-GMS-Nepal        <=20                 NA                0.6278637   0.5821679   0.6685621
18 months   ki1119695-PROBIT           <=20                 NA                0.5550546   0.5036026   0.6011734
18 months   ki1126311-ZVITAMBO         <=20                 NA                0.6068358   0.5703632   0.6402121
18 months   ki1135781-COHORTS          <=20                 NA                0.6221993   0.5991250   0.6439453
18 months   ki1148112-LCNI-5           <=20                 NA                0.6433174   0.5580723   0.7121193
18 months   kiGH5241-JiVitA-3          <=20                 NA                0.6156411   0.6051850   0.6258203
24 months   ki1000108-IRC              <=20                 NA                0.6116649   0.5509349   0.6641821
24 months   ki1017093-NIH-Birth        <=20                 NA                0.6146792   0.5757203   0.6500608
24 months   ki1017093c-NIH-Crypto      <=20                 NA                0.6527373   0.5972146   0.7006065
24 months   ki1066203-TanzaniaChild2   <=20                 NA                0.6290421   0.4415840   0.7535712
24 months   ki1101329-Keneba           <=20                 NA                0.6543636   0.6214836   0.6843875
24 months   ki1112895-iLiNS-Zinc       <=20                 NA                0.5929091   0.4981012   0.6698078
24 months   ki1113344-GMS-Nepal        <=20                 NA                0.6300068   0.5910935   0.6652170
24 months   ki1119695-PROBIT           <=20                 NA                0.6082443   0.5227680   0.6784111
24 months   ki1126311-ZVITAMBO         <=20                 NA                0.6049108   0.5617133   0.6438507
24 months   ki1135781-COHORTS          <=20                 NA                0.6129337   0.5973697   0.6278961
24 months   ki1148112-LCNI-5           <=20                 NA                0.6303446   0.5633566   0.6870555
3 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.5250575   0.3872400   0.6318780
3 months    ki1000108-IRC              <=20                 NA                0.5777014   0.4434970   0.6795415
3 months    ki1000304b-SAS-CompFeed    <=20                 NA                0.5934211   0.5206395   0.6551522
3 months    ki1017093-NIH-Birth        <=20                 NA                0.6818520   0.5635443   0.7680906
3 months    ki1017093c-NIH-Crypto      <=20                 NA                0.5710494   0.4382875   0.6724327
3 months    ki1066203-TanzaniaChild2   <=20                 NA                0.4462184   0.0708871   0.6699282
3 months    ki1101329-Keneba           <=20                 NA                0.5882779   0.5230862   0.6445582
3 months    ki1113344-GMS-Nepal        <=20                 NA                0.5021570   0.3453452   0.6214071
3 months    ki1119695-PROBIT           <=20                 NA                0.5176034   0.4382732   0.5857302
3 months    ki1126311-ZVITAMBO         <=20                 NA                0.6087934   0.5579657   0.6537766
3 months    ki1135781-COHORTS          <=20                 NA                0.5691929   0.5236018   0.6104209
3 months    kiGH5241-JiVitA-3          <=20                 NA                0.6036744   0.5929668   0.6141003
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.5656542   0.4767403   0.6394595
6 months    ki1000108-IRC              <=20                 NA                0.6169629   0.5140706   0.6980684
6 months    ki1000304b-SAS-CompFeed    <=20                 NA                0.6115437   0.5466541   0.6671453
6 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                0.6727016   0.4741703   0.7962758
6 months    ki1017093-NIH-Birth        <=20                 NA                0.7089854   0.6183191   0.7781144
6 months    ki1017093c-NIH-Crypto      <=20                 NA                0.5986400   0.5166716   0.6667073
6 months    ki1066203-TanzaniaChild2   <=20                 NA                0.5375289   0.2925830   0.6976613
6 months    ki1101329-Keneba           <=20                 NA                0.6355276   0.5835500   0.6810179
6 months    ki1113344-GMS-Nepal        <=20                 NA                0.5560441   0.4525257   0.6399889
6 months    ki1119695-PROBIT           <=20                 NA                0.5374568   0.4720434   0.5947655
6 months    ki1126311-ZVITAMBO         <=20                 NA                0.5748886   0.5234988   0.6207361
6 months    ki1135781-COHORTS          <=20                 NA                0.5653681   0.5058256   0.6177364
6 months    ki1148112-LCNI-5           <=20                 NA                0.7877520   0.6121946   0.8838355
6 months    kiGH5241-JiVitA-3          <=20                 NA                0.6015757   0.5896441   0.6131604


