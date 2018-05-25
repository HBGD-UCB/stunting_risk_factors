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
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: []
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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/bb5ac010-6f04-413a-adf2-689fe526dfe5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bb5ac010-6f04-413a-adf2-689fe526dfe5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/bb5ac010-6f04-413a-adf2-689fe526dfe5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bb5ac010-6f04-413a-adf2-689fe526dfe5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                   n     nA   nAY0   nAY1
----------  -------------------------  --------------  -----  -----  -----  -----
3 months    ki0047075b-MAL-ED          <=149.6          1772    599    403    196
3 months    ki0047075b-MAL-ED          (149.6-154.9]    1772    505    382    123
3 months    ki0047075b-MAL-ED          (154.9-160.8]    1772    438    331    107
3 months    ki0047075b-MAL-ED          >160.8           1772    230    194     36
3 months    ki1000304b-SAS-FoodSuppl   <=149.6             0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   (149.6-154.9]       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   (154.9-160.8]       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   >160.8              0      0      0      0
3 months    ki1017093-NIH-Birth        <=149.6           629    323    236     87
3 months    ki1017093-NIH-Birth        (149.6-154.9]     629    189    152     37
3 months    ki1017093-NIH-Birth        (154.9-160.8]     629    100     85     15
3 months    ki1017093-NIH-Birth        >160.8            629     17     16      1
3 months    ki1017093b-PROVIDE         <=149.6           171     83     56     27
3 months    ki1017093b-PROVIDE         (149.6-154.9]     171     50     41      9
3 months    ki1017093b-PROVIDE         (154.9-160.8]     171     31     24      7
3 months    ki1017093b-PROVIDE         >160.8            171      7      7      0
3 months    ki1017093c-NIH-Crypto      <=149.6           755    349    288     61
3 months    ki1017093c-NIH-Crypto      (149.6-154.9]     755    266    222     44
3 months    ki1017093c-NIH-Crypto      (154.9-160.8]     755    124    108     16
3 months    ki1017093c-NIH-Crypto      >160.8            755     16     16      0
3 months    ki1066203-TanzaniaChild2   <=149.6           596     54     45      9
3 months    ki1066203-TanzaniaChild2   (149.6-154.9]     596    159    139     20
3 months    ki1066203-TanzaniaChild2   (154.9-160.8]     596    245    221     24
3 months    ki1066203-TanzaniaChild2   >160.8            596    138    132      6
3 months    ki1101329-Keneba           <=149.6          2059     35     19     16
3 months    ki1101329-Keneba           (149.6-154.9]    2059    303    206     97
3 months    ki1101329-Keneba           (154.9-160.8]    2059    801    596    205
3 months    ki1101329-Keneba           >160.8           2059    920    740    180
3 months    ki1112895-Guatemala BSC    <=149.6             0      0      0      0
3 months    ki1112895-Guatemala BSC    (149.6-154.9]       0      0      0      0
3 months    ki1112895-Guatemala BSC    (154.9-160.8]       0      0      0      0
3 months    ki1112895-Guatemala BSC    >160.8              0      0      0      0
3 months    ki1126311-ZVITAMBO         <=149.6          2433     85     57     28
3 months    ki1126311-ZVITAMBO         (149.6-154.9]    2433    394    284    110
3 months    ki1126311-ZVITAMBO         (154.9-160.8]    2433    880    662    218
3 months    ki1126311-ZVITAMBO         >160.8           2433   1074    877    197
3 months    ki1135781-COHORTS          <=149.6          5428   2217   1705    512
3 months    ki1135781-COHORTS          (149.6-154.9]    5428   1959   1685    274
3 months    ki1135781-COHORTS          (154.9-160.8]    5428   1043    942    101
3 months    ki1135781-COHORTS          >160.8           5428    209    194     15
3 months    ki1148112-LCNI-5           <=149.6             0      0      0      0
3 months    ki1148112-LCNI-5           (149.6-154.9]       0      0      0      0
3 months    ki1148112-LCNI-5           (154.9-160.8]       0      0      0      0
3 months    ki1148112-LCNI-5           >160.8              0      0      0      0
6 months    ki0047075b-MAL-ED          <=149.6          1737    589    346    243
6 months    ki0047075b-MAL-ED          (149.6-154.9]    1737    493    342    151
6 months    ki0047075b-MAL-ED          (154.9-160.8]    1737    427    295    132
6 months    ki0047075b-MAL-ED          >160.8           1737    228    176     52
6 months    ki1000304b-SAS-FoodSuppl   <=149.6           102     52     25     27
6 months    ki1000304b-SAS-FoodSuppl   (149.6-154.9]     102     33     22     11
6 months    ki1000304b-SAS-FoodSuppl   (154.9-160.8]     102     16     14      2
6 months    ki1000304b-SAS-FoodSuppl   >160.8            102      1      0      1
6 months    ki1017093-NIH-Birth        <=149.6           551    280    153    127
6 months    ki1017093-NIH-Birth        (149.6-154.9]     551    171    118     53
6 months    ki1017093-NIH-Birth        (154.9-160.8]     551     84     64     20
6 months    ki1017093-NIH-Birth        >160.8            551     16     15      1
6 months    ki1017093b-PROVIDE         <=149.6           166     79     49     30
6 months    ki1017093b-PROVIDE         (149.6-154.9]     166     49     39     10
6 months    ki1017093b-PROVIDE         (154.9-160.8]     166     31     23      8
6 months    ki1017093b-PROVIDE         >160.8            166      7      7      0
6 months    ki1017093c-NIH-Crypto      <=149.6           736    340    212    128
6 months    ki1017093c-NIH-Crypto      (149.6-154.9]     736    257    183     74
6 months    ki1017093c-NIH-Crypto      (154.9-160.8]     736    123    100     23
6 months    ki1017093c-NIH-Crypto      >160.8            736     16     15      1
6 months    ki1066203-TanzaniaChild2   <=149.6           553     50     33     17
6 months    ki1066203-TanzaniaChild2   (149.6-154.9]     553    149    112     37
6 months    ki1066203-TanzaniaChild2   (154.9-160.8]     553    225    181     44
6 months    ki1066203-TanzaniaChild2   >160.8            553    129    119     10
6 months    ki1101329-Keneba           <=149.6          2002     34     14     20
6 months    ki1101329-Keneba           (149.6-154.9]    2002    298    167    131
6 months    ki1101329-Keneba           (154.9-160.8]    2002    776    505    271
6 months    ki1101329-Keneba           >160.8           2002    894    666    228
6 months    ki1112895-Guatemala BSC    <=149.6            71     38     25     13
6 months    ki1112895-Guatemala BSC    (149.6-154.9]      71     25     18      7
6 months    ki1112895-Guatemala BSC    (154.9-160.8]      71      6      5      1
6 months    ki1112895-Guatemala BSC    >160.8             71      2      2      0
6 months    ki1126311-ZVITAMBO         <=149.6          1902     67     35     32
6 months    ki1126311-ZVITAMBO         (149.6-154.9]    1902    314    205    109
6 months    ki1126311-ZVITAMBO         (154.9-160.8]    1902    685    461    224
6 months    ki1126311-ZVITAMBO         >160.8           1902    836    623    213
6 months    ki1135781-COHORTS          <=149.6          2947   1267    830    437
6 months    ki1135781-COHORTS          (149.6-154.9]    2947   1088    859    229
6 months    ki1135781-COHORTS          (154.9-160.8]    2947    521    438     83
6 months    ki1135781-COHORTS          >160.8           2947     71     68      3
6 months    ki1148112-LCNI-5           <=149.6           133     12      6      6
6 months    ki1148112-LCNI-5           (149.6-154.9]     133     45     20     25
6 months    ki1148112-LCNI-5           (154.9-160.8]     133     44     33     11
6 months    ki1148112-LCNI-5           >160.8            133     32     22     10
12 months   ki0047075b-MAL-ED          <=149.6          1683    570    283    287
12 months   ki0047075b-MAL-ED          (149.6-154.9]    1683    477    279    198
12 months   ki0047075b-MAL-ED          (154.9-160.8]    1683    415    250    165
12 months   ki0047075b-MAL-ED          >160.8           1683    221    147     74
12 months   ki1000304b-SAS-FoodSuppl   <=149.6            98     49      3     46
12 months   ki1000304b-SAS-FoodSuppl   (149.6-154.9]      98     33      6     27
12 months   ki1000304b-SAS-FoodSuppl   (154.9-160.8]      98     15      6      9
12 months   ki1000304b-SAS-FoodSuppl   >160.8             98      1      0      1
12 months   ki1017093-NIH-Birth        <=149.6           541    279    106    173
12 months   ki1017093-NIH-Birth        (149.6-154.9]     541    164     91     73
12 months   ki1017093-NIH-Birth        (154.9-160.8]     541     85     56     29
12 months   ki1017093-NIH-Birth        >160.8            541     13     12      1
12 months   ki1017093b-PROVIDE         <=149.6           159     75     41     34
12 months   ki1017093b-PROVIDE         (149.6-154.9]     159     48     34     14
12 months   ki1017093b-PROVIDE         (154.9-160.8]     159     29     21      8
12 months   ki1017093b-PROVIDE         >160.8            159      7      7      0
12 months   ki1017093c-NIH-Crypto      <=149.6           729    335    180    155
12 months   ki1017093c-NIH-Crypto      (149.6-154.9]     729    257    166     91
12 months   ki1017093c-NIH-Crypto      (154.9-160.8]     729    121     91     30
12 months   ki1017093c-NIH-Crypto      >160.8            729     16     15      1
12 months   ki1066203-TanzaniaChild2   <=149.6           492     50     23     27
12 months   ki1066203-TanzaniaChild2   (149.6-154.9]     492    125     76     49
12 months   ki1066203-TanzaniaChild2   (154.9-160.8]     492    204    140     64
12 months   ki1066203-TanzaniaChild2   >160.8            492    113     95     18
12 months   ki1101329-Keneba           <=149.6          2099     36     12     24
12 months   ki1101329-Keneba           (149.6-154.9]    2099    320    144    176
12 months   ki1101329-Keneba           (154.9-160.8]    2099    801    437    364
12 months   ki1101329-Keneba           >160.8           2099    942    630    312
12 months   ki1112895-Guatemala BSC    <=149.6            66     36     16     20
12 months   ki1112895-Guatemala BSC    (149.6-154.9]      66     21     12      9
12 months   ki1112895-Guatemala BSC    (154.9-160.8]      66      6      5      1
12 months   ki1112895-Guatemala BSC    >160.8             66      3      3      0
12 months   ki1126311-ZVITAMBO         <=149.6          2074     73     34     39
12 months   ki1126311-ZVITAMBO         (149.6-154.9]    2074    320    176    144
12 months   ki1126311-ZVITAMBO         (154.9-160.8]    2074    762    456    306
12 months   ki1126311-ZVITAMBO         >160.8           2074    919    608    311
12 months   ki1135781-COHORTS          <=149.6          5140   2112    908   1204
12 months   ki1135781-COHORTS          (149.6-154.9]    5140   1843   1087    756
12 months   ki1135781-COHORTS          (154.9-160.8]    5140    992    714    278
12 months   ki1135781-COHORTS          >160.8           5140    193    153     40
12 months   ki1148112-LCNI-5           <=149.6           401     44     14     30
12 months   ki1148112-LCNI-5           (149.6-154.9]     401    113     49     64
12 months   ki1148112-LCNI-5           (154.9-160.8]     401    145     85     60
12 months   ki1148112-LCNI-5           >160.8            401     99     60     39
18 months   ki0047075b-MAL-ED          <=149.6          1609    549    203    346
18 months   ki0047075b-MAL-ED          (149.6-154.9]    1609    459    216    243
18 months   ki0047075b-MAL-ED          (154.9-160.8]    1609    392    203    189
18 months   ki0047075b-MAL-ED          >160.8           1609    209    120     89
18 months   ki1000304b-SAS-FoodSuppl   <=149.6            93     45      1     44
18 months   ki1000304b-SAS-FoodSuppl   (149.6-154.9]      93     32      4     28
18 months   ki1000304b-SAS-FoodSuppl   (154.9-160.8]      93     15      5     10
18 months   ki1000304b-SAS-FoodSuppl   >160.8             93      1      0      1
18 months   ki1017093-NIH-Birth        <=149.6           497    252     57    195
18 months   ki1017093-NIH-Birth        (149.6-154.9]     497    152     62     90
18 months   ki1017093-NIH-Birth        (154.9-160.8]     497     81     45     36
18 months   ki1017093-NIH-Birth        >160.8            497     12     10      2
18 months   ki1017093b-PROVIDE         <=149.6           155     72     33     39
18 months   ki1017093b-PROVIDE         (149.6-154.9]     155     46     24     22
18 months   ki1017093b-PROVIDE         (154.9-160.8]     155     30     21      9
18 months   ki1017093b-PROVIDE         >160.8            155      7      7      0
18 months   ki1017093c-NIH-Crypto      <=149.6           715    327    150    177
18 months   ki1017093c-NIH-Crypto      (149.6-154.9]     715    252    149    103
18 months   ki1017093c-NIH-Crypto      (154.9-160.8]     715    121     85     36
18 months   ki1017093c-NIH-Crypto      >160.8            715     15     14      1
18 months   ki1066203-TanzaniaChild2   <=149.6           355     38      7     31
18 months   ki1066203-TanzaniaChild2   (149.6-154.9]     355     99     51     48
18 months   ki1066203-TanzaniaChild2   (154.9-160.8]     355    138     81     57
18 months   ki1066203-TanzaniaChild2   >160.8            355     80     64     16
18 months   ki1101329-Keneba           <=149.6          2044     36      6     30
18 months   ki1101329-Keneba           (149.6-154.9]    2044    315    111    204
18 months   ki1101329-Keneba           (154.9-160.8]    2044    774    347    427
18 months   ki1101329-Keneba           >160.8           2044    919    539    380
18 months   ki1112895-Guatemala BSC    <=149.6            44     26     10     16
18 months   ki1112895-Guatemala BSC    (149.6-154.9]      44     12      5      7
18 months   ki1112895-Guatemala BSC    (154.9-160.8]      44      4      3      1
18 months   ki1112895-Guatemala BSC    >160.8             44      2      2      0
18 months   ki1126311-ZVITAMBO         <=149.6          1514     57     17     40
18 months   ki1126311-ZVITAMBO         (149.6-154.9]    1514    242    121    121
18 months   ki1126311-ZVITAMBO         (154.9-160.8]    1514    557    268    289
18 months   ki1126311-ZVITAMBO         >160.8           1514    658    360    298
18 months   ki1135781-COHORTS          <=149.6          3063   1357    330   1027
18 months   ki1135781-COHORTS          (149.6-154.9]    3063   1108    446    662
18 months   ki1135781-COHORTS          (154.9-160.8]    3063    520    254    266
18 months   ki1135781-COHORTS          >160.8           3063     78     50     28
18 months   ki1148112-LCNI-5           <=149.6           326     36     10     26
18 months   ki1148112-LCNI-5           (149.6-154.9]     326     91     28     63
18 months   ki1148112-LCNI-5           (154.9-160.8]     326    110     59     51
18 months   ki1148112-LCNI-5           >160.8            326     89     44     45
24 months   ki0047075b-MAL-ED          <=149.6          1535    526    173    353
24 months   ki0047075b-MAL-ED          (149.6-154.9]    1535    436    187    249
24 months   ki0047075b-MAL-ED          (154.9-160.8]    1535    375    178    197
24 months   ki0047075b-MAL-ED          >160.8           1535    198     96    102
24 months   ki1000304b-SAS-FoodSuppl   <=149.6             9      5      0      5
24 months   ki1000304b-SAS-FoodSuppl   (149.6-154.9]       9      3      0      3
24 months   ki1000304b-SAS-FoodSuppl   (154.9-160.8]       9      1      1      0
24 months   ki1000304b-SAS-FoodSuppl   >160.8              9      0      0      0
24 months   ki1017093-NIH-Birth        <=149.6           470    243     29    214
24 months   ki1017093-NIH-Birth        (149.6-154.9]     470    144     47     97
24 months   ki1017093-NIH-Birth        (154.9-160.8]     470     73     32     41
24 months   ki1017093-NIH-Birth        >160.8            470     10      7      3
24 months   ki1017093b-PROVIDE         <=149.6           148     68     30     38
24 months   ki1017093b-PROVIDE         (149.6-154.9]     148     45     23     22
24 months   ki1017093b-PROVIDE         (154.9-160.8]     148     28     16     12
24 months   ki1017093b-PROVIDE         >160.8            148      7      7      0
24 months   ki1017093c-NIH-Crypto      <=149.6           634    289    115    174
24 months   ki1017093c-NIH-Crypto      (149.6-154.9]     634    223    115    108
24 months   ki1017093c-NIH-Crypto      (154.9-160.8]     634    109     75     34
24 months   ki1017093c-NIH-Crypto      >160.8            634     13     11      2
24 months   ki1066203-TanzaniaChild2   <=149.6           249     29      6     23
24 months   ki1066203-TanzaniaChild2   (149.6-154.9]     249     71     31     40
24 months   ki1066203-TanzaniaChild2   (154.9-160.8]     249     94     51     43
24 months   ki1066203-TanzaniaChild2   >160.8            249     55     42     13
24 months   ki1101329-Keneba           <=149.6          1996     39      3     36
24 months   ki1101329-Keneba           (149.6-154.9]    1996    304     95    209
24 months   ki1101329-Keneba           (154.9-160.8]    1996    775    279    496
24 months   ki1101329-Keneba           >160.8           1996    878    462    416
24 months   ki1112895-Guatemala BSC    <=149.6             0      0      0      0
24 months   ki1112895-Guatemala BSC    (149.6-154.9]       0      0      0      0
24 months   ki1112895-Guatemala BSC    (154.9-160.8]       0      0      0      0
24 months   ki1112895-Guatemala BSC    >160.8              0      0      0      0
24 months   ki1126311-ZVITAMBO         <=149.6           380     16      2     14
24 months   ki1126311-ZVITAMBO         (149.6-154.9]     380     67     11     56
24 months   ki1126311-ZVITAMBO         (154.9-160.8]     380    139     30    109
24 months   ki1126311-ZVITAMBO         >160.8            380    158     54    104
24 months   ki1135781-COHORTS          <=149.6          3009   1332    183   1149
24 months   ki1135781-COHORTS          (149.6-154.9]    3009   1087    267    820
24 months   ki1135781-COHORTS          (154.9-160.8]    3009    515    189    326
24 months   ki1135781-COHORTS          >160.8           3009     75     40     35
24 months   ki1148112-LCNI-5           <=149.6           353     39      5     34
24 months   ki1148112-LCNI-5           (149.6-154.9]     353    103     23     80
24 months   ki1148112-LCNI-5           (154.9-160.8]     353    121     51     70
24 months   ki1148112-LCNI-5           >160.8            353     90     43     47

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          <=149.6              NA                0.3272120   0.2896273   0.3647967
3 months    ki0047075b-MAL-ED          (149.6-154.9]        NA                0.2435644   0.2061173   0.2810114
3 months    ki0047075b-MAL-ED          (154.9-160.8]        NA                0.2442922   0.2040423   0.2845422
3 months    ki0047075b-MAL-ED          >160.8               NA                0.1565217   0.1095506   0.2034929
3 months    ki1066203-TanzaniaChild2   <=149.6              NA                0.1666667   0.0671835   0.2661498
3 months    ki1066203-TanzaniaChild2   (149.6-154.9]        NA                0.1257862   0.0741993   0.1773731
3 months    ki1066203-TanzaniaChild2   (154.9-160.8]        NA                0.0979592   0.0607058   0.1352125
3 months    ki1066203-TanzaniaChild2   >160.8               NA                0.0434783   0.0094252   0.0775314
3 months    ki1101329-Keneba           <=149.6              NA                0.4571429   0.2920652   0.6222205
3 months    ki1101329-Keneba           (149.6-154.9]        NA                0.3201320   0.2675897   0.3726743
3 months    ki1101329-Keneba           (154.9-160.8]        NA                0.2559301   0.2257024   0.2861578
3 months    ki1101329-Keneba           >160.8               NA                0.1956522   0.1700118   0.2212925
3 months    ki1126311-ZVITAMBO         <=149.6              NA                0.3294118   0.2294750   0.4293486
3 months    ki1126311-ZVITAMBO         (149.6-154.9]        NA                0.2791878   0.2348832   0.3234924
3 months    ki1126311-ZVITAMBO         (154.9-160.8]        NA                0.2477273   0.2191993   0.2762552
3 months    ki1126311-ZVITAMBO         >160.8               NA                0.1834264   0.1602758   0.2065771
3 months    ki1135781-COHORTS          <=149.6              NA                0.2309427   0.2133984   0.2484870
3 months    ki1135781-COHORTS          (149.6-154.9]        NA                0.1398673   0.1245066   0.1552280
3 months    ki1135781-COHORTS          (154.9-160.8]        NA                0.0968360   0.0788867   0.1147854
3 months    ki1135781-COHORTS          >160.8               NA                0.0717703   0.0367746   0.1067661
6 months    ki0047075b-MAL-ED          <=149.6              NA                0.4125637   0.3727950   0.4523324
6 months    ki0047075b-MAL-ED          (149.6-154.9]        NA                0.3062880   0.2655871   0.3469890
6 months    ki0047075b-MAL-ED          (154.9-160.8]        NA                0.3091335   0.2652876   0.3529794
6 months    ki0047075b-MAL-ED          >160.8               NA                0.2280702   0.1735912   0.2825491
6 months    ki1066203-TanzaniaChild2   <=149.6              NA                0.3400000   0.2085782   0.4714218
6 months    ki1066203-TanzaniaChild2   (149.6-154.9]        NA                0.2483221   0.1788882   0.3177561
6 months    ki1066203-TanzaniaChild2   (154.9-160.8]        NA                0.1955556   0.1436836   0.2474276
6 months    ki1066203-TanzaniaChild2   >160.8               NA                0.0775194   0.0313313   0.1237075
6 months    ki1101329-Keneba           <=149.6              NA                0.5882353   0.4227661   0.7537045
6 months    ki1101329-Keneba           (149.6-154.9]        NA                0.4395973   0.3832302   0.4959645
6 months    ki1101329-Keneba           (154.9-160.8]        NA                0.3492268   0.3156767   0.3827769
6 months    ki1101329-Keneba           >160.8               NA                0.2550336   0.2264540   0.2836131
6 months    ki1126311-ZVITAMBO         <=149.6              NA                0.4776119   0.3579767   0.5972472
6 months    ki1126311-ZVITAMBO         (149.6-154.9]        NA                0.3471338   0.2944644   0.3998031
6 months    ki1126311-ZVITAMBO         (154.9-160.8]        NA                0.3270073   0.2918674   0.3621472
6 months    ki1126311-ZVITAMBO         >160.8               NA                0.2547847   0.2252395   0.2843299
6 months    ki1148112-LCNI-5           <=149.6              NA                0.5000000   0.2160340   0.7839660
6 months    ki1148112-LCNI-5           (149.6-154.9]        NA                0.5555556   0.4098241   0.7012870
6 months    ki1148112-LCNI-5           (154.9-160.8]        NA                0.2500000   0.1215715   0.3784285
6 months    ki1148112-LCNI-5           >160.8               NA                0.3125000   0.1512969   0.4737031
12 months   ki0047075b-MAL-ED          <=149.6              NA                0.5035088   0.4624507   0.5445669
12 months   ki0047075b-MAL-ED          (149.6-154.9]        NA                0.4150943   0.3708626   0.4593261
12 months   ki0047075b-MAL-ED          (154.9-160.8]        NA                0.3975904   0.3504908   0.4446899
12 months   ki0047075b-MAL-ED          >160.8               NA                0.3348416   0.2726025   0.3970807
12 months   ki1066203-TanzaniaChild2   <=149.6              NA                0.5400000   0.4017132   0.6782868
12 months   ki1066203-TanzaniaChild2   (149.6-154.9]        NA                0.3920000   0.3063298   0.4776702
12 months   ki1066203-TanzaniaChild2   (154.9-160.8]        NA                0.3137255   0.2499875   0.3774635
12 months   ki1066203-TanzaniaChild2   >160.8               NA                0.1592920   0.0917506   0.2268335
12 months   ki1101329-Keneba           <=149.6              NA                0.6666667   0.5126407   0.8206927
12 months   ki1101329-Keneba           (149.6-154.9]        NA                0.5500000   0.4954790   0.6045210
12 months   ki1101329-Keneba           (154.9-160.8]        NA                0.4544320   0.4199419   0.4889220
12 months   ki1101329-Keneba           >160.8               NA                0.3312102   0.3011479   0.3612725
12 months   ki1126311-ZVITAMBO         <=149.6              NA                0.5342466   0.4197901   0.6487030
12 months   ki1126311-ZVITAMBO         (149.6-154.9]        NA                0.4500000   0.3954788   0.5045212
12 months   ki1126311-ZVITAMBO         (154.9-160.8]        NA                0.4015748   0.3667600   0.4363896
12 months   ki1126311-ZVITAMBO         >160.8               NA                0.3384113   0.3078120   0.3690106
12 months   ki1135781-COHORTS          <=149.6              NA                0.5700758   0.5489601   0.5911915
12 months   ki1135781-COHORTS          (149.6-154.9]        NA                0.4102008   0.3877424   0.4326591
12 months   ki1135781-COHORTS          (154.9-160.8]        NA                0.2802419   0.2522911   0.3081927
12 months   ki1135781-COHORTS          >160.8               NA                0.2072539   0.1500626   0.2644452
12 months   ki1148112-LCNI-5           <=149.6              NA                0.6818182   0.5440224   0.8196140
12 months   ki1148112-LCNI-5           (149.6-154.9]        NA                0.5663717   0.4748844   0.6578589
12 months   ki1148112-LCNI-5           (154.9-160.8]        NA                0.4137931   0.3335286   0.4940576
12 months   ki1148112-LCNI-5           >160.8               NA                0.3939394   0.2975686   0.4903102
18 months   ki0047075b-MAL-ED          <=149.6              NA                0.6302368   0.5898434   0.6706302
18 months   ki0047075b-MAL-ED          (149.6-154.9]        NA                0.5294118   0.4837351   0.5750884
18 months   ki0047075b-MAL-ED          (154.9-160.8]        NA                0.4821429   0.4326625   0.5316232
18 months   ki0047075b-MAL-ED          >160.8               NA                0.4258373   0.3587795   0.4928951
18 months   ki1066203-TanzaniaChild2   <=149.6              NA                0.8157895   0.6923611   0.9392179
18 months   ki1066203-TanzaniaChild2   (149.6-154.9]        NA                0.4848485   0.3862629   0.5834341
18 months   ki1066203-TanzaniaChild2   (154.9-160.8]        NA                0.4130435   0.3307772   0.4953098
18 months   ki1066203-TanzaniaChild2   >160.8               NA                0.2000000   0.1122240   0.2877760
18 months   ki1101329-Keneba           <=149.6              NA                0.8333333   0.7115643   0.9551024
18 months   ki1101329-Keneba           (149.6-154.9]        NA                0.6476190   0.5948517   0.7003864
18 months   ki1101329-Keneba           (154.9-160.8]        NA                0.5516796   0.5166349   0.5867242
18 months   ki1101329-Keneba           >160.8               NA                0.4134929   0.3816460   0.4453398
18 months   ki1126311-ZVITAMBO         <=149.6              NA                0.7017544   0.5829497   0.8205591
18 months   ki1126311-ZVITAMBO         (149.6-154.9]        NA                0.5000000   0.4369836   0.5630164
18 months   ki1126311-ZVITAMBO         (154.9-160.8]        NA                0.5188510   0.4773436   0.5603583
18 months   ki1126311-ZVITAMBO         >160.8               NA                0.4528875   0.4148413   0.4909338
18 months   ki1135781-COHORTS          <=149.6              NA                0.7568165   0.7339873   0.7796457
18 months   ki1135781-COHORTS          (149.6-154.9]        NA                0.5974729   0.5685924   0.6263535
18 months   ki1135781-COHORTS          (154.9-160.8]        NA                0.5115385   0.4685678   0.5545091
18 months   ki1135781-COHORTS          >160.8               NA                0.3589744   0.2525010   0.4654478
18 months   ki1148112-LCNI-5           <=149.6              NA                0.7222222   0.5756849   0.8687595
18 months   ki1148112-LCNI-5           (149.6-154.9]        NA                0.6923077   0.5973342   0.7872812
18 months   ki1148112-LCNI-5           (154.9-160.8]        NA                0.4636364   0.3703029   0.5569698
18 months   ki1148112-LCNI-5           >160.8               NA                0.5056180   0.4015870   0.6096490
24 months   ki0047075b-MAL-ED          <=149.6              NA                0.6711027   0.6309401   0.7112652
24 months   ki0047075b-MAL-ED          (149.6-154.9]        NA                0.5711009   0.5246301   0.6175717
24 months   ki0047075b-MAL-ED          (154.9-160.8]        NA                0.5253333   0.4747758   0.5758909
24 months   ki0047075b-MAL-ED          >160.8               NA                0.5151515   0.4455165   0.5847865
24 months   ki1066203-TanzaniaChild2   <=149.6              NA                0.7931034   0.6453749   0.9408320
24 months   ki1066203-TanzaniaChild2   (149.6-154.9]        NA                0.5633803   0.4477836   0.6789769
24 months   ki1066203-TanzaniaChild2   (154.9-160.8]        NA                0.4574468   0.3565333   0.5583604
24 months   ki1066203-TanzaniaChild2   >160.8               NA                0.2363636   0.1238580   0.3488693
24 months   ki1135781-COHORTS          <=149.6              NA                0.8626126   0.8441221   0.8811031
24 months   ki1135781-COHORTS          (149.6-154.9]        NA                0.7543698   0.7287758   0.7799638
24 months   ki1135781-COHORTS          (154.9-160.8]        NA                0.6330097   0.5913756   0.6746438
24 months   ki1135781-COHORTS          >160.8               NA                0.4666667   0.3537411   0.5795923
24 months   ki1148112-LCNI-5           <=149.6              NA                0.8717949   0.7667217   0.9768680
24 months   ki1148112-LCNI-5           (149.6-154.9]        NA                0.7766990   0.6961580   0.8572401
24 months   ki1148112-LCNI-5           (154.9-160.8]        NA                0.5785124   0.4904034   0.6666214
24 months   ki1148112-LCNI-5           >160.8               NA                0.5222222   0.4188786   0.6255658


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.2607223   0.2581484   0.2632963
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0989933   0.0960735   0.1019131
3 months    ki1101329-Keneba           NA                   NA                0.2418650   0.2396115   0.2441184
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2272914   0.2256048   0.2289780
3 months    ki1135781-COHORTS          NA                   NA                0.1661754   0.1646633   0.1676875
6 months    ki0047075b-MAL-ED          NA                   NA                0.3327576   0.3298071   0.3357082
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1952984   0.1888979   0.2016989
6 months    ki1101329-Keneba           NA                   NA                0.3246753   0.3214126   0.3279380
6 months    ki1126311-ZVITAMBO         NA                   NA                0.3038906   0.3015879   0.3061934
6 months    ki1148112-LCNI-5           NA                   NA                0.3909774   0.3679040   0.4140509
12 months   ki0047075b-MAL-ED          NA                   NA                0.4301842   0.4274218   0.4329465
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3211382   0.3113753   0.3309011
12 months   ki1101329-Keneba           NA                   NA                0.4173416   0.4136104   0.4210728
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3857281   0.3835765   0.3878796
12 months   ki1135781-COHORTS          NA                   NA                0.4431907   0.4399303   0.4464510
12 months   ki1148112-LCNI-5           NA                   NA                0.4812968   0.4715052   0.4910884
18 months   ki0047075b-MAL-ED          NA                   NA                0.5388440   0.5352798   0.5424082
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4281690   0.4104906   0.4458474
18 months   ki1101329-Keneba           NA                   NA                0.5092955   0.5050458   0.5135452
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4940555   0.4914899   0.4966211
18 months   ki1135781-COHORTS          NA                   NA                0.6474045   0.6436131   0.6511959
18 months   ki1148112-LCNI-5           NA                   NA                0.5674847   0.5557363   0.5792330
24 months   ki0047075b-MAL-ED          NA                   NA                0.5869707   0.5837701   0.5901712
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4779116   0.4575755   0.4982478
24 months   ki1135781-COHORTS          NA                   NA                0.7743436   0.7708841   0.7778031
24 months   ki1148112-LCNI-5           NA                   NA                0.6543909   0.6411711   0.6676108


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          (149.6-154.9]        <=149.6           0.7443625   0.6143795   0.9018457
3 months    ki0047075b-MAL-ED          (154.9-160.8]        <=149.6           0.7465870   0.6107356   0.9126571
3 months    ki0047075b-MAL-ED          >160.8               <=149.6           0.4783496   0.3468932   0.6596218
3 months    ki1066203-TanzaniaChild2   (149.6-154.9]        <=149.6           0.7547170   0.3658160   1.5570606
3 months    ki1066203-TanzaniaChild2   (154.9-160.8]        <=149.6           0.5877551   0.2896168   1.1928039
3 months    ki1066203-TanzaniaChild2   >160.8               <=149.6           0.2608696   0.0974437   0.6983820
3 months    ki1101329-Keneba           (149.6-154.9]        <=149.6           0.7002888   0.4709898   1.0412207
3 months    ki1101329-Keneba           (154.9-160.8]        <=149.6           0.5598471   0.3828838   0.8186001
3 months    ki1101329-Keneba           >160.8               <=149.6           0.4279891   0.2914725   0.6284459
3 months    ki1126311-ZVITAMBO         (149.6-154.9]        <=149.6           0.8475344   0.6018177   1.1935752
3 months    ki1126311-ZVITAMBO         (154.9-160.8]        <=149.6           0.7520292   0.5436331   1.0403119
3 months    ki1126311-ZVITAMBO         >160.8               <=149.6           0.5568303   0.4008850   0.7734387
3 months    ki1135781-COHORTS          (149.6-154.9]        <=149.6           0.6056362   0.5299282   0.6921603
3 months    ki1135781-COHORTS          (154.9-160.8]        <=149.6           0.4193077   0.3431897   0.5123082
3 months    ki1135781-COHORTS          >160.8               <=149.6           0.3107712   0.1897234   0.5090501
6 months    ki0047075b-MAL-ED          (149.6-154.9]        <=149.6           0.7424019   0.6300038   0.8748527
6 months    ki0047075b-MAL-ED          (154.9-160.8]        <=149.6           0.7492989   0.6312156   0.8894723
6 months    ki0047075b-MAL-ED          >160.8               <=149.6           0.5528121   0.4272770   0.7152297
6 months    ki1066203-TanzaniaChild2   (149.6-154.9]        <=149.6           0.7303593   0.4532620   1.1768572
6 months    ki1066203-TanzaniaChild2   (154.9-160.8]        <=149.6           0.5751634   0.3599117   0.9191502
6 months    ki1066203-TanzaniaChild2   >160.8               <=149.6           0.2279982   0.1120689   0.4638502
6 months    ki1101329-Keneba           (149.6-154.9]        <=149.6           0.7473154   0.5485857   1.0180366
6 months    ki1101329-Keneba           (154.9-160.8]        <=149.6           0.5936856   0.4410241   0.7991912
6 months    ki1101329-Keneba           >160.8               <=149.6           0.4335570   0.3202897   0.5868802
6 months    ki1126311-ZVITAMBO         (149.6-154.9]        <=149.6           0.7268113   0.5422958   0.9741081
6 months    ki1126311-ZVITAMBO         (154.9-160.8]        <=149.6           0.6846715   0.5213261   0.8991975
6 months    ki1126311-ZVITAMBO         >160.8               <=149.6           0.5334554   0.4047823   0.7030315
6 months    ki1148112-LCNI-5           (149.6-154.9]        <=149.6           1.1111111   0.5943871   2.0770437
6 months    ki1148112-LCNI-5           (154.9-160.8]        <=149.6           0.5000000   0.2324811   1.0753564
6 months    ki1148112-LCNI-5           >160.8               <=149.6           0.6250000   0.2901848   1.3461252
12 months   ki0047075b-MAL-ED          (149.6-154.9]        <=149.6           0.8244034   0.7208857   0.9427860
12 months   ki0047075b-MAL-ED          (154.9-160.8]        <=149.6           0.7896394   0.6838655   0.9117734
12 months   ki0047075b-MAL-ED          >160.8               <=149.6           0.6650165   0.5428513   0.8146741
12 months   ki1066203-TanzaniaChild2   (149.6-154.9]        <=149.6           0.7259259   0.5184189   1.0164916
12 months   ki1066203-TanzaniaChild2   (154.9-160.8]        <=149.6           0.5809731   0.4189768   0.8056049
12 months   ki1066203-TanzaniaChild2   >160.8               <=149.6           0.2949853   0.1797527   0.4840889
12 months   ki1101329-Keneba           (149.6-154.9]        <=149.6           0.8250000   0.6416071   1.0608128
12 months   ki1101329-Keneba           (154.9-160.8]        <=149.6           0.6816479   0.5344977   0.8693095
12 months   ki1101329-Keneba           >160.8               <=149.6           0.4968153   0.3876062   0.6367943
12 months   ki1126311-ZVITAMBO         (149.6-154.9]        <=149.6           0.8423077   0.6585366   1.0773619
12 months   ki1126311-ZVITAMBO         (154.9-160.8]        <=149.6           0.7516657   0.5965577   0.9471025
12 months   ki1126311-ZVITAMBO         >160.8               <=149.6           0.6334366   0.5020106   0.7992697
12 months   ki1135781-COHORTS          (149.6-154.9]        <=149.6           0.7195548   0.6735286   0.7687262
12 months   ki1135781-COHORTS          (154.9-160.8]        <=149.6           0.4915872   0.4419715   0.5467727
12 months   ki1135781-COHORTS          >160.8               <=149.6           0.3635550   0.2752026   0.4802724
12 months   ki1148112-LCNI-5           (149.6-154.9]        <=149.6           0.8306785   0.6413148   1.0759563
12 months   ki1148112-LCNI-5           (154.9-160.8]        <=149.6           0.6068966   0.4586253   0.8031032
12 months   ki1148112-LCNI-5           >160.8               <=149.6           0.5777778   0.4206799   0.7935420
18 months   ki0047075b-MAL-ED          (149.6-154.9]        <=149.6           0.8400204   0.7544184   0.9353355
18 months   ki0047075b-MAL-ED          (154.9-160.8]        <=149.6           0.7650186   0.6778354   0.8634152
18 months   ki0047075b-MAL-ED          >160.8               <=149.6           0.6756783   0.5700367   0.8008978
18 months   ki1066203-TanzaniaChild2   (149.6-154.9]        <=149.6           0.5943304   0.4612719   0.7657709
18 months   ki1066203-TanzaniaChild2   (154.9-160.8]        <=149.6           0.5063114   0.3942679   0.6501954
18 months   ki1066203-TanzaniaChild2   >160.8               <=149.6           0.2451613   0.1541134   0.3899988
18 months   ki1101329-Keneba           (149.6-154.9]        <=149.6           0.7771429   0.6574179   0.9186713
18 months   ki1101329-Keneba           (154.9-160.8]        <=149.6           0.6620155   0.5645086   0.7763647
18 months   ki1101329-Keneba           >160.8               <=149.6           0.4961915   0.4206427   0.5853092
18 months   ki1126311-ZVITAMBO         (149.6-154.9]        <=149.6           0.7125000   0.5769303   0.8799265
18 months   ki1126311-ZVITAMBO         (154.9-160.8]        <=149.6           0.7393627   0.6131087   0.8916153
18 months   ki1126311-ZVITAMBO         >160.8               <=149.6           0.6453647   0.5342274   0.7796224
18 months   ki1135781-COHORTS          (149.6-154.9]        <=149.6           0.7894555   0.7457315   0.8357430
18 months   ki1135781-COHORTS          (154.9-160.8]        <=149.6           0.6759082   0.6181942   0.7390102
18 months   ki1135781-COHORTS          >160.8               <=149.6           0.4743215   0.3520422   0.6390737
18 months   ki1148112-LCNI-5           (149.6-154.9]        <=149.6           0.9585799   0.7503431   1.2246069
18 months   ki1148112-LCNI-5           (154.9-160.8]        <=149.6           0.6419580   0.4823666   0.8543504
18 months   ki1148112-LCNI-5           >160.8               <=149.6           0.7000864   0.5243917   0.9346467
24 months   ki0047075b-MAL-ED          (149.6-154.9]        <=149.6           0.8509889   0.7692306   0.9414369
24 months   ki0047075b-MAL-ED          (154.9-160.8]        <=149.6           0.7827913   0.6989207   0.8767264
24 months   ki0047075b-MAL-ED          >160.8               <=149.6           0.7676195   0.6621321   0.8899127
24 months   ki1066203-TanzaniaChild2   (149.6-154.9]        <=149.6           0.7103491   0.5384185   0.9371814
24 months   ki1066203-TanzaniaChild2   (154.9-160.8]        <=149.6           0.5767808   0.4321360   0.7698411
24 months   ki1066203-TanzaniaChild2   >160.8               <=149.6           0.2980237   0.1787592   0.4968590
24 months   ki1135781-COHORTS          (149.6-154.9]        <=149.6           0.8745175   0.8401164   0.9103273
24 months   ki1135781-COHORTS          (154.9-160.8]        <=149.6           0.7338285   0.6847808   0.7863892
24 months   ki1135781-COHORTS          >160.8               <=149.6           0.5409922   0.4243140   0.6897545
24 months   ki1148112-LCNI-5           (149.6-154.9]        <=149.6           0.8909195   0.7599552   1.0444530
24 months   ki1148112-LCNI-5           (154.9-160.8]        <=149.6           0.6635877   0.5464477   0.8058387
24 months   ki1148112-LCNI-5           >160.8               <=149.6           0.5990196   0.4751301   0.7552131


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          <=149.6              NA                -0.0664897   -0.1041624   -0.0288169
3 months    ki1066203-TanzaniaChild2   <=149.6              NA                -0.0676734   -0.1671994    0.0318526
3 months    ki1101329-Keneba           <=149.6              NA                -0.2152779   -0.3803709   -0.0501848
3 months    ki1126311-ZVITAMBO         <=149.6              NA                -0.1021204   -0.2020714   -0.0021693
3 months    ki1135781-COHORTS          <=149.6              NA                -0.0647673   -0.0823767   -0.0471580
6 months    ki0047075b-MAL-ED          <=149.6              NA                -0.0798060   -0.1196840   -0.0399280
6 months    ki1066203-TanzaniaChild2   <=149.6              NA                -0.1447016   -0.2762792   -0.0131240
6 months    ki1101329-Keneba           <=149.6              NA                -0.2635600   -0.4290614   -0.0980586
6 months    ki1126311-ZVITAMBO         <=149.6              NA                -0.1737213   -0.2933787   -0.0540639
6 months    ki1148112-LCNI-5           <=149.6              NA                -0.1090226   -0.3939244    0.1758793
12 months   ki0047075b-MAL-ED          <=149.6              NA                -0.0733246   -0.1144755   -0.0321736
12 months   ki1066203-TanzaniaChild2   <=149.6              NA                -0.2188618   -0.3574928   -0.0802308
12 months   ki1101329-Keneba           <=149.6              NA                -0.2493251   -0.4033963   -0.0952539
12 months   ki1126311-ZVITAMBO         <=149.6              NA                -0.1485185   -0.2629952   -0.0340418
12 months   ki1135781-COHORTS          <=149.6              NA                -0.1268851   -0.1482510   -0.1055192
12 months   ki1148112-LCNI-5           <=149.6              NA                -0.2005214   -0.3386647   -0.0623782
18 months   ki0047075b-MAL-ED          <=149.6              NA                -0.0913928   -0.1319432   -0.0508424
18 months   ki1066203-TanzaniaChild2   <=149.6              NA                -0.3876205   -0.5123085   -0.2629325
18 months   ki1101329-Keneba           <=149.6              NA                -0.3240378   -0.4458810   -0.2021947
18 months   ki1126311-ZVITAMBO         <=149.6              NA                -0.2076989   -0.3265313   -0.0888665
18 months   ki1135781-COHORTS          <=149.6              NA                -0.1094120   -0.1325539   -0.0862701
18 months   ki1148112-LCNI-5           <=149.6              NA                -0.1547376   -0.3017450   -0.0077301
24 months   ki0047075b-MAL-ED          <=149.6              NA                -0.0841320   -0.1244219   -0.0438421
24 months   ki1066203-TanzaniaChild2   <=149.6              NA                -0.3151918   -0.4643135   -0.1660701
24 months   ki1135781-COHORTS          <=149.6              NA                -0.0882690   -0.1070804   -0.0694576
24 months   ki1148112-LCNI-5           <=149.6              NA                -0.2174039   -0.3233054   -0.1115024


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          <=149.6              NA                -0.2550210   -0.4083787   -0.1183623
3 months    ki1066203-TanzaniaChild2   <=149.6              NA                -0.6836158   -2.0604778    0.0738171
3 months    ki1101329-Keneba           <=149.6              NA                -0.8900746   -1.7124271   -0.3170426
3 months    ki1126311-ZVITAMBO         <=149.6              NA                -0.4492926   -0.9631413   -0.0699429
3 months    ki1135781-COHORTS          <=149.6              NA                -0.3897528   -0.5002582   -0.2873870
6 months    ki0047075b-MAL-ED          <=149.6              NA                -0.2398323   -0.3658504   -0.1254412
6 months    ki1066203-TanzaniaChild2   <=149.6              NA                -0.7409259   -1.5659757   -0.1811581
6 months    ki1101329-Keneba           <=149.6              NA                -0.8117647   -1.4007435   -0.3672812
6 months    ki1126311-ZVITAMBO         <=149.6              NA                -0.5716573   -1.0192608   -0.2232727
6 months    ki1148112-LCNI-5           <=149.6              NA                -0.2788462   -1.2635811    0.2774955
12 months   ki0047075b-MAL-ED          <=149.6              NA                -0.1704493   -0.2702123   -0.0785216
12 months   ki1066203-TanzaniaChild2   <=149.6              NA                -0.6815190   -1.1762046   -0.2992832
12 months   ki1101329-Keneba           <=149.6              NA                -0.5974125   -1.0129414   -0.2676606
12 months   ki1126311-ZVITAMBO         <=149.6              NA                -0.3850342   -0.7160694   -0.1178568
12 months   ki1135781-COHORTS          <=149.6              NA                -0.2862991   -0.3358033   -0.2386295
12 months   ki1148112-LCNI-5           <=149.6              NA                -0.4166274   -0.7356827   -0.1562212
18 months   ki0047075b-MAL-ED          <=149.6              NA                -0.1696090   -0.2474511   -0.0966243
18 months   ki1066203-TanzaniaChild2   <=149.6              NA                -0.9052978   -1.2288151   -0.6287397
18 months   ki1101329-Keneba           <=149.6              NA                -0.6362472   -0.8941425   -0.4134654
18 months   ki1126311-ZVITAMBO         <=149.6              NA                -0.4203959   -0.6825525   -0.1990856
18 months   ki1135781-COHORTS          <=149.6              NA                -0.1690010   -0.2054797   -0.1336262
18 months   ki1148112-LCNI-5           <=149.6              NA                -0.2726727   -0.5606000   -0.0378673
24 months   ki0047075b-MAL-ED          <=149.6              NA                -0.1433325   -0.2141458   -0.0766493
24 months   ki1066203-TanzaniaChild2   <=149.6              NA                -0.6595190   -1.0089112   -0.3708934
24 months   ki1135781-COHORTS          <=149.6              NA                -0.1139920   -0.1386531   -0.0898650
24 months   ki1148112-LCNI-5           <=149.6              NA                -0.3322233   -0.5053954   -0.1789720


