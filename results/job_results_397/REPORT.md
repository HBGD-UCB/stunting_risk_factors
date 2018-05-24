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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: kiGH5241-JiVitA-3
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 6 months, studyid: kiGH5241-JiVitA-3

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* NA
* NA
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* NA
* agecat: 6 months, studyid: ki1148112-LCNI-5

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/b8dadb20-1f4b-4124-b497-b36114b2297c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b8dadb20-1f4b-4124-b497-b36114b2297c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/b8dadb20-1f4b-4124-b497-b36114b2297c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b8dadb20-1f4b-4124-b497-b36114b2297c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                    n     nA   nAY0   nAY1
----------  -------------------------  --------------  ------  -----  -----  -----
12 months   ki1000304b-SAS-CompFeed    <=18.71            827    250     87    163
12 months   ki1000304b-SAS-CompFeed    >23.508            827     87     46     41
12 months   ki1000304b-SAS-CompFeed    18.71-20.689       827    281    118    163
12 months   ki1000304b-SAS-CompFeed    20.689-23.508      827    209     93    116
12 months   ki1017093-NIH-Birth        <=18.71            541    111     42     69
12 months   ki1017093-NIH-Birth        >23.508            541    117     65     52
12 months   ki1017093-NIH-Birth        18.71-20.689       541    148     73     75
12 months   ki1017093-NIH-Birth        20.689-23.508      541    165     85     80
12 months   ki1017093c-NIH-Crypto      <=18.71            729     76     36     40
12 months   ki1017093c-NIH-Crypto      >23.508            729    299    202     97
12 months   ki1017093c-NIH-Crypto      18.71-20.689       729    131     84     47
12 months   ki1017093c-NIH-Crypto      20.689-23.508      729    223    130     93
12 months   ki1066203-TanzaniaChild2   <=18.71            488      5      5      0
12 months   ki1066203-TanzaniaChild2   >23.508            488    309    215     94
12 months   ki1066203-TanzaniaChild2   18.71-20.689       488     44     31     13
12 months   ki1066203-TanzaniaChild2   20.689-23.508      488    130     79     51
12 months   ki1112895-iLiNS-Zinc       <=18.71            778    155    121     34
12 months   ki1112895-iLiNS-Zinc       >23.508            778     80     66     14
12 months   ki1112895-iLiNS-Zinc       18.71-20.689       778    292    230     62
12 months   ki1112895-iLiNS-Zinc       20.689-23.508      778    251    199     52
12 months   ki1119695-PROBIT           <=18.71           6670    319    258     61
12 months   ki1119695-PROBIT           >23.508           6670   3491   3031    460
12 months   ki1119695-PROBIT           18.71-20.689      6670    865    739    126
12 months   ki1119695-PROBIT           20.689-23.508     6670   1995   1702    293
12 months   ki1126311-ZVITAMBO         <=18.71           2069    117     51     66
12 months   ki1126311-ZVITAMBO         >23.508           2069    841    554    287
12 months   ki1126311-ZVITAMBO         18.71-20.689      2069    367    213    154
12 months   ki1126311-ZVITAMBO         20.689-23.508     2069    744    451    293
12 months   ki1148112-LCNI-5           <=18.71            401     86     31     55
12 months   ki1148112-LCNI-5           >23.508            401     47     34     13
12 months   ki1148112-LCNI-5           18.71-20.689       401    133     70     63
12 months   ki1148112-LCNI-5           20.689-23.508      401    135     73     62
12 months   kiGH5241-JiVitA-3          <=18.71           8351   3467   1748   1719
12 months   kiGH5241-JiVitA-3          >23.508           8351    466    310    156
12 months   kiGH5241-JiVitA-3          18.71-20.689      8351   2772   1522   1250
12 months   kiGH5241-JiVitA-3          20.689-23.508     8351   1646    997    649
18 months   ki1000304b-SAS-CompFeed    <=18.71            799    242     53    189
18 months   ki1000304b-SAS-CompFeed    >23.508            799     86     31     55
18 months   ki1000304b-SAS-CompFeed    18.71-20.689       799    271     78    193
18 months   ki1000304b-SAS-CompFeed    20.689-23.508      799    200     70    130
18 months   ki1017093-NIH-Birth        <=18.71            497    105     23     82
18 months   ki1017093-NIH-Birth        >23.508            497    108     48     60
18 months   ki1017093-NIH-Birth        18.71-20.689       497    133     49     84
18 months   ki1017093-NIH-Birth        20.689-23.508      497    151     54     97
18 months   ki1017093c-NIH-Crypto      <=18.71            715     74     31     43
18 months   ki1017093c-NIH-Crypto      >23.508            715    293    179    114
18 months   ki1017093c-NIH-Crypto      18.71-20.689       715    130     74     56
18 months   ki1017093c-NIH-Crypto      20.689-23.508      715    218    114    104
18 months   ki1066203-TanzaniaChild2   <=18.71            351      4      4      0
18 months   ki1066203-TanzaniaChild2   >23.508            351    224    135     89
18 months   ki1066203-TanzaniaChild2   18.71-20.689       351     33     17     16
18 months   ki1066203-TanzaniaChild2   20.689-23.508      351     90     43     47
18 months   ki1112895-iLiNS-Zinc       <=18.71            121     24     17      7
18 months   ki1112895-iLiNS-Zinc       >23.508            121     14     11      3
18 months   ki1112895-iLiNS-Zinc       18.71-20.689       121     44     23     21
18 months   ki1112895-iLiNS-Zinc       20.689-23.508      121     39     24     15
18 months   ki1119695-PROBIT           <=18.71           6351    300    242     58
18 months   ki1119695-PROBIT           >23.508           6351   3323   2841    482
18 months   ki1119695-PROBIT           18.71-20.689      6351    811    685    126
18 months   ki1119695-PROBIT           20.689-23.508     6351   1917   1609    308
18 months   ki1126311-ZVITAMBO         <=18.71           1509     89     31     58
18 months   ki1126311-ZVITAMBO         >23.508           1509    602    331    271
18 months   ki1126311-ZVITAMBO         18.71-20.689      1509    289    135    154
18 months   ki1126311-ZVITAMBO         20.689-23.508     1509    529    266    263
18 months   ki1148112-LCNI-5           <=18.71            326     67     18     49
18 months   ki1148112-LCNI-5           >23.508            326     43     21     22
18 months   ki1148112-LCNI-5           18.71-20.689       326    108     48     60
18 months   ki1148112-LCNI-5           20.689-23.508      326    108     54     54
18 months   kiGH5241-JiVitA-3          <=18.71           7312   3042   1254   1788
18 months   kiGH5241-JiVitA-3          >23.508           7312    406    229    177
18 months   kiGH5241-JiVitA-3          18.71-20.689      7312   2434   1135   1299
18 months   kiGH5241-JiVitA-3          20.689-23.508     7312   1430    718    712
24 months   ki1000304b-SAS-CompFeed    <=18.71             76     30      5     25
24 months   ki1000304b-SAS-CompFeed    >23.508             76      6      4      2
24 months   ki1000304b-SAS-CompFeed    18.71-20.689        76     25      8     17
24 months   ki1000304b-SAS-CompFeed    20.689-23.508       76     15      7      8
24 months   ki1017093-NIH-Birth        <=18.71            470     98     10     88
24 months   ki1017093-NIH-Birth        >23.508            470    105     37     68
24 months   ki1017093-NIH-Birth        18.71-20.689       470    125     32     93
24 months   ki1017093-NIH-Birth        20.689-23.508      470    142     36    106
24 months   ki1017093c-NIH-Crypto      <=18.71            634     68     25     43
24 months   ki1017093c-NIH-Crypto      >23.508            634    258    142    116
24 months   ki1017093c-NIH-Crypto      18.71-20.689       634    120     60     60
24 months   ki1017093c-NIH-Crypto      20.689-23.508      634    188     89     99
24 months   ki1066203-TanzaniaChild2   <=18.71            249      1      1      0
24 months   ki1066203-TanzaniaChild2   >23.508            249    165     91     74
24 months   ki1066203-TanzaniaChild2   18.71-20.689       249     24     12     12
24 months   ki1066203-TanzaniaChild2   20.689-23.508      249     59     26     33
24 months   ki1112895-iLiNS-Zinc       <=18.71            538    101     63     38
24 months   ki1112895-iLiNS-Zinc       >23.508            538     53     34     19
24 months   ki1112895-iLiNS-Zinc       18.71-20.689       538    203    115     88
24 months   ki1112895-iLiNS-Zinc       20.689-23.508      538    181    101     80
24 months   ki1119695-PROBIT           <=18.71           2061    108     80     28
24 months   ki1119695-PROBIT           >23.508           2061   1021    824    197
24 months   ki1119695-PROBIT           18.71-20.689      2061    325    261     64
24 months   ki1119695-PROBIT           20.689-23.508     2061    607    474    133
24 months   ki1126311-ZVITAMBO         <=18.71            380     28      7     21
24 months   ki1126311-ZVITAMBO         >23.508            380    139     38    101
24 months   ki1126311-ZVITAMBO         18.71-20.689       380     84     22     62
24 months   ki1126311-ZVITAMBO         20.689-23.508      380    129     30     99
24 months   ki1148112-LCNI-5           <=18.71            353     71     15     56
24 months   ki1148112-LCNI-5           >23.508            353     45     16     29
24 months   ki1148112-LCNI-5           18.71-20.689       353    121     46     75
24 months   ki1148112-LCNI-5           20.689-23.508      353    116     45     71
24 months   kiGH5241-JiVitA-3          <=18.71              3      2      1      1
24 months   kiGH5241-JiVitA-3          >23.508              3      0      0      0
24 months   kiGH5241-JiVitA-3          18.71-20.689         3      1      1      0
24 months   kiGH5241-JiVitA-3          20.689-23.508        3      0      0      0
3 months    ki1000304b-SAS-CompFeed    <=18.71            900    274    163    111
3 months    ki1000304b-SAS-CompFeed    >23.508            900     97     75     22
3 months    ki1000304b-SAS-CompFeed    18.71-20.689       900    305    208     97
3 months    ki1000304b-SAS-CompFeed    20.689-23.508      900    224    157     67
3 months    ki1017093-NIH-Birth        <=18.71            629    130     90     40
3 months    ki1017093-NIH-Birth        >23.508            629    135    110     25
3 months    ki1017093-NIH-Birth        18.71-20.689       629    176    135     41
3 months    ki1017093-NIH-Birth        20.689-23.508      629    188    154     34
3 months    ki1017093c-NIH-Crypto      <=18.71            755     77     60     17
3 months    ki1017093c-NIH-Crypto      >23.508            755    309    273     36
3 months    ki1017093c-NIH-Crypto      18.71-20.689       755    135    109     26
3 months    ki1017093c-NIH-Crypto      20.689-23.508      755    234    192     42
3 months    ki1066203-TanzaniaChild2   <=18.71            592      7      6      1
3 months    ki1066203-TanzaniaChild2   >23.508            592    361    332     29
3 months    ki1066203-TanzaniaChild2   18.71-20.689       592     67     58      9
3 months    ki1066203-TanzaniaChild2   20.689-23.508      592    157    137     20
3 months    ki1112895-iLiNS-Zinc       <=18.71              0      0      0      0
3 months    ki1112895-iLiNS-Zinc       >23.508              0      0      0      0
3 months    ki1112895-iLiNS-Zinc       18.71-20.689         0      0      0      0
3 months    ki1112895-iLiNS-Zinc       20.689-23.508        0      0      0      0
3 months    ki1119695-PROBIT           <=18.71           6694    320    285     35
3 months    ki1119695-PROBIT           >23.508           6694   3501   3282    219
3 months    ki1119695-PROBIT           18.71-20.689      6694    870    801     69
3 months    ki1119695-PROBIT           20.689-23.508     6694   2003   1840    163
3 months    ki1126311-ZVITAMBO         <=18.71           2423    137     88     49
3 months    ki1126311-ZVITAMBO         >23.508           2423    976    799    177
3 months    ki1126311-ZVITAMBO         18.71-20.689      2423    442    326    116
3 months    ki1126311-ZVITAMBO         20.689-23.508     2423    868    657    211
3 months    ki1148112-LCNI-5           <=18.71              0      0      0      0
3 months    ki1148112-LCNI-5           >23.508              0      0      0      0
3 months    ki1148112-LCNI-5           18.71-20.689         0      0      0      0
3 months    ki1148112-LCNI-5           20.689-23.508        0      0      0      0
3 months    kiGH5241-JiVitA-3          <=18.71          13297   5686   3150   2536
3 months    kiGH5241-JiVitA-3          >23.508          13297    689    502    187
3 months    kiGH5241-JiVitA-3          18.71-20.689     13297   4394   2621   1773
3 months    kiGH5241-JiVitA-3          20.689-23.508    13297   2528   1658    870
6 months    ki1000304b-SAS-CompFeed    <=18.71            751    228    113    115
6 months    ki1000304b-SAS-CompFeed    >23.508            751     79     52     27
6 months    ki1000304b-SAS-CompFeed    18.71-20.689       751    260    155    105
6 months    ki1000304b-SAS-CompFeed    20.689-23.508      751    184    111     73
6 months    ki1017093-NIH-Birth        <=18.71            551    108     56     52
6 months    ki1017093-NIH-Birth        >23.508            551    115     77     38
6 months    ki1017093-NIH-Birth        18.71-20.689       551    163    102     61
6 months    ki1017093-NIH-Birth        20.689-23.508      551    165    115     50
6 months    ki1017093c-NIH-Crypto      <=18.71            736     77     46     31
6 months    ki1017093c-NIH-Crypto      >23.508            736    299    218     81
6 months    ki1017093c-NIH-Crypto      18.71-20.689       736    131     91     40
6 months    ki1017093c-NIH-Crypto      20.689-23.508      736    229    155     74
6 months    ki1066203-TanzaniaChild2   <=18.71            549      5      5      0
6 months    ki1066203-TanzaniaChild2   >23.508            549    343    282     61
6 months    ki1066203-TanzaniaChild2   18.71-20.689       549     58     43     15
6 months    ki1066203-TanzaniaChild2   20.689-23.508      549    143    111     32
6 months    ki1112895-iLiNS-Zinc       <=18.71              0      0      0      0
6 months    ki1112895-iLiNS-Zinc       >23.508              0      0      0      0
6 months    ki1112895-iLiNS-Zinc       18.71-20.689         0      0      0      0
6 months    ki1112895-iLiNS-Zinc       20.689-23.508        0      0      0      0
6 months    ki1119695-PROBIT           <=18.71           6500    314    266     48
6 months    ki1119695-PROBIT           >23.508           6500   3400   3077    323
6 months    ki1119695-PROBIT           18.71-20.689      6500    838    749     89
6 months    ki1119695-PROBIT           20.689-23.508     6500   1948   1743    205
6 months    ki1126311-ZVITAMBO         <=18.71           1898     96     49     47
6 months    ki1126311-ZVITAMBO         >23.508           1898    764    572    192
6 months    ki1126311-ZVITAMBO         18.71-20.689      1898    335    218    117
6 months    ki1126311-ZVITAMBO         20.689-23.508     1898    703    481    222
6 months    ki1148112-LCNI-5           <=18.71            133     29     15     14
6 months    ki1148112-LCNI-5           >23.508            133     11      9      2
6 months    ki1148112-LCNI-5           18.71-20.689       133     48     32     16
6 months    ki1148112-LCNI-5           20.689-23.508      133     45     25     20
6 months    kiGH5241-JiVitA-3          <=18.71           9556   4039   2162   1877
6 months    kiGH5241-JiVitA-3          >23.508           9556    508    347    161
6 months    kiGH5241-JiVitA-3          18.71-20.689      9556   3152   1786   1366
6 months    kiGH5241-JiVitA-3          20.689-23.508     9556   1857   1194    663

