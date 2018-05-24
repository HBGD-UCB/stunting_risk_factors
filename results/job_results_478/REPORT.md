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

**Outcome Variable:** stunted

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

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/8ddf171a-4948-40d7-b9ba-4027b7c6f0aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8ddf171a-4948-40d7-b9ba-4027b7c6f0aa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/8ddf171a-4948-40d7-b9ba-4027b7c6f0aa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8ddf171a-4948-40d7-b9ba-4027b7c6f0aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
12 months   ki0047075b-MAL-ED          Q1     835    250    163     87
12 months   ki0047075b-MAL-ED          Q2     835    276    170    106
12 months   ki0047075b-MAL-ED          Q3     835    225    168     57
12 months   ki0047075b-MAL-ED          Q4     835     84     69     15
12 months   ki1000304b-SAS-FoodSuppl   Q1      92     32      8     24
12 months   ki1000304b-SAS-FoodSuppl   Q2      92     14      3     11
12 months   ki1000304b-SAS-FoodSuppl   Q3      92     27      3     24
12 months   ki1000304b-SAS-FoodSuppl   Q4      92     19      5     14
12 months   ki1017093b-PROVIDE         Q1     153     67     41     26
12 months   ki1017093b-PROVIDE         Q2     153     45     34     11
12 months   ki1017093b-PROVIDE         Q3     153     31     25      6
12 months   ki1017093b-PROVIDE         Q4     153     10      9      1
12 months   ki1017093c-NIH-Crypto      Q1     706    177    125     52
12 months   ki1017093c-NIH-Crypto      Q2     706    201    143     58
12 months   ki1017093c-NIH-Crypto      Q3     706    215    170     45
12 months   ki1017093c-NIH-Crypto      Q4     706    113     97     16
12 months   ki1066203-TanzaniaChild2   Q1     356    202    174     28
12 months   ki1066203-TanzaniaChild2   Q2     356    103     88     15
12 months   ki1066203-TanzaniaChild2   Q3     356     11     10      1
12 months   ki1066203-TanzaniaChild2   Q4     356     40     32      8
12 months   ki1113344-GMS-Nepal        Q1     557    239    147     92
12 months   ki1113344-GMS-Nepal        Q2     557     90     59     31
12 months   ki1113344-GMS-Nepal        Q3     557     92     58     34
12 months   ki1113344-GMS-Nepal        Q4     557    136    102     34
12 months   ki1126311-ZVITAMBO         Q1    1664     11      8      3
12 months   ki1126311-ZVITAMBO         Q2    1664     11     10      1
12 months   ki1126311-ZVITAMBO         Q3    1664    217    153     64
12 months   ki1126311-ZVITAMBO         Q4    1664   1425   1097    328
12 months   ki1135781-COHORTS          Q1    4121   1466    662    804
12 months   ki1135781-COHORTS          Q2    4121   1016    586    430
12 months   ki1135781-COHORTS          Q3    4121   1127    797    330
12 months   ki1135781-COHORTS          Q4    4121    512    390    122
12 months   ki1148112-LCNI-5           Q1     306    137     84     53
12 months   ki1148112-LCNI-5           Q2     306    104     57     47
12 months   ki1148112-LCNI-5           Q3     306     47     27     20
12 months   ki1148112-LCNI-5           Q4     306     18     13      5
18 months   ki0047075b-MAL-ED          Q1     801    243    127    116
18 months   ki0047075b-MAL-ED          Q2     801    263    122    141
18 months   ki0047075b-MAL-ED          Q3     801    217    131     86
18 months   ki0047075b-MAL-ED          Q4     801     78     53     25
18 months   ki1000304b-SAS-FoodSuppl   Q1      84     29      4     25
18 months   ki1000304b-SAS-FoodSuppl   Q2      84     13      1     12
18 months   ki1000304b-SAS-FoodSuppl   Q3      84     24      2     22
18 months   ki1000304b-SAS-FoodSuppl   Q4      84     18      3     15
18 months   ki1017093b-PROVIDE         Q1     141     64     31     33
18 months   ki1017093b-PROVIDE         Q2     141     43     30     13
18 months   ki1017093b-PROVIDE         Q3     141     26     21      5
18 months   ki1017093b-PROVIDE         Q4     141      8      7      1
18 months   ki1017093c-NIH-Crypto      Q1     634    151     89     62
18 months   ki1017093c-NIH-Crypto      Q2     634    186    117     69
18 months   ki1017093c-NIH-Crypto      Q3     634    192    154     38
18 months   ki1017093c-NIH-Crypto      Q4     634    105     83     22
18 months   ki1066203-TanzaniaChild2   Q1     257    145    101     44
18 months   ki1066203-TanzaniaChild2   Q2     257     76     63     13
18 months   ki1066203-TanzaniaChild2   Q3     257      8      6      2
18 months   ki1066203-TanzaniaChild2   Q4     257     28     19      9
18 months   ki1113344-GMS-Nepal        Q1     549    238    100    138
18 months   ki1113344-GMS-Nepal        Q2     549     87     39     48
18 months   ki1113344-GMS-Nepal        Q3     549     93     42     51
18 months   ki1113344-GMS-Nepal        Q4     549    131     76     55
18 months   ki1126311-ZVITAMBO         Q1     409      2      1      1
18 months   ki1126311-ZVITAMBO         Q2     409      2      1      1
18 months   ki1126311-ZVITAMBO         Q3     409     68     33     35
18 months   ki1126311-ZVITAMBO         Q4     409    337    183    154
18 months   ki1135781-COHORTS          Q1    2758    992    247    745
18 months   ki1135781-COHORTS          Q2    2758    632    204    428
18 months   ki1135781-COHORTS          Q3    2758    745    335    410
18 months   ki1135781-COHORTS          Q4    2758    389    239    150
18 months   ki1148112-LCNI-5           Q1     352    152     79     73
18 months   ki1148112-LCNI-5           Q2     352    120     57     63
18 months   ki1148112-LCNI-5           Q3     352     54     27     27
18 months   ki1148112-LCNI-5           Q4     352     26     15     11
24 months   ki0047075b-MAL-ED          Q1     772    233    127    106
24 months   ki0047075b-MAL-ED          Q2     772    258    121    137
24 months   ki0047075b-MAL-ED          Q3     772    203    125     78
24 months   ki0047075b-MAL-ED          Q4     772     78     55     23
24 months   ki1000304b-SAS-FoodSuppl   Q1       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q2       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q3       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q4       0      0      0      0
24 months   ki1017093b-PROVIDE         Q1     149     67     36     31
24 months   ki1017093b-PROVIDE         Q2     149     43     30     13
24 months   ki1017093b-PROVIDE         Q3     149     30     26      4
24 months   ki1017093b-PROVIDE         Q4     149      9      8      1
24 months   ki1017093c-NIH-Crypto      Q1     514    113     72     41
24 months   ki1017093c-NIH-Crypto      Q2     514    152    101     51
24 months   ki1017093c-NIH-Crypto      Q3     514    159    131     28
24 months   ki1017093c-NIH-Crypto      Q4     514     90     78     12
24 months   ki1066203-TanzaniaChild2   Q1       2      0      0      0
24 months   ki1066203-TanzaniaChild2   Q2       2      2      2      0
24 months   ki1066203-TanzaniaChild2   Q3       2      0      0      0
24 months   ki1066203-TanzaniaChild2   Q4       2      0      0      0
24 months   ki1113344-GMS-Nepal        Q1     498    221    119    102
24 months   ki1113344-GMS-Nepal        Q2     498     74     34     40
24 months   ki1113344-GMS-Nepal        Q3     498     87     46     41
24 months   ki1113344-GMS-Nepal        Q4     498    116     76     40
24 months   ki1126311-ZVITAMBO         Q1     111      1      0      1
24 months   ki1126311-ZVITAMBO         Q2     111      1      0      1
24 months   ki1126311-ZVITAMBO         Q3     111     21      8     13
24 months   ki1126311-ZVITAMBO         Q4     111     88     40     48
24 months   ki1135781-COHORTS          Q1    4166   1492    384   1108
24 months   ki1135781-COHORTS          Q2    4166   1022    395    627
24 months   ki1135781-COHORTS          Q3    4166   1146    582    564
24 months   ki1135781-COHORTS          Q4    4166    506    334    172
24 months   ki1148112-LCNI-5           Q1     292    131     78     53
24 months   ki1148112-LCNI-5           Q2     292     91     46     45
24 months   ki1148112-LCNI-5           Q3     292     46     27     19
24 months   ki1148112-LCNI-5           Q4     292     24     14     10
3 months    ki0047075b-MAL-ED          Q1     918    272    231     41
3 months    ki0047075b-MAL-ED          Q2     918    304    251     53
3 months    ki0047075b-MAL-ED          Q3     918    248    209     39
3 months    ki0047075b-MAL-ED          Q4     918     94     82     12
3 months    ki1000304b-SAS-FoodSuppl   Q1      97     35     21     14
3 months    ki1000304b-SAS-FoodSuppl   Q2      97     16      8      8
3 months    ki1000304b-SAS-FoodSuppl   Q3      97     25     16      9
3 months    ki1000304b-SAS-FoodSuppl   Q4      97     21     14      7
3 months    ki1017093b-PROVIDE         Q1     168     77     63     14
3 months    ki1017093b-PROVIDE         Q2     168     47     45      2
3 months    ki1017093b-PROVIDE         Q3     168     34     31      3
3 months    ki1017093b-PROVIDE         Q4     168     10      9      1
3 months    ki1017093c-NIH-Crypto      Q1     728    188    146     42
3 months    ki1017093c-NIH-Crypto      Q2     728    204    153     51
3 months    ki1017093c-NIH-Crypto      Q3     728    222    172     50
3 months    ki1017093c-NIH-Crypto      Q4     728    114    101     13
3 months    ki1066203-TanzaniaChild2   Q1     573    327    307     20
3 months    ki1066203-TanzaniaChild2   Q2     573    172    162     10
3 months    ki1066203-TanzaniaChild2   Q3     573     13     12      1
3 months    ki1066203-TanzaniaChild2   Q4     573     61     53      8
3 months    ki1113344-GMS-Nepal        Q1     570    248    201     47
3 months    ki1113344-GMS-Nepal        Q2     570     90     76     14
3 months    ki1113344-GMS-Nepal        Q3     570     94     86      8
3 months    ki1113344-GMS-Nepal        Q4     570    138    123     15
3 months    ki1126311-ZVITAMBO         Q1    2210     11      8      3
3 months    ki1126311-ZVITAMBO         Q2    2210     16     13      3
3 months    ki1126311-ZVITAMBO         Q3    2210    286    228     58
3 months    ki1126311-ZVITAMBO         Q4    2210   1897   1583    314
3 months    ki1135781-COHORTS          Q1    4556   1562   1256    306
3 months    ki1135781-COHORTS          Q2    4556   1125    952    173
3 months    ki1135781-COHORTS          Q3    4556   1281   1158    123
3 months    ki1135781-COHORTS          Q4    4556    588    543     45
3 months    ki1148112-LCNI-5           Q1       0      0      0      0
3 months    ki1148112-LCNI-5           Q2       0      0      0      0
3 months    ki1148112-LCNI-5           Q3       0      0      0      0
3 months    ki1148112-LCNI-5           Q4       0      0      0      0
6 months    ki0047075b-MAL-ED          Q1     882    261    214     47
6 months    ki0047075b-MAL-ED          Q2     882    294    237     57
6 months    ki0047075b-MAL-ED          Q3     882    234    202     32
6 months    ki0047075b-MAL-ED          Q4     882     93     78     15
6 months    ki1000304b-SAS-FoodSuppl   Q1      96     33     18     15
6 months    ki1000304b-SAS-FoodSuppl   Q2      96     15      5     10
6 months    ki1000304b-SAS-FoodSuppl   Q3      96     27     13     14
6 months    ki1000304b-SAS-FoodSuppl   Q4      96     21     12      9
6 months    ki1017093b-PROVIDE         Q1     153     70     51     19
6 months    ki1017093b-PROVIDE         Q2     153     44     40      4
6 months    ki1017093b-PROVIDE         Q3     153     29     25      4
6 months    ki1017093b-PROVIDE         Q4     153     10      9      1
6 months    ki1017093c-NIH-Crypto      Q1     715    181    137     44
6 months    ki1017093c-NIH-Crypto      Q2     715    201    151     50
6 months    ki1017093c-NIH-Crypto      Q3     715    221    180     41
6 months    ki1017093c-NIH-Crypto      Q4     715    112     97     15
6 months    ki1066203-TanzaniaChild2   Q1     502    289    263     26
6 months    ki1066203-TanzaniaChild2   Q2     502    147    137     10
6 months    ki1066203-TanzaniaChild2   Q3     502     13     12      1
6 months    ki1066203-TanzaniaChild2   Q4     502     53     45      8
6 months    ki1113344-GMS-Nepal        Q1     562    243    183     60
6 months    ki1113344-GMS-Nepal        Q2     562     91     68     23
6 months    ki1113344-GMS-Nepal        Q3     562     92     76     16
6 months    ki1113344-GMS-Nepal        Q4     562    136    116     20
6 months    ki1126311-ZVITAMBO         Q1    2004     14     11      3
6 months    ki1126311-ZVITAMBO         Q2    2004     16     14      2
6 months    ki1126311-ZVITAMBO         Q3    2004    260    208     52
6 months    ki1126311-ZVITAMBO         Q4    2004   1714   1448    266
6 months    ki1135781-COHORTS          Q1    4379   1517   1046    471
6 months    ki1135781-COHORTS          Q2    4379   1090    845    245
6 months    ki1135781-COHORTS          Q3    4379   1224   1023    201
6 months    ki1135781-COHORTS          Q4    4379    548    488     60
6 months    ki1148112-LCNI-5           Q1     403    176    106     70
6 months    ki1148112-LCNI-5           Q2     403    133     84     49
6 months    ki1148112-LCNI-5           Q3     403     64     44     20
6 months    ki1148112-LCNI-5           Q4     403     30     20     10
9 months    ki0047075b-MAL-ED          Q1     853    256    190     66
9 months    ki0047075b-MAL-ED          Q2     853    284    210     74
9 months    ki0047075b-MAL-ED          Q3     853    228    184     44
9 months    ki0047075b-MAL-ED          Q4     853     85     67     18
9 months    ki1000304b-SAS-FoodSuppl   Q1      85     31     13     18
9 months    ki1000304b-SAS-FoodSuppl   Q2      85     12      1     11
9 months    ki1000304b-SAS-FoodSuppl   Q3      85     25      9     16
9 months    ki1000304b-SAS-FoodSuppl   Q4      85     17      5     12
9 months    ki1017093b-PROVIDE         Q1     158     71     47     24
9 months    ki1017093b-PROVIDE         Q2     158     46     38      8
9 months    ki1017093b-PROVIDE         Q3     158     31     27      4
9 months    ki1017093b-PROVIDE         Q4     158     10      9      1
9 months    ki1017093c-NIH-Crypto      Q1     706    179    131     48
9 months    ki1017093c-NIH-Crypto      Q2     706    197    143     54
9 months    ki1017093c-NIH-Crypto      Q3     706    215    170     45
9 months    ki1017093c-NIH-Crypto      Q4     706    115     98     17
9 months    ki1066203-TanzaniaChild2   Q1     433    245    212     33
9 months    ki1066203-TanzaniaChild2   Q2     433    133    112     21
9 months    ki1066203-TanzaniaChild2   Q3     433     11      9      2
9 months    ki1066203-TanzaniaChild2   Q4     433     44     37      7
9 months    ki1113344-GMS-Nepal        Q1     550    235    165     70
9 months    ki1113344-GMS-Nepal        Q2     550     87     57     30
9 months    ki1113344-GMS-Nepal        Q3     550     94     67     27
9 months    ki1113344-GMS-Nepal        Q4     550    134    106     28
9 months    ki1126311-ZVITAMBO         Q1    1910     11      8      3
9 months    ki1126311-ZVITAMBO         Q2    1910     13     10      3
9 months    ki1126311-ZVITAMBO         Q3    1910    258    208     50
9 months    ki1126311-ZVITAMBO         Q4    1910   1628   1316    312
9 months    ki1135781-COHORTS          Q1    4246   1484    863    621
9 months    ki1135781-COHORTS          Q2    4246   1050    728    322
9 months    ki1135781-COHORTS          Q3    4246   1175    925    250
9 months    ki1135781-COHORTS          Q4    4246    537    453     84
9 months    ki1148112-LCNI-5           Q1     316    139     97     42
9 months    ki1148112-LCNI-5           Q2     316    104     69     35
9 months    ki1148112-LCNI-5           Q3     316     51     35     16
9 months    ki1148112-LCNI-5           Q4     316     22     16      6
Birth       ki0047075b-MAL-ED          Q1     762    225    195     30
Birth       ki0047075b-MAL-ED          Q2     762    226    193     33
Birth       ki0047075b-MAL-ED          Q3     762    229    205     24
Birth       ki0047075b-MAL-ED          Q4     762     82     71     11
Birth       ki1000304b-SAS-FoodSuppl   Q1       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q2       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q3       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q4       0      0      0      0
Birth       ki1017093b-PROVIDE         Q1       0      0      0      0
Birth       ki1017093b-PROVIDE         Q2       0      0      0      0
Birth       ki1017093b-PROVIDE         Q3       0      0      0      0
Birth       ki1017093b-PROVIDE         Q4       0      0      0      0
Birth       ki1017093c-NIH-Crypto      Q1      27      7      5      2
Birth       ki1017093c-NIH-Crypto      Q2      27      9      8      1
Birth       ki1017093c-NIH-Crypto      Q3      27      8      6      2
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
Birth       ki1126311-ZVITAMBO         Q3    3373    441    392     49
Birth       ki1126311-ZVITAMBO         Q4    3373   2894   2594    300
Birth       ki1135781-COHORTS          Q1    4608   1546   1417    129
Birth       ki1135781-COHORTS          Q2    4608   1128   1042     86
Birth       ki1135781-COHORTS          Q3    4608   1318   1231     87
Birth       ki1135781-COHORTS          Q4    4608    616    597     19
Birth       ki1148112-LCNI-5           Q1       0      0      0      0
Birth       ki1148112-LCNI-5           Q2       0      0      0      0
Birth       ki1148112-LCNI-5           Q3       0      0      0      0
Birth       ki1148112-LCNI-5           Q4       0      0      0      0

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          Q1                   NA                0.3480000   0.2889185   0.4070815
12 months   ki0047075b-MAL-ED          Q2                   NA                0.3840580   0.3266434   0.4414725
12 months   ki0047075b-MAL-ED          Q3                   NA                0.2533333   0.1964707   0.3101959
12 months   ki0047075b-MAL-ED          Q4                   NA                0.1785714   0.0966194   0.2605234
12 months   ki1017093c-NIH-Crypto      Q1                   NA                0.2937853   0.2266343   0.3609363
12 months   ki1017093c-NIH-Crypto      Q2                   NA                0.2885572   0.2258751   0.3512394
12 months   ki1017093c-NIH-Crypto      Q3                   NA                0.2093023   0.1548860   0.2637186
12 months   ki1017093c-NIH-Crypto      Q4                   NA                0.1415929   0.0772673   0.2059186
12 months   ki1113344-GMS-Nepal        Q1                   NA                0.3849372   0.3231933   0.4466811
12 months   ki1113344-GMS-Nepal        Q2                   NA                0.3444444   0.2461834   0.4427055
12 months   ki1113344-GMS-Nepal        Q3                   NA                0.3695652   0.2708441   0.4682863
12 months   ki1113344-GMS-Nepal        Q4                   NA                0.2500000   0.1771601   0.3228399
12 months   ki1135781-COHORTS          Q1                   NA                0.5484311   0.5229536   0.5739086
12 months   ki1135781-COHORTS          Q2                   NA                0.4232283   0.3928445   0.4536122
12 months   ki1135781-COHORTS          Q3                   NA                0.2928128   0.2662422   0.3193834
12 months   ki1135781-COHORTS          Q4                   NA                0.2382813   0.2013743   0.2751882
12 months   ki1148112-LCNI-5           Q1                   NA                0.3868613   0.3051738   0.4685488
12 months   ki1148112-LCNI-5           Q2                   NA                0.4519231   0.3561165   0.5477296
12 months   ki1148112-LCNI-5           Q3                   NA                0.4255319   0.2839496   0.5671142
12 months   ki1148112-LCNI-5           Q4                   NA                0.2777778   0.0705219   0.4850336
18 months   ki0047075b-MAL-ED          Q1                   NA                0.4773663   0.4145256   0.5402069
18 months   ki0047075b-MAL-ED          Q2                   NA                0.5361217   0.4758136   0.5964297
18 months   ki0047075b-MAL-ED          Q3                   NA                0.3963134   0.3311933   0.4614334
18 months   ki0047075b-MAL-ED          Q4                   NA                0.3205128   0.2168828   0.4241428
18 months   ki1017093c-NIH-Crypto      Q1                   NA                0.4105960   0.3320695   0.4891225
18 months   ki1017093c-NIH-Crypto      Q2                   NA                0.3709677   0.3014911   0.4404444
18 months   ki1017093c-NIH-Crypto      Q3                   NA                0.1979167   0.1415151   0.2543182
18 months   ki1017093c-NIH-Crypto      Q4                   NA                0.2095238   0.1316202   0.2874274
18 months   ki1113344-GMS-Nepal        Q1                   NA                0.5798319   0.5170669   0.6425970
18 months   ki1113344-GMS-Nepal        Q2                   NA                0.5517241   0.4471274   0.6563208
18 months   ki1113344-GMS-Nepal        Q3                   NA                0.5483871   0.4471524   0.6496218
18 months   ki1113344-GMS-Nepal        Q4                   NA                0.4198473   0.3352561   0.5044385
18 months   ki1135781-COHORTS          Q1                   NA                0.7510081   0.7240936   0.7779225
18 months   ki1135781-COHORTS          Q2                   NA                0.6772152   0.6407576   0.7136728
18 months   ki1135781-COHORTS          Q3                   NA                0.5503356   0.5146077   0.5860634
18 months   ki1135781-COHORTS          Q4                   NA                0.3856041   0.3372262   0.4339820
18 months   ki1148112-LCNI-5           Q1                   NA                0.4802632   0.4007250   0.5598013
18 months   ki1148112-LCNI-5           Q2                   NA                0.5250000   0.4355250   0.6144750
18 months   ki1148112-LCNI-5           Q3                   NA                0.5000000   0.3664515   0.6335485
18 months   ki1148112-LCNI-5           Q4                   NA                0.4230769   0.2329044   0.6132495
24 months   ki0047075b-MAL-ED          Q1                   NA                0.4549356   0.3909547   0.5189165
24 months   ki0047075b-MAL-ED          Q2                   NA                0.5310078   0.4700747   0.5919408
24 months   ki0047075b-MAL-ED          Q3                   NA                0.3842365   0.3172807   0.4511922
24 months   ki0047075b-MAL-ED          Q4                   NA                0.2948718   0.1936130   0.3961306
24 months   ki1017093c-NIH-Crypto      Q1                   NA                0.3628319   0.2740935   0.4515702
24 months   ki1017093c-NIH-Crypto      Q2                   NA                0.3355263   0.2603897   0.4106629
24 months   ki1017093c-NIH-Crypto      Q3                   NA                0.1761006   0.1168368   0.2353645
24 months   ki1017093c-NIH-Crypto      Q4                   NA                0.1333333   0.0630350   0.2036317
24 months   ki1113344-GMS-Nepal        Q1                   NA                0.4615385   0.3957470   0.5273300
24 months   ki1113344-GMS-Nepal        Q2                   NA                0.5405405   0.4268809   0.6542002
24 months   ki1113344-GMS-Nepal        Q3                   NA                0.4712644   0.3662675   0.5762613
24 months   ki1113344-GMS-Nepal        Q4                   NA                0.3448276   0.2582442   0.4314109
24 months   ki1135781-COHORTS          Q1                   NA                0.7426273   0.7204412   0.7648135
24 months   ki1135781-COHORTS          Q2                   NA                0.6135029   0.5836452   0.6433606
24 months   ki1135781-COHORTS          Q3                   NA                0.4921466   0.4631982   0.5210950
24 months   ki1135781-COHORTS          Q4                   NA                0.3399209   0.2986436   0.3811983
24 months   ki1148112-LCNI-5           Q1                   NA                0.4045802   0.3203881   0.4887722
24 months   ki1148112-LCNI-5           Q2                   NA                0.4945055   0.3916053   0.5974057
24 months   ki1148112-LCNI-5           Q3                   NA                0.4130435   0.2705106   0.5555763
24 months   ki1148112-LCNI-5           Q4                   NA                0.4166667   0.2190879   0.6142454
3 months    ki0047075b-MAL-ED          Q1                   NA                0.1507353   0.1081922   0.1932784
3 months    ki0047075b-MAL-ED          Q2                   NA                0.1743421   0.1316695   0.2170147
3 months    ki0047075b-MAL-ED          Q3                   NA                0.1572581   0.1119252   0.2025909
3 months    ki0047075b-MAL-ED          Q4                   NA                0.1276596   0.0601616   0.1951575
3 months    ki1000304b-SAS-FoodSuppl   Q1                   NA                0.4000000   0.2368564   0.5631436
3 months    ki1000304b-SAS-FoodSuppl   Q2                   NA                0.5000000   0.2537318   0.7462682
3 months    ki1000304b-SAS-FoodSuppl   Q3                   NA                0.3600000   0.1708660   0.5491340
3 months    ki1000304b-SAS-FoodSuppl   Q4                   NA                0.3333333   0.1306666   0.5360001
3 months    ki1017093c-NIH-Crypto      Q1                   NA                0.2234043   0.1638228   0.2829857
3 months    ki1017093c-NIH-Crypto      Q2                   NA                0.2500000   0.1905390   0.3094610
3 months    ki1017093c-NIH-Crypto      Q3                   NA                0.2252252   0.1702374   0.2802130
3 months    ki1017093c-NIH-Crypto      Q4                   NA                0.1140351   0.0556473   0.1724228
3 months    ki1113344-GMS-Nepal        Q1                   NA                0.1895161   0.1406960   0.2383362
3 months    ki1113344-GMS-Nepal        Q2                   NA                0.1555556   0.0806116   0.2304995
3 months    ki1113344-GMS-Nepal        Q3                   NA                0.0851064   0.0286476   0.1415652
3 months    ki1113344-GMS-Nepal        Q4                   NA                0.1086957   0.0567189   0.1606724
3 months    ki1135781-COHORTS          Q1                   NA                0.1959027   0.1762179   0.2155874
3 months    ki1135781-COHORTS          Q2                   NA                0.1537778   0.1326959   0.1748596
3 months    ki1135781-COHORTS          Q3                   NA                0.0960187   0.0798834   0.1121541
3 months    ki1135781-COHORTS          Q4                   NA                0.0765306   0.0550406   0.0980206
6 months    ki0047075b-MAL-ED          Q1                   NA                0.1800766   0.1334333   0.2267200
6 months    ki0047075b-MAL-ED          Q2                   NA                0.1938776   0.1486623   0.2390928
6 months    ki0047075b-MAL-ED          Q3                   NA                0.1367521   0.0927046   0.1807996
6 months    ki0047075b-MAL-ED          Q4                   NA                0.1612903   0.0864970   0.2360837
6 months    ki1000304b-SAS-FoodSuppl   Q1                   NA                0.4545455   0.2837671   0.6253238
6 months    ki1000304b-SAS-FoodSuppl   Q2                   NA                0.6666667   0.4268552   0.9064782
6 months    ki1000304b-SAS-FoodSuppl   Q3                   NA                0.5185185   0.3290610   0.7079761
6 months    ki1000304b-SAS-FoodSuppl   Q4                   NA                0.4285714   0.2158041   0.6413387
6 months    ki1017093c-NIH-Crypto      Q1                   NA                0.2430939   0.1805593   0.3056286
6 months    ki1017093c-NIH-Crypto      Q2                   NA                0.2487562   0.1889521   0.3085604
6 months    ki1017093c-NIH-Crypto      Q3                   NA                0.1855204   0.1342352   0.2368055
6 months    ki1017093c-NIH-Crypto      Q4                   NA                0.1339286   0.0708101   0.1970470
6 months    ki1113344-GMS-Nepal        Q1                   NA                0.2469136   0.1926477   0.3011794
6 months    ki1113344-GMS-Nepal        Q2                   NA                0.2527473   0.1633774   0.3421171
6 months    ki1113344-GMS-Nepal        Q3                   NA                0.1739130   0.0963920   0.2514341
6 months    ki1113344-GMS-Nepal        Q4                   NA                0.1470588   0.0874829   0.2066347
6 months    ki1135781-COHORTS          Q1                   NA                0.3104812   0.2871952   0.3337673
6 months    ki1135781-COHORTS          Q2                   NA                0.2247706   0.1999868   0.2495545
6 months    ki1135781-COHORTS          Q3                   NA                0.1642157   0.1434588   0.1849725
6 months    ki1135781-COHORTS          Q4                   NA                0.1094891   0.0833426   0.1356355
6 months    ki1148112-LCNI-5           Q1                   NA                0.3977273   0.3253303   0.4701243
6 months    ki1148112-LCNI-5           Q2                   NA                0.3684211   0.2863391   0.4505030
6 months    ki1148112-LCNI-5           Q3                   NA                0.3125000   0.1988004   0.4261996
6 months    ki1148112-LCNI-5           Q4                   NA                0.3333333   0.1644368   0.5022299
9 months    ki0047075b-MAL-ED          Q1                   NA                0.2578125   0.2041968   0.3114282
9 months    ki0047075b-MAL-ED          Q2                   NA                0.2605634   0.2094834   0.3116434
9 months    ki0047075b-MAL-ED          Q3                   NA                0.1929825   0.1417275   0.2442374
9 months    ki0047075b-MAL-ED          Q4                   NA                0.2117647   0.1248590   0.2986704
9 months    ki1017093c-NIH-Crypto      Q1                   NA                0.2681564   0.2032134   0.3330995
9 months    ki1017093c-NIH-Crypto      Q2                   NA                0.2741117   0.2117782   0.3364452
9 months    ki1017093c-NIH-Crypto      Q3                   NA                0.2093023   0.1548860   0.2637186
9 months    ki1017093c-NIH-Crypto      Q4                   NA                0.1478261   0.0829109   0.2127413
9 months    ki1113344-GMS-Nepal        Q1                   NA                0.2978723   0.2393485   0.3563961
9 months    ki1113344-GMS-Nepal        Q2                   NA                0.3448276   0.2448593   0.4447959
9 months    ki1113344-GMS-Nepal        Q3                   NA                0.2872340   0.1956814   0.3787867
9 months    ki1113344-GMS-Nepal        Q4                   NA                0.2089552   0.1400554   0.2778550
9 months    ki1135781-COHORTS          Q1                   NA                0.4184636   0.3933621   0.4435651
9 months    ki1135781-COHORTS          Q2                   NA                0.3066667   0.2787728   0.3345605
9 months    ki1135781-COHORTS          Q3                   NA                0.2127660   0.1893623   0.2361696
9 months    ki1135781-COHORTS          Q4                   NA                0.1564246   0.1256971   0.1871520
9 months    ki1148112-LCNI-5           Q1                   NA                0.3021583   0.2257000   0.3786166
9 months    ki1148112-LCNI-5           Q2                   NA                0.3365385   0.2455796   0.4274973
9 months    ki1148112-LCNI-5           Q3                   NA                0.3137255   0.1861771   0.4412739
9 months    ki1148112-LCNI-5           Q4                   NA                0.2727273   0.0863307   0.4591239
Birth       ki0047075b-MAL-ED          Q1                   NA                0.1333333   0.0888869   0.1777798
Birth       ki0047075b-MAL-ED          Q2                   NA                0.1460177   0.0999490   0.1920864
Birth       ki0047075b-MAL-ED          Q3                   NA                0.1048035   0.0651060   0.1445009
Birth       ki0047075b-MAL-ED          Q4                   NA                0.1341463   0.0603325   0.2079602
Birth       ki1135781-COHORTS          Q1                   NA                0.0834411   0.0696544   0.0972279
Birth       ki1135781-COHORTS          Q2                   NA                0.0762411   0.0607524   0.0917298
Birth       ki1135781-COHORTS          Q3                   NA                0.0660091   0.0526027   0.0794155
Birth       ki1135781-COHORTS          Q4                   NA                0.0308442   0.0171893   0.0444990


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          NA                   NA                0.3173653   0.3126662   0.3220643
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.2422096   0.2380153   0.2464039
12 months   ki1113344-GMS-Nepal        NA                   NA                0.3429084   0.3383684   0.3474485
12 months   ki1135781-COHORTS          NA                   NA                0.4091240   0.4054753   0.4127727
12 months   ki1148112-LCNI-5           NA                   NA                0.4084967   0.4036046   0.4133889
18 months   ki0047075b-MAL-ED          NA                   NA                0.4594257   0.4545321   0.4643194
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.3012618   0.2939123   0.3086114
18 months   ki1113344-GMS-Nepal        NA                   NA                0.5318761   0.5265149   0.5372374
18 months   ki1135781-COHORTS          NA                   NA                0.6283539   0.6236450   0.6330627
18 months   ki1148112-LCNI-5           NA                   NA                0.4943182   0.4913851   0.4972513
24 months   ki0047075b-MAL-ED          NA                   NA                0.4455959   0.4402435   0.4509482
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.2568093   0.2486053   0.2650133
24 months   ki1113344-GMS-Nepal        NA                   NA                0.4477912   0.4422812   0.4533011
24 months   ki1135781-COHORTS          NA                   NA                0.5931349   0.5889821   0.5972877
24 months   ki1148112-LCNI-5           NA                   NA                0.4349315   0.4303039   0.4395591
3 months    ki0047075b-MAL-ED          NA                   NA                0.1579521   0.1570402   0.1588639
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.3917526   0.3808766   0.4026285
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.2142857   0.2110437   0.2175278
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1473684   0.1438971   0.1508397
3 months    ki1135781-COHORTS          NA                   NA                0.1420105   0.1406552   0.1433658
6 months    ki0047075b-MAL-ED          NA                   NA                0.1712018   0.1696961   0.1727075
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.5000000   0.4840860   0.5159140
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.2097902   0.2066859   0.2128945
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2117438   0.2079936   0.2154940
6 months    ki1135781-COHORTS          NA                   NA                0.2231103   0.2209680   0.2252526
6 months    ki1148112-LCNI-5           NA                   NA                0.3697270   0.3666956   0.3727584
9 months    ki0047075b-MAL-ED          NA                   NA                0.2368113   0.2348011   0.2388214
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.2322946   0.2288821   0.2357072
9 months    ki1113344-GMS-Nepal        NA                   NA                0.2818182   0.2780432   0.2855932
9 months    ki1135781-COHORTS          NA                   NA                0.3007537   0.2978019   0.3037054
9 months    ki1148112-LCNI-5           NA                   NA                0.3132911   0.3112341   0.3153482
Birth       ki0047075b-MAL-ED          NA                   NA                0.1286089   0.1274413   0.1297766
Birth       ki1135781-COHORTS          NA                   NA                0.0696615   0.0691787   0.0701443


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          Q2                   Q1                1.1036149   0.8801867   1.3837584
12 months   ki0047075b-MAL-ED          Q3                   Q1                0.7279693   0.5493995   0.9645793
12 months   ki0047075b-MAL-ED          Q4                   Q1                0.5131363   0.3145724   0.8370374
12 months   ki1017093c-NIH-Crypto      Q2                   Q1                0.9822044   0.7165662   1.3463172
12 months   ki1017093c-NIH-Crypto      Q3                   Q1                0.7124329   0.5039654   1.0071339
12 months   ki1017093c-NIH-Crypto      Q4                   Q1                0.4819605   0.2898322   0.8014497
12 months   ki1113344-GMS-Nepal        Q2                   Q1                0.8948068   0.6450527   1.2412615
12 months   ki1113344-GMS-Nepal        Q3                   Q1                0.9600662   0.7030423   1.3110549
12 months   ki1113344-GMS-Nepal        Q4                   Q1                0.6494565   0.4657002   0.9057195
12 months   ki1135781-COHORTS          Q2                   Q1                0.7717074   0.7084612   0.8405998
12 months   ki1135781-COHORTS          Q3                   Q1                0.5339099   0.4821640   0.5912090
12 months   ki1135781-COHORTS          Q4                   Q1                0.4344780   0.3696071   0.5107346
12 months   ki1148112-LCNI-5           Q2                   Q1                1.1681785   0.8660882   1.5756375
12 months   ki1148112-LCNI-5           Q3                   Q1                1.0999599   0.7417137   1.6312382
12 months   ki1148112-LCNI-5           Q4                   Q1                0.7180294   0.3306585   1.5592103
18 months   ki0047075b-MAL-ED          Q2                   Q1                1.1230825   0.9445194   1.3354032
18 months   ki0047075b-MAL-ED          Q3                   Q1                0.8302082   0.6725882   1.0247661
18 months   ki0047075b-MAL-ED          Q4                   Q1                0.6714191   0.4735686   0.9519289
18 months   ki1017093c-NIH-Crypto      Q2                   Q1                0.9034860   0.6913051   1.1807911
18 months   ki1017093c-NIH-Crypto      Q3                   Q1                0.4820228   0.3419925   0.6793892
18 months   ki1017093c-NIH-Crypto      Q4                   Q1                0.5102919   0.3359179   0.7751828
18 months   ki1113344-GMS-Nepal        Q2                   Q1                0.9515242   0.7649089   1.1836683
18 months   ki1113344-GMS-Nepal        Q3                   Q1                0.9457691   0.7635647   1.1714515
18 months   ki1113344-GMS-Nepal        Q4                   Q1                0.7240845   0.5760475   0.9101653
18 months   ki1135781-COHORTS          Q2                   Q1                0.9017416   0.8452696   0.9619864
18 months   ki1135781-COHORTS          Q3                   Q1                0.7327958   0.6804212   0.7892019
18 months   ki1135781-COHORTS          Q4                   Q1                0.5134487   0.4506414   0.5850096
18 months   ki1148112-LCNI-5           Q2                   Q1                1.0931507   0.8619327   1.3863941
18 months   ki1148112-LCNI-5           Q3                   Q1                1.0410959   0.7603313   1.4255372
18 months   ki1148112-LCNI-5           Q4                   Q1                0.8809273   0.5456281   1.4222746
24 months   ki0047075b-MAL-ED          Q2                   Q1                1.1672152   0.9734677   1.3995238
24 months   ki0047075b-MAL-ED          Q3                   Q1                0.8445952   0.6751457   1.0565736
24 months   ki0047075b-MAL-ED          Q4                   Q1                0.6481616   0.4472232   0.9393821
24 months   ki1017093c-NIH-Crypto      Q2                   Q1                0.9247433   0.6637528   1.2883564
24 months   ki1017093c-NIH-Crypto      Q3                   Q1                0.4853505   0.3201706   0.7357488
24 months   ki1017093c-NIH-Crypto      Q4                   Q1                0.3674797   0.2055043   0.6571217
24 months   ki1113344-GMS-Nepal        Q2                   Q1                1.1711712   0.9084363   1.5098933
24 months   ki1113344-GMS-Nepal        Q3                   Q1                1.0210728   0.7837666   1.3302297
24 months   ki1113344-GMS-Nepal        Q4                   Q1                0.7471264   0.5597560   0.9972166
24 months   ki1135781-COHORTS          Q2                   Q1                0.8261249   0.7802702   0.8746744
24 months   ki1135781-COHORTS          Q3                   Q1                0.6627100   0.6204002   0.7079053
24 months   ki1135781-COHORTS          Q4                   Q1                0.4577275   0.4039216   0.5187008
24 months   ki1148112-LCNI-5           Q2                   Q1                1.2222683   0.9106666   1.6404904
24 months   ki1148112-LCNI-5           Q3                   Q1                1.0209188   0.6823132   1.5275612
24 months   ki1148112-LCNI-5           Q4                   Q1                1.0298742   0.6136045   1.7285416
3 months    ki0047075b-MAL-ED          Q2                   Q1                1.1566110   0.7960505   1.6804826
3 months    ki0047075b-MAL-ED          Q3                   Q1                1.0432730   0.6969307   1.5617315
3 months    ki0047075b-MAL-ED          Q4                   Q1                0.8469123   0.4650987   1.5421682
3 months    ki1000304b-SAS-FoodSuppl   Q2                   Q1                1.2500000   0.6594551   2.3693805
3 months    ki1000304b-SAS-FoodSuppl   Q3                   Q1                0.9000000   0.4627975   1.7502254
3 months    ki1000304b-SAS-FoodSuppl   Q4                   Q1                0.8333333   0.4007367   1.7329195
3 months    ki1017093c-NIH-Crypto      Q2                   Q1                1.1190476   0.7828064   1.5997155
3 months    ki1017093c-NIH-Crypto      Q3                   Q1                1.0081510   0.7022577   1.4472870
3 months    ki1017093c-NIH-Crypto      Q4                   Q1                0.5104428   0.2865657   0.9092220
3 months    ki1113344-GMS-Nepal        Q2                   Q1                0.8208038   0.4753048   1.4174460
3 months    ki1113344-GMS-Nepal        Q3                   Q1                0.4490720   0.2204193   0.9149181
3 months    ki1113344-GMS-Nepal        Q4                   Q1                0.5735430   0.3331771   0.9873177
3 months    ki1135781-COHORTS          Q2                   Q1                0.7849702   0.6622690   0.9304048
3 months    ki1135781-COHORTS          Q3                   Q1                0.4901349   0.4029797   0.5961397
3 months    ki1135781-COHORTS          Q4                   Q1                0.3906563   0.2899153   0.5264031
6 months    ki0047075b-MAL-ED          Q2                   Q1                1.0766392   0.7598029   1.5255955
6 months    ki0047075b-MAL-ED          Q3                   Q1                0.7594108   0.5023101   1.1481050
6 months    ki0047075b-MAL-ED          Q4                   Q1                0.8956760   0.5265906   1.5234521
6 months    ki1000304b-SAS-FoodSuppl   Q2                   Q1                1.4666667   0.8718324   2.4673447
6 months    ki1000304b-SAS-FoodSuppl   Q3                   Q1                1.1407407   0.6754296   1.9266099
6 months    ki1000304b-SAS-FoodSuppl   Q4                   Q1                0.9428571   0.5058883   1.7572646
6 months    ki1017093c-NIH-Crypto      Q2                   Q1                1.0232926   0.7195907   1.4551715
6 months    ki1017093c-NIH-Crypto      Q3                   Q1                0.7631633   0.5231437   1.1133045
6 months    ki1017093c-NIH-Crypto      Q4                   Q1                0.5509334   0.3220456   0.9424991
6 months    ki1113344-GMS-Nepal        Q2                   Q1                1.0236264   0.6750436   1.5522124
6 months    ki1113344-GMS-Nepal        Q3                   Q1                0.7043478   0.4284996   1.1577743
6 months    ki1113344-GMS-Nepal        Q4                   Q1                0.5955882   0.3756502   0.9442970
6 months    ki1135781-COHORTS          Q2                   Q1                0.7239428   0.6335633   0.8272153
6 months    ki1135781-COHORTS          Q3                   Q1                0.5289070   0.4566132   0.6126467
6 months    ki1135781-COHORTS          Q4                   Q1                0.3526431   0.2745551   0.4529406
6 months    ki1148112-LCNI-5           Q2                   Q1                0.9263158   0.6947249   1.2351090
6 months    ki1148112-LCNI-5           Q3                   Q1                0.7857143   0.5230940   1.1801836
6 months    ki1148112-LCNI-5           Q4                   Q1                0.8380952   0.4891836   1.4358692
9 months    ki0047075b-MAL-ED          Q2                   Q1                1.0106701   0.7594336   1.3450208
9 months    ki0047075b-MAL-ED          Q3                   Q1                0.7485380   0.5342136   1.0488486
9 months    ki0047075b-MAL-ED          Q4                   Q1                0.8213904   0.5184925   1.3012380
9 months    ki1017093c-NIH-Crypto      Q2                   Q1                1.0222081   0.7332664   1.4250066
9 months    ki1017093c-NIH-Crypto      Q3                   Q1                0.7805233   0.5471111   1.1135152
9 months    ki1017093c-NIH-Crypto      Q4                   Q1                0.5512681   0.3338639   0.9102408
9 months    ki1113344-GMS-Nepal        Q2                   Q1                1.1576355   0.8155992   1.6431108
9 months    ki1113344-GMS-Nepal        Q3                   Q1                0.9642857   0.6631228   1.4022244
9 months    ki1113344-GMS-Nepal        Q4                   Q1                0.7014925   0.4778892   1.0297195
9 months    ki1135781-COHORTS          Q2                   Q1                0.7328395   0.6571878   0.8171998
9 months    ki1135781-COHORTS          Q3                   Q1                0.5084455   0.4485716   0.5763113
9 months    ki1135781-COHORTS          Q4                   Q1                0.3738069   0.3044018   0.4590367
9 months    ki1148112-LCNI-5           Q2                   Q1                1.1137821   0.7691409   1.6128520
9 months    ki1148112-LCNI-5           Q3                   Q1                1.0382820   0.6431950   1.6760540
9 months    ki1148112-LCNI-5           Q4                   Q1                0.9025974   0.4354952   1.8707029
Birth       ki0047075b-MAL-ED          Q2                   Q1                1.0951327   0.6920453   1.7330018
Birth       ki0047075b-MAL-ED          Q3                   Q1                0.7860262   0.4745731   1.3018800
Birth       ki0047075b-MAL-ED          Q4                   Q1                1.0060976   0.5287351   1.9144413
Birth       ki1135781-COHORTS          Q2                   Q1                0.9137116   0.7032085   1.1872280
Birth       ki1135781-COHORTS          Q3                   Q1                0.7910859   0.6088598   1.0278505
Birth       ki1135781-COHORTS          Q4                   Q1                0.3696517   0.2304484   0.5929411


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          Q1                   NA                -0.0306347   -0.0899028    0.0286334
12 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.0515757   -0.1188576    0.0157062
12 months   ki1113344-GMS-Nepal        Q1                   NA                -0.0420288   -0.1039394    0.0198818
12 months   ki1135781-COHORTS          Q1                   NA                -0.1393071   -0.1650446   -0.1135697
12 months   ki1148112-LCNI-5           Q1                   NA                 0.0216354   -0.0601984    0.1034693
18 months   ki0047075b-MAL-ED          Q1                   NA                -0.0179405   -0.0809715    0.0450904
18 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.1093342   -0.1882039   -0.0304645
18 months   ki1113344-GMS-Nepal        Q1                   NA                -0.0479558   -0.1109494    0.0150378
18 months   ki1135781-COHORTS          Q1                   NA                -0.1226542   -0.1499775   -0.0953309
18 months   ki1148112-LCNI-5           Q1                   NA                 0.0140550   -0.0655372    0.0936472
24 months   ki0047075b-MAL-ED          Q1                   NA                -0.0093398   -0.0735442    0.0548646
24 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.1060225   -0.1951393   -0.0169057
24 months   ki1113344-GMS-Nepal        Q1                   NA                -0.0137473   -0.0797691    0.0522745
24 months   ki1135781-COHORTS          Q1                   NA                -0.1494924   -0.1720639   -0.1269209
24 months   ki1148112-LCNI-5           Q1                   NA                 0.0303514   -0.0539678    0.1146705
3 months    ki0047075b-MAL-ED          Q1                   NA                 0.0072168   -0.0353361    0.0497697
3 months    ki1000304b-SAS-FoodSuppl   Q1                   NA                -0.0082474   -0.1717531    0.1552583
3 months    ki1017093c-NIH-Crypto      Q1                   NA                -0.0091185   -0.0687881    0.0505510
3 months    ki1113344-GMS-Nepal        Q1                   NA                -0.0421477   -0.0910911    0.0067957
3 months    ki1135781-COHORTS          Q1                   NA                -0.0538922   -0.0736235   -0.0341608
6 months    ki0047075b-MAL-ED          Q1                   NA                -0.0088748   -0.0555424    0.0377928
6 months    ki1000304b-SAS-FoodSuppl   Q1                   NA                 0.0454545   -0.1260637    0.2169728
6 months    ki1017093c-NIH-Crypto      Q1                   NA                -0.0333037   -0.0959154    0.0293079
6 months    ki1113344-GMS-Nepal        Q1                   NA                -0.0351698   -0.0895651    0.0192255
6 months    ki1135781-COHORTS          Q1                   NA                -0.0873709   -0.1107553   -0.0639865
6 months    ki1148112-LCNI-5           Q1                   NA                -0.0280002   -0.1004607    0.0444602
9 months    ki0047075b-MAL-ED          Q1                   NA                -0.0210012   -0.0746546    0.0326521
9 months    ki1017093c-NIH-Crypto      Q1                   NA                -0.0358618   -0.1008944    0.0291708
9 months    ki1113344-GMS-Nepal        Q1                   NA                -0.0160542   -0.0746996    0.0425913
9 months    ki1135781-COHORTS          Q1                   NA                -0.1177100   -0.1429844   -0.0924355
9 months    ki1148112-LCNI-5           Q1                   NA                 0.0111329   -0.0653531    0.0876188
Birth       ki0047075b-MAL-ED          Q1                   NA                -0.0047244   -0.0491862    0.0397374
Birth       ki1135781-COHORTS          Q1                   NA                -0.0137797   -0.0275748    0.0000155


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          Q1                   NA                -0.0965283   -0.3002649    0.0752851
12 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.2129382   -0.5254241    0.0355344
12 months   ki1113344-GMS-Nepal        Q1                   NA                -0.1225657   -0.3185890    0.0443166
12 months   ki1135781-COHORTS          Q1                   NA                -0.3405009   -0.4054351   -0.2785669
12 months   ki1148112-LCNI-5           Q1                   NA                 0.0529635   -0.1700848    0.2334930
18 months   ki0047075b-MAL-ED          Q1                   NA                -0.0390499   -0.1857522    0.0895022
18 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.3629208   -0.6527322   -0.1239287
18 months   ki1113344-GMS-Nepal        Q1                   NA                -0.0901635   -0.2153632    0.0221389
18 months   ki1135781-COHORTS          Q1                   NA                -0.1951992   -0.2397699   -0.1522309
18 months   ki1148112-LCNI-5           Q1                   NA                 0.0284332   -0.1466845    0.1768074
24 months   ki0047075b-MAL-ED          Q1                   NA                -0.0209602   -0.1757343    0.1134394
24 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.4128453   -0.8080606   -0.1040182
24 months   ki1113344-GMS-Nepal        Q1                   NA                -0.0307002   -0.1892427    0.1067063
24 months   ki1135781-COHORTS          Q1                   NA                -0.2520378   -0.2910518   -0.2142029
24 months   ki1148112-LCNI-5           Q1                   NA                 0.0697842   -0.1457169    0.2447511
3 months    ki0047075b-MAL-ED          Q1                   NA                 0.0456897   -0.2655793    0.2804021
3 months    ki1000304b-SAS-FoodSuppl   Q1                   NA                -0.0210526   -0.5366992    0.3215663
3 months    ki1017093c-NIH-Crypto      Q1                   NA                -0.0425532   -0.3617890    0.2018461
3 months    ki1113344-GMS-Nepal        Q1                   NA                -0.2860023   -0.6656529    0.0071149
3 months    ki1135781-COHORTS          Q1                   NA                -0.3794941   -0.5260020   -0.2470520
6 months    ki0047075b-MAL-ED          Q1                   NA                -0.0518383   -0.3630270    0.1883038
6 months    ki1000304b-SAS-FoodSuppl   Q1                   NA                 0.0909091   -0.3254446    0.3764762
6 months    ki1017093c-NIH-Crypto      Q1                   NA                -0.1587477   -0.4993174    0.1044616
6 months    ki1113344-GMS-Nepal        Q1                   NA                -0.1660961   -0.4537561    0.0646436
6 months    ki1135781-COHORTS          Q1                   NA                -0.3916041   -0.5009063   -0.2902618
6 months    ki1148112-LCNI-5           Q1                   NA                -0.0757322   -0.2907363    0.1034577
9 months    ki0047075b-MAL-ED          Q1                   NA                -0.0886835   -0.3405850    0.1158847
9 months    ki1017093c-NIH-Crypto      Q1                   NA                -0.1543807   -0.4713680    0.0943158
9 months    ki1113344-GMS-Nepal        Q1                   NA                -0.0569664   -0.2870229    0.1319673
9 months    ki1135781-COHORTS          Q1                   NA                -0.3913833   -0.4785782   -0.3093305
9 months    ki1148112-LCNI-5           Q1                   NA                 0.0355352   -0.2422743    0.2512182
Birth       ki0047075b-MAL-ED          Q1                   NA                -0.0367347   -0.4470808    0.2572503
Birth       ki1135781-COHORTS          Q1                   NA                -0.1978092   -0.4132138   -0.0152371


