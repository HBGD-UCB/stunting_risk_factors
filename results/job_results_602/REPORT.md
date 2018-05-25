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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000109-EE
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
![](/tmp/ac75caee-18cd-4e2b-9b0b-753c7f75ff5b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ac75caee-18cd-4e2b-9b0b-753c7f75ff5b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/ac75caee-18cd-4e2b-9b0b-753c7f75ff5b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ac75caee-18cd-4e2b-9b0b-753c7f75ff5b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
3 months    ki0047075b-MAL-ED          Q1    1724    469    352    117
3 months    ki0047075b-MAL-ED          Q2    1724    466    339    127
3 months    ki0047075b-MAL-ED          Q3    1724    599    451    148
3 months    ki0047075b-MAL-ED          Q4    1724    190    143     47
3 months    ki1000108-CMC-V-BCS-2002   Q1     362    100     69     31
3 months    ki1000108-CMC-V-BCS-2002   Q2     362    195    117     78
3 months    ki1000108-CMC-V-BCS-2002   Q3     362     58     45     13
3 months    ki1000108-CMC-V-BCS-2002   Q4     362      9      6      3
3 months    ki1000108-IRC              Q1     410    182    124     58
3 months    ki1000108-IRC              Q2     410    104     64     40
3 months    ki1000108-IRC              Q3     410    113     83     30
3 months    ki1000108-IRC              Q4     410     11      9      2
3 months    ki1000109-EE               Q1     376    328    118    210
3 months    ki1000109-EE               Q2     376     33     13     20
3 months    ki1000109-EE               Q3     376     11      4      7
3 months    ki1000109-EE               Q4     376      4      2      2
3 months    ki1000304b-SAS-FoodSuppl   Q1       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   Q2       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   Q3       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   Q4       0      0      0      0
3 months    ki1017093-NIH-Birth        Q1     629    296    226     70
3 months    ki1017093-NIH-Birth        Q2     629    183    145     38
3 months    ki1017093-NIH-Birth        Q3     629    118     92     26
3 months    ki1017093-NIH-Birth        Q4     629     32     26      6
3 months    ki1017093b-PROVIDE         Q1     175     85     61     24
3 months    ki1017093b-PROVIDE         Q2     175     63     48     15
3 months    ki1017093b-PROVIDE         Q3     175     24     20      4
3 months    ki1017093b-PROVIDE         Q4     175      3      2      1
3 months    ki1017093c-NIH-Crypto      Q1     758    242    202     40
3 months    ki1017093c-NIH-Crypto      Q2     758    140    110     30
3 months    ki1017093c-NIH-Crypto      Q3     758    202    171     31
3 months    ki1017093c-NIH-Crypto      Q4     758    174    154     20
3 months    ki1066203-TanzaniaChild2   Q1     600     18     15      3
3 months    ki1066203-TanzaniaChild2   Q2     600    475    429     46
3 months    ki1066203-TanzaniaChild2   Q3     600    103     94      9
3 months    ki1066203-TanzaniaChild2   Q4     600      4      3      1
3 months    ki1112895-Guatemala BSC    Q1       0      0      0      0
3 months    ki1112895-Guatemala BSC    Q2       0      0      0      0
3 months    ki1112895-Guatemala BSC    Q3       0      0      0      0
3 months    ki1112895-Guatemala BSC    Q4       0      0      0      0
3 months    ki1113344-GMS-Nepal        Q1     590    415    339     76
3 months    ki1113344-GMS-Nepal        Q2     590     46     42      4
3 months    ki1113344-GMS-Nepal        Q3     590     55     49      6
3 months    ki1113344-GMS-Nepal        Q4     590     74     66      8
3 months    ki1126311-ZVITAMBO         Q1    3499     56     43     13
3 months    ki1126311-ZVITAMBO         Q2    3499    104     80     24
3 months    ki1126311-ZVITAMBO         Q3    3499   1136    907    229
3 months    ki1126311-ZVITAMBO         Q4    3499   2203   1734    469
3 months    ki1135781-COHORTS          Q1    9225   4217   3249    968
3 months    ki1135781-COHORTS          Q2    9225    816    692    124
3 months    ki1135781-COHORTS          Q3    9225   1519   1265    254
3 months    ki1135781-COHORTS          Q4    9225   2673   2372    301
3 months    ki1148112-LCNI-5           Q1       0      0      0      0
3 months    ki1148112-LCNI-5           Q2       0      0      0      0
3 months    ki1148112-LCNI-5           Q3       0      0      0      0
3 months    ki1148112-LCNI-5           Q4       0      0      0      0
6 months    ki0047075b-MAL-ED          Q1    1610    441    290    151
6 months    ki0047075b-MAL-ED          Q2    1610    429    293    136
6 months    ki0047075b-MAL-ED          Q3    1610    570    391    179
6 months    ki0047075b-MAL-ED          Q4    1610    170    113     57
6 months    ki1000108-CMC-V-BCS-2002   Q1     367    103     50     53
6 months    ki1000108-CMC-V-BCS-2002   Q2     367    197     88    109
6 months    ki1000108-CMC-V-BCS-2002   Q3     367     58     35     23
6 months    ki1000108-CMC-V-BCS-2002   Q4     367      9      6      3
6 months    ki1000108-IRC              Q1     408    182    101     81
6 months    ki1000108-IRC              Q2     408    102     52     50
6 months    ki1000108-IRC              Q3     408    113     76     37
6 months    ki1000108-IRC              Q4     408     11      6      5
6 months    ki1000109-EE               Q1     370    322     79    243
6 months    ki1000109-EE               Q2     370     33     11     22
6 months    ki1000109-EE               Q3     370     11      3      8
6 months    ki1000109-EE               Q4     370      4      2      2
6 months    ki1000304b-SAS-FoodSuppl   Q1     105     85     50     35
6 months    ki1000304b-SAS-FoodSuppl   Q2     105     13      7      6
6 months    ki1000304b-SAS-FoodSuppl   Q3     105      3      3      0
6 months    ki1000304b-SAS-FoodSuppl   Q4     105      4      2      2
6 months    ki1017093-NIH-Birth        Q1     551    264    155    109
6 months    ki1017093-NIH-Birth        Q2     551    153    100     53
6 months    ki1017093-NIH-Birth        Q3     551    105     74     31
6 months    ki1017093-NIH-Birth        Q4     551     29     21      8
6 months    ki1017093b-PROVIDE         Q1     166     82     55     27
6 months    ki1017093b-PROVIDE         Q2     166     60     44     16
6 months    ki1017093b-PROVIDE         Q3     166     21     17      4
6 months    ki1017093b-PROVIDE         Q4     166      3      2      1
6 months    ki1017093c-NIH-Crypto      Q1     736    233    158     75
6 months    ki1017093c-NIH-Crypto      Q2     736    136     81     55
6 months    ki1017093c-NIH-Crypto      Q3     736    197    138     59
6 months    ki1017093c-NIH-Crypto      Q4     736    170    133     37
6 months    ki1066203-TanzaniaChild2   Q1     556     16     10      6
6 months    ki1066203-TanzaniaChild2   Q2     556    438    355     83
6 months    ki1066203-TanzaniaChild2   Q3     556     98     81     17
6 months    ki1066203-TanzaniaChild2   Q4     556      4      2      2
6 months    ki1112895-Guatemala BSC    Q1      90     31     24      7
6 months    ki1112895-Guatemala BSC    Q2      90     17     11      6
6 months    ki1112895-Guatemala BSC    Q3      90     31     20     11
6 months    ki1112895-Guatemala BSC    Q4      90     11      9      2
6 months    ki1113344-GMS-Nepal        Q1     564    397    269    128
6 months    ki1113344-GMS-Nepal        Q2     564     45     38      7
6 months    ki1113344-GMS-Nepal        Q3     564     52     38     14
6 months    ki1113344-GMS-Nepal        Q4     564     70     57     13
6 months    ki1126311-ZVITAMBO         Q1    2284     32     20     12
6 months    ki1126311-ZVITAMBO         Q2    2284     74     49     25
6 months    ki1126311-ZVITAMBO         Q3    2284    736    510    226
6 months    ki1126311-ZVITAMBO         Q4    2284   1442   1027    415
6 months    ki1135781-COHORTS          Q1    2945    987    683    304
6 months    ki1135781-COHORTS          Q2    2945    717    533    184
6 months    ki1135781-COHORTS          Q3    2945    581    429    152
6 months    ki1135781-COHORTS          Q4    2945    660    550    110
6 months    ki1148112-LCNI-5           Q1     131     74     38     36
6 months    ki1148112-LCNI-5           Q2     131     33     23     10
6 months    ki1148112-LCNI-5           Q3     131     17     14      3
6 months    ki1148112-LCNI-5           Q4     131      7      5      2
12 months   ki0047075b-MAL-ED          Q1    1557    427    245    182
12 months   ki0047075b-MAL-ED          Q2    1557    417    249    168
12 months   ki0047075b-MAL-ED          Q3    1557    551    321    230
12 months   ki0047075b-MAL-ED          Q4    1557    162     88     74
12 months   ki1000108-CMC-V-BCS-2002   Q1     372    106     31     75
12 months   ki1000108-CMC-V-BCS-2002   Q2     372    199     50    149
12 months   ki1000108-CMC-V-BCS-2002   Q3     372     58     26     32
12 months   ki1000108-CMC-V-BCS-2002   Q4     372      9      5      4
12 months   ki1000108-IRC              Q1     408    182     89     93
12 months   ki1000108-IRC              Q2     408    103     43     60
12 months   ki1000108-IRC              Q3     408    112     64     48
12 months   ki1000108-IRC              Q4     408     11      5      6
12 months   ki1000109-EE               Q1     370    322     51    271
12 months   ki1000109-EE               Q2     370     33      9     24
12 months   ki1000109-EE               Q3     370     11      3      8
12 months   ki1000109-EE               Q4     370      4      2      2
12 months   ki1000304b-SAS-FoodSuppl   Q1      99     80     13     67
12 months   ki1000304b-SAS-FoodSuppl   Q2      99     12      1     11
12 months   ki1000304b-SAS-FoodSuppl   Q3      99      3      1      2
12 months   ki1000304b-SAS-FoodSuppl   Q4      99      4      0      4
12 months   ki1017093-NIH-Birth        Q1     541    257    109    148
12 months   ki1017093-NIH-Birth        Q2     541    156     75     81
12 months   ki1017093-NIH-Birth        Q3     541     98     62     36
12 months   ki1017093-NIH-Birth        Q4     541     30     19     11
12 months   ki1017093b-PROVIDE         Q1     159     78     45     33
12 months   ki1017093b-PROVIDE         Q2     159     58     39     19
12 months   ki1017093b-PROVIDE         Q3     159     20     17      3
12 months   ki1017093b-PROVIDE         Q4     159      3      2      1
12 months   ki1017093c-NIH-Crypto      Q1     729    234    138     96
12 months   ki1017093c-NIH-Crypto      Q2     729    130     66     64
12 months   ki1017093c-NIH-Crypto      Q3     729    195    127     68
12 months   ki1017093c-NIH-Crypto      Q4     729    170    121     49
12 months   ki1066203-TanzaniaChild2   Q1     495     14      5      9
12 months   ki1066203-TanzaniaChild2   Q2     495    395    272    123
12 months   ki1066203-TanzaniaChild2   Q3     495     82     58     24
12 months   ki1066203-TanzaniaChild2   Q4     495      4      2      2
12 months   ki1112895-Guatemala BSC    Q1      80     27     13     14
12 months   ki1112895-Guatemala BSC    Q2      80     14      9      5
12 months   ki1112895-Guatemala BSC    Q3      80     30     16     14
12 months   ki1112895-Guatemala BSC    Q4      80      9      6      3
12 months   ki1113344-GMS-Nepal        Q1     579    409    210    199
12 months   ki1113344-GMS-Nepal        Q2     579     45     30     15
12 months   ki1113344-GMS-Nepal        Q3     579     56     31     25
12 months   ki1113344-GMS-Nepal        Q4     579     69     44     25
12 months   ki1126311-ZVITAMBO         Q1    2544     38     23     15
12 months   ki1126311-ZVITAMBO         Q2    2544     81     47     34
12 months   ki1126311-ZVITAMBO         Q3    2544    807    500    307
12 months   ki1126311-ZVITAMBO         Q4    2544   1618   1014    604
12 months   ki1135781-COHORTS          Q1    8799   4041   1836   2205
12 months   ki1135781-COHORTS          Q2    8799    753    398    355
12 months   ki1135781-COHORTS          Q3    8799   1431    872    559
12 months   ki1135781-COHORTS          Q4    8799   2574   1926    648
12 months   ki1148112-LCNI-5           Q1     392    203     96    107
12 months   ki1148112-LCNI-5           Q2     392    105     56     49
12 months   ki1148112-LCNI-5           Q3     392     62     38     24
12 months   ki1148112-LCNI-5           Q4     392     22     13      9
18 months   ki0047075b-MAL-ED          Q1    1489    411    185    226
18 months   ki0047075b-MAL-ED          Q2    1489    400    191    209
18 months   ki0047075b-MAL-ED          Q3    1489    527    257    270
18 months   ki0047075b-MAL-ED          Q4    1489    151     71     80
18 months   ki1000108-CMC-V-BCS-2002   Q1     373    106     14     92
18 months   ki1000108-CMC-V-BCS-2002   Q2     373    199     23    176
18 months   ki1000108-CMC-V-BCS-2002   Q3     373     59     15     44
18 months   ki1000108-CMC-V-BCS-2002   Q4     373      9      5      4
18 months   ki1000108-IRC              Q1     409    182     78    104
18 months   ki1000108-IRC              Q2     409    104     39     65
18 months   ki1000108-IRC              Q3     409    112     57     55
18 months   ki1000108-IRC              Q4     409     11      5      6
18 months   ki1000109-EE               Q1     360    314     24    290
18 months   ki1000109-EE               Q2     360     32      6     26
18 months   ki1000109-EE               Q3     360     10      1      9
18 months   ki1000109-EE               Q4     360      4      1      3
18 months   ki1000304b-SAS-FoodSuppl   Q1      93     74      8     66
18 months   ki1000304b-SAS-FoodSuppl   Q2      93     12      1     11
18 months   ki1000304b-SAS-FoodSuppl   Q3      93      3      1      2
18 months   ki1000304b-SAS-FoodSuppl   Q4      93      4      0      4
18 months   ki1017093-NIH-Birth        Q1     497    236     66    170
18 months   ki1017093-NIH-Birth        Q2     497    141     47     94
18 months   ki1017093-NIH-Birth        Q3     497     92     45     47
18 months   ki1017093-NIH-Birth        Q4     497     28     16     12
18 months   ki1017093b-PROVIDE         Q1     155     75     37     38
18 months   ki1017093b-PROVIDE         Q2     155     57     32     25
18 months   ki1017093b-PROVIDE         Q3     155     20     14      6
18 months   ki1017093b-PROVIDE         Q4     155      3      2      1
18 months   ki1017093c-NIH-Crypto      Q1     715    230    118    112
18 months   ki1017093c-NIH-Crypto      Q2     715    124     53     71
18 months   ki1017093c-NIH-Crypto      Q3     715    193    111     82
18 months   ki1017093c-NIH-Crypto      Q4     715    168    116     52
18 months   ki1066203-TanzaniaChild2   Q1     359     12      5      7
18 months   ki1066203-TanzaniaChild2   Q2     359    278    158    120
18 months   ki1066203-TanzaniaChild2   Q3     359     66     41     25
18 months   ki1066203-TanzaniaChild2   Q4     359      3      2      1
18 months   ki1112895-Guatemala BSC    Q1      49     16      5     11
18 months   ki1112895-Guatemala BSC    Q2      49      6      3      3
18 months   ki1112895-Guatemala BSC    Q3      49     19     10      9
18 months   ki1112895-Guatemala BSC    Q4      49      8      5      3
18 months   ki1113344-GMS-Nepal        Q1     571    401    134    267
18 months   ki1113344-GMS-Nepal        Q2     571     45     22     23
18 months   ki1113344-GMS-Nepal        Q3     571     55     19     36
18 months   ki1113344-GMS-Nepal        Q4     571     70     39     31
18 months   ki1126311-ZVITAMBO         Q1    1856     32     18     14
18 months   ki1126311-ZVITAMBO         Q2    1856     65     30     35
18 months   ki1126311-ZVITAMBO         Q3    1856    605    306    299
18 months   ki1126311-ZVITAMBO         Q4    1856   1154    600    554
18 months   ki1135781-COHORTS          Q1    3078   1206    286    920
18 months   ki1135781-COHORTS          Q2    3078    710    241    469
18 months   ki1135781-COHORTS          Q3    3078    538    218    320
18 months   ki1135781-COHORTS          Q4    3078    624    339    285
18 months   ki1148112-LCNI-5           Q1     325    167     66    101
18 months   ki1148112-LCNI-5           Q2     325     84     38     46
18 months   ki1148112-LCNI-5           Q3     325     56     28     28
18 months   ki1148112-LCNI-5           Q4     325     18      8     10
24 months   ki0047075b-MAL-ED          Q1    1414    389    154    235
24 months   ki0047075b-MAL-ED          Q2    1414    376    158    218
24 months   ki0047075b-MAL-ED          Q3    1414    502    223    279
24 months   ki0047075b-MAL-ED          Q4    1414    147     67     80
24 months   ki1000108-CMC-V-BCS-2002   Q1     373    106      5    101
24 months   ki1000108-CMC-V-BCS-2002   Q2     373    199     13    186
24 months   ki1000108-CMC-V-BCS-2002   Q3     373     59      7     52
24 months   ki1000108-CMC-V-BCS-2002   Q4     373      9      3      6
24 months   ki1000108-IRC              Q1     410    182     60    122
24 months   ki1000108-IRC              Q2     410    104     34     70
24 months   ki1000108-IRC              Q3     410    113     48     65
24 months   ki1000108-IRC              Q4     410     11      5      6
24 months   ki1000109-EE               Q1     336    294     19    275
24 months   ki1000109-EE               Q2     336     30      6     24
24 months   ki1000109-EE               Q3     336      8      1      7
24 months   ki1000109-EE               Q4     336      4      1      3
24 months   ki1000304b-SAS-FoodSuppl   Q1       9      7      1      6
24 months   ki1000304b-SAS-FoodSuppl   Q2       9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   Q3       9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q4       9      1      0      1
24 months   ki1017093-NIH-Birth        Q1     470    221     40    181
24 months   ki1017093-NIH-Birth        Q2     470    134     28    106
24 months   ki1017093-NIH-Birth        Q3     470     89     34     55
24 months   ki1017093-NIH-Birth        Q4     470     26     13     13
24 months   ki1017093b-PROVIDE         Q1     148     71     31     40
24 months   ki1017093b-PROVIDE         Q2     148     55     30     25
24 months   ki1017093b-PROVIDE         Q3     148     19     13      6
24 months   ki1017093b-PROVIDE         Q4     148      3      2      1
24 months   ki1017093c-NIH-Crypto      Q1     634    197     88    109
24 months   ki1017093c-NIH-Crypto      Q2     634    111     43     68
24 months   ki1017093c-NIH-Crypto      Q3     634    172     87     85
24 months   ki1017093c-NIH-Crypto      Q4     634    154     98     56
24 months   ki1066203-TanzaniaChild2   Q1     250      8      3      5
24 months   ki1066203-TanzaniaChild2   Q2     250    198    103     95
24 months   ki1066203-TanzaniaChild2   Q3     250     43     24     19
24 months   ki1066203-TanzaniaChild2   Q4     250      1      1      0
24 months   ki1112895-Guatemala BSC    Q1       0      0      0      0
24 months   ki1112895-Guatemala BSC    Q2       0      0      0      0
24 months   ki1112895-Guatemala BSC    Q3       0      0      0      0
24 months   ki1112895-Guatemala BSC    Q4       0      0      0      0
24 months   ki1113344-GMS-Nepal        Q1     565    397    109    288
24 months   ki1113344-GMS-Nepal        Q2     565     43     16     27
24 months   ki1113344-GMS-Nepal        Q3     565     56     17     39
24 months   ki1113344-GMS-Nepal        Q4     565     69     33     36
24 months   ki1126311-ZVITAMBO         Q1     471     12      3      9
24 months   ki1126311-ZVITAMBO         Q2     471     21      4     17
24 months   ki1126311-ZVITAMBO         Q3     471    170     53    117
24 months   ki1126311-ZVITAMBO         Q4     471    268     72    196
24 months   ki1135781-COHORTS          Q1    3033   1203    155   1048
24 months   ki1135781-COHORTS          Q2    3033    695    144    551
24 months   ki1135781-COHORTS          Q3    3033    524    129    395
24 months   ki1135781-COHORTS          Q4    3033    611    254    357
24 months   ki1148112-LCNI-5           Q1     351    178     53    125
24 months   ki1148112-LCNI-5           Q2     351     96     36     60
24 months   ki1148112-LCNI-5           Q3     351     57     26     31
24 months   ki1148112-LCNI-5           Q4     351     20      6     14

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       Q1                   NA                0.2494670   0.2102947   0.2886393
3 months    ki0047075b-MAL-ED       Q2                   NA                0.2725322   0.2320935   0.3129709
3 months    ki0047075b-MAL-ED       Q3                   NA                0.2470785   0.2125281   0.2816289
3 months    ki0047075b-MAL-ED       Q4                   NA                0.2473684   0.1859978   0.3087391
3 months    ki1017093-NIH-Birth     Q1                   NA                0.2364865   0.1880403   0.2849326
3 months    ki1017093-NIH-Birth     Q2                   NA                0.2076503   0.1488346   0.2664659
3 months    ki1017093-NIH-Birth     Q3                   NA                0.2203390   0.1454960   0.2951820
3 months    ki1017093-NIH-Birth     Q4                   NA                0.1875000   0.0521585   0.3228415
3 months    ki1017093c-NIH-Crypto   Q1                   NA                0.1652893   0.1184600   0.2121185
3 months    ki1017093c-NIH-Crypto   Q2                   NA                0.2142857   0.1462715   0.2822999
3 months    ki1017093c-NIH-Crypto   Q3                   NA                0.1534653   0.1037275   0.2032032
3 months    ki1017093c-NIH-Crypto   Q4                   NA                0.1149425   0.0675198   0.1623652
3 months    ki1126311-ZVITAMBO      Q1                   NA                0.2321429   0.1215482   0.3427375
3 months    ki1126311-ZVITAMBO      Q2                   NA                0.2307692   0.1497831   0.3117554
3 months    ki1126311-ZVITAMBO      Q3                   NA                0.2015845   0.1782519   0.2249172
3 months    ki1126311-ZVITAMBO      Q4                   NA                0.2128915   0.1957953   0.2299877
3 months    ki1135781-COHORTS       Q1                   NA                0.2295471   0.2168536   0.2422405
3 months    ki1135781-COHORTS       Q2                   NA                0.1519608   0.1273287   0.1765928
3 months    ki1135781-COHORTS       Q3                   NA                0.1672153   0.1484482   0.1859824
3 months    ki1135781-COHORTS       Q4                   NA                0.1126076   0.1006232   0.1245919
6 months    ki0047075b-MAL-ED       Q1                   NA                0.3424036   0.2981027   0.3867045
6 months    ki0047075b-MAL-ED       Q2                   NA                0.3170163   0.2729709   0.3610617
6 months    ki0047075b-MAL-ED       Q3                   NA                0.3140351   0.2759210   0.3521492
6 months    ki0047075b-MAL-ED       Q4                   NA                0.3352941   0.2643059   0.4062823
6 months    ki1000108-IRC           Q1                   NA                0.4450549   0.3727651   0.5173448
6 months    ki1000108-IRC           Q2                   NA                0.4901961   0.3930629   0.5873292
6 months    ki1000108-IRC           Q3                   NA                0.3274336   0.2408031   0.4140642
6 months    ki1000108-IRC           Q4                   NA                0.4545455   0.1599320   0.7491589
6 months    ki1017093-NIH-Birth     Q1                   NA                0.4128788   0.3534337   0.4723238
6 months    ki1017093-NIH-Birth     Q2                   NA                0.3464052   0.2709406   0.4218698
6 months    ki1017093-NIH-Birth     Q3                   NA                0.2952381   0.2079097   0.3825665
6 months    ki1017093-NIH-Birth     Q4                   NA                0.2758621   0.1130449   0.4386792
6 months    ki1017093c-NIH-Crypto   Q1                   NA                0.3218884   0.2618584   0.3819185
6 months    ki1017093c-NIH-Crypto   Q2                   NA                0.4044118   0.3218728   0.4869507
6 months    ki1017093c-NIH-Crypto   Q3                   NA                0.2994924   0.2354880   0.3634967
6 months    ki1017093c-NIH-Crypto   Q4                   NA                0.2176471   0.1555749   0.2797192
6 months    ki1113344-GMS-Nepal     Q1                   NA                0.3224181   0.2764000   0.3684362
6 months    ki1113344-GMS-Nepal     Q2                   NA                0.1555556   0.0495678   0.2615433
6 months    ki1113344-GMS-Nepal     Q3                   NA                0.2692308   0.1485650   0.3898966
6 months    ki1113344-GMS-Nepal     Q4                   NA                0.1857143   0.0945351   0.2768934
6 months    ki1126311-ZVITAMBO      Q1                   NA                0.3750000   0.2072263   0.5427737
6 months    ki1126311-ZVITAMBO      Q2                   NA                0.3378378   0.2300515   0.4456242
6 months    ki1126311-ZVITAMBO      Q3                   NA                0.3070652   0.2737329   0.3403976
6 months    ki1126311-ZVITAMBO      Q4                   NA                0.2877947   0.2644223   0.3111672
6 months    ki1135781-COHORTS       Q1                   NA                0.3080041   0.2791974   0.3368107
6 months    ki1135781-COHORTS       Q2                   NA                0.2566248   0.2246495   0.2886002
6 months    ki1135781-COHORTS       Q3                   NA                0.2616179   0.2258735   0.2973623
6 months    ki1135781-COHORTS       Q4                   NA                0.1666667   0.1382297   0.1951037
12 months   ki0047075b-MAL-ED       Q1                   NA                0.4262295   0.3793088   0.4731502
12 months   ki0047075b-MAL-ED       Q2                   NA                0.4028777   0.3557867   0.4499687
12 months   ki0047075b-MAL-ED       Q3                   NA                0.4174229   0.3762343   0.4586114
12 months   ki0047075b-MAL-ED       Q4                   NA                0.4567901   0.3800589   0.5335214
12 months   ki1000108-IRC           Q1                   NA                0.5109890   0.4382763   0.5837017
12 months   ki1000108-IRC           Q2                   NA                0.5825243   0.4871711   0.6778774
12 months   ki1000108-IRC           Q3                   NA                0.4285714   0.3368091   0.5203338
12 months   ki1000108-IRC           Q4                   NA                0.5454545   0.2508411   0.8400680
12 months   ki1017093-NIH-Birth     Q1                   NA                0.5758755   0.5153979   0.6363530
12 months   ki1017093-NIH-Birth     Q2                   NA                0.5192308   0.4407549   0.5977066
12 months   ki1017093-NIH-Birth     Q3                   NA                0.3673469   0.2718130   0.4628809
12 months   ki1017093-NIH-Birth     Q4                   NA                0.3666667   0.1940665   0.5392668
12 months   ki1017093c-NIH-Crypto   Q1                   NA                0.4102564   0.3471901   0.4733227
12 months   ki1017093c-NIH-Crypto   Q2                   NA                0.4923077   0.4063088   0.5783066
12 months   ki1017093c-NIH-Crypto   Q3                   NA                0.3487179   0.2817834   0.4156525
12 months   ki1017093c-NIH-Crypto   Q4                   NA                0.2882353   0.2201014   0.3563692
12 months   ki1113344-GMS-Nepal     Q1                   NA                0.4865526   0.4380712   0.5350339
12 months   ki1113344-GMS-Nepal     Q2                   NA                0.3333333   0.1954820   0.4711847
12 months   ki1113344-GMS-Nepal     Q3                   NA                0.4464286   0.3161142   0.5767429
12 months   ki1113344-GMS-Nepal     Q4                   NA                0.3623188   0.2488057   0.4758320
12 months   ki1126311-ZVITAMBO      Q1                   NA                0.3947368   0.2392951   0.5501786
12 months   ki1126311-ZVITAMBO      Q2                   NA                0.4197531   0.3122566   0.5272496
12 months   ki1126311-ZVITAMBO      Q3                   NA                0.3804213   0.3469188   0.4139238
12 months   ki1126311-ZVITAMBO      Q4                   NA                0.3733004   0.3497280   0.3968727
12 months   ki1135781-COHORTS       Q1                   NA                0.5456570   0.5303045   0.5610096
12 months   ki1135781-COHORTS       Q2                   NA                0.4714475   0.4357913   0.5071038
12 months   ki1135781-COHORTS       Q3                   NA                0.3906359   0.3653559   0.4159159
12 months   ki1135781-COHORTS       Q4                   NA                0.2517483   0.2349805   0.2685160
12 months   ki1148112-LCNI-5        Q1                   NA                0.5270936   0.4583256   0.5958616
12 months   ki1148112-LCNI-5        Q2                   NA                0.4666667   0.3711210   0.5622123
12 months   ki1148112-LCNI-5        Q3                   NA                0.3870968   0.2656985   0.5084951
12 months   ki1148112-LCNI-5        Q4                   NA                0.4090909   0.2033779   0.6148039
18 months   ki0047075b-MAL-ED       Q1                   NA                0.5498783   0.5017644   0.5979923
18 months   ki0047075b-MAL-ED       Q2                   NA                0.5225000   0.4735341   0.5714659
18 months   ki0047075b-MAL-ED       Q3                   NA                0.5123340   0.4696439   0.5550240
18 months   ki0047075b-MAL-ED       Q4                   NA                0.5298013   0.4501666   0.6094361
18 months   ki1000108-IRC           Q1                   NA                0.5714286   0.4994445   0.6434127
18 months   ki1000108-IRC           Q2                   NA                0.6250000   0.5318423   0.7181577
18 months   ki1000108-IRC           Q3                   NA                0.4910714   0.3983732   0.5837697
18 months   ki1000108-IRC           Q4                   NA                0.5454545   0.2508420   0.8400671
18 months   ki1017093-NIH-Birth     Q1                   NA                0.7203390   0.6630180   0.7776600
18 months   ki1017093-NIH-Birth     Q2                   NA                0.6666667   0.5887788   0.7445545
18 months   ki1017093-NIH-Birth     Q3                   NA                0.5108696   0.4086206   0.6131185
18 months   ki1017093-NIH-Birth     Q4                   NA                0.4285714   0.2450871   0.6120558
18 months   ki1017093c-NIH-Crypto   Q1                   NA                0.4869565   0.4223152   0.5515978
18 months   ki1017093c-NIH-Crypto   Q2                   NA                0.5725806   0.4854469   0.6597144
18 months   ki1017093c-NIH-Crypto   Q3                   NA                0.4248705   0.3550819   0.4946591
18 months   ki1017093c-NIH-Crypto   Q4                   NA                0.3095238   0.2395688   0.3794788
18 months   ki1113344-GMS-Nepal     Q1                   NA                0.6658354   0.6196271   0.7120437
18 months   ki1113344-GMS-Nepal     Q2                   NA                0.5111111   0.3649320   0.6572902
18 months   ki1113344-GMS-Nepal     Q3                   NA                0.6545455   0.5287651   0.7803258
18 months   ki1113344-GMS-Nepal     Q4                   NA                0.4428571   0.3263923   0.5593220
18 months   ki1126311-ZVITAMBO      Q1                   NA                0.4375000   0.2655745   0.6094256
18 months   ki1126311-ZVITAMBO      Q2                   NA                0.5384615   0.4172372   0.6596859
18 months   ki1126311-ZVITAMBO      Q3                   NA                0.4942149   0.4543649   0.5340649
18 months   ki1126311-ZVITAMBO      Q4                   NA                0.4800693   0.4512365   0.5089021
18 months   ki1135781-COHORTS       Q1                   NA                0.7628524   0.7388434   0.7868614
18 months   ki1135781-COHORTS       Q2                   NA                0.6605634   0.6257276   0.6953992
18 months   ki1135781-COHORTS       Q3                   NA                0.5947955   0.5533051   0.6362860
18 months   ki1135781-COHORTS       Q4                   NA                0.4567308   0.4176409   0.4958206
18 months   ki1148112-LCNI-5        Q1                   NA                0.6047904   0.5305270   0.6790539
18 months   ki1148112-LCNI-5        Q2                   NA                0.5476190   0.4410161   0.6542220
18 months   ki1148112-LCNI-5        Q3                   NA                0.5000000   0.3688425   0.6311575
18 months   ki1148112-LCNI-5        Q4                   NA                0.5555556   0.3256479   0.7854632
24 months   ki0047075b-MAL-ED       Q1                   NA                0.6041131   0.5554980   0.6527283
24 months   ki0047075b-MAL-ED       Q2                   NA                0.5797872   0.5298785   0.6296960
24 months   ki0047075b-MAL-ED       Q3                   NA                0.5557769   0.5122958   0.5992580
24 months   ki0047075b-MAL-ED       Q4                   NA                0.5442177   0.4636783   0.6247570
24 months   ki1000108-IRC           Q1                   NA                0.6703297   0.6019500   0.7387093
24 months   ki1000108-IRC           Q2                   NA                0.6730769   0.5828125   0.7633414
24 months   ki1000108-IRC           Q3                   NA                0.5752212   0.4839702   0.6664723
24 months   ki1000108-IRC           Q4                   NA                0.5454545   0.2508429   0.8400662
24 months   ki1017093-NIH-Birth     Q1                   NA                0.8190045   0.7681896   0.8698195
24 months   ki1017093-NIH-Birth     Q2                   NA                0.7910448   0.7221343   0.8599553
24 months   ki1017093-NIH-Birth     Q3                   NA                0.6179775   0.5169252   0.7190299
24 months   ki1017093-NIH-Birth     Q4                   NA                0.5000000   0.3076049   0.6923951
24 months   ki1017093c-NIH-Crypto   Q1                   NA                0.5532995   0.4838217   0.6227773
24 months   ki1017093c-NIH-Crypto   Q2                   NA                0.6126126   0.5219152   0.7033101
24 months   ki1017093c-NIH-Crypto   Q3                   NA                0.4941860   0.4194092   0.5689629
24 months   ki1017093c-NIH-Crypto   Q4                   NA                0.3636364   0.2876008   0.4396719
24 months   ki1113344-GMS-Nepal     Q1                   NA                0.7254408   0.6815012   0.7693804
24 months   ki1113344-GMS-Nepal     Q2                   NA                0.6279070   0.4833058   0.7725082
24 months   ki1113344-GMS-Nepal     Q3                   NA                0.6964286   0.5758951   0.8169620
24 months   ki1113344-GMS-Nepal     Q4                   NA                0.5217391   0.4037703   0.6397080
24 months   ki1135781-COHORTS       Q1                   NA                0.8711554   0.8522203   0.8900906
24 months   ki1135781-COHORTS       Q2                   NA                0.7928058   0.7626688   0.8229427
24 months   ki1135781-COHORTS       Q3                   NA                0.7538168   0.7169262   0.7907074
24 months   ki1135781-COHORTS       Q4                   NA                0.5842881   0.5452032   0.6233729
24 months   ki1148112-LCNI-5        Q1                   NA                0.7022472   0.6349758   0.7695186
24 months   ki1148112-LCNI-5        Q2                   NA                0.6250000   0.5280188   0.7219812
24 months   ki1148112-LCNI-5        Q3                   NA                0.5438596   0.4143736   0.6733457
24 months   ki1148112-LCNI-5        Q4                   NA                0.7000000   0.4988768   0.9011232


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       NA                   NA                0.2546404   0.2541242   0.2551565
3 months    ki1017093-NIH-Birth     NA                   NA                0.2225755   0.2214170   0.2237340
3 months    ki1017093c-NIH-Crypto   NA                   NA                0.1596306   0.1573438   0.1619174
3 months    ki1126311-ZVITAMBO      NA                   NA                0.2100600   0.2098282   0.2102918
3 months    ki1135781-COHORTS       NA                   NA                0.1785366   0.1775096   0.1795636
6 months    ki0047075b-MAL-ED       NA                   NA                0.3248447   0.3242390   0.3254504
6 months    ki1000108-IRC           NA                   NA                0.4240196   0.4179517   0.4300876
6 months    ki1017093-NIH-Birth     NA                   NA                0.3647913   0.3605794   0.3690032
6 months    ki1017093c-NIH-Crypto   NA                   NA                0.3070652   0.3026780   0.3114525
6 months    ki1113344-GMS-Nepal     NA                   NA                0.2872340   0.2823028   0.2921653
6 months    ki1126311-ZVITAMBO      NA                   NA                0.2968476   0.2962318   0.2974635
6 months    ki1135781-COHORTS       NA                   NA                0.2546689   0.2527922   0.2565457
12 months   ki0047075b-MAL-ED       NA                   NA                0.4200385   0.4192812   0.4207959
12 months   ki1000108-IRC           NA                   NA                0.5073529   0.5018784   0.5128274
12 months   ki1017093-NIH-Birth     NA                   NA                0.5101664   0.5031544   0.5171783
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.3799726   0.3749564   0.3849888
12 months   ki1113344-GMS-Nepal     NA                   NA                0.4559585   0.4515808   0.4603363
12 months   ki1126311-ZVITAMBO      NA                   NA                0.3773585   0.3770215   0.3776955
12 months   ki1135781-COHORTS       NA                   NA                0.4281168   0.4254875   0.4307462
12 months   ki1148112-LCNI-5        NA                   NA                0.4821429   0.4768617   0.4874240
18 months   ki0047075b-MAL-ED       NA                   NA                0.5271995   0.5264343   0.5279646
18 months   ki1000108-IRC           NA                   NA                0.5623472   0.5575603   0.5671340
18 months   ki1017093-NIH-Birth     NA                   NA                0.6498994   0.6416562   0.6581426
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.4433566   0.4368751   0.4498382
18 months   ki1113344-GMS-Nepal     NA                   NA                0.6252189   0.6186800   0.6317578
18 months   ki1126311-ZVITAMBO      NA                   NA                0.4859914   0.4853795   0.4866033
18 months   ki1135781-COHORTS       NA                   NA                0.6478233   0.6437767   0.6518698
18 months   ki1148112-LCNI-5        NA                   NA                0.5692308   0.5648662   0.5735953
24 months   ki0047075b-MAL-ED       NA                   NA                0.5742574   0.5731290   0.5753859
24 months   ki1000108-IRC           NA                   NA                0.6414634   0.6370434   0.6458835
24 months   ki1017093-NIH-Birth     NA                   NA                0.7553191   0.7465217   0.7641166
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.5015773   0.4947742   0.5083804
24 months   ki1113344-GMS-Nepal     NA                   NA                0.6902655   0.6846453   0.6958857
24 months   ki1135781-COHORTS       NA                   NA                0.7751401   0.7713825   0.7788977
24 months   ki1148112-LCNI-5        NA                   NA                0.6552707   0.6490732   0.6614681


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       Q2                   Q1                1.0924581   0.8801963   1.3559074
3 months    ki0047075b-MAL-ED       Q3                   Q1                0.9904256   0.8026122   1.2221879
3 months    ki0047075b-MAL-ED       Q4                   Q1                0.9915879   0.7392950   1.3299788
3 months    ki1017093-NIH-Birth     Q2                   Q1                0.8780640   0.6190322   1.2454869
3 months    ki1017093-NIH-Birth     Q3                   Q1                0.9317191   0.6266357   1.3853352
3 months    ki1017093-NIH-Birth     Q4                   Q1                0.7928571   0.3743962   1.6790299
3 months    ki1017093c-NIH-Crypto   Q2                   Q1                1.2964286   0.8471811   1.9839052
3 months    ki1017093c-NIH-Crypto   Q3                   Q1                0.9284653   0.6036888   1.4279673
3 months    ki1017093c-NIH-Crypto   Q4                   Q1                0.6954023   0.4215768   1.1470848
3 months    ki1126311-ZVITAMBO      Q2                   Q1                0.9940828   0.5501047   1.7963867
3 months    ki1126311-ZVITAMBO      Q3                   Q1                0.8683640   0.5318409   1.4178227
3 months    ki1126311-ZVITAMBO      Q4                   Q1                0.9170711   0.5656959   1.4866989
3 months    ki1135781-COHORTS       Q2                   Q1                0.6620027   0.5578010   0.7856701
3 months    ki1135781-COHORTS       Q3                   Q1                0.7284574   0.6427866   0.8255465
3 months    ki1135781-COHORTS       Q4                   Q1                0.4905641   0.4351199   0.5530732
6 months    ki0047075b-MAL-ED       Q2                   Q1                0.9258556   0.7657591   1.1194234
6 months    ki0047075b-MAL-ED       Q3                   Q1                0.9171488   0.7680628   1.0951734
6 months    ki0047075b-MAL-ED       Q4                   Q1                0.9792365   0.7640633   1.2550060
6 months    ki1000108-IRC           Q2                   Q1                1.1014282   0.8524767   1.4230819
6 months    ki1000108-IRC           Q3                   Q1                0.7357151   0.5393621   1.0035496
6 months    ki1000108-IRC           Q4                   Q1                1.0213244   0.5235660   1.9923056
6 months    ki1017093-NIH-Birth     Q2                   Q1                0.8389998   0.6461823   1.0893532
6 months    ki1017093-NIH-Birth     Q3                   Q1                0.7150721   0.5146124   0.9936179
6 months    ki1017093-NIH-Birth     Q4                   Q1                0.6681430   0.3639377   1.2266248
6 months    ki1017093c-NIH-Crypto   Q2                   Q1                1.2563725   0.9529048   1.6564844
6 months    ki1017093c-NIH-Crypto   Q3                   Q1                0.9304230   0.7006438   1.2355593
6 months    ki1017093c-NIH-Crypto   Q4                   Q1                0.6761569   0.4809033   0.9506862
6 months    ki1113344-GMS-Nepal     Q2                   Q1                0.4824653   0.2405122   0.9678211
6 months    ki1113344-GMS-Nepal     Q3                   Q1                0.8350361   0.5217090   1.3365405
6 months    ki1113344-GMS-Nepal     Q4                   Q1                0.5760045   0.3454422   0.9604534
6 months    ki1126311-ZVITAMBO      Q2                   Q1                0.9009009   0.5200323   1.5607153
6 months    ki1126311-ZVITAMBO      Q3                   Q1                0.8188406   0.5167258   1.2975932
6 months    ki1126311-ZVITAMBO      Q4                   Q1                0.7674526   0.4870511   1.2092848
6 months    ki1135781-COHORTS       Q2                   Q1                0.8331865   0.7129859   0.9736515
6 months    ki1135781-COHORTS       Q3                   Q1                0.8493976   0.7197860   1.0023483
6 months    ki1135781-COHORTS       Q4                   Q1                0.5411184   0.4454406   0.6573472
12 months   ki0047075b-MAL-ED       Q2                   Q1                0.9452131   0.8050033   1.1098435
12 months   ki0047075b-MAL-ED       Q3                   Q1                0.9793383   0.8447524   1.1353664
12 months   ki0047075b-MAL-ED       Q4                   Q1                1.0716999   0.8766999   1.3100727
12 months   ki1000108-IRC           Q2                   Q1                1.1399937   0.9177124   1.4161143
12 months   ki1000108-IRC           Q3                   Q1                0.8387097   0.6485762   1.0845817
12 months   ki1000108-IRC           Q4                   Q1                1.0674487   0.6106182   1.8660541
12 months   ki1017093-NIH-Birth     Q2                   Q1                0.9016372   0.7500721   1.0838287
12 months   ki1017093-NIH-Birth     Q3                   Q1                0.6378930   0.4818834   0.8444107
12 months   ki1017093-NIH-Birth     Q4                   Q1                0.6367117   0.3930815   1.0313429
12 months   ki1017093c-NIH-Crypto   Q2                   Q1                1.2000000   0.9508760   1.5143930
12 months   ki1017093c-NIH-Crypto   Q3                   Q1                0.8500000   0.6646908   1.0869716
12 months   ki1017093c-NIH-Crypto   Q4                   Q1                0.7025735   0.5299477   0.9314307
12 months   ki1113344-GMS-Nepal     Q2                   Q1                0.6850921   0.4477185   1.0483177
12 months   ki1113344-GMS-Nepal     Q3                   Q1                0.9175341   0.6740117   1.2490419
12 months   ki1113344-GMS-Nepal     Q4                   Q1                0.7446654   0.5360218   1.0345223
12 months   ki1126311-ZVITAMBO      Q2                   Q1                1.0633745   0.6647871   1.7009434
12 months   ki1126311-ZVITAMBO      Q3                   Q1                0.9637340   0.6437446   1.4427822
12 months   ki1126311-ZVITAMBO      Q4                   Q1                0.9456943   0.6346685   1.4091413
12 months   ki1135781-COHORTS       Q2                   Q1                0.8639998   0.7970179   0.9366109
12 months   ki1135781-COHORTS       Q3                   Q1                0.7159001   0.6671226   0.7682440
12 months   ki1135781-COHORTS       Q4                   Q1                0.4613672   0.4291859   0.4959616
12 months   ki1148112-LCNI-5        Q2                   Q1                0.8853583   0.6945168   1.1286397
12 months   ki1148112-LCNI-5        Q3                   Q1                0.7343986   0.5228968   1.0314487
12 months   ki1148112-LCNI-5        Q4                   Q1                0.7761257   0.4616520   1.3048165
18 months   ki0047075b-MAL-ED       Q2                   Q1                0.9502102   0.8358676   1.0801943
18 months   ki0047075b-MAL-ED       Q3                   Q1                0.9317224   0.8256806   1.0513830
18 months   ki0047075b-MAL-ED       Q4                   Q1                0.9634882   0.8096780   1.1465169
18 months   ki1000108-IRC           Q2                   Q1                1.0937500   0.8998357   1.3294528
18 months   ki1000108-IRC           Q3                   Q1                0.8593750   0.6848944   1.0783055
18 months   ki1000108-IRC           Q4                   Q1                0.9545455   0.5481871   1.6621279
18 months   ki1017093-NIH-Birth     Q2                   Q1                0.9254902   0.8034913   1.0660129
18 months   ki1017093-NIH-Birth     Q3                   Q1                0.7092072   0.5717844   0.8796581
18 months   ki1017093-NIH-Birth     Q4                   Q1                0.5949580   0.3849172   0.9196133
18 months   ki1017093c-NIH-Crypto   Q2                   Q1                1.1758353   0.9608277   1.4389557
18 months   ki1017093c-NIH-Crypto   Q3                   Q1                0.8725019   0.7063934   1.0776707
18 months   ki1017093c-NIH-Crypto   Q4                   Q1                0.6356293   0.4890703   0.8261073
18 months   ki1113344-GMS-Nepal     Q2                   Q1                0.7676238   0.5719192   1.0302964
18 months   ki1113344-GMS-Nepal     Q3                   Q1                0.9830439   0.8013853   1.2058811
18 months   ki1113344-GMS-Nepal     Q4                   Q1                0.6651150   0.5067269   0.8730107
18 months   ki1126311-ZVITAMBO      Q2                   Q1                1.2307692   0.7825066   1.9358213
18 months   ki1126311-ZVITAMBO      Q3                   Q1                1.1296340   0.7563386   1.6871716
18 months   ki1126311-ZVITAMBO      Q4                   Q1                1.0973013   0.7373578   1.6329523
18 months   ki1135781-COHORTS       Q2                   Q1                0.8659124   0.8143334   0.9207585
18 months   ki1135781-COHORTS       Q3                   Q1                0.7796994   0.7222571   0.8417101
18 months   ki1135781-COHORTS       Q4                   Q1                0.5987145   0.5465333   0.6558777
18 months   ki1148112-LCNI-5        Q2                   Q1                0.9054691   0.7193118   1.1398038
18 months   ki1148112-LCNI-5        Q3                   Q1                0.8267327   0.6188412   1.1044625
18 months   ki1148112-LCNI-5        Q4                   Q1                0.9185919   0.5965571   1.4144681
24 months   ki0047075b-MAL-ED       Q2                   Q1                0.9597329   0.8530484   1.0797596
24 months   ki0047075b-MAL-ED       Q3                   Q1                0.9199881   0.8223169   1.0292604
24 months   ki0047075b-MAL-ED       Q4                   Q1                0.9008540   0.7611933   1.0661389
24 months   ki1000108-IRC           Q2                   Q1                1.0040984   0.8483983   1.1883728
24 months   ki1000108-IRC           Q3                   Q1                0.8581169   0.7106192   1.0362297
24 months   ki1000108-IRC           Q4                   Q1                0.8137109   0.4696253   1.4099013
24 months   ki1017093-NIH-Birth     Q2                   Q1                0.9658613   0.8678947   1.0748862
24 months   ki1017093-NIH-Birth     Q3                   Q1                0.7545471   0.6334756   0.8987582
24 months   ki1017093-NIH-Birth     Q4                   Q1                0.6104972   0.4134405   0.9014765
24 months   ki1017093c-NIH-Crypto   Q2                   Q1                1.1071989   0.9118340   1.3444217
24 months   ki1017093c-NIH-Crypto   Q3                   Q1                0.8931619   0.7337274   1.0872407
24 months   ki1017093c-NIH-Crypto   Q4                   Q1                0.6572143   0.5149682   0.8387522
24 months   ki1113344-GMS-Nepal     Q2                   Q1                0.8655523   0.6821468   1.0982692
24 months   ki1113344-GMS-Nepal     Q3                   Q1                0.9600074   0.7991709   1.1532130
24 months   ki1113344-GMS-Nepal     Q4                   Q1                0.7192029   0.5691047   0.9088887
24 months   ki1135781-COHORTS       Q2                   Q1                0.9100623   0.8710720   0.9507979
24 months   ki1135781-COHORTS       Q3                   Q1                0.8653069   0.8201900   0.9129055
24 months   ki1135781-COHORTS       Q4                   Q1                0.6707047   0.6251509   0.7195779
24 months   ki1148112-LCNI-5        Q2                   Q1                0.8900000   0.7416399   1.0680385
24 months   ki1148112-LCNI-5        Q3                   Q1                0.7744561   0.5991577   1.0010424
24 months   ki1148112-LCNI-5        Q4                   Q1                0.9968000   0.7363331   1.3494032


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED       Q1                   NA                 0.0051734   -0.0340023    0.0443491
3 months    ki1017093-NIH-Birth     Q1                   NA                -0.0139110   -0.0623710    0.0345490
3 months    ki1017093c-NIH-Crypto   Q1                   NA                -0.0056586   -0.0525437    0.0412264
3 months    ki1126311-ZVITAMBO      Q1                   NA                -0.0220828   -0.1326777    0.0885120
3 months    ki1135781-COHORTS       Q1                   NA                -0.0510105   -0.0637454   -0.0382756
6 months    ki0047075b-MAL-ED       Q1                   NA                -0.0175589   -0.0618640    0.0267461
6 months    ki1000108-IRC           Q1                   NA                -0.0210353   -0.0935794    0.0515087
6 months    ki1017093-NIH-Birth     Q1                   NA                -0.0480875   -0.1076816    0.0115066
6 months    ki1017093c-NIH-Crypto   Q1                   NA                -0.0148232   -0.0750133    0.0453670
6 months    ki1113344-GMS-Nepal     Q1                   NA                -0.0351841   -0.0814657    0.0110975
6 months    ki1126311-ZVITAMBO      Q1                   NA                -0.0781524   -0.2459272    0.0896224
6 months    ki1135781-COHORTS       Q1                   NA                -0.0533351   -0.0822029   -0.0244674
12 months   ki0047075b-MAL-ED       Q1                   NA                -0.0061910   -0.0531178    0.0407358
12 months   ki1000108-IRC           Q1                   NA                -0.0036361   -0.0765546    0.0692824
12 months   ki1017093-NIH-Birth     Q1                   NA                -0.0657091   -0.1265918   -0.0048264
12 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.0302838   -0.0935493    0.0329817
12 months   ki1113344-GMS-Nepal     Q1                   NA                -0.0305940   -0.0792726    0.0180846
12 months   ki1126311-ZVITAMBO      Q1                   NA                -0.0173784   -0.1728204    0.1380637
12 months   ki1135781-COHORTS       Q1                   NA                -0.1175402   -0.1331162   -0.1019641
12 months   ki1148112-LCNI-5        Q1                   NA                -0.0449507   -0.1139212    0.0240197
18 months   ki0047075b-MAL-ED       Q1                   NA                -0.0226789   -0.0707990    0.0254412
18 months   ki1000108-IRC           Q1                   NA                -0.0090814   -0.0812245    0.0630617
18 months   ki1017093-NIH-Birth     Q1                   NA                -0.0704396   -0.1283503   -0.0125289
18 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.0435999   -0.1085653    0.0213656
18 months   ki1113344-GMS-Nepal     Q1                   NA                -0.0406165   -0.0872852    0.0060522
18 months   ki1126311-ZVITAMBO      Q1                   NA                 0.0484914   -0.1234353    0.2204180
18 months   ki1135781-COHORTS       Q1                   NA                -0.1150291   -0.1393768   -0.0906815
18 months   ki1148112-LCNI-5        Q1                   NA                -0.0355596   -0.1099513    0.0388320
24 months   ki0047075b-MAL-ED       Q1                   NA                -0.0298557   -0.0784839    0.0187726
24 months   ki1000108-IRC           Q1                   NA                -0.0288663   -0.0973886    0.0396561
24 months   ki1017093-NIH-Birth     Q1                   NA                -0.0636854   -0.1152562   -0.0121145
24 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.0517222   -0.1215323    0.0180879
24 months   ki1113344-GMS-Nepal     Q1                   NA                -0.0351753   -0.0794729    0.0091223
24 months   ki1135781-COHORTS       Q1                   NA                -0.0960153   -0.1153197   -0.0767110
24 months   ki1148112-LCNI-5        Q1                   NA                -0.0469765   -0.1145328    0.0205797


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED       Q1                   NA                 0.0203166   -0.1462678    0.1626917
3 months    ki1017093-NIH-Birth     Q1                   NA                -0.0625000   -0.3041464    0.1343715
3 months    ki1017093c-NIH-Crypto   Q1                   NA                -0.0354484   -0.3750823    0.2202988
3 months    ki1126311-ZVITAMBO      Q1                   NA                -0.1051263   -0.7795643    0.3137060
3 months    ki1135781-COHORTS       Q1                   NA                -0.2857145   -0.3592195   -0.2161845
6 months    ki0047075b-MAL-ED       Q1                   NA                -0.0540532   -0.1996604    0.0738810
6 months    ki1000108-IRC           Q1                   NA                -0.0496094   -0.2355005    0.1083130
6 months    ki1017093-NIH-Birth     Q1                   NA                -0.1318220   -0.3076974    0.0203996
6 months    ki1017093c-NIH-Crypto   Q1                   NA                -0.0482738   -0.2638778    0.1305505
6 months    ki1113344-GMS-Nepal     Q1                   NA                -0.1224928   -0.2960339    0.0278109
6 months    ki1126311-ZVITAMBO      Q1                   NA                -0.2632743   -0.9760666    0.1924047
6 months    ki1135781-COHORTS       Q1                   NA                -0.2094292   -0.3283870   -0.1011242
12 months   ki0047075b-MAL-ED       Q1                   NA                -0.0147391   -0.1328419    0.0910512
12 months   ki1000108-IRC           Q1                   NA                -0.0071667   -0.1616573    0.1267779
12 months   ki1017093-NIH-Birth     Q1                   NA                -0.1287994   -0.2549160   -0.0153573
12 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.0797001   -0.2598256    0.0746717
12 months   ki1113344-GMS-Nepal     Q1                   NA                -0.0670982   -0.1794487    0.0345501
12 months   ki1126311-ZVITAMBO      Q1                   NA                -0.0460526   -0.5508612    0.2944397
12 months   ki1135781-COHORTS       Q1                   NA                -0.2745517   -0.3117903   -0.2383701
12 months   ki1148112-LCNI-5        Q1                   NA                -0.0932312   -0.2461553    0.0409266
18 months   ki0047075b-MAL-ED       Q1                   NA                -0.0430177   -0.1384065    0.0443784
18 months   ki1000108-IRC           Q1                   NA                -0.0161491   -0.1528988    0.1043803
18 months   ki1017093-NIH-Birth     Q1                   NA                -0.1083854   -0.2013957   -0.0225758
18 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.0983404   -0.2552672    0.0389682
18 months   ki1113344-GMS-Nepal     Q1                   NA                -0.0649636   -0.1423909    0.0072158
18 months   ki1126311-ZVITAMBO      Q1                   NA                 0.0997783   -0.3335713    0.3923091
18 months   ki1135781-COHORTS       Q1                   NA                -0.1775625   -0.2159592   -0.1403783
18 months   ki1148112-LCNI-5        Q1                   NA                -0.0624697   -0.2015679    0.0605260
24 months   ki0047075b-MAL-ED       Q1                   NA                -0.0519901   -0.1401744    0.0293738
24 months   ki1000108-IRC           Q1                   NA                -0.0450006   -0.1574958    0.0565614
24 months   ki1017093-NIH-Birth     Q1                   NA                -0.0843158   -0.1549739   -0.0179804
24 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.1031191   -0.2516243    0.0277659
24 months   ki1113344-GMS-Nepal     Q1                   NA                -0.0509591   -0.1171911    0.0113463
24 months   ki1135781-COHORTS       Q1                   NA                -0.1238683   -0.1491772   -0.0991168
24 months   ki1148112-LCNI-5        Q1                   NA                -0.0716903   -0.1799798    0.0266613