## Results Table

### Parameter: TSM


agecat      studyid                   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000304b-SAS-CompFeed   <=18.71              NA                0.6520000   0.5929181   0.7110819
12 months   ki1000304b-SAS-CompFeed   >23.508              NA                0.4712644   0.3663095   0.5762193
12 months   ki1000304b-SAS-CompFeed   18.71-20.689         NA                0.5800712   0.5223299   0.6378124
12 months   ki1000304b-SAS-CompFeed   20.689-23.508        NA                0.5550239   0.4876081   0.6224397
12 months   ki1017093-NIH-Birth       <=18.71              NA                0.6216216   0.5313160   0.7119272
12 months   ki1017093-NIH-Birth       >23.508              NA                0.4444444   0.3543227   0.5345661
12 months   ki1017093-NIH-Birth       18.71-20.689         NA                0.5067568   0.4261355   0.5873780
12 months   ki1017093-NIH-Birth       20.689-23.508        NA                0.4848485   0.4085215   0.5611755
12 months   ki1017093c-NIH-Crypto     <=18.71              NA                0.5263158   0.4139829   0.6386487
12 months   ki1017093c-NIH-Crypto     >23.508              NA                0.3244147   0.2713139   0.3775155
12 months   ki1017093c-NIH-Crypto     18.71-20.689         NA                0.3587786   0.2765870   0.4409703
12 months   ki1017093c-NIH-Crypto     20.689-23.508        NA                0.4170404   0.3522811   0.4817996
12 months   ki1112895-iLiNS-Zinc      <=18.71              NA                0.2193548   0.1541677   0.2845420
12 months   ki1112895-iLiNS-Zinc      >23.508              NA                0.1750000   0.0916840   0.2583160
12 months   ki1112895-iLiNS-Zinc      18.71-20.689         NA                0.2123288   0.1653920   0.2592655
12 months   ki1112895-iLiNS-Zinc      20.689-23.508        NA                0.2071713   0.1570012   0.2573414
12 months   ki1119695-PROBIT          <=18.71              NA                0.1912226   0.1480638   0.2343814
12 months   ki1119695-PROBIT          >23.508              NA                0.1317674   0.1205465   0.1429883
12 months   ki1119695-PROBIT          18.71-20.689         NA                0.1456647   0.1221541   0.1691754
12 months   ki1119695-PROBIT          20.689-23.508        NA                0.1468672   0.1313333   0.1624010
12 months   ki1126311-ZVITAMBO        <=18.71              NA                0.5641026   0.4742291   0.6539760
12 months   ki1126311-ZVITAMBO        >23.508              NA                0.3412604   0.3092084   0.3733124
12 months   ki1126311-ZVITAMBO        18.71-20.689         NA                0.4196185   0.3691170   0.4701200
12 months   ki1126311-ZVITAMBO        20.689-23.508        NA                0.3938172   0.3587003   0.4289341
12 months   ki1148112-LCNI-5          <=18.71              NA                0.6395349   0.5379323   0.7411375
12 months   ki1148112-LCNI-5          >23.508              NA                0.2765957   0.1485531   0.4046384
12 months   ki1148112-LCNI-5          18.71-20.689         NA                0.4736842   0.3887208   0.5586477
12 months   ki1148112-LCNI-5          20.689-23.508        NA                0.4592593   0.3750913   0.5434272
12 months   kiGH5241-JiVitA-3         <=18.71              NA                0.4958177   0.4791739   0.5124615
12 months   kiGH5241-JiVitA-3         >23.508              NA                0.3347639   0.2919152   0.3776127
12 months   kiGH5241-JiVitA-3         18.71-20.689         NA                0.4509380   0.4324134   0.4694625
12 months   kiGH5241-JiVitA-3         20.689-23.508        NA                0.3942892   0.3706790   0.4178994
18 months   ki1000304b-SAS-CompFeed   <=18.71              NA                0.7809917   0.7288524   0.8331311
18 months   ki1000304b-SAS-CompFeed   >23.508              NA                0.6395349   0.5379955   0.7410743
18 months   ki1000304b-SAS-CompFeed   18.71-20.689         NA                0.7121771   0.6582395   0.7661148
18 months   ki1000304b-SAS-CompFeed   20.689-23.508        NA                0.6500000   0.5838552   0.7161448
18 months   ki1017093-NIH-Birth       <=18.71              NA                0.7809524   0.7017620   0.8601427
18 months   ki1017093-NIH-Birth       >23.508              NA                0.5555556   0.4617462   0.6493649
18 months   ki1017093-NIH-Birth       18.71-20.689         NA                0.6315789   0.5495163   0.7136416
18 months   ki1017093-NIH-Birth       20.689-23.508        NA                0.6423841   0.5658592   0.7189090
18 months   ki1017093c-NIH-Crypto     <=18.71              NA                0.5810811   0.4685896   0.6935725
18 months   ki1017093c-NIH-Crypto     >23.508              NA                0.3890785   0.3332148   0.4449422
18 months   ki1017093c-NIH-Crypto     18.71-20.689         NA                0.4307692   0.3455874   0.5159510
18 months   ki1017093c-NIH-Crypto     20.689-23.508        NA                0.4770642   0.4107149   0.5434135
18 months   ki1119695-PROBIT          <=18.71              NA                0.1933333   0.1486421   0.2380245
18 months   ki1119695-PROBIT          >23.508              NA                0.1450497   0.1330755   0.1570238
18 months   ki1119695-PROBIT          18.71-20.689         NA                0.1553637   0.1304303   0.1802972
18 months   ki1119695-PROBIT          20.689-23.508        NA                0.1606677   0.1442277   0.1771077
18 months   ki1126311-ZVITAMBO        <=18.71              NA                0.6516854   0.5526702   0.7507006
18 months   ki1126311-ZVITAMBO        >23.508              NA                0.4501661   0.4104107   0.4899215
18 months   ki1126311-ZVITAMBO        18.71-20.689         NA                0.5328720   0.4753316   0.5904123
18 months   ki1126311-ZVITAMBO        20.689-23.508        NA                0.4971645   0.4545431   0.5397858
18 months   ki1148112-LCNI-5          <=18.71              NA                0.7313433   0.6250423   0.8376443
18 months   ki1148112-LCNI-5          >23.508              NA                0.5116279   0.3619928   0.6612630
18 months   ki1148112-LCNI-5          18.71-20.689         NA                0.5555556   0.4616966   0.6494145
18 months   ki1148112-LCNI-5          20.689-23.508        NA                0.5000000   0.4055562   0.5944438
18 months   kiGH5241-JiVitA-3         <=18.71              NA                0.5877712   0.5702779   0.6052645
18 months   kiGH5241-JiVitA-3         >23.508              NA                0.4359606   0.3877222   0.4841990
18 months   kiGH5241-JiVitA-3         18.71-20.689         NA                0.5336894   0.5138696   0.5535092
18 months   kiGH5241-JiVitA-3         20.689-23.508        NA                0.4979021   0.4719856   0.5238186
24 months   ki1017093-NIH-Birth       <=18.71              NA                0.8979592   0.8379645   0.9579539
24 months   ki1017093-NIH-Birth       >23.508              NA                0.6476190   0.5561484   0.7390897
24 months   ki1017093-NIH-Birth       18.71-20.689         NA                0.7440000   0.6674118   0.8205882
24 months   ki1017093-NIH-Birth       20.689-23.508        NA                0.7464789   0.6748510   0.8181068
24 months   ki1017093c-NIH-Crypto     <=18.71              NA                0.6323529   0.5176613   0.7470446
24 months   ki1017093c-NIH-Crypto     >23.508              NA                0.4496124   0.3888641   0.5103608
24 months   ki1017093c-NIH-Crypto     18.71-20.689         NA                0.5000000   0.4104697   0.5895303
24 months   ki1017093c-NIH-Crypto     20.689-23.508        NA                0.5265957   0.4551680   0.5980234
24 months   ki1112895-iLiNS-Zinc      <=18.71              NA                0.3762376   0.2816723   0.4708030
24 months   ki1112895-iLiNS-Zinc      >23.508              NA                0.3584906   0.2292632   0.4877179
24 months   ki1112895-iLiNS-Zinc      18.71-20.689         NA                0.4334975   0.3652639   0.5017311
24 months   ki1112895-iLiNS-Zinc      20.689-23.508        NA                0.4419890   0.3695721   0.5144058
24 months   ki1119695-PROBIT          <=18.71              NA                0.2592593   0.1765904   0.3419281
24 months   ki1119695-PROBIT          >23.508              NA                0.1929481   0.1687372   0.2171590
24 months   ki1119695-PROBIT          18.71-20.689         NA                0.1969231   0.1536778   0.2401684
24 months   ki1119695-PROBIT          20.689-23.508        NA                0.2191104   0.1861960   0.2520247
24 months   ki1126311-ZVITAMBO        <=18.71              NA                0.7500000   0.5894013   0.9105987
24 months   ki1126311-ZVITAMBO        >23.508              NA                0.7266187   0.6524278   0.8008096
24 months   ki1126311-ZVITAMBO        18.71-20.689         NA                0.7380952   0.6439478   0.8322427
24 months   ki1126311-ZVITAMBO        20.689-23.508        NA                0.7674419   0.6944434   0.8404404
24 months   ki1148112-LCNI-5          <=18.71              NA                0.7887324   0.6936465   0.8838183
24 months   ki1148112-LCNI-5          >23.508              NA                0.6444444   0.5043876   0.7845013
24 months   ki1148112-LCNI-5          18.71-20.689         NA                0.6198347   0.5332192   0.7064502
24 months   ki1148112-LCNI-5          20.689-23.508        NA                0.6120690   0.5232690   0.7008689
3 months    ki1000304b-SAS-CompFeed   <=18.71              NA                0.4051095   0.3469502   0.4632688
3 months    ki1000304b-SAS-CompFeed   >23.508              NA                0.2268041   0.1434218   0.3101864
3 months    ki1000304b-SAS-CompFeed   18.71-20.689         NA                0.3180328   0.2657381   0.3703274
3 months    ki1000304b-SAS-CompFeed   20.689-23.508        NA                0.2991071   0.2391136   0.3591007
3 months    ki1017093-NIH-Birth       <=18.71              NA                0.3076923   0.2282906   0.3870940
3 months    ki1017093-NIH-Birth       >23.508              NA                0.1851852   0.1196070   0.2507634
3 months    ki1017093-NIH-Birth       18.71-20.689         NA                0.2329545   0.1704541   0.2954550
3 months    ki1017093-NIH-Birth       20.689-23.508        NA                0.1808511   0.1257885   0.2359137
3 months    ki1017093c-NIH-Crypto     <=18.71              NA                0.2207792   0.1280749   0.3134835
3 months    ki1017093c-NIH-Crypto     >23.508              NA                0.1165049   0.0807092   0.1523005
3 months    ki1017093c-NIH-Crypto     18.71-20.689         NA                0.1925926   0.1260292   0.2591559
3 months    ki1017093c-NIH-Crypto     20.689-23.508        NA                0.1794872   0.1302847   0.2286897
3 months    ki1119695-PROBIT          <=18.71              NA                0.1093750   0.0751761   0.1435739
3 months    ki1119695-PROBIT          >23.508              NA                0.0625536   0.0545315   0.0705756
3 months    ki1119695-PROBIT          18.71-20.689         NA                0.0793103   0.0613530   0.0972677
3 months    ki1119695-PROBIT          20.689-23.508        NA                0.0813779   0.0694033   0.0933526
3 months    ki1126311-ZVITAMBO        <=18.71              NA                0.3576642   0.2773863   0.4379422
3 months    ki1126311-ZVITAMBO        >23.508              NA                0.1813525   0.1571743   0.2055306
3 months    ki1126311-ZVITAMBO        18.71-20.689         NA                0.2624434   0.2214191   0.3034678
3 months    ki1126311-ZVITAMBO        20.689-23.508        NA                0.2430876   0.2145457   0.2716294
3 months    kiGH5241-JiVitA-3         <=18.71              NA                0.4460077   0.4330871   0.4589284
3 months    kiGH5241-JiVitA-3         >23.508              NA                0.2714078   0.2382025   0.3046132
3 months    kiGH5241-JiVitA-3         18.71-20.689         NA                0.4035048   0.3889983   0.4180113
3 months    kiGH5241-JiVitA-3         20.689-23.508        NA                0.3441456   0.3256252   0.3626660
6 months    ki1000304b-SAS-CompFeed   <=18.71              NA                0.5043860   0.4394443   0.5693276
6 months    ki1000304b-SAS-CompFeed   >23.508              NA                0.3417722   0.2371122   0.4464321
6 months    ki1000304b-SAS-CompFeed   18.71-20.689         NA                0.4038462   0.3441649   0.4635274
6 months    ki1000304b-SAS-CompFeed   20.689-23.508        NA                0.3967391   0.3260043   0.4674740
6 months    ki1017093-NIH-Birth       <=18.71              NA                0.4814815   0.3871617   0.5758012
6 months    ki1017093-NIH-Birth       >23.508              NA                0.3304348   0.2443883   0.4164812
6 months    ki1017093-NIH-Birth       18.71-20.689         NA                0.3742331   0.2998754   0.4485909
6 months    ki1017093-NIH-Birth       20.689-23.508        NA                0.3030303   0.2328443   0.3732163
6 months    ki1017093c-NIH-Crypto     <=18.71              NA                0.4025974   0.2929832   0.5122116
6 months    ki1017093c-NIH-Crypto     >23.508              NA                0.2709030   0.2204941   0.3213119
6 months    ki1017093c-NIH-Crypto     18.71-20.689         NA                0.3053435   0.2264235   0.3842635
6 months    ki1017093c-NIH-Crypto     20.689-23.508        NA                0.3231441   0.2625303   0.3837579
6 months    ki1119695-PROBIT          <=18.71              NA                0.1528662   0.1130602   0.1926722
6 months    ki1119695-PROBIT          >23.508              NA                0.0950000   0.0851434   0.1048566
6 months    ki1119695-PROBIT          18.71-20.689         NA                0.1062053   0.0853435   0.1270670
6 months    ki1119695-PROBIT          20.689-23.508        NA                0.1052361   0.0916084   0.1188639
6 months    ki1126311-ZVITAMBO        <=18.71              NA                0.4895833   0.3895597   0.5896070
6 months    ki1126311-ZVITAMBO        >23.508              NA                0.2513089   0.2205429   0.2820749
6 months    ki1126311-ZVITAMBO        18.71-20.689         NA                0.3492537   0.2981895   0.4003179
6 months    ki1126311-ZVITAMBO        20.689-23.508        NA                0.3157895   0.2814196   0.3501594
6 months    kiGH5241-JiVitA-3         <=18.71              NA                0.4647190   0.4493367   0.4801012
6 months    kiGH5241-JiVitA-3         >23.508              NA                0.3169291   0.2764666   0.3573917
6 months    kiGH5241-JiVitA-3         18.71-20.689         NA                0.4333756   0.4160752   0.4506761
6 months    kiGH5241-JiVitA-3         20.689-23.508        NA                0.3570275   0.3352347   0.3788202


