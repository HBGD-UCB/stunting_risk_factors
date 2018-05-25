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
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/a424ee49-c4ec-40f7-a4e8-1f519dcd50d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a424ee49-c4ec-40f7-a4e8-1f519dcd50d5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/a424ee49-c4ec-40f7-a4e8-1f519dcd50d5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a424ee49-c4ec-40f7-a4e8-1f519dcd50d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
3 months    ki0047075b-MAL-ED          Q1     966    287    216     71
3 months    ki0047075b-MAL-ED          Q2     966    318    220     98
3 months    ki0047075b-MAL-ED          Q3     966    260    192     68
3 months    ki0047075b-MAL-ED          Q4     966    101     72     29
3 months    ki1000304b-SAS-FoodSuppl   Q1       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   Q2       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   Q3       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   Q4       0      0      0      0
3 months    ki1017093b-PROVIDE         Q1     175     78     54     24
3 months    ki1017093b-PROVIDE         Q2     175     51     37     14
3 months    ki1017093b-PROVIDE         Q3     175     36     31      5
3 months    ki1017093b-PROVIDE         Q4     175     10      9      1
3 months    ki1017093c-NIH-Crypto      Q1     758    195    162     33
3 months    ki1017093c-NIH-Crypto      Q2     758    210    173     37
3 months    ki1017093c-NIH-Crypto      Q3     758    233    191     42
3 months    ki1017093c-NIH-Crypto      Q4     758    120    111      9
3 months    ki1066203-TanzaniaChild2   Q1     599    341    311     30
3 months    ki1066203-TanzaniaChild2   Q2     599    181    164     17
3 months    ki1066203-TanzaniaChild2   Q3     599     14     13      1
3 months    ki1066203-TanzaniaChild2   Q4     599     63     52     11
3 months    ki1113344-GMS-Nepal        Q1     592    257    205     52
3 months    ki1113344-GMS-Nepal        Q2     592     91     74     17
3 months    ki1113344-GMS-Nepal        Q3     592    101     94      7
3 months    ki1113344-GMS-Nepal        Q4     592    143    125     18
3 months    ki1126311-ZVITAMBO         Q1    3424     15     11      4
3 months    ki1126311-ZVITAMBO         Q2    3424     23     21      2
3 months    ki1126311-ZVITAMBO         Q3    3424    448    352     96
3 months    ki1126311-ZVITAMBO         Q4    3424   2938   2325    613
3 months    ki1135781-COHORTS          Q1    4776   1642   1290    352
3 months    ki1135781-COHORTS          Q2    4776   1165    961    204
3 months    ki1135781-COHORTS          Q3    4776   1344   1179    165
3 months    ki1135781-COHORTS          Q4    4776    625    571     54
3 months    ki1148112-LCNI-5           Q1       0      0      0      0
3 months    ki1148112-LCNI-5           Q2       0      0      0      0
3 months    ki1148112-LCNI-5           Q3       0      0      0      0
3 months    ki1148112-LCNI-5           Q4       0      0      0      0
6 months    ki0047075b-MAL-ED          Q1     908    270    178     92
6 months    ki0047075b-MAL-ED          Q2     908    302    184    118
6 months    ki0047075b-MAL-ED          Q3     908    243    155     88
6 months    ki0047075b-MAL-ED          Q4     908     93     61     32
6 months    ki1000304b-SAS-FoodSuppl   Q1     105     37     23     14
6 months    ki1000304b-SAS-FoodSuppl   Q2     105     17      8      9
6 months    ki1000304b-SAS-FoodSuppl   Q3     105     28     17     11
6 months    ki1000304b-SAS-FoodSuppl   Q4     105     23     14      9
6 months    ki1017093b-PROVIDE         Q1     166     75     49     26
6 months    ki1017093b-PROVIDE         Q2     166     47     33     14
6 months    ki1017093b-PROVIDE         Q3     166     34     27      7
6 months    ki1017093b-PROVIDE         Q4     166     10      9      1
6 months    ki1017093c-NIH-Crypto      Q1     736    187    122     65
6 months    ki1017093c-NIH-Crypto      Q2     736    206    133     73
6 months    ki1017093c-NIH-Crypto      Q3     736    227    158     69
6 months    ki1017093c-NIH-Crypto      Q4     736    116     97     19
6 months    ki1066203-TanzaniaChild2   Q1     555    315    256     59
6 months    ki1066203-TanzaniaChild2   Q2     555    169    138     31
6 months    ki1066203-TanzaniaChild2   Q3     555     14     11      3
6 months    ki1066203-TanzaniaChild2   Q4     555     57     42     15
6 months    ki1113344-GMS-Nepal        Q1     566    246    165     81
6 months    ki1113344-GMS-Nepal        Q2     566     91     61     30
6 months    ki1113344-GMS-Nepal        Q3     566     91     72     19
6 months    ki1113344-GMS-Nepal        Q4     566    138    106     32
6 months    ki1126311-ZVITAMBO         Q1    2229     13      8      5
6 months    ki1126311-ZVITAMBO         Q2    2229     15     11      4
6 months    ki1126311-ZVITAMBO         Q3    2229    278    197     81
6 months    ki1126311-ZVITAMBO         Q4    2229   1923   1354    569
6 months    ki1135781-COHORTS          Q1    2788    871    592    279
6 months    ki1135781-COHORTS          Q2    2788    650    464    186
6 months    ki1135781-COHORTS          Q3    2788    821    642    179
6 months    ki1135781-COHORTS          Q4    2788    446    383     63
6 months    ki1148112-LCNI-5           Q1     131     56     32     24
6 months    ki1148112-LCNI-5           Q2     131     46     26     20
6 months    ki1148112-LCNI-5           Q3     131     16     13      3
6 months    ki1148112-LCNI-5           Q4     131     13      9      4
12 months   ki0047075b-MAL-ED          Q1     883    263    143    120
12 months   ki0047075b-MAL-ED          Q2     883    294    131    163
12 months   ki0047075b-MAL-ED          Q3     883    235    126    109
12 months   ki0047075b-MAL-ED          Q4     883     91     55     36
12 months   ki1000304b-SAS-FoodSuppl   Q1      99     35      8     27
12 months   ki1000304b-SAS-FoodSuppl   Q2      99     15      1     14
12 months   ki1000304b-SAS-FoodSuppl   Q3      99     28      1     27
12 months   ki1000304b-SAS-FoodSuppl   Q4      99     21      5     16
12 months   ki1017093b-PROVIDE         Q1     159     72     39     33
12 months   ki1017093b-PROVIDE         Q2     159     46     31     15
12 months   ki1017093b-PROVIDE         Q3     159     31     24      7
12 months   ki1017093b-PROVIDE         Q4     159     10      9      1
12 months   ki1017093c-NIH-Crypto      Q1     729    185    106     79
12 months   ki1017093c-NIH-Crypto      Q2     729    205    111     94
12 months   ki1017093c-NIH-Crypto      Q3     729    223    147     76
12 months   ki1017093c-NIH-Crypto      Q4     729    116     88     28
12 months   ki1066203-TanzaniaChild2   Q1     495    282    198     84
12 months   ki1066203-TanzaniaChild2   Q2     495    147    103     44
12 months   ki1066203-TanzaniaChild2   Q3     495     13      9      4
12 months   ki1066203-TanzaniaChild2   Q4     495     53     27     26
12 months   ki1113344-GMS-Nepal        Q1     581    249    125    124
12 months   ki1113344-GMS-Nepal        Q2     581     93     51     42
12 months   ki1113344-GMS-Nepal        Q3     581     97     53     44
12 months   ki1113344-GMS-Nepal        Q4     581    142     87     55
12 months   ki1126311-ZVITAMBO         Q1    2485     15      9      6
12 months   ki1126311-ZVITAMBO         Q2    2485     17     11      6
12 months   ki1126311-ZVITAMBO         Q3    2485    323    198    125
12 months   ki1126311-ZVITAMBO         Q4    2485   2130   1335    795
12 months   ki1135781-COHORTS          Q1    4530   1603    672    931
12 months   ki1135781-COHORTS          Q2    4530   1129    603    526
12 months   ki1135781-COHORTS          Q3    4530   1238    785    453
12 months   ki1135781-COHORTS          Q4    4530    560    406    154
12 months   ki1148112-LCNI-5           Q1     391    173     88     85
12 months   ki1148112-LCNI-5           Q2     391    127     62     65
12 months   ki1148112-LCNI-5           Q3     391     62     34     28
12 months   ki1148112-LCNI-5           Q4     391     29     18     11
18 months   ki0047075b-MAL-ED          Q1     837    253     99    154
18 months   ki0047075b-MAL-ED          Q2     837    277     84    193
18 months   ki0047075b-MAL-ED          Q3     837    224     93    131
18 months   ki0047075b-MAL-ED          Q4     837     83     45     38
18 months   ki1000304b-SAS-FoodSuppl   Q1      93     33      4     29
18 months   ki1000304b-SAS-FoodSuppl   Q2      93     14      2     12
18 months   ki1000304b-SAS-FoodSuppl   Q3      93     26      0     26
18 months   ki1000304b-SAS-FoodSuppl   Q4      93     20      4     16
18 months   ki1017093b-PROVIDE         Q1     155     68     31     37
18 months   ki1017093b-PROVIDE         Q2     155     45     23     22
18 months   ki1017093b-PROVIDE         Q3     155     32     23      9
18 months   ki1017093b-PROVIDE         Q4     155     10      8      2
18 months   ki1017093c-NIH-Crypto      Q1     715    180     88     92
18 months   ki1017093c-NIH-Crypto      Q2     715    201     91    110
18 months   ki1017093c-NIH-Crypto      Q3     715    219    136     83
18 months   ki1017093c-NIH-Crypto      Q4     715    115     83     32
18 months   ki1066203-TanzaniaChild2   Q1     359    195    113     82
18 months   ki1066203-TanzaniaChild2   Q2     359    111     67     44
18 months   ki1066203-TanzaniaChild2   Q3     359     11      8      3
18 months   ki1066203-TanzaniaChild2   Q4     359     42     18     24
18 months   ki1113344-GMS-Nepal        Q1     573    247     75    172
18 months   ki1113344-GMS-Nepal        Q2     573     90     34     56
18 months   ki1113344-GMS-Nepal        Q3     573     95     35     60
18 months   ki1113344-GMS-Nepal        Q4     573    141     71     70
18 months   ki1126311-ZVITAMBO         Q1    1811     10      4      6
18 months   ki1126311-ZVITAMBO         Q2    1811     12      7      5
18 months   ki1126311-ZVITAMBO         Q3    1811    249    120    129
18 months   ki1126311-ZVITAMBO         Q4    1811   1540    802    738
18 months   ki1135781-COHORTS          Q1    2906   1049    246    803
18 months   ki1135781-COHORTS          Q2    2906    671    198    473
18 months   ki1135781-COHORTS          Q3    2906    770    325    445
18 months   ki1135781-COHORTS          Q4    2906    416    243    173
18 months   ki1148112-LCNI-5           Q1     324    143     67     76
18 months   ki1148112-LCNI-5           Q2     324    103     37     66
18 months   ki1148112-LCNI-5           Q3     324     52     24     28
18 months   ki1148112-LCNI-5           Q4     324     26     12     14
24 months   ki0047075b-MAL-ED          Q1     801    243     83    160
24 months   ki0047075b-MAL-ED          Q2     801    265     61    204
24 months   ki0047075b-MAL-ED          Q3     801    215     80    135
24 months   ki0047075b-MAL-ED          Q4     801     78     39     39
24 months   ki1000304b-SAS-FoodSuppl   Q1       9      4      1      3
24 months   ki1000304b-SAS-FoodSuppl   Q2       9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q3       9      3      0      3
24 months   ki1000304b-SAS-FoodSuppl   Q4       9      2      0      2
24 months   ki1017093b-PROVIDE         Q1     148     67     28     39
24 months   ki1017093b-PROVIDE         Q2     148     43     22     21
24 months   ki1017093b-PROVIDE         Q3     148     29     19     10
24 months   ki1017093b-PROVIDE         Q4     148      9      7      2
24 months   ki1017093c-NIH-Crypto      Q1     634    153     61     92
24 months   ki1017093c-NIH-Crypto      Q2     634    187     75    112
24 months   ki1017093c-NIH-Crypto      Q3     634    190    110     80
24 months   ki1017093c-NIH-Crypto      Q4     634    104     70     34
24 months   ki1066203-TanzaniaChild2   Q1     250    142     76     66
24 months   ki1066203-TanzaniaChild2   Q2     250     70     38     32
24 months   ki1066203-TanzaniaChild2   Q3     250      8      6      2
24 months   ki1066203-TanzaniaChild2   Q4     250     30     11     19
24 months   ki1113344-GMS-Nepal        Q1     567    245     64    181
24 months   ki1113344-GMS-Nepal        Q2     567     91     28     63
24 months   ki1113344-GMS-Nepal        Q3     567     94     26     68
24 months   ki1113344-GMS-Nepal        Q4     567    137     57     80
24 months   ki1126311-ZVITAMBO         Q1     454      2      1      1
24 months   ki1126311-ZVITAMBO         Q2     454      2      1      1
24 months   ki1126311-ZVITAMBO         Q3     454     75     22     53
24 months   ki1126311-ZVITAMBO         Q4     454    375    104    271
24 months   ki1135781-COHORTS          Q1    2860   1041    131    910
24 months   ki1135781-COHORTS          Q2    2860    647    116    531
24 months   ki1135781-COHORTS          Q3    2860    767    210    557
24 months   ki1135781-COHORTS          Q4    2860    405    178    227
24 months   ki1148112-LCNI-5           Q1     350    156     59     97
24 months   ki1148112-LCNI-5           Q2     350    112     33     79
24 months   ki1148112-LCNI-5           Q3     350     56     19     37
24 months   ki1148112-LCNI-5           Q4     350     26     10     16

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          Q1                   NA                0.2473868   0.1974401   0.2973334
3 months    ki0047075b-MAL-ED          Q2                   NA                0.3081761   0.2574003   0.3589519
3 months    ki0047075b-MAL-ED          Q3                   NA                0.2615385   0.2080921   0.3149848
3 months    ki0047075b-MAL-ED          Q4                   NA                0.2871287   0.1988500   0.3754075
3 months    ki1017093c-NIH-Crypto      Q1                   NA                0.1692308   0.1165688   0.2218928
3 months    ki1017093c-NIH-Crypto      Q2                   NA                0.1761905   0.1246285   0.2277525
3 months    ki1017093c-NIH-Crypto      Q3                   NA                0.1802575   0.1308671   0.2296479
3 months    ki1017093c-NIH-Crypto      Q4                   NA                0.0750000   0.0278431   0.1221569
3 months    ki1113344-GMS-Nepal        Q1                   NA                0.2023346   0.1531766   0.2514926
3 months    ki1113344-GMS-Nepal        Q2                   NA                0.1868132   0.1066650   0.2669613
3 months    ki1113344-GMS-Nepal        Q3                   NA                0.0693069   0.0197338   0.1188800
3 months    ki1113344-GMS-Nepal        Q4                   NA                0.1258741   0.0714612   0.1802871
3 months    ki1135781-COHORTS          Q1                   NA                0.2143727   0.1945209   0.2342245
3 months    ki1135781-COHORTS          Q2                   NA                0.1751073   0.1532809   0.1969337
3 months    ki1135781-COHORTS          Q3                   NA                0.1227679   0.1052212   0.1403145
3 months    ki1135781-COHORTS          Q4                   NA                0.0864000   0.0643713   0.1084287
6 months    ki0047075b-MAL-ED          Q1                   NA                0.3407407   0.2841760   0.3973055
6 months    ki0047075b-MAL-ED          Q2                   NA                0.3907285   0.3356697   0.4457873
6 months    ki0047075b-MAL-ED          Q3                   NA                0.3621399   0.3016776   0.4226023
6 months    ki0047075b-MAL-ED          Q4                   NA                0.3440860   0.2474803   0.4406917
6 months    ki1000304b-SAS-FoodSuppl   Q1                   NA                0.3783784   0.2213597   0.5353971
6 months    ki1000304b-SAS-FoodSuppl   Q2                   NA                0.5294118   0.2910048   0.7678187
6 months    ki1000304b-SAS-FoodSuppl   Q3                   NA                0.3928571   0.2110923   0.5746220
6 months    ki1000304b-SAS-FoodSuppl   Q4                   NA                0.3913043   0.1908943   0.5917144
6 months    ki1017093c-NIH-Crypto      Q1                   NA                0.3475936   0.2792941   0.4158931
6 months    ki1017093c-NIH-Crypto      Q2                   NA                0.3543689   0.2890063   0.4197316
6 months    ki1017093c-NIH-Crypto      Q3                   NA                0.3039648   0.2440881   0.3638414
6 months    ki1017093c-NIH-Crypto      Q4                   NA                0.1637931   0.0963994   0.2311868
6 months    ki1113344-GMS-Nepal        Q1                   NA                0.3292683   0.2704904   0.3880462
6 months    ki1113344-GMS-Nepal        Q2                   NA                0.3296703   0.2329995   0.4263412
6 months    ki1113344-GMS-Nepal        Q3                   NA                0.2087912   0.1252092   0.2923733
6 months    ki1113344-GMS-Nepal        Q4                   NA                0.2318841   0.1614080   0.3023601
6 months    ki1135781-COHORTS          Q1                   NA                0.3203215   0.2893286   0.3513143
6 months    ki1135781-COHORTS          Q2                   NA                0.2861538   0.2514025   0.3209052
6 months    ki1135781-COHORTS          Q3                   NA                0.2180268   0.1897777   0.2462759
6 months    ki1135781-COHORTS          Q4                   NA                0.1412556   0.1089265   0.1735847
12 months   ki0047075b-MAL-ED          Q1                   NA                0.4562738   0.3960429   0.5165046
12 months   ki0047075b-MAL-ED          Q2                   NA                0.5544218   0.4975754   0.6112681
12 months   ki0047075b-MAL-ED          Q3                   NA                0.4638298   0.4000342   0.5276254
12 months   ki0047075b-MAL-ED          Q4                   NA                0.3956044   0.2950816   0.4961272
12 months   ki1017093c-NIH-Crypto      Q1                   NA                0.4270270   0.3556998   0.4983542
12 months   ki1017093c-NIH-Crypto      Q2                   NA                0.4585366   0.3902806   0.5267926
12 months   ki1017093c-NIH-Crypto      Q3                   NA                0.3408072   0.2785550   0.4030593
12 months   ki1017093c-NIH-Crypto      Q4                   NA                0.2413793   0.1634538   0.3193048
12 months   ki1113344-GMS-Nepal        Q1                   NA                0.4979920   0.4358351   0.5601488
12 months   ki1113344-GMS-Nepal        Q2                   NA                0.4516129   0.3503833   0.5528425
12 months   ki1113344-GMS-Nepal        Q3                   NA                0.4536082   0.3544500   0.5527665
12 months   ki1113344-GMS-Nepal        Q4                   NA                0.3873239   0.3071320   0.4675159
12 months   ki1126311-ZVITAMBO         Q1                   NA                0.4000000   0.1520321   0.6479679
12 months   ki1126311-ZVITAMBO         Q2                   NA                0.3529412   0.1257277   0.5801546
12 months   ki1126311-ZVITAMBO         Q3                   NA                0.3869969   0.3338694   0.4401244
12 months   ki1126311-ZVITAMBO         Q4                   NA                0.3732394   0.3526952   0.3937837
12 months   ki1135781-COHORTS          Q1                   NA                0.5807860   0.5566283   0.6049437
12 months   ki1135781-COHORTS          Q2                   NA                0.4658990   0.4367981   0.4949999
12 months   ki1135781-COHORTS          Q3                   NA                0.3659128   0.3390779   0.3927476
12 months   ki1135781-COHORTS          Q4                   NA                0.2750000   0.2380140   0.3119860
12 months   ki1148112-LCNI-5           Q1                   NA                0.4913295   0.4167386   0.5659204
12 months   ki1148112-LCNI-5           Q2                   NA                0.5118110   0.4247646   0.5988575
12 months   ki1148112-LCNI-5           Q3                   NA                0.4516129   0.3275805   0.5756453
12 months   ki1148112-LCNI-5           Q4                   NA                0.3793103   0.2024869   0.5561338
18 months   ki0047075b-MAL-ED          Q1                   NA                0.6086957   0.5485222   0.6688691
18 months   ki0047075b-MAL-ED          Q2                   NA                0.6967509   0.6425875   0.7509144
18 months   ki0047075b-MAL-ED          Q3                   NA                0.5848214   0.5202541   0.6493888
18 months   ki0047075b-MAL-ED          Q4                   NA                0.4578313   0.3505835   0.5650792
18 months   ki1017093c-NIH-Crypto      Q1                   NA                0.5111111   0.4380345   0.5841877
18 months   ki1017093c-NIH-Crypto      Q2                   NA                0.5472637   0.4784024   0.6161249
18 months   ki1017093c-NIH-Crypto      Q3                   NA                0.3789954   0.3146979   0.4432930
18 months   ki1017093c-NIH-Crypto      Q4                   NA                0.2782609   0.1962976   0.3602241
18 months   ki1113344-GMS-Nepal        Q1                   NA                0.6963563   0.6389609   0.7537516
18 months   ki1113344-GMS-Nepal        Q2                   NA                0.6222222   0.5219693   0.7224752
18 months   ki1113344-GMS-Nepal        Q3                   NA                0.6315789   0.5344941   0.7286638
18 months   ki1113344-GMS-Nepal        Q4                   NA                0.4964539   0.4138545   0.5790533
18 months   ki1135781-COHORTS          Q1                   NA                0.7654909   0.7398470   0.7911349
18 months   ki1135781-COHORTS          Q2                   NA                0.7049180   0.6704035   0.7394326
18 months   ki1135781-COHORTS          Q3                   NA                0.5779221   0.5430315   0.6128127
18 months   ki1135781-COHORTS          Q4                   NA                0.4158654   0.3684948   0.4632360
18 months   ki1148112-LCNI-5           Q1                   NA                0.5314685   0.4495543   0.6133828
18 months   ki1148112-LCNI-5           Q2                   NA                0.6407767   0.5479792   0.7335742
18 months   ki1148112-LCNI-5           Q3                   NA                0.5384615   0.4027556   0.6741675
18 months   ki1148112-LCNI-5           Q4                   NA                0.5384615   0.3465443   0.7303788
24 months   ki0047075b-MAL-ED          Q1                   NA                0.6584362   0.5987727   0.7180997
24 months   ki0047075b-MAL-ED          Q2                   NA                0.7698113   0.7190970   0.8205256
24 months   ki0047075b-MAL-ED          Q3                   NA                0.6279070   0.5632562   0.6925577
24 months   ki0047075b-MAL-ED          Q4                   NA                0.5000000   0.3889696   0.6110304
24 months   ki1017093c-NIH-Crypto      Q1                   NA                0.6013072   0.5236624   0.6789520
24 months   ki1017093c-NIH-Crypto      Q2                   NA                0.5989305   0.5286284   0.6692325
24 months   ki1017093c-NIH-Crypto      Q3                   NA                0.4210526   0.3507937   0.4913116
24 months   ki1017093c-NIH-Crypto      Q4                   NA                0.3269231   0.2366976   0.4171486
24 months   ki1113344-GMS-Nepal        Q1                   NA                0.7387755   0.6837186   0.7938324
24 months   ki1113344-GMS-Nepal        Q2                   NA                0.6923077   0.5973962   0.7872191
24 months   ki1113344-GMS-Nepal        Q3                   NA                0.7234043   0.6328976   0.8139110
24 months   ki1113344-GMS-Nepal        Q4                   NA                0.5839416   0.5013315   0.6665517
24 months   ki1135781-COHORTS          Q1                   NA                0.8741595   0.8540081   0.8943108
24 months   ki1135781-COHORTS          Q2                   NA                0.8207110   0.7911483   0.8502737
24 months   ki1135781-COHORTS          Q3                   NA                0.7262060   0.6946437   0.7577683
24 months   ki1135781-COHORTS          Q4                   NA                0.5604938   0.5121474   0.6088403
24 months   ki1148112-LCNI-5           Q1                   NA                0.6217949   0.5455880   0.6980018
24 months   ki1148112-LCNI-5           Q2                   NA                0.7053571   0.6208073   0.7899070
24 months   ki1148112-LCNI-5           Q3                   NA                0.6607143   0.5365305   0.7848981
24 months   ki1148112-LCNI-5           Q4                   NA                0.6153846   0.4281141   0.8026551


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.2753623   0.2737502   0.2769745
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.1596306   0.1569994   0.1622619
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1587838   0.1546953   0.1628723
3 months    ki1135781-COHORTS          NA                   NA                0.1622697   0.1609497   0.1635897
6 months    ki0047075b-MAL-ED          NA                   NA                0.3634361   0.3620715   0.3648008
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4095238   0.3993256   0.4197220
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.3070652   0.3023346   0.3117958
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2862191   0.2818616   0.2905766
6 months    ki1135781-COHORTS          NA                   NA                0.2535868   0.2512301   0.2559435
12 months   ki0047075b-MAL-ED          NA                   NA                0.4847112   0.4812233   0.4881991
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3799726   0.3744293   0.3855158
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4561102   0.4525511   0.4596692
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3750503   0.3748405   0.3752601
12 months   ki1135781-COHORTS          NA                   NA                0.4556291   0.4524652   0.4587931
12 months   ki1148112-LCNI-5           NA                   NA                0.4833760   0.4798617   0.4868902
18 months   ki0047075b-MAL-ED          NA                   NA                0.6164875   0.6117352   0.6212397
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4433566   0.4360793   0.4506340
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6247818   0.6182931   0.6312706
18 months   ki1135781-COHORTS          NA                   NA                0.6517550   0.6473412   0.6561687
18 months   ki1148112-LCNI-5           NA                   NA                0.5679012   0.5624673   0.5733352
24 months   ki0047075b-MAL-ED          NA                   NA                0.6716604   0.6660208   0.6773000
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5015773   0.4929930   0.5101616
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6913580   0.6861935   0.6965225
24 months   ki1135781-COHORTS          NA                   NA                0.7779720   0.7740933   0.7818508
24 months   ki1148112-LCNI-5           NA                   NA                0.6542857   0.6503264   0.6582450


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          Q2                   Q1                1.2457259   0.9599490   1.6165786
3 months    ki0047075b-MAL-ED          Q3                   Q1                1.0572048   0.7932321   1.4090226
3 months    ki0047075b-MAL-ED          Q4                   Q1                1.1606471   0.8034500   1.6766465
3 months    ki1017093c-NIH-Crypto      Q2                   Q1                1.0411255   0.6791769   1.5959647
3 months    ki1017093c-NIH-Crypto      Q3                   Q1                1.0651580   0.7036328   1.6124341
3 months    ki1017093c-NIH-Crypto      Q4                   Q1                0.4431818   0.2197365   0.8938440
3 months    ki1113344-GMS-Nepal        Q2                   Q1                0.9232883   0.5639119   1.5116922
3 months    ki1113344-GMS-Nepal        Q3                   Q1                0.3425362   0.1609305   0.7290790
3 months    ki1113344-GMS-Nepal        Q4                   Q1                0.6221087   0.3788872   1.0214629
3 months    ki1135781-COHORTS          Q2                   Q1                0.8168357   0.6993542   0.9540525
3 months    ki1135781-COHORTS          Q3                   Q1                0.5726842   0.4830070   0.6790111
3 months    ki1135781-COHORTS          Q4                   Q1                0.4030365   0.3072830   0.5286280
6 months    ki0047075b-MAL-ED          Q2                   Q1                1.1467031   0.9223254   1.4256661
6 months    ki0047075b-MAL-ED          Q3                   Q1                1.0628019   0.8398490   1.3449417
6 months    ki0047075b-MAL-ED          Q4                   Q1                1.0098177   0.7287708   1.3992488
6 months    ki1000304b-SAS-FoodSuppl   Q2                   Q1                1.3991597   0.7584339   2.5811711
6 months    ki1000304b-SAS-FoodSuppl   Q3                   Q1                1.0382653   0.5576866   1.9329761
6 months    ki1000304b-SAS-FoodSuppl   Q4                   Q1                1.0341615   0.5349481   1.9992408
6 months    ki1017093c-NIH-Crypto      Q2                   Q1                1.0194922   0.7786485   1.3348312
6 months    ki1017093c-NIH-Crypto      Q3                   Q1                0.8744832   0.6620903   1.1550100
6 months    ki1017093c-NIH-Crypto      Q4                   Q1                0.4712202   0.2986759   0.7434427
6 months    ki1113344-GMS-Nepal        Q2                   Q1                1.0012210   0.7102938   1.4113083
6 months    ki1113344-GMS-Nepal        Q3                   Q1                0.6341066   0.4090777   0.9829213
6 months    ki1113344-GMS-Nepal        Q4                   Q1                0.7042405   0.4950434   1.0018406
6 months    ki1135781-COHORTS          Q2                   Q1                0.8933333   0.7648547   1.0433935
6 months    ki1135781-COHORTS          Q3                   Q1                0.6806500   0.5790221   0.8001152
6 months    ki1135781-COHORTS          Q4                   Q1                0.4409808   0.3439582   0.5653711
12 months   ki0047075b-MAL-ED          Q2                   Q1                1.2151077   1.0280713   1.4361716
12 months   ki0047075b-MAL-ED          Q3                   Q1                1.0165603   0.8401171   1.2300605
12 months   ki0047075b-MAL-ED          Q4                   Q1                0.8670330   0.6511464   1.1544965
12 months   ki1017093c-NIH-Crypto      Q2                   Q1                1.0737882   0.8585217   1.3430308
12 months   ki1017093c-NIH-Crypto      Q3                   Q1                0.7980928   0.6231005   1.0222301
12 months   ki1017093c-NIH-Crypto      Q4                   Q1                0.5652553   0.3929932   0.8130259
12 months   ki1113344-GMS-Nepal        Q2                   Q1                0.9068678   0.7016521   1.1721041
12 months   ki1113344-GMS-Nepal        Q3                   Q1                0.9108746   0.7081690   1.1716026
12 months   ki1113344-GMS-Nepal        Q4                   Q1                0.7777715   0.6107449   0.9904766
12 months   ki1126311-ZVITAMBO         Q2                   Q1                0.8823529   0.3609965   2.1566599
12 months   ki1126311-ZVITAMBO         Q3                   Q1                0.9674923   0.5127401   1.8255668
12 months   ki1126311-ZVITAMBO         Q4                   Q1                0.9330986   0.5007727   1.7386592
12 months   ki1135781-COHORTS          Q2                   Q1                0.8021870   0.7441910   0.8647028
12 months   ki1135781-COHORTS          Q3                   Q1                0.6300302   0.5790892   0.6854525
12 months   ki1135781-COHORTS          Q4                   Q1                0.4734962   0.4113170   0.5450751
12 months   ki1148112-LCNI-5           Q2                   Q1                1.0416860   0.8293310   1.3084156
12 months   ki1148112-LCNI-5           Q3                   Q1                0.9191651   0.6715954   1.2579961
12 months   ki1148112-LCNI-5           Q4                   Q1                0.7720081   0.4728258   1.2604993
18 months   ki0047075b-MAL-ED          Q2                   Q1                1.1446622   1.0093931   1.2980587
18 months   ki0047075b-MAL-ED          Q3                   Q1                0.9607781   0.8284430   1.1142523
18 months   ki0047075b-MAL-ED          Q4                   Q1                0.7521515   0.5832879   0.9699015
18 months   ki1017093c-NIH-Crypto      Q2                   Q1                1.0707333   0.8850457   1.2953792
18 months   ki1017093c-NIH-Crypto      Q3                   Q1                0.7415128   0.5939691   0.9257068
18 months   ki1017093c-NIH-Crypto      Q4                   Q1                0.5444234   0.3924093   0.7553258
18 months   ki1113344-GMS-Nepal        Q2                   Q1                0.8935401   0.7456171   1.0708094
18 months   ki1113344-GMS-Nepal        Q3                   Q1                0.9069767   0.7618091   1.0798070
18 months   ki1113344-GMS-Nepal        Q4                   Q1                0.7129309   0.5921199   0.8583912
18 months   ki1135781-COHORTS          Q2                   Q1                0.9208705   0.8678279   0.9771552
18 months   ki1135781-COHORTS          Q3                   Q1                0.7549692   0.7046018   0.8089370
18 months   ki1135781-COHORTS          Q4                   Q1                0.5432662   0.4824450   0.6117551
18 months   ki1148112-LCNI-5           Q2                   Q1                1.2056719   0.9758427   1.4896303
18 months   ki1148112-LCNI-5           Q3                   Q1                1.0131579   0.7540122   1.3613691
18 months   ki1148112-LCNI-5           Q4                   Q1                1.0131579   0.6871219   1.4938964
24 months   ki0047075b-MAL-ED          Q2                   Q1                1.1691509   1.0452404   1.3077508
24 months   ki0047075b-MAL-ED          Q3                   Q1                0.9536337   0.8314094   1.0938261
24 months   ki0047075b-MAL-ED          Q4                   Q1                0.7593750   0.5974427   0.9651978
24 months   ki1017093c-NIH-Crypto      Q2                   Q1                0.9960474   0.8365539   1.1859493
24 months   ki1017093c-NIH-Crypto      Q3                   Q1                0.7002288   0.5670316   0.8647144
24 months   ki1017093c-NIH-Crypto      Q4                   Q1                0.5436873   0.4008857   0.7373570
24 months   ki1113344-GMS-Nepal        Q2                   Q1                0.9371016   0.8017131   1.0953536
24 months   ki1113344-GMS-Nepal        Q3                   Q1                0.9791936   0.8464941   1.1326955
24 months   ki1113344-GMS-Nepal        Q4                   Q1                0.7904182   0.6736182   0.9274704
24 months   ki1135781-COHORTS          Q2                   Q1                0.9388573   0.8995528   0.9798791
24 months   ki1135781-COHORTS          Q3                   Q1                0.8307477   0.7908665   0.8726400
24 months   ki1135781-COHORTS          Q4                   Q1                0.6411803   0.5864143   0.7010609
24 months   ki1148112-LCNI-5           Q2                   Q1                1.1343888   0.9556736   1.3465245
24 months   ki1148112-LCNI-5           Q3                   Q1                1.0625920   0.8490211   1.3298867
24 months   ki1148112-LCNI-5           Q4                   Q1                0.9896907   0.7128886   1.3739703


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          Q1                   NA                 0.0279756   -0.0219971    0.0779482
3 months    ki1017093c-NIH-Crypto      Q1                   NA                -0.0096002   -0.0623279    0.0431275
3 months    ki1113344-GMS-Nepal        Q1                   NA                -0.0435508   -0.0928786    0.0057769
3 months    ki1135781-COHORTS          Q1                   NA                -0.0521030   -0.0719987   -0.0322074
6 months    ki0047075b-MAL-ED          Q1                   NA                 0.0226954   -0.0338858    0.0792766
6 months    ki1000304b-SAS-FoodSuppl   Q1                   NA                 0.0311454   -0.1262041    0.1884950
6 months    ki1017093c-NIH-Crypto      Q1                   NA                -0.0405284   -0.1089915    0.0279348
6 months    ki1113344-GMS-Nepal        Q1                   NA                -0.0430492   -0.1019884    0.0158900
6 months    ki1135781-COHORTS          Q1                   NA                -0.0667347   -0.0978170   -0.0356523
12 months   ki0047075b-MAL-ED          Q1                   NA                 0.0284374   -0.0318943    0.0887692
12 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.0470545   -0.1185967    0.0244878
12 months   ki1113344-GMS-Nepal        Q1                   NA                -0.0418818   -0.1041405    0.0203768
12 months   ki1126311-ZVITAMBO         Q1                   NA                -0.0249497   -0.2729177    0.2230183
12 months   ki1135781-COHORTS          Q1                   NA                -0.1251569   -0.1495209   -0.1007929
12 months   ki1148112-LCNI-5           Q1                   NA                -0.0079535   -0.0826272    0.0667201
18 months   ki0047075b-MAL-ED          Q1                   NA                 0.0077918   -0.0525690    0.0681526
18 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.0677545   -0.1411926    0.0056836
18 months   ki1113344-GMS-Nepal        Q1                   NA                -0.0715744   -0.1293354   -0.0138134
18 months   ki1135781-COHORTS          Q1                   NA                -0.1137360   -0.1397570   -0.0877149
18 months   ki1148112-LCNI-5           Q1                   NA                 0.0364327   -0.0456616    0.1185270
24 months   ki0047075b-MAL-ED          Q1                   NA                 0.0132242   -0.0467053    0.0731537
24 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.0997299   -0.1778478   -0.0216120
24 months   ki1113344-GMS-Nepal        Q1                   NA                -0.0474175   -0.1027161    0.0078811
24 months   ki1135781-COHORTS          Q1                   NA                -0.0961874   -0.1167087   -0.0756662
24 months   ki1148112-LCNI-5           Q1                   NA                 0.0324908   -0.0438189    0.1088005


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          Q1                   NA                 0.1015955   -0.0994906    0.2659049
3 months    ki1017093c-NIH-Crypto      Q1                   NA                -0.0601399   -0.4477659    0.2237029
3 months    ki1113344-GMS-Nepal        Q1                   NA                -0.2742777   -0.6269288    0.0019332
3 months    ki1135781-COHORTS          Q1                   NA                -0.3210891   -0.4497879   -0.2038151
6 months    ki0047075b-MAL-ED          Q1                   NA                 0.0624467   -0.1069029    0.2058868
6 months    ki1000304b-SAS-FoodSuppl   Q1                   NA                 0.0760528   -0.4002128    0.3903224
6 months    ki1017093c-NIH-Crypto      Q1                   NA                -0.1319862   -0.3786010    0.0705123
6 months    ki1113344-GMS-Nepal        Q1                   NA                -0.1504065   -0.3761283    0.0382909
6 months    ki1135781-COHORTS          Q1                   NA                -0.2631630   -0.3921088   -0.1461610
12 months   ki0047075b-MAL-ED          Q1                   NA                 0.0586688   -0.0743778    0.1752395
12 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.1238365   -0.3289858    0.0496449
12 months   ki1113344-GMS-Nepal        Q1                   NA                -0.0918239   -0.2372711    0.0365253
12 months   ki1126311-ZVITAMBO         Q1                   NA                -0.0665236   -0.9824321    0.4262237
12 months   ki1135781-COHORTS          Q1                   NA                -0.2746903   -0.3295941   -0.2220536
12 months   ki1148112-LCNI-5           Q1                   NA                -0.0164541   -0.1833017    0.1268677
18 months   ki0047075b-MAL-ED          Q1                   NA                 0.0126390   -0.0902825    0.1058449
18 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.1528216   -0.3312624    0.0017012
18 months   ki1113344-GMS-Nepal        Q1                   NA                -0.1145591   -0.2111048   -0.0257097
18 months   ki1135781-COHORTS          Q1                   NA                -0.1745072   -0.2153430   -0.1350436
18 months   ki1148112-LCNI-5           Q1                   NA                 0.0641532   -0.0921206    0.1980655
24 months   ki0047075b-MAL-ED          Q1                   NA                 0.0196888   -0.0737068    0.1049605
24 months   ki1017093c-NIH-Crypto      Q1                   NA                -0.1988326   -0.3656141   -0.0524200
24 months   ki1113344-GMS-Nepal        Q1                   NA                -0.0685860   -0.1516944    0.0085251
24 months   ki1135781-COHORTS          Q1                   NA                -0.1236387   -0.1504550   -0.0974474
24 months   ki1148112-LCNI-5           Q1                   NA                 0.0496585   -0.0744136    0.1594029


