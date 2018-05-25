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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1148112-LCNI-5

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/c819dd9e-7d5e-4dd0-a4cf-a27f5f2c9c56/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c819dd9e-7d5e-4dd0-a4cf-a27f5f2c9c56/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/c819dd9e-7d5e-4dd0-a4cf-a27f5f2c9c56/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c819dd9e-7d5e-4dd0-a4cf-a27f5f2c9c56/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          Q1     762    225    217      8
Birth       ki0047075b-MAL-ED          Q2     762    226    216     10
Birth       ki0047075b-MAL-ED          Q3     762    229    226      3
Birth       ki0047075b-MAL-ED          Q4     762     82     78      4
Birth       ki1000304b-SAS-FoodSuppl   Q1       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q2       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q3       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q4       0      0      0      0
Birth       ki1017093b-PROVIDE         Q1       0      0      0      0
Birth       ki1017093b-PROVIDE         Q2       0      0      0      0
Birth       ki1017093b-PROVIDE         Q3       0      0      0      0
Birth       ki1017093b-PROVIDE         Q4       0      0      0      0
Birth       ki1017093c-NIH-Crypto      Q1      27      7      7      0
Birth       ki1017093c-NIH-Crypto      Q2      27      9      9      0
Birth       ki1017093c-NIH-Crypto      Q3      27      8      7      1
Birth       ki1017093c-NIH-Crypto      Q4      27      3      3      0
Birth       ki1066203-TanzaniaChild2   Q1       0      0      0      0
Birth       ki1066203-TanzaniaChild2   Q2       0      0      0      0
Birth       ki1066203-TanzaniaChild2   Q3       0      0      0      0
Birth       ki1066203-TanzaniaChild2   Q4       0      0      0      0
Birth       ki1113344-GMS-Nepal        Q1       0      0      0      0
Birth       ki1113344-GMS-Nepal        Q2       0      0      0      0
Birth       ki1113344-GMS-Nepal        Q3       0      0      0      0
Birth       ki1113344-GMS-Nepal        Q4       0      0      0      0
Birth       ki1126311-ZVITAMBO         Q1    3373     15     13      2
Birth       ki1126311-ZVITAMBO         Q2    3373     23     23      0
Birth       ki1126311-ZVITAMBO         Q3    3373    441    421     20
Birth       ki1126311-ZVITAMBO         Q4    3373   2894   2807     87
Birth       ki1135781-COHORTS          Q1    4608   1546   1518     28
Birth       ki1135781-COHORTS          Q2    4608   1128   1104     24
Birth       ki1135781-COHORTS          Q3    4608   1318   1298     20
Birth       ki1135781-COHORTS          Q4    4608    616    613      3
Birth       ki1148112-LCNI-5           Q1       0      0      0      0
Birth       ki1148112-LCNI-5           Q2       0      0      0      0
Birth       ki1148112-LCNI-5           Q3       0      0      0      0
Birth       ki1148112-LCNI-5           Q4       0      0      0      0
3 months    ki0047075b-MAL-ED          Q1     918    272    261     11
3 months    ki0047075b-MAL-ED          Q2     918    304    292     12
3 months    ki0047075b-MAL-ED          Q3     918    248    241      7
3 months    ki0047075b-MAL-ED          Q4     918     94     90      4
3 months    ki1000304b-SAS-FoodSuppl   Q1      97     35     29      6
3 months    ki1000304b-SAS-FoodSuppl   Q2      97     16     13      3
3 months    ki1000304b-SAS-FoodSuppl   Q3      97     25     22      3
3 months    ki1000304b-SAS-FoodSuppl   Q4      97     21     20      1
3 months    ki1017093b-PROVIDE         Q1     168     77     74      3
3 months    ki1017093b-PROVIDE         Q2     168     47     47      0
3 months    ki1017093b-PROVIDE         Q3     168     34     33      1
3 months    ki1017093b-PROVIDE         Q4     168     10      9      1
3 months    ki1017093c-NIH-Crypto      Q1     728    188    176     12
3 months    ki1017093c-NIH-Crypto      Q2     728    204    195      9
3 months    ki1017093c-NIH-Crypto      Q3     728    222    212     10
3 months    ki1017093c-NIH-Crypto      Q4     728    114    112      2
3 months    ki1066203-TanzaniaChild2   Q1     573    327    323      4
3 months    ki1066203-TanzaniaChild2   Q2     573    172    167      5
3 months    ki1066203-TanzaniaChild2   Q3     573     13     13      0
3 months    ki1066203-TanzaniaChild2   Q4     573     61     60      1
3 months    ki1113344-GMS-Nepal        Q1     570    248    234     14
3 months    ki1113344-GMS-Nepal        Q2     570     90     87      3
3 months    ki1113344-GMS-Nepal        Q3     570     94     93      1
3 months    ki1113344-GMS-Nepal        Q4     570    138    134      4
3 months    ki1126311-ZVITAMBO         Q1    2210     11      9      2
3 months    ki1126311-ZVITAMBO         Q2    2210     16     16      0
3 months    ki1126311-ZVITAMBO         Q3    2210    286    269     17
3 months    ki1126311-ZVITAMBO         Q4    2210   1897   1805     92
3 months    ki1135781-COHORTS          Q1    4556   1562   1483     79
3 months    ki1135781-COHORTS          Q2    4556   1125   1091     34
3 months    ki1135781-COHORTS          Q3    4556   1281   1258     23
3 months    ki1135781-COHORTS          Q4    4556    588    578     10
3 months    ki1148112-LCNI-5           Q1       0      0      0      0
3 months    ki1148112-LCNI-5           Q2       0      0      0      0
3 months    ki1148112-LCNI-5           Q3       0      0      0      0
3 months    ki1148112-LCNI-5           Q4       0      0      0      0
6 months    ki0047075b-MAL-ED          Q1     882    261    251     10
6 months    ki0047075b-MAL-ED          Q2     882    294    280     14
6 months    ki0047075b-MAL-ED          Q3     882    234    231      3
6 months    ki0047075b-MAL-ED          Q4     882     93     91      2
6 months    ki1000304b-SAS-FoodSuppl   Q1      96     33     29      4
6 months    ki1000304b-SAS-FoodSuppl   Q2      96     15     10      5
6 months    ki1000304b-SAS-FoodSuppl   Q3      96     27     23      4
6 months    ki1000304b-SAS-FoodSuppl   Q4      96     21     19      2
6 months    ki1017093b-PROVIDE         Q1     153     70     65      5
6 months    ki1017093b-PROVIDE         Q2     153     44     44      0
6 months    ki1017093b-PROVIDE         Q3     153     29     28      1
6 months    ki1017093b-PROVIDE         Q4     153     10     10      0
6 months    ki1017093c-NIH-Crypto      Q1     715    181    174      7
6 months    ki1017093c-NIH-Crypto      Q2     715    201    198      3
6 months    ki1017093c-NIH-Crypto      Q3     715    221    211     10
6 months    ki1017093c-NIH-Crypto      Q4     715    112    109      3
6 months    ki1066203-TanzaniaChild2   Q1     502    289    286      3
6 months    ki1066203-TanzaniaChild2   Q2     502    147    145      2
6 months    ki1066203-TanzaniaChild2   Q3     502     13     13      0
6 months    ki1066203-TanzaniaChild2   Q4     502     53     51      2
6 months    ki1113344-GMS-Nepal        Q1     562    243    227     16
6 months    ki1113344-GMS-Nepal        Q2     562     91     89      2
6 months    ki1113344-GMS-Nepal        Q3     562     92     92      0
6 months    ki1113344-GMS-Nepal        Q4     562    136    134      2
6 months    ki1126311-ZVITAMBO         Q1    2004     14     14      0
6 months    ki1126311-ZVITAMBO         Q2    2004     16     16      0
6 months    ki1126311-ZVITAMBO         Q3    2004    260    245     15
6 months    ki1126311-ZVITAMBO         Q4    2004   1714   1660     54
6 months    ki1135781-COHORTS          Q1    4379   1517   1399    118
6 months    ki1135781-COHORTS          Q2    4379   1090   1027     63
6 months    ki1135781-COHORTS          Q3    4379   1224   1187     37
6 months    ki1135781-COHORTS          Q4    4379    548    532     16
6 months    ki1148112-LCNI-5           Q1     403    176    161     15
6 months    ki1148112-LCNI-5           Q2     403    133    127      6
6 months    ki1148112-LCNI-5           Q3     403     64     60      4
6 months    ki1148112-LCNI-5           Q4     403     30     28      2
9 months    ki0047075b-MAL-ED          Q1     853    256    244     12
9 months    ki0047075b-MAL-ED          Q2     853    284    265     19
9 months    ki0047075b-MAL-ED          Q3     853    228    224      4
9 months    ki0047075b-MAL-ED          Q4     853     85     83      2
9 months    ki1000304b-SAS-FoodSuppl   Q1      85     31     25      6
9 months    ki1000304b-SAS-FoodSuppl   Q2      85     12      8      4
9 months    ki1000304b-SAS-FoodSuppl   Q3      85     25     17      8
9 months    ki1000304b-SAS-FoodSuppl   Q4      85     17     15      2
9 months    ki1017093b-PROVIDE         Q1     158     71     65      6
9 months    ki1017093b-PROVIDE         Q2     158     46     44      2
9 months    ki1017093b-PROVIDE         Q3     158     31     30      1
9 months    ki1017093b-PROVIDE         Q4     158     10     10      0
9 months    ki1017093c-NIH-Crypto      Q1     706    179    170      9
9 months    ki1017093c-NIH-Crypto      Q2     706    197    191      6
9 months    ki1017093c-NIH-Crypto      Q3     706    215    208      7
9 months    ki1017093c-NIH-Crypto      Q4     706    115    109      6
9 months    ki1066203-TanzaniaChild2   Q1     433    245    241      4
9 months    ki1066203-TanzaniaChild2   Q2     433    133    130      3
9 months    ki1066203-TanzaniaChild2   Q3     433     11     11      0
9 months    ki1066203-TanzaniaChild2   Q4     433     44     44      0
9 months    ki1113344-GMS-Nepal        Q1     550    235    208     27
9 months    ki1113344-GMS-Nepal        Q2     550     87     86      1
9 months    ki1113344-GMS-Nepal        Q3     550     94     93      1
9 months    ki1113344-GMS-Nepal        Q4     550    134    128      6
9 months    ki1126311-ZVITAMBO         Q1    1910     11     10      1
9 months    ki1126311-ZVITAMBO         Q2    1910     13     12      1
9 months    ki1126311-ZVITAMBO         Q3    1910    258    243     15
9 months    ki1126311-ZVITAMBO         Q4    1910   1628   1563     65
9 months    ki1135781-COHORTS          Q1    4246   1484   1281    203
9 months    ki1135781-COHORTS          Q2    4246   1050    958     92
9 months    ki1135781-COHORTS          Q3    4246   1175   1108     67
9 months    ki1135781-COHORTS          Q4    4246    537    519     18
9 months    ki1148112-LCNI-5           Q1     316    139    133      6
9 months    ki1148112-LCNI-5           Q2     316    104    100      4
9 months    ki1148112-LCNI-5           Q3     316     51     45      6
9 months    ki1148112-LCNI-5           Q4     316     22     21      1
12 months   ki0047075b-MAL-ED          Q1     835    250    234     16
12 months   ki0047075b-MAL-ED          Q2     835    276    250     26
12 months   ki0047075b-MAL-ED          Q3     835    225    215     10
12 months   ki0047075b-MAL-ED          Q4     835     84     81      3
12 months   ki1000304b-SAS-FoodSuppl   Q1      92     32     20     12
12 months   ki1000304b-SAS-FoodSuppl   Q2      92     14      6      8
12 months   ki1000304b-SAS-FoodSuppl   Q3      92     27     13     14
12 months   ki1000304b-SAS-FoodSuppl   Q4      92     19     12      7
12 months   ki1017093b-PROVIDE         Q1     153     67     57     10
12 months   ki1017093b-PROVIDE         Q2     153     45     43      2
12 months   ki1017093b-PROVIDE         Q3     153     31     30      1
12 months   ki1017093b-PROVIDE         Q4     153     10     10      0
12 months   ki1017093c-NIH-Crypto      Q1     706    177    167     10
12 months   ki1017093c-NIH-Crypto      Q2     706    201    191     10
12 months   ki1017093c-NIH-Crypto      Q3     706    215    202     13
12 months   ki1017093c-NIH-Crypto      Q4     706    113    105      8
12 months   ki1066203-TanzaniaChild2   Q1     356    202    199      3
12 months   ki1066203-TanzaniaChild2   Q2     356    103    100      3
12 months   ki1066203-TanzaniaChild2   Q3     356     11     11      0
12 months   ki1066203-TanzaniaChild2   Q4     356     40     39      1
12 months   ki1113344-GMS-Nepal        Q1     557    239    208     31
12 months   ki1113344-GMS-Nepal        Q2     557     90     80     10
12 months   ki1113344-GMS-Nepal        Q3     557     92     86      6
12 months   ki1113344-GMS-Nepal        Q4     557    136    132      4
12 months   ki1126311-ZVITAMBO         Q1    1664     11     10      1
12 months   ki1126311-ZVITAMBO         Q2    1664     11     10      1
12 months   ki1126311-ZVITAMBO         Q3    1664    217    198     19
12 months   ki1126311-ZVITAMBO         Q4    1664   1425   1343     82
12 months   ki1135781-COHORTS          Q1    4121   1466   1144    322
12 months   ki1135781-COHORTS          Q2    4121   1016    870    146
12 months   ki1135781-COHORTS          Q3    4121   1127   1025    102
12 months   ki1135781-COHORTS          Q4    4121    512    482     30
12 months   ki1148112-LCNI-5           Q1     306    137    123     14
12 months   ki1148112-LCNI-5           Q2     306    104     94     10
12 months   ki1148112-LCNI-5           Q3     306     47     40      7
12 months   ki1148112-LCNI-5           Q4     306     18     16      2
18 months   ki0047075b-MAL-ED          Q1     801    243    206     37
18 months   ki0047075b-MAL-ED          Q2     801    263    216     47
18 months   ki0047075b-MAL-ED          Q3     801    217    198     19
18 months   ki0047075b-MAL-ED          Q4     801     78     74      4
18 months   ki1000304b-SAS-FoodSuppl   Q1      84     29     17     12
18 months   ki1000304b-SAS-FoodSuppl   Q2      84     13      3     10
18 months   ki1000304b-SAS-FoodSuppl   Q3      84     24     16      8
18 months   ki1000304b-SAS-FoodSuppl   Q4      84     18     11      7
18 months   ki1017093b-PROVIDE         Q1     141     64     49     15
18 months   ki1017093b-PROVIDE         Q2     141     43     40      3
18 months   ki1017093b-PROVIDE         Q3     141     26     24      2
18 months   ki1017093b-PROVIDE         Q4     141      8      8      0
18 months   ki1017093c-NIH-Crypto      Q1     634    151    140     11
18 months   ki1017093c-NIH-Crypto      Q2     634    186    173     13
18 months   ki1017093c-NIH-Crypto      Q3     634    192    181     11
18 months   ki1017093c-NIH-Crypto      Q4     634    105     98      7
18 months   ki1066203-TanzaniaChild2   Q1     257    145    135     10
18 months   ki1066203-TanzaniaChild2   Q2     257     76     74      2
18 months   ki1066203-TanzaniaChild2   Q3     257      8      8      0
18 months   ki1066203-TanzaniaChild2   Q4     257     28     25      3
18 months   ki1113344-GMS-Nepal        Q1     549    238    196     42
18 months   ki1113344-GMS-Nepal        Q2     549     87     72     15
18 months   ki1113344-GMS-Nepal        Q3     549     93     81     12
18 months   ki1113344-GMS-Nepal        Q4     549    131    115     16
18 months   ki1126311-ZVITAMBO         Q1     409      2      2      0
18 months   ki1126311-ZVITAMBO         Q2     409      2      2      0
18 months   ki1126311-ZVITAMBO         Q3     409     68     55     13
18 months   ki1126311-ZVITAMBO         Q4     409    337    287     50
18 months   ki1135781-COHORTS          Q1    2758    992    599    393
18 months   ki1135781-COHORTS          Q2    2758    632    437    195
18 months   ki1135781-COHORTS          Q3    2758    745    589    156
18 months   ki1135781-COHORTS          Q4    2758    389    337     52
18 months   ki1148112-LCNI-5           Q1     352    152    129     23
18 months   ki1148112-LCNI-5           Q2     352    120    103     17
18 months   ki1148112-LCNI-5           Q3     352     54     46      8
18 months   ki1148112-LCNI-5           Q4     352     26     23      3
24 months   ki0047075b-MAL-ED          Q1     772    233    198     35
24 months   ki0047075b-MAL-ED          Q2     772    258    214     44
24 months   ki0047075b-MAL-ED          Q3     772    203    188     15
24 months   ki0047075b-MAL-ED          Q4     772     78     72      6
24 months   ki1000304b-SAS-FoodSuppl   Q1       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q2       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q3       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q4       0      0      0      0
24 months   ki1017093b-PROVIDE         Q1     149     67     54     13
24 months   ki1017093b-PROVIDE         Q2     149     43     39      4
24 months   ki1017093b-PROVIDE         Q3     149     30     29      1
24 months   ki1017093b-PROVIDE         Q4     149      9      9      0
24 months   ki1017093c-NIH-Crypto      Q1     514    113    104      9
24 months   ki1017093c-NIH-Crypto      Q2     514    152    142     10
24 months   ki1017093c-NIH-Crypto      Q3     514    159    149     10
24 months   ki1017093c-NIH-Crypto      Q4     514     90     84      6
24 months   ki1066203-TanzaniaChild2   Q1       2      0      0      0
24 months   ki1066203-TanzaniaChild2   Q2       2      2      2      0
24 months   ki1066203-TanzaniaChild2   Q3       2      0      0      0
24 months   ki1066203-TanzaniaChild2   Q4       2      0      0      0
24 months   ki1113344-GMS-Nepal        Q1     498    221    194     27
24 months   ki1113344-GMS-Nepal        Q2     498     74     63     11
24 months   ki1113344-GMS-Nepal        Q3     498     87     78      9
24 months   ki1113344-GMS-Nepal        Q4     498    116    109      7
24 months   ki1126311-ZVITAMBO         Q1     111      1      1      0
24 months   ki1126311-ZVITAMBO         Q2     111      1      1      0
24 months   ki1126311-ZVITAMBO         Q3     111     21     18      3
24 months   ki1126311-ZVITAMBO         Q4     111     88     72     16
24 months   ki1135781-COHORTS          Q1    4166   1492    909    583
24 months   ki1135781-COHORTS          Q2    4166   1022    736    286
24 months   ki1135781-COHORTS          Q3    4166   1146    932    214
24 months   ki1135781-COHORTS          Q4    4166    506    455     51
24 months   ki1148112-LCNI-5           Q1     292    131    115     16
24 months   ki1148112-LCNI-5           Q2     292     91     79     12
24 months   ki1148112-LCNI-5           Q3     292     46     40      6
24 months   ki1148112-LCNI-5           Q4     292     24     22      2

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1135781-COHORTS          Q1                   NA                0.0505762   0.0397080   0.0614444
3 months    ki1135781-COHORTS          Q2                   NA                0.0302222   0.0202172   0.0402273
3 months    ki1135781-COHORTS          Q3                   NA                0.0179547   0.0106823   0.0252271
3 months    ki1135781-COHORTS          Q4                   NA                0.0170068   0.0065549   0.0274587
6 months    ki1135781-COHORTS          Q1                   NA                0.0777851   0.0643057   0.0912645
6 months    ki1135781-COHORTS          Q2                   NA                0.0577982   0.0439429   0.0716534
6 months    ki1135781-COHORTS          Q3                   NA                0.0302288   0.0206358   0.0398217
6 months    ki1135781-COHORTS          Q4                   NA                0.0291971   0.0150996   0.0432946
9 months    ki1017093c-NIH-Crypto      Q1                   NA                0.0502793   0.0182445   0.0823141
9 months    ki1017093c-NIH-Crypto      Q2                   NA                0.0304569   0.0064437   0.0544700
9 months    ki1017093c-NIH-Crypto      Q3                   NA                0.0325581   0.0088182   0.0562980
9 months    ki1017093c-NIH-Crypto      Q4                   NA                0.0521739   0.0115017   0.0928461
9 months    ki1135781-COHORTS          Q1                   NA                0.1367925   0.1193072   0.1542777
9 months    ki1135781-COHORTS          Q2                   NA                0.0876190   0.0705153   0.1047228
9 months    ki1135781-COHORTS          Q3                   NA                0.0570213   0.0437611   0.0702815
9 months    ki1135781-COHORTS          Q4                   NA                0.0335196   0.0182945   0.0487446
12 months   ki1000304b-SAS-FoodSuppl   Q1                   NA                0.3750000   0.2063439   0.5436561
12 months   ki1000304b-SAS-FoodSuppl   Q2                   NA                0.5714286   0.3107833   0.8320739
12 months   ki1000304b-SAS-FoodSuppl   Q3                   NA                0.5185185   0.3290176   0.7080195
12 months   ki1000304b-SAS-FoodSuppl   Q4                   NA                0.3684211   0.1503337   0.5865084
12 months   ki1017093c-NIH-Crypto      Q1                   NA                0.0564972   0.0224599   0.0905344
12 months   ki1017093c-NIH-Crypto      Q2                   NA                0.0497512   0.0196712   0.0798313
12 months   ki1017093c-NIH-Crypto      Q3                   NA                0.0604651   0.0285831   0.0923471
12 months   ki1017093c-NIH-Crypto      Q4                   NA                0.0707965   0.0234729   0.1181201
12 months   ki1135781-COHORTS          Q1                   NA                0.2196453   0.1984499   0.2408407
12 months   ki1135781-COHORTS          Q2                   NA                0.1437008   0.1221285   0.1652731
12 months   ki1135781-COHORTS          Q3                   NA                0.0905058   0.0737534   0.1072582
12 months   ki1135781-COHORTS          Q4                   NA                0.0585938   0.0382477   0.0789398
18 months   ki1017093c-NIH-Crypto      Q1                   NA                0.0728477   0.0313632   0.1143322
18 months   ki1017093c-NIH-Crypto      Q2                   NA                0.0698925   0.0332220   0.1065629
18 months   ki1017093c-NIH-Crypto      Q3                   NA                0.0572917   0.0243933   0.0901901
18 months   ki1017093c-NIH-Crypto      Q4                   NA                0.0666667   0.0189172   0.1144162
18 months   ki1113344-GMS-Nepal        Q1                   NA                0.1764706   0.1279941   0.2249471
18 months   ki1113344-GMS-Nepal        Q2                   NA                0.1724138   0.0929669   0.2518607
18 months   ki1113344-GMS-Nepal        Q3                   NA                0.1290323   0.0608372   0.1972273
18 months   ki1113344-GMS-Nepal        Q4                   NA                0.1221374   0.0660137   0.1782611
18 months   ki1135781-COHORTS          Q1                   NA                0.3961694   0.3657276   0.4266111
18 months   ki1135781-COHORTS          Q2                   NA                0.3085443   0.2725272   0.3445614
18 months   ki1135781-COHORTS          Q3                   NA                0.2093960   0.1801738   0.2386181
18 months   ki1135781-COHORTS          Q4                   NA                0.1336761   0.0998526   0.1674996
24 months   ki0047075b-MAL-ED          Q1                   NA                0.1502146   0.1043093   0.1961198
24 months   ki0047075b-MAL-ED          Q2                   NA                0.1705426   0.1246193   0.2164659
24 months   ki0047075b-MAL-ED          Q3                   NA                0.0738916   0.0378827   0.1099005
24 months   ki0047075b-MAL-ED          Q4                   NA                0.0769231   0.0177493   0.1360969
24 months   ki1017093c-NIH-Crypto      Q1                   NA                0.0796460   0.0296781   0.1296139
24 months   ki1017093c-NIH-Crypto      Q2                   NA                0.0657895   0.0263392   0.1052397
24 months   ki1017093c-NIH-Crypto      Q3                   NA                0.0628931   0.0251212   0.1006649
24 months   ki1017093c-NIH-Crypto      Q4                   NA                0.0666667   0.0150818   0.1182516
24 months   ki1113344-GMS-Nepal        Q1                   NA                0.1221719   0.0789525   0.1653914
24 months   ki1113344-GMS-Nepal        Q2                   NA                0.1486486   0.0675145   0.2297828
24 months   ki1113344-GMS-Nepal        Q3                   NA                0.1034483   0.0393901   0.1675064
24 months   ki1113344-GMS-Nepal        Q4                   NA                0.0603448   0.0169678   0.1037219
24 months   ki1135781-COHORTS          Q1                   NA                0.3907507   0.3659900   0.4155114
24 months   ki1135781-COHORTS          Q2                   NA                0.2798434   0.2523173   0.3073696
24 months   ki1135781-COHORTS          Q3                   NA                0.1867365   0.1641713   0.2093016
24 months   ki1135781-COHORTS          Q4                   NA                0.1007905   0.0745565   0.1270246


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1135781-COHORTS          NA                   NA                0.0320457   0.0316313   0.0324600
6 months    ki1135781-COHORTS          NA                   NA                0.0534369   0.0528196   0.0540541
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.0396601   0.0389478   0.0403723
9 months    ki1135781-COHORTS          NA                   NA                0.0894960   0.0883423   0.0906497
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4456522   0.4285438   0.4627605
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.0580737   0.0575623   0.0585850
12 months   ki1135781-COHORTS          NA                   NA                0.1455957   0.1437329   0.1474586
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.0662461   0.0657621   0.0667300
18 months   ki1113344-GMS-Nepal        NA                   NA                0.1548270   0.1527426   0.1569114
18 months   ki1135781-COHORTS          NA                   NA                0.2886149   0.2850088   0.2922210
24 months   ki0047075b-MAL-ED          NA                   NA                0.1295337   0.1265516   0.1325158
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.0680934   0.0675486   0.0686382
24 months   ki1113344-GMS-Nepal        NA                   NA                0.1084337   0.1058449   0.1110225
24 months   ki1135781-COHORTS          NA                   NA                0.2722036   0.2690730   0.2753341


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1135781-COHORTS          Q2                   Q1                0.5975584   0.4026930   0.8867202
3 months    ki1135781-COHORTS          Q3                   Q1                0.3550035   0.2244414   0.5615162
3 months    ki1135781-COHORTS          Q4                   Q1                0.3362611   0.1753586   0.6448017
6 months    ki1135781-COHORTS          Q2                   Q1                0.7430493   0.5527849   0.9988012
6 months    ki1135781-COHORTS          Q3                   Q1                0.3886189   0.2707033   0.5578973
6 months    ki1135781-COHORTS          Q4                   Q1                0.3753557   0.2247254   0.6269514
9 months    ki1017093c-NIH-Crypto      Q2                   Q1                0.6057530   0.2198142   1.6693039
9 months    ki1017093c-NIH-Crypto      Q3                   Q1                0.6475452   0.2458906   1.7052903
9 months    ki1017093c-NIH-Crypto      Q4                   Q1                1.0376812   0.3791551   2.8399515
9 months    ki1135781-COHORTS          Q2                   Q1                0.6405255   0.5072258   0.8088565
9 months    ki1135781-COHORTS          Q3                   Q1                0.4168452   0.3196902   0.5435260
9 months    ki1135781-COHORTS          Q4                   Q1                0.2450395   0.1528662   0.3927901
12 months   ki1000304b-SAS-FoodSuppl   Q2                   Q1                1.5238095   0.8030362   2.8915201
12 months   ki1000304b-SAS-FoodSuppl   Q3                   Q1                1.3827160   0.7745544   2.4683917
12 months   ki1000304b-SAS-FoodSuppl   Q4                   Q1                0.9824561   0.4671407   2.0662301
12 months   ki1017093c-NIH-Crypto      Q2                   Q1                0.8805970   0.3750551   2.0675660
12 months   ki1017093c-NIH-Crypto      Q3                   Q1                1.0702326   0.4805921   2.3833054
12 months   ki1017093c-NIH-Crypto      Q4                   Q1                1.2530973   0.5095345   3.0817400
12 months   ki1135781-COHORTS          Q2                   Q1                0.6542402   0.5473099   0.7820620
12 months   ki1135781-COHORTS          Q3                   Q1                0.4120542   0.3344253   0.5077029
12 months   ki1135781-COHORTS          Q4                   Q1                0.2667653   0.1860417   0.3825149
18 months   ki1017093c-NIH-Crypto      Q2                   Q1                0.9594330   0.4423147   2.0811241
18 months   ki1017093c-NIH-Crypto      Q3                   Q1                0.7864583   0.3503098   1.7656277
18 months   ki1017093c-NIH-Crypto      Q4                   Q1                0.9151515   0.3665187   2.2850195
18 months   ki1113344-GMS-Nepal        Q2                   Q1                0.9770115   0.5713707   1.6706341
18 months   ki1113344-GMS-Nepal        Q3                   Q1                0.7311828   0.4030359   1.3265030
18 months   ki1113344-GMS-Nepal        Q4                   Q1                0.6921120   0.4052022   1.1821725
18 months   ki1135781-COHORTS          Q2                   Q1                0.7788192   0.6772402   0.8956340
18 months   ki1135781-COHORTS          Q3                   Q1                0.5285517   0.4507126   0.6198337
18 months   ki1135781-COHORTS          Q4                   Q1                0.3374216   0.2590178   0.4395579
24 months   ki0047075b-MAL-ED          Q2                   Q1                1.1353267   0.7554903   1.7061326
24 months   ki0047075b-MAL-ED          Q3                   Q1                0.4919071   0.2767392   0.8743704
24 months   ki0047075b-MAL-ED          Q4                   Q1                0.5120879   0.2238012   1.1717273
24 months   ki1017093c-NIH-Crypto      Q2                   Q1                0.8260234   0.3468069   1.9674192
24 months   ki1017093c-NIH-Crypto      Q3                   Q1                0.7896576   0.3313259   1.8820112
24 months   ki1017093c-NIH-Crypto      Q4                   Q1                0.8370370   0.3091150   2.2665704
24 months   ki1113344-GMS-Nepal        Q2                   Q1                1.2167167   0.6349105   2.3316664
24 months   ki1113344-GMS-Nepal        Q3                   Q1                0.8467433   0.4149853   1.7277100
24 months   ki1113344-GMS-Nepal        Q4                   Q1                0.4939336   0.2216828   1.1005380
24 months   ki1135781-COHORTS          Q2                   Q1                0.7161688   0.6370888   0.8050648
24 months   ki1135781-COHORTS          Q3                   Q1                0.4778916   0.4169381   0.5477562
24 months   ki1135781-COHORTS          Q4                   Q1                0.2579407   0.1973235   0.3371794


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1135781-COHORTS          Q1                   NA                -0.0185305   -0.0294066   -0.0076544
6 months    ki1135781-COHORTS          Q1                   NA                -0.0243482   -0.0378417   -0.0108548
9 months    ki1017093c-NIH-Crypto      Q1                   NA                -0.0106193   -0.0426620    0.0214234
9 months    ki1135781-COHORTS          Q1                   NA                -0.0472965   -0.0648197   -0.0297732
12 months   ki1000304b-SAS-FoodSuppl   Q1                   NA                 0.0706522   -0.0988694    0.2401737
12 months   ki1017093c-NIH-Crypto      Q1                   NA                 0.0015765   -0.0324646    0.0356176
12 months   ki1135781-COHORTS          Q1                   NA                -0.0740496   -0.0953266   -0.0527725
18 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.0066016   -0.0480889    0.0348857
18 months   ki1113344-GMS-Nepal        Q1                   NA                -0.0216436   -0.0701649    0.0268777
18 months   ki1135781-COHORTS          Q1                   NA                -0.1075544   -0.1382090   -0.0768999
24 months   ki0047075b-MAL-ED          Q1                   NA                -0.0206809   -0.0666829    0.0253211
24 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.0115526   -0.0615235    0.0384183
24 months   ki1113344-GMS-Nepal        Q1                   NA                -0.0137382   -0.0570351    0.0295587
24 months   ki1135781-COHORTS          Q1                   NA                -0.1185471   -0.1435049   -0.0935893


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1135781-COHORTS          Q1                   NA                -0.5782541   -0.9573586   -0.2725752
6 months    ki1135781-COHORTS          Q1                   NA                -0.4556451   -0.7317344   -0.2235726
9 months    ki1017093c-NIH-Crypto      Q1                   NA                -0.2677574   -1.3980098    0.3297739
9 months    ki1135781-COHORTS          Q1                   NA                -0.5284757   -0.7380126   -0.3442008
12 months   ki1000304b-SAS-FoodSuppl   Q1                   NA                 0.1585366   -0.3215063    0.4642018
12 months   ki1017093c-NIH-Crypto      Q1                   NA                 0.0271462   -0.7771338    0.4674321
12 months   ki1135781-COHORTS          Q1                   NA                -0.5085971   -0.6628331   -0.3686673
18 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.0996531   -0.9435391    0.3778170
18 months   ki1113344-GMS-Nepal        Q1                   NA                -0.1397924   -0.5006164    0.1342713
18 months   ki1135781-COHORTS          Q1                   NA                -0.3726571   -0.4837872   -0.2698503
24 months   ki0047075b-MAL-ED          Q1                   NA                -0.1596567   -0.5755236    0.1464403
24 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.1696587   -1.1905177    0.3754438
24 months   ki1113344-GMS-Nepal        Q1                   NA                -0.1266968   -0.6061722    0.2096453
24 months   ki1135781-COHORTS          Q1                   NA                -0.4355091   -0.5310010   -0.3459732