### Parameter: E(Y)


agecat      studyid                   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000304b-SAS-CompFeed   NA                   NA                0.5840387   0.5803333   0.5877441
12 months   ki1017093-NIH-Birth       NA                   NA                0.5101664   0.5050487   0.5152840
12 months   ki1017093c-NIH-Crypto     NA                   NA                0.3799726   0.3753785   0.3845666
12 months   ki1112895-iLiNS-Zinc      NA                   NA                0.2082262   0.2073799   0.2090725
12 months   ki1119695-PROBIT          NA                   NA                0.1409295   0.1406090   0.1412501
12 months   ki1126311-ZVITAMBO        NA                   NA                0.3866602   0.3843677   0.3889528
12 months   ki1148112-LCNI-5          NA                   NA                0.4812968   0.4712722   0.4913214
12 months   kiGH5241-JiVitA-3         NA                   NA                0.4519219   0.4509111   0.4529327
18 months   ki1000304b-SAS-CompFeed   NA                   NA                0.7096370   0.7058600   0.7134141
18 months   ki1017093-NIH-Birth       NA                   NA                0.6498994   0.6432729   0.6565259
18 months   ki1017093c-NIH-Crypto     NA                   NA                0.4433566   0.4389890   0.4477243
18 months   ki1119695-PROBIT          NA                   NA                0.1533617   0.1530831   0.1536402
18 months   ki1126311-ZVITAMBO        NA                   NA                0.4943671   0.4918306   0.4969037
18 months   ki1148112-LCNI-5          NA                   NA                0.5674847   0.5580783   0.5768910
18 months   kiGH5241-JiVitA-3         NA                   NA                0.5437637   0.5427655   0.5447618
24 months   ki1017093-NIH-Birth       NA                   NA                0.7553191   0.7478061   0.7628322
24 months   ki1017093c-NIH-Crypto     NA                   NA                0.5015773   0.4972265   0.5059281
24 months   ki1112895-iLiNS-Zinc      NA                   NA                0.4182156   0.4155944   0.4208368
24 months   ki1119695-PROBIT          NA                   NA                0.2047550   0.2040132   0.2054968
24 months   ki1126311-ZVITAMBO        NA                   NA                0.7447368   0.7429732   0.7465005
24 months   ki1148112-LCNI-5          NA                   NA                0.6543909   0.6472746   0.6615073
3 months    ki1000304b-SAS-CompFeed   NA                   NA                0.3300000   0.3263304   0.3336696
3 months    ki1017093-NIH-Birth       NA                   NA                0.2225755   0.2187858   0.2263652
3 months    ki1017093c-NIH-Crypto     NA                   NA                0.1602649   0.1575389   0.1629909
3 months    ki1119695-PROBIT          NA                   NA                0.0726023   0.0723125   0.0728921
3 months    ki1126311-ZVITAMBO        NA                   NA                0.2282295   0.2263936   0.2300653
3 months    kiGH5241-JiVitA-3         NA                   NA                0.4035497   0.4027263   0.4043731
6 months    ki1000304b-SAS-CompFeed   NA                   NA                0.4260985   0.4221843   0.4300128
6 months    ki1017093-NIH-Birth       NA                   NA                0.3647913   0.3594505   0.3701321
6 months    ki1017093c-NIH-Crypto     NA                   NA                0.3070652   0.3042034   0.3099270
6 months    ki1119695-PROBIT          NA                   NA                0.1023077   0.1020041   0.1026113
6 months    ki1126311-ZVITAMBO        NA                   NA                0.3045311   0.3019569   0.3071053
6 months    kiGH5241-JiVitA-3         NA                   NA                0.4255965   0.4246542   0.4265387


### Parameter: RR


agecat      studyid                   intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  ------------------------  -------------------  ---------------  ---------  ----------  ---------
12 months   ki1000304b-SAS-CompFeed   >23.508              <=18.71           2.060190   1.6198921   2.620163
12 months   ki1000304b-SAS-CompFeed   18.71-20.689         <=18.71           2.434350   2.1277597   2.785117
12 months   ki1000304b-SAS-CompFeed   20.689-23.508        <=18.71           2.342605   2.0131922   2.725919
12 months   ki1017093-NIH-Birth       >23.508              <=18.71           2.044137   1.5928627   2.623263
12 months   ki1017093-NIH-Birth       18.71-20.689         <=18.71           2.259667   1.8217106   2.802912
12 months   ki1017093-NIH-Birth       20.689-23.508        <=18.71           2.181415   1.7607872   2.702524
12 months   ki1017093c-NIH-Crypto     >23.508              <=18.71           1.852226   1.4154073   2.423853
12 months   ki1017093c-NIH-Crypto     18.71-20.689         <=18.71           1.977195   1.4456728   2.704140
12 months   ki1017093c-NIH-Crypto     20.689-23.508        <=18.71           2.208639   1.6962722   2.875770
12 months   ki1112895-iLiNS-Zinc      >23.508              <=18.71           2.220637   1.2668912   3.892386
12 months   ki1112895-iLiNS-Zinc      18.71-20.689         <=18.71           2.632593   1.8177346   3.812739
12 months   ki1112895-iLiNS-Zinc      20.689-23.508        <=18.71           2.571418   1.7526084   3.772771
12 months   ki1119695-PROBIT          >23.508              <=18.71           1.991880   1.5649420   2.535292
12 months   ki1119695-PROBIT          18.71-20.689         <=18.71           2.142032   1.6230104   2.827031
12 months   ki1119695-PROBIT          20.689-23.508        <=18.71           2.155544   1.6799936   2.765706
12 months   ki1126311-ZVITAMBO        >23.508              <=18.71           1.831182   1.5219870   2.203190
12 months   ki1126311-ZVITAMBO        18.71-20.689         <=18.71           2.104061   1.7232303   2.569054
12 months   ki1126311-ZVITAMBO        20.689-23.508        <=18.71           2.009991   1.6745641   2.412608
12 months   ki1148112-LCNI-5          >23.508              <=18.71           1.541098   0.9446596   2.514115
12 months   ki1148112-LCNI-5          18.71-20.689         <=18.71           2.097340   1.6504724   2.665198
12 months   ki1148112-LCNI-5          20.689-23.508        <=18.71           2.050563   1.6089336   2.613414
12 months   kiGH5241-JiVitA-3         >23.508              <=18.71           1.964378   1.7209043   2.242297
12 months   kiGH5241-JiVitA-3         18.71-20.689         <=18.71           2.483039   2.3547451   2.618323
12 months   kiGH5241-JiVitA-3         20.689-23.508        <=18.71           2.214951   2.0680012   2.372342
18 months   ki1000304b-SAS-CompFeed   >23.508              <=18.71           2.267948   1.9091150   2.694226
18 months   ki1000304b-SAS-CompFeed   18.71-20.689         <=18.71           2.489018   2.2499951   2.753432
18 months   ki1000304b-SAS-CompFeed   20.689-23.508        <=18.71           2.298542   2.0351495   2.596024
18 months   ki1017093-NIH-Birth       >23.508              <=18.71           2.036804   1.6726639   2.480219
18 months   ki1017093-NIH-Birth       18.71-20.689         <=18.71           2.245053   1.9039132   2.647318
18 months   ki1017093-NIH-Birth       20.689-23.508        <=18.71           2.276331   1.9466790   2.661807
18 months   ki1017093c-NIH-Crypto     >23.508              <=18.71           1.953411   1.5350361   2.485814
18 months   ki1017093c-NIH-Crypto     18.71-20.689         <=18.71           2.098712   1.5913675   2.767803
18 months   ki1017093c-NIH-Crypto     20.689-23.508        <=18.71           2.272758   1.7907331   2.884534
18 months   ki1119695-PROBIT          >23.508              <=18.71           2.117544   1.6566493   2.706663
18 months   ki1119695-PROBIT          18.71-20.689         <=18.71           2.233580   1.6857273   2.959481
18 months   ki1119695-PROBIT          20.689-23.508        <=18.71           2.295705   1.7829054   2.955996
18 months   ki1126311-ZVITAMBO        >23.508              <=18.71           1.995256   1.6736948   2.378597
18 months   ki1126311-ZVITAMBO        18.71-20.689         <=18.71           2.265245   1.8800211   2.729402
18 months   ki1126311-ZVITAMBO        20.689-23.508        <=18.71           2.144465   1.8011690   2.553193
18 months   ki1148112-LCNI-5          >23.508              <=18.71           2.012893   1.4520515   2.790354
18 months   ki1148112-LCNI-5          18.71-20.689         <=18.71           2.137501   1.7104741   2.671136
18 months   ki1148112-LCNI-5          20.689-23.508        <=18.71           1.981142   1.5610131   2.514344
18 months   kiGH5241-JiVitA-3         >23.508              <=18.71           2.099540   1.8722423   2.354432
18 months   kiGH5241-JiVitA-3         18.71-20.689         <=18.71           2.479330   2.3640984   2.600178
18 months   kiGH5241-JiVitA-3         20.689-23.508        <=18.71           2.332876   2.1971093   2.477032
24 months   ki1017093-NIH-Birth       >23.508              <=18.71           2.056925   1.7593869   2.404781
24 months   ki1017093-NIH-Birth       18.71-20.689         <=18.71           2.289985   2.0255133   2.588990
24 months   ki1017093-NIH-Birth       20.689-23.508        <=18.71           2.296316   2.0429247   2.581136
24 months   ki1017093c-NIH-Crypto     >23.508              <=18.71           2.036057   1.6239280   2.552778
24 months   ki1017093c-NIH-Crypto     18.71-20.689         <=18.71           2.204934   1.7088617   2.845014
24 months   ki1017093c-NIH-Crypto     20.689-23.508        <=18.71           2.299648   1.8335854   2.884175
24 months   ki1112895-iLiNS-Zinc      >23.508              <=18.71           2.593038   1.6709276   4.024020
24 months   ki1112895-iLiNS-Zinc      18.71-20.689         <=18.71           3.165119   2.3528505   4.257806
24 months   ki1112895-iLiNS-Zinc      20.689-23.508        <=18.71           3.237366   2.3982247   4.370124
24 months   ki1119695-PROBIT          >23.508              <=18.71           2.104817   1.4941568   2.965052
24 months   ki1119695-PROBIT          18.71-20.689         <=18.71           2.137336   1.4511977   3.147888
24 months   ki1119695-PROBIT          20.689-23.508        <=18.71           2.328304   1.6366673   3.312218
24 months   ki1126311-ZVITAMBO        >23.508              <=18.71           2.634847   2.0783949   3.340278
24 months   ki1126311-ZVITAMBO        18.71-20.689         <=18.71           2.675475   2.0852383   3.432781
24 months   ki1126311-ZVITAMBO        20.689-23.508        <=18.71           2.782239   2.2010804   3.516841
24 months   ki1148112-LCNI-5          >23.508              <=18.71           2.263842   1.7656808   2.902553
24 months   ki1148112-LCNI-5          18.71-20.689         <=18.71           2.194297   1.8245005   2.639046
24 months   ki1148112-LCNI-5          20.689-23.508        <=18.71           2.172799   1.7992743   2.623865
3 months    ki1000304b-SAS-CompFeed   >23.508              <=18.71           1.750425   1.1796075   2.597465
3 months    ki1000304b-SAS-CompFeed   18.71-20.689         <=18.71           2.192525   1.7625623   2.727374
3 months    ki1000304b-SAS-CompFeed   20.689-23.508        <=18.71           2.092452   1.6350549   2.677803
3 months    ki1017093-NIH-Birth       >23.508              <=18.71           1.825496   1.1778366   2.829286
3 months    ki1017093-NIH-Birth       18.71-20.689         <=18.71           2.132089   1.4693880   3.093672
3 months    ki1017093-NIH-Birth       20.689-23.508        <=18.71           1.799963   1.2076223   2.682847
3 months    ki1017093c-NIH-Crypto     >23.508              <=18.71           1.695027   1.0074251   2.851939
3 months    ki1017093c-NIH-Crypto     18.71-20.689         <=18.71           2.392482   1.3888683   4.121318
3 months    ki1017093c-NIH-Crypto     20.689-23.508        <=18.71           2.254597   1.3654916   3.722622
3 months    ki1119695-PROBIT          >23.508              <=18.71           1.771662   1.2636007   2.484002
3 months    ki1119695-PROBIT          18.71-20.689         <=18.71           2.064985   1.4036516   3.037908
3 months    ki1119695-PROBIT          20.689-23.508        <=18.71           2.104392   1.4895243   2.973075
3 months    ki1126311-ZVITAMBO        >23.508              <=18.71           1.660380   1.2788818   2.155682
3 months    ki1126311-ZVITAMBO        18.71-20.689         <=18.71           2.082919   1.5844710   2.738171
3 months    ki1126311-ZVITAMBO        20.689-23.508        <=18.71           1.973193   1.5316517   2.542021
3 months    kiGH5241-JiVitA-3         >23.508              <=18.71           1.837723   1.6206046   2.083929
3 months    kiGH5241-JiVitA-3         18.71-20.689         <=18.71           2.471199   2.3596963   2.587971
3 months    kiGH5241-JiVitA-3         20.689-23.508        <=18.71           2.163254   2.0350001   2.299590
6 months    ki1000304b-SAS-CompFeed   >23.508              <=18.71           1.969147   1.4125644   2.745036
6 months    ki1000304b-SAS-CompFeed   18.71-20.689         <=18.71           2.227030   1.8306407   2.709250
6 months    ki1000304b-SAS-CompFeed   20.689-23.508        <=18.71           2.195870   1.7623669   2.736006
6 months    ki1017093-NIH-Birth       >23.508              <=18.71           1.986328   1.4339421   2.751504
6 months    ki1017093-NIH-Birth       18.71-20.689         <=18.71           2.175489   1.6458060   2.875644
6 months    ki1017093-NIH-Birth       20.689-23.508        <=18.71           1.876429   1.3854473   2.541408
6 months    ki1017093c-NIH-Crypto     >23.508              <=18.71           1.959890   1.4093220   2.725542
6 months    ki1017093c-NIH-Crypto     18.71-20.689         <=18.71           2.134930   1.4667128   3.107579
6 months    ki1017093c-NIH-Crypto     20.689-23.508        <=18.71           2.231443   1.6032316   3.105812
6 months    ki1119695-PROBIT          >23.508              <=18.71           1.861641   1.4065668   2.463948
6 months    ki1119695-PROBIT          18.71-20.689         <=18.71           2.003227   1.4456842   2.775792
6 months    ki1119695-PROBIT          20.689-23.508        <=18.71           1.990568   1.4882482   2.662431
6 months    ki1126311-ZVITAMBO        >23.508              <=18.71           1.670815   1.3167107   2.120150
6 months    ki1126311-ZVITAMBO        18.71-20.689         <=18.71           2.040856   1.5874644   2.623740
6 months    ki1126311-ZVITAMBO        20.689-23.508        <=18.71           1.906019   1.5121477   2.402483
6 months    kiGH5241-JiVitA-3         >23.508              <=18.71           1.977790   1.7334066   2.256628
6 months    kiGH5241-JiVitA-3         18.71-20.689         <=18.71           2.540991   2.4125789   2.676238
6 months    kiGH5241-JiVitA-3         20.689-23.508        <=18.71           2.156023   2.0113955   2.311050


### Parameter: PAR


agecat      studyid                   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000304b-SAS-CompFeed   <=18.71              NA                -0.0679613   -0.1271593   -0.0087634
12 months   ki1017093-NIH-Birth       <=18.71              NA                -0.1114553   -0.2019057   -0.0210048
12 months   ki1017093c-NIH-Crypto     <=18.71              NA                -0.1463432   -0.2587700   -0.0339164
12 months   ki1112895-iLiNS-Zinc      <=18.71              NA                -0.0111286   -0.0763213    0.0540640
12 months   ki1119695-PROBIT          <=18.71              NA                -0.0502930   -0.0934530   -0.0071330
12 months   ki1126311-ZVITAMBO        <=18.71              NA                -0.1774423   -0.2673450   -0.0875397
12 months   ki1148112-LCNI-5          <=18.71              NA                -0.1582381   -0.2603341   -0.0561422
12 months   kiGH5241-JiVitA-3         <=18.71              NA                -0.0438958   -0.0605702   -0.0272213
18 months   ki1000304b-SAS-CompFeed   <=18.71              NA                -0.0713547   -0.1236307   -0.0190787
18 months   ki1017093-NIH-Birth       <=18.71              NA                -0.1310530   -0.2105201   -0.0515859
18 months   ki1017093c-NIH-Crypto     <=18.71              NA                -0.1377244   -0.2503006   -0.0251482
18 months   ki1119695-PROBIT          <=18.71              NA                -0.0399717   -0.0846637    0.0047204
18 months   ki1126311-ZVITAMBO        <=18.71              NA                -0.1573183   -0.2563659   -0.0582706
18 months   ki1148112-LCNI-5          <=18.71              NA                -0.1638586   -0.2705750   -0.0571423
18 months   kiGH5241-JiVitA-3         <=18.71              NA                -0.0440075   -0.0615293   -0.0264858
24 months   ki1017093-NIH-Birth       <=18.71              NA                -0.1426400   -0.2031033   -0.0821767
24 months   ki1017093c-NIH-Crypto     <=18.71              NA                -0.1307757   -0.2455498   -0.0160015
24 months   ki1112895-iLiNS-Zinc      <=18.71              NA                 0.0419780   -0.0526237    0.1365797
24 months   ki1119695-PROBIT          <=18.71              NA                -0.0545043   -0.1371765    0.0281679
24 months   ki1126311-ZVITAMBO        <=18.71              NA                -0.0052632   -0.1658715    0.1553452
24 months   ki1148112-LCNI-5          <=18.71              NA                -0.1343415   -0.2296933   -0.0389896
3 months    ki1000304b-SAS-CompFeed   <=18.71              NA                -0.0751095   -0.1333844   -0.0168346
3 months    ki1017093-NIH-Birth       <=18.71              NA                -0.0851168   -0.1646089   -0.0056247
3 months    ki1017093c-NIH-Crypto     <=18.71              NA                -0.0605143   -0.1532587    0.0322301
3 months    ki1119695-PROBIT          <=18.71              NA                -0.0367727   -0.0709728   -0.0025726
3 months    ki1126311-ZVITAMBO        <=18.71              NA                -0.1294348   -0.2097337   -0.0491358
3 months    kiGH5241-JiVitA-3         <=18.71              NA                -0.0424581   -0.0554049   -0.0295112
6 months    ki1000304b-SAS-CompFeed   <=18.71              NA                -0.0782874   -0.1433469   -0.0132279
6 months    ki1017093-NIH-Birth       <=18.71              NA                -0.1166902   -0.2111610   -0.0222194
6 months    ki1017093c-NIH-Crypto     <=18.71              NA                -0.0955322   -0.2051838    0.0141194
6 months    ki1119695-PROBIT          <=18.71              NA                -0.0505585   -0.0903657   -0.0107514
6 months    ki1126311-ZVITAMBO        <=18.71              NA                -0.1850522   -0.2851090   -0.0849955
6 months    kiGH5241-JiVitA-3         <=18.71              NA                -0.0391225   -0.0545336   -0.0237114


### Parameter: PAF


agecat      studyid                   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000304b-SAS-CompFeed   <=18.71              NA                0.5917048   0.5528793   0.6271589
12 months   ki1017093-NIH-Birth       <=18.71              NA                0.5598776   0.4908855   0.6195203
12 months   ki1017093c-NIH-Crypto     <=18.71              NA                0.5141950   0.3984064   0.6076977
12 months   ki1112895-iLiNS-Zinc      <=18.71              NA                0.6129752   0.4790296   0.7124824
12 months   ki1119695-PROBIT          <=18.71              NA                0.5214488   0.4002734   0.6181407
12 months   ki1126311-ZVITAMBO        <=18.71              NA                0.4961331   0.4090428   0.5703887
12 months   ki1148112-LCNI-5          <=18.71              NA                0.5288473   0.4469706   0.5986021
12 months   kiGH5241-JiVitA-3         <=18.71              NA                0.5980662   0.5843140   0.6113634
18 months   ki1000304b-SAS-CompFeed   <=18.71              NA                0.5969263   0.5690070   0.6230369
18 months   ki1017093-NIH-Birth       <=18.71              NA                0.5649039   0.5182233   0.6070614
18 months   ki1017093c-NIH-Crypto     <=18.71              NA                0.5337279   0.4339911   0.6158900
18 months   ki1119695-PROBIT          <=18.71              NA                0.5476278   0.4299787   0.6409949
18 months   ki1126311-ZVITAMBO        <=18.71              NA                0.5316774   0.4547845   0.5977259
18 months   ki1148112-LCNI-5          <=18.71              NA                0.5397330   0.4672250   0.6023730
18 months   kiGH5241-JiVitA-3         <=18.71              NA                0.6035194   0.5915188   0.6151674
24 months   ki1017093-NIH-Birth       <=18.71              NA                0.5687860   0.5386518   0.5969520
24 months   ki1017093c-NIH-Crypto     <=18.71              NA                0.5476016   0.4575242   0.6227217
24 months   ki1112895-iLiNS-Zinc      <=18.71              NA                0.6709591   0.5769015   0.7441070
24 months   ki1119695-PROBIT          <=18.71              NA                0.5460504   0.3755494   0.6699976
24 months   ki1126311-ZVITAMBO        <=18.71              NA                0.6295299   0.5410609   0.7009448
24 months   ki1148112-LCNI-5          <=18.71              NA                0.5638086   0.5076815   0.6135370
3 months    ki1000304b-SAS-CompFeed   <=18.71              NA                0.5571812   0.4885985   0.6165664
3 months    ki1017093-NIH-Birth       <=18.71              NA                0.5148855   0.3717102   0.6254339
3 months    ki1017093c-NIH-Crypto     <=18.71              NA                0.5161139   0.2633669   0.6821406
3 months    ki1119695-PROBIT          <=18.71              NA                0.4851052   0.2960808   0.6233707
3 months    ki1126311-ZVITAMBO        <=18.71              NA                0.4717106   0.3386792   0.5779813
3 months    kiGH5241-JiVitA-3         <=18.71              NA                0.5953789   0.5834559   0.6069606
6 months    ki1000304b-SAS-CompFeed   <=18.71              NA                0.5703510   0.5111529   0.6223804
6 months    ki1017093-NIH-Birth       <=18.71              NA                0.5312302   0.4294773   0.6148355
6 months    ki1017093c-NIH-Crypto     <=18.71              NA                0.5335994   0.3875471   0.6448225
6 months    ki1119695-PROBIT          <=18.71              NA                0.4879141   0.3355850   0.6053189
6 months    ki1126311-ZVITAMBO        <=18.71              NA                0.4631416   0.3413365   0.5624216
6 months    kiGH5241-JiVitA-3         <=18.71              NA                0.5998095   0.5863109   0.6128677


