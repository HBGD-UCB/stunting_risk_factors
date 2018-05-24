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

**Intervention Variable:** enstunt

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
* agecat: 12 months, studyid: ki1000109-ResPak
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CMIN
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CMIN
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CMIN
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000109-ResPak
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CMIN
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000109-ResPak
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CMIN
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000109-ResPak
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1114097-CMIN
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1000109-ResPak
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1114097-CMIN
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000109-ResPak
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CMIN
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000109-ResPak
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1000109-ResPak
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1114097-CMIN
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/21165ded-f941-4c9b-a4cc-9dfedd7f3cb5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/21165ded-f941-4c9b-a4cc-9dfedd7f3cb5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/21165ded-f941-4c9b-a4cc-9dfedd7f3cb5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/21165ded-f941-4c9b-a4cc-9dfedd7f3cb5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                      A       n     nA   nAY0   nAY1
----------  -------------------------  ---  ------  -----  -----  -----
12 months   ki0047075b-MAL-ED            0    1298   1133    911    222
12 months   ki0047075b-MAL-ED            1    1298    165     68     97
12 months   ki1000108-CMC-V-BCS-2002     0      97     81     50     31
12 months   ki1000108-CMC-V-BCS-2002     1      97     16      6     10
12 months   ki1000108-IRC                0     406    360    264     96
12 months   ki1000108-IRC                1     406     46     23     23
12 months   ki1000109-EE                 0       7      4      3      1
12 months   ki1000109-EE                 1       7      3      0      3
12 months   ki1000109-ResPak             0      59     49     29     20
12 months   ki1000109-ResPak             1      59     10      7      3
12 months   ki1000304b-SAS-FoodSuppl     0      91     56     14     42
12 months   ki1000304b-SAS-FoodSuppl     1      91     35      4     31
12 months   ki1017093-NIH-Birth          0     488    409    280    129
12 months   ki1017093-NIH-Birth          1     488     79     25     54
12 months   ki1017093c-NIH-Crypto        0      25     21     16      5
12 months   ki1017093c-NIH-Crypto        1      25      4      3      1
12 months   ki1066203-TanzaniaChild2     0       4      4      3      1
12 months   ki1066203-TanzaniaChild2     1       4      0      0      0
12 months   ki1101329-Keneba             0    1947   1753   1382    371
12 months   ki1101329-Keneba             1    1947    194     82    112
12 months   ki1112895-Guatemala BSC      0      50     37     27     10
12 months   ki1112895-Guatemala BSC      1      50     13      1     12
12 months   ki1113344-GMS-Nepal          0      50     40     28     12
12 months   ki1113344-GMS-Nepal          1      50     10      2      8
12 months   ki1114097-CMIN               0     402    360    312     48
12 months   ki1114097-CMIN               1     402     42     20     22
12 months   ki1114097-CONTENT            0      55     49     42      7
12 months   ki1114097-CONTENT            1      55      6      3      3
12 months   ki1126311-ZVITAMBO           0    1677   1506   1179    327
12 months   ki1126311-ZVITAMBO           1    1677    171     99     72
12 months   ki1135781-COHORTS            0    8292   7421   4969   2452
12 months   ki1135781-COHORTS            1    8292    871    228    643
12 months   ki1148112-LCNI-5             0     305    188    157     31
12 months   ki1148112-LCNI-5             1     305    117     24     93
18 months   ki0047075b-MAL-ED            0    1236   1082    729    353
18 months   ki0047075b-MAL-ED            1    1236    154     55     99
18 months   ki1000108-CMC-V-BCS-2002     0      97     81     29     52
18 months   ki1000108-CMC-V-BCS-2002     1      97     16      5     11
18 months   ki1000108-IRC                0     405    358    241    117
18 months   ki1000108-IRC                1     405     47     20     27
18 months   ki1000109-EE                 0       7      4      1      3
18 months   ki1000109-EE                 1       7      3      0      3
18 months   ki1000109-ResPak             0       1      0      0      0
18 months   ki1000109-ResPak             1       1      1      1      0
18 months   ki1000304b-SAS-FoodSuppl     0      82     51     10     41
18 months   ki1000304b-SAS-FoodSuppl     1      82     31      0     31
18 months   ki1017093-NIH-Birth          0     460    382    179    203
18 months   ki1017093-NIH-Birth          1     460     78     11     67
18 months   ki1017093c-NIH-Crypto        0      25     20     13      7
18 months   ki1017093c-NIH-Crypto        1      25      5      3      2
18 months   ki1066203-TanzaniaChild2     0       2      2      2      0
18 months   ki1066203-TanzaniaChild2     1       2      0      0      0
18 months   ki1101329-Keneba             0    1922   1740   1244    496
18 months   ki1101329-Keneba             1    1922    182     58    124
18 months   ki1112895-Guatemala BSC      0       0      0      0      0
18 months   ki1112895-Guatemala BSC      1       0      0      0      0
18 months   ki1113344-GMS-Nepal          0      49     39     23     16
18 months   ki1113344-GMS-Nepal          1      49     10      1      9
18 months   ki1114097-CMIN               0     453    402    332     70
18 months   ki1114097-CMIN               1     453     51     20     31
18 months   ki1114097-CONTENT            0      54     48     42      6
18 months   ki1114097-CONTENT            1      54      6      3      3
18 months   ki1126311-ZVITAMBO           0     420    355    192    163
18 months   ki1126311-ZVITAMBO           1     420     65     27     38
18 months   ki1135781-COHORTS            0    2866   2641   1066   1575
18 months   ki1135781-COHORTS            1    2866    225     18    207
18 months   ki1148112-LCNI-5             0     352    221    154     67
18 months   ki1148112-LCNI-5             1     352    131     24    107
24 months   ki0047075b-MAL-ED            0    1185   1038    717    321
24 months   ki0047075b-MAL-ED            1    1185    147     57     90
24 months   ki1000108-CMC-V-BCS-2002     0      98     82     22     60
24 months   ki1000108-CMC-V-BCS-2002     1      98     16      5     11
24 months   ki1000108-IRC                0     409    362    219    143
24 months   ki1000108-IRC                1     409     47     20     27
24 months   ki1000109-EE                 0       0      0      0      0
24 months   ki1000109-EE                 1       0      0      0      0
24 months   ki1000109-ResPak             0       0      0      0      0
24 months   ki1000109-ResPak             1       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl     0       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl     1       0      0      0      0
24 months   ki1017093-NIH-Birth          0     426    352    177    175
24 months   ki1017093-NIH-Birth          1     426     74     13     61
24 months   ki1017093c-NIH-Crypto        0      19     16     13      3
24 months   ki1017093c-NIH-Crypto        1      19      3      2      1
24 months   ki1066203-TanzaniaChild2     0       0      0      0      0
24 months   ki1066203-TanzaniaChild2     1       0      0      0      0
24 months   ki1101329-Keneba             0    1724   1548   1083    465
24 months   ki1101329-Keneba             1    1724    176     64    112
24 months   ki1112895-Guatemala BSC      0       0      0      0      0
24 months   ki1112895-Guatemala BSC      1       0      0      0      0
24 months   ki1113344-GMS-Nepal          0      44     38     22     16
24 months   ki1113344-GMS-Nepal          1      44      6      2      4
24 months   ki1114097-CMIN               0     217    190    159     31
24 months   ki1114097-CMIN               1     217     27      2     25
24 months   ki1114097-CONTENT            0      46     40     36      4
24 months   ki1114097-CONTENT            1      46      6      3      3
24 months   ki1126311-ZVITAMBO           0     114     95     42     53
24 months   ki1126311-ZVITAMBO           1     114     19      5     14
24 months   ki1135781-COHORTS            0    8142   7232   3639   3593
24 months   ki1135781-COHORTS            1    8142    910    176    734
24 months   ki1148112-LCNI-5             0     293    188    138     50
24 months   ki1148112-LCNI-5             1     293    105     24     81
3 months    ki0047075b-MAL-ED            0    1427   1244   1131    113
3 months    ki0047075b-MAL-ED            1    1427    183     77    106
3 months    ki1000108-CMC-V-BCS-2002     0      96     81     65     16
3 months    ki1000108-CMC-V-BCS-2002     1      96     15      6      9
3 months    ki1000108-IRC                0     407    359    295     64
3 months    ki1000108-IRC                1     407     48     21     27
3 months    ki1000109-EE                 0       9      6      4      2
3 months    ki1000109-EE                 1       9      3      0      3
3 months    ki1000109-ResPak             0      83     65     31     34
3 months    ki1000109-ResPak             1      83     18      6     12
3 months    ki1000304b-SAS-FoodSuppl     0      96     58     58      0
3 months    ki1000304b-SAS-FoodSuppl     1      96     38      0     38
3 months    ki1017093-NIH-Birth          0     565    476    401     75
3 months    ki1017093-NIH-Birth          1     565     89     35     54
3 months    ki1017093c-NIH-Crypto        0      26     21     15      6
3 months    ki1017093c-NIH-Crypto        1      26      5      1      4
3 months    ki1066203-TanzaniaChild2     0       5      5      4      1
3 months    ki1066203-TanzaniaChild2     1       5      0      0      0
3 months    ki1101329-Keneba             0    2189   1981   1783    198
3 months    ki1101329-Keneba             1    2189    208     90    118
3 months    ki1112895-Guatemala BSC      0       6      4      4      0
3 months    ki1112895-Guatemala BSC      1       6      2      0      2
3 months    ki1113344-GMS-Nepal          0      51     41     39      2
3 months    ki1113344-GMS-Nepal          1      51     10      2      8
3 months    ki1114097-CMIN               0     329    300    290     10
3 months    ki1114097-CMIN               1     329     29      8     21
3 months    ki1114097-CONTENT            0      55     49     47      2
3 months    ki1114097-CONTENT            1      55      6      2      4
3 months    ki1126311-ZVITAMBO           0    2242   2009   1724    285
3 months    ki1126311-ZVITAMBO           1    2242    233    132    101
3 months    ki1135781-COHORTS            0   10285   9240   8428    812
3 months    ki1135781-COHORTS            1   10285   1045    332    713
3 months    ki1148112-LCNI-5             0       0      0      0      0
3 months    ki1148112-LCNI-5             1       0      0      0      0
6 months    ki0047075b-MAL-ED            0    1360   1189   1058    131
6 months    ki0047075b-MAL-ED            1    1360    171     90     81
6 months    ki1000108-CMC-V-BCS-2002     0      96     81     62     19
6 months    ki1000108-CMC-V-BCS-2002     1      96     15      9      6
6 months    ki1000108-IRC                0     407    361    287     74
6 months    ki1000108-IRC                1     407     46     20     26
6 months    ki1000109-EE                 0       8      5      4      1
6 months    ki1000109-EE                 1       8      3      0      3
6 months    ki1000109-ResPak             0      77     61     35     26
6 months    ki1000109-ResPak             1      77     16      8      8
6 months    ki1000304b-SAS-FoodSuppl     0      94     58     43     15
6 months    ki1000304b-SAS-FoodSuppl     1      94     36      4     32
6 months    ki1017093-NIH-Birth          0     533    448    361     87
6 months    ki1017093-NIH-Birth          1     533     85     28     57
6 months    ki1017093c-NIH-Crypto        0      27     22     18      4
6 months    ki1017093c-NIH-Crypto        1      27      5      3      2
6 months    ki1066203-TanzaniaChild2     0       5      5      3      2
6 months    ki1066203-TanzaniaChild2     1       5      0      0      0
6 months    ki1101329-Keneba             0    2088   1891   1684    207
6 months    ki1101329-Keneba             1    2088    197    109     88
6 months    ki1112895-Guatemala BSC      0     103     76     70      6
6 months    ki1112895-Guatemala BSC      1     103     27      3     24
6 months    ki1113344-GMS-Nepal          0      52     42     35      7
6 months    ki1113344-GMS-Nepal          1      52     10      4      6
6 months    ki1114097-CMIN               0     519    471    453     18
6 months    ki1114097-CMIN               1     519     48     28     20
6 months    ki1114097-CONTENT            0      55     49     45      4
6 months    ki1114097-CONTENT            1      55      6      3      3
6 months    ki1126311-ZVITAMBO           0    2030   1833   1582    251
6 months    ki1126311-ZVITAMBO           1    2030    197    118     79
6 months    ki1135781-COHORTS            0    9835   8833   7451   1382
6 months    ki1135781-COHORTS            1    9835   1002    374    628
6 months    ki1148112-LCNI-5             0     411    258    258      0
6 months    ki1148112-LCNI-5             1     411    153      0    153
9 months    ki0047075b-MAL-ED            0    1314   1148    971    177
9 months    ki0047075b-MAL-ED            1    1314    166     83     83
9 months    ki1000108-CMC-V-BCS-2002     0      97     82     64     18
9 months    ki1000108-CMC-V-BCS-2002     1      97     15      8      7
9 months    ki1000108-IRC                0     407    361    273     88
9 months    ki1000108-IRC                1     407     46     23     23
9 months    ki1000109-EE                 0       8      5      4      1
9 months    ki1000109-EE                 1       8      3      0      3
9 months    ki1000109-ResPak             0      67     55     33     22
9 months    ki1000109-ResPak             1      67     12      8      4
9 months    ki1000304b-SAS-FoodSuppl     0      84     51     27     24
9 months    ki1000304b-SAS-FoodSuppl     1      84     33      1     32
9 months    ki1017093-NIH-Birth          0     503    423    299    124
9 months    ki1017093-NIH-Birth          1     503     80     24     56
9 months    ki1017093c-NIH-Crypto        0      26     21     19      2
9 months    ki1017093c-NIH-Crypto        1      26      5      2      3
9 months    ki1066203-TanzaniaChild2     0       5      5      3      2
9 months    ki1066203-TanzaniaChild2     1       5      0      0      0
9 months    ki1101329-Keneba             0    2066   1877   1597    280
9 months    ki1101329-Keneba             1    2066    189     97     92
9 months    ki1112895-Guatemala BSC      0      57     42     35      7
9 months    ki1112895-Guatemala BSC      1      57     15      1     14
9 months    ki1113344-GMS-Nepal          0      51     41     30     11
9 months    ki1113344-GMS-Nepal          1      51     10      2      8
9 months    ki1114097-CMIN               0     536    480    442     38
9 months    ki1114097-CMIN               1     536     56     25     31
9 months    ki1114097-CONTENT            0      54     48     43      5
9 months    ki1114097-CONTENT            1      54      6      3      3
9 months    ki1126311-ZVITAMBO           0    1939   1744   1432    312
9 months    ki1126311-ZVITAMBO           1    1939    195    128     67
9 months    ki1135781-COHORTS            0    8970   8057   6162   1895
9 months    ki1135781-COHORTS            1    8970    913    305    608
9 months    ki1148112-LCNI-5             0     319    200    184     16
9 months    ki1148112-LCNI-5             1     319    119     33     86
Birth       ki0047075b-MAL-ED            0    1499   1300   1300      0
Birth       ki0047075b-MAL-ED            1    1499    199      0    199
Birth       ki1000108-CMC-V-BCS-2002     0      90     74     74      0
Birth       ki1000108-CMC-V-BCS-2002     1      90     16      0     16
Birth       ki1000108-IRC                0     388    343    343      0
Birth       ki1000108-IRC                1     388     45      0     45
Birth       ki1000109-EE                 0       2      1      1      0
Birth       ki1000109-EE                 1       2      1      0      1
Birth       ki1000109-ResPak             0       7      5      5      0
Birth       ki1000109-ResPak             1       7      2      0      2
Birth       ki1000304b-SAS-FoodSuppl     0       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl     1       0      0      0      0
Birth       ki1017093-NIH-Birth          0      28     27     27      0
Birth       ki1017093-NIH-Birth          1      28      1      0      1
Birth       ki1017093c-NIH-Crypto        0      27     22     22      0
Birth       ki1017093c-NIH-Crypto        1      27      5      0      5
Birth       ki1066203-TanzaniaChild2     0       0      0      0      0
Birth       ki1066203-TanzaniaChild2     1       0      0      0      0
Birth       ki1101329-Keneba             0    1541   1459   1459      0
Birth       ki1101329-Keneba             1    1541     82      0     82
Birth       ki1112895-Guatemala BSC      0       0      0      0      0
Birth       ki1112895-Guatemala BSC      1       0      0      0      0
Birth       ki1113344-GMS-Nepal          0       0      0      0      0
Birth       ki1113344-GMS-Nepal          1       0      0      0      0
Birth       ki1114097-CMIN               0     138    127    127      0
Birth       ki1114097-CMIN               1     138     11      0     11
Birth       ki1114097-CONTENT            0       2      2      2      0
Birth       ki1114097-CONTENT            1       2      0      0      0
Birth       ki1126311-ZVITAMBO           0    3449   3089   3089      0
Birth       ki1126311-ZVITAMBO           1    3449    360      0    360
Birth       ki1135781-COHORTS            0   10097   9099   9099      0
Birth       ki1135781-COHORTS            1   10097    998      0    998
Birth       ki1148112-LCNI-5             0       0      0      0      0
Birth       ki1148112-LCNI-5             1       0      0      0      0

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          0                    NA                0.1959400   0.1728190   0.2190610
12 months   ki0047075b-MAL-ED          1                    NA                0.5878788   0.5127459   0.6630116
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                0.3827160   0.2763173   0.4891148
12 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.6250000   0.3865518   0.8634482
12 months   ki1000108-IRC              0                    NA                0.2666667   0.2209297   0.3124036
12 months   ki1000108-IRC              1                    NA                0.5000000   0.3553313   0.6446687
12 months   ki1017093-NIH-Birth        0                    NA                0.3154034   0.2703236   0.3604833
12 months   ki1017093-NIH-Birth        1                    NA                0.6835443   0.5808799   0.7862087
12 months   ki1101329-Keneba           0                    NA                0.2116372   0.1925110   0.2307634
12 months   ki1101329-Keneba           1                    NA                0.5773196   0.5077895   0.6468497
12 months   ki1114097-CMIN             0                    NA                0.1333333   0.0981746   0.1684921
12 months   ki1114097-CMIN             1                    NA                0.5238095   0.3725783   0.6750407
12 months   ki1126311-ZVITAMBO         0                    NA                0.2171315   0.1963024   0.2379606
12 months   ki1126311-ZVITAMBO         1                    NA                0.4210526   0.3470295   0.4950757
12 months   ki1135781-COHORTS          0                    NA                0.3304137   0.3197114   0.3411159
12 months   ki1135781-COHORTS          1                    NA                0.7382319   0.7090361   0.7674277
12 months   ki1148112-LCNI-5           0                    NA                0.1648936   0.1117617   0.2180255
12 months   ki1148112-LCNI-5           1                    NA                0.7948718   0.7215844   0.8681592
18 months   ki0047075b-MAL-ED          0                    NA                0.3262477   0.2983008   0.3541946
18 months   ki0047075b-MAL-ED          1                    NA                0.6428571   0.5671492   0.7185651
18 months   ki1000108-CMC-V-BCS-2002   0                    NA                0.6419753   0.5370280   0.7469227
18 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.6875000   0.4592033   0.9157967
18 months   ki1000108-IRC              0                    NA                0.3268156   0.2781680   0.3754633
18 months   ki1000108-IRC              1                    NA                0.5744681   0.4329425   0.7159937
18 months   ki1017093-NIH-Birth        0                    NA                0.5314136   0.4813179   0.5815093
18 months   ki1017093-NIH-Birth        1                    NA                0.8589744   0.7816507   0.9362980
18 months   ki1101329-Keneba           0                    NA                0.2850575   0.2638403   0.3062747
18 months   ki1101329-Keneba           1                    NA                0.6813187   0.6136046   0.7490327
18 months   ki1114097-CMIN             0                    NA                0.1741294   0.1370180   0.2112407
18 months   ki1114097-CMIN             1                    NA                0.6078431   0.4737000   0.7419863
18 months   ki1126311-ZVITAMBO         0                    NA                0.4591549   0.4072549   0.5110550
18 months   ki1126311-ZVITAMBO         1                    NA                0.5846154   0.4646739   0.7045569
18 months   ki1135781-COHORTS          0                    NA                0.5963650   0.5776500   0.6150800
18 months   ki1135781-COHORTS          1                    NA                0.9199999   0.8845454   0.9554545
18 months   ki1148112-LCNI-5           0                    NA                0.3031674   0.2424833   0.3638516
18 months   ki1148112-LCNI-5           1                    NA                0.8167939   0.7504568   0.8831310
24 months   ki0047075b-MAL-ED          0                    NA                0.3092486   0.2811200   0.3373771
24 months   ki0047075b-MAL-ED          1                    NA                0.6122449   0.5334471   0.6910427
24 months   ki1000108-CMC-V-BCS-2002   0                    NA                0.7317073   0.6353152   0.8280994
24 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.6875000   0.4592154   0.9157846
24 months   ki1000108-IRC              0                    NA                0.3950276   0.3446072   0.4454481
24 months   ki1000108-IRC              1                    NA                0.5744681   0.4329442   0.7159920
24 months   ki1017093-NIH-Birth        0                    NA                0.4971591   0.4448653   0.5494529
24 months   ki1017093-NIH-Birth        1                    NA                0.8243243   0.7375188   0.9111299
24 months   ki1101329-Keneba           0                    NA                0.3003876   0.2775443   0.3232309
24 months   ki1101329-Keneba           1                    NA                0.6363636   0.5652744   0.7074529
24 months   ki1126311-ZVITAMBO         0                    NA                0.5578947   0.4575861   0.6582034
24 months   ki1126311-ZVITAMBO         1                    NA                0.7368421   0.5379672   0.9357170
24 months   ki1135781-COHORTS          0                    NA                0.4968197   0.4852956   0.5083438
24 months   ki1135781-COHORTS          1                    NA                0.8065934   0.7809298   0.8322570
24 months   ki1148112-LCNI-5           0                    NA                0.2659574   0.2026903   0.3292246
24 months   ki1148112-LCNI-5           1                    NA                0.7714286   0.6909733   0.8518839
3 months    ki0047075b-MAL-ED          0                    NA                0.0908360   0.0748610   0.1068110
3 months    ki0047075b-MAL-ED          1                    NA                0.5792350   0.5076829   0.6507870
3 months    ki1000108-CMC-V-BCS-2002   0                    NA                0.1975309   0.1103721   0.2846896
3 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.6000000   0.3507806   0.8492194
3 months    ki1000108-IRC              0                    NA                0.1782730   0.1386323   0.2179137
3 months    ki1000108-IRC              1                    NA                0.5625000   0.4219885   0.7030115
3 months    ki1000109-ResPak           0                    NA                0.5230769   0.4009165   0.6452373
3 months    ki1000109-ResPak           1                    NA                0.6666667   0.4475690   0.8857643
3 months    ki1017093-NIH-Birth        0                    NA                0.1575630   0.1248044   0.1903216
3 months    ki1017093-NIH-Birth        1                    NA                0.6067416   0.5051685   0.7083147
3 months    ki1101329-Keneba           0                    NA                0.0999495   0.0867387   0.1131603
3 months    ki1101329-Keneba           1                    NA                0.5673077   0.4999613   0.6346541
3 months    ki1114097-CMIN             0                    NA                0.0333333   0.0129898   0.0536769
3 months    ki1114097-CMIN             1                    NA                0.7241379   0.5612208   0.8870551
3 months    ki1126311-ZVITAMBO         0                    NA                0.1418616   0.1266012   0.1571220
3 months    ki1126311-ZVITAMBO         1                    NA                0.4334764   0.3698322   0.4971206
3 months    ki1135781-COHORTS          0                    NA                0.0878788   0.0821058   0.0936518
3 months    ki1135781-COHORTS          1                    NA                0.6822967   0.6540668   0.7105265
6 months    ki0047075b-MAL-ED          0                    NA                0.1101766   0.0923728   0.1279805
6 months    ki0047075b-MAL-ED          1                    NA                0.4736842   0.3988195   0.5485490
6 months    ki1000108-CMC-V-BCS-2002   0                    NA                0.2345679   0.1418066   0.3273292
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.4000000   0.1507806   0.6492194
6 months    ki1000108-IRC              0                    NA                0.2049861   0.1632917   0.2466806
6 months    ki1000108-IRC              1                    NA                0.5652174   0.4217850   0.7086498
6 months    ki1000109-ResPak           0                    NA                0.4262295   0.3013151   0.5511439
6 months    ki1000109-ResPak           1                    NA                0.5000000   0.2533980   0.7466020
6 months    ki1017093-NIH-Birth        0                    NA                0.1941964   0.1575314   0.2308615
6 months    ki1017093-NIH-Birth        1                    NA                0.6705882   0.5705781   0.7705984
6 months    ki1101329-Keneba           0                    NA                0.1094659   0.0953902   0.1235416
6 months    ki1101329-Keneba           1                    NA                0.4467005   0.3772609   0.5161401
6 months    ki1114097-CMIN             0                    NA                0.0382166   0.0208857   0.0555475
6 months    ki1114097-CMIN             1                    NA                0.4166667   0.2770623   0.5562710
6 months    ki1126311-ZVITAMBO         0                    NA                0.1369340   0.1211923   0.1526757
6 months    ki1126311-ZVITAMBO         1                    NA                0.4010152   0.3325594   0.4694710
6 months    ki1135781-COHORTS          0                    NA                0.1564587   0.1488822   0.1640352
6 months    ki1135781-COHORTS          1                    NA                0.6267465   0.5967974   0.6566956
9 months    ki0047075b-MAL-ED          0                    NA                0.1541812   0.1332836   0.1750788
9 months    ki0047075b-MAL-ED          1                    NA                0.5000000   0.4239097   0.5760903
9 months    ki1000108-CMC-V-BCS-2002   0                    NA                0.2195122   0.1294580   0.3095664
9 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.4666667   0.2128878   0.7204455
9 months    ki1000108-IRC              0                    NA                0.2437673   0.1994224   0.2881123
9 months    ki1000108-IRC              1                    NA                0.5000000   0.3553317   0.6446683
9 months    ki1017093-NIH-Birth        0                    NA                0.2931442   0.2497216   0.3365668
9 months    ki1017093-NIH-Birth        1                    NA                0.7000000   0.5994818   0.8005182
9 months    ki1101329-Keneba           0                    NA                0.1491742   0.1330534   0.1652951
9 months    ki1101329-Keneba           1                    NA                0.4867725   0.4154970   0.5580480
9 months    ki1114097-CMIN             0                    NA                0.0791667   0.0549901   0.1033432
9 months    ki1114097-CMIN             1                    NA                0.5535714   0.4232480   0.6838948
9 months    ki1126311-ZVITAMBO         0                    NA                0.1788991   0.1609067   0.1968915
9 months    ki1126311-ZVITAMBO         1                    NA                0.3435897   0.2769167   0.4102628
9 months    ki1135781-COHORTS          0                    NA                0.2351992   0.2259378   0.2444606
9 months    ki1135781-COHORTS          1                    NA                0.6659365   0.6353402   0.6965327
9 months    ki1148112-LCNI-5           0                    NA                0.0800000   0.0423423   0.1176577
9 months    ki1148112-LCNI-5           1                    NA                0.7226891   0.6421298   0.8032484


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          NA                   NA                0.2457627   0.2386575   0.2528679
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.4226804   0.4046930   0.4406678
12 months   ki1000108-IRC              NA                   NA                0.2931034   0.2859006   0.3003063
12 months   ki1017093-NIH-Birth        NA                   NA                0.3750000   0.3629565   0.3870435
12 months   ki1101329-Keneba           NA                   NA                0.2480740   0.2432076   0.2529403
12 months   ki1114097-CMIN             NA                   NA                0.1741294   0.1624392   0.1858195
12 months   ki1126311-ZVITAMBO         NA                   NA                0.2379249   0.2349706   0.2408791
12 months   ki1135781-COHORTS          NA                   NA                0.3732513   0.3705598   0.3759428
12 months   ki1148112-LCNI-5           NA                   NA                0.4065574   0.3721217   0.4409931
18 months   ki0047075b-MAL-ED          NA                   NA                0.3656958   0.3598641   0.3715275
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6494845   0.6461047   0.6528643
18 months   ki1000108-IRC              NA                   NA                0.3555556   0.3478210   0.3632901
18 months   ki1017093-NIH-Birth        NA                   NA                0.5869565   0.5757116   0.5982014
18 months   ki1101329-Keneba           NA                   NA                0.3225806   0.3173924   0.3277689
18 months   ki1114097-CMIN             NA                   NA                0.2229581   0.2103200   0.2355962
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4785714   0.4742266   0.4829162
18 months   ki1135781-COHORTS          NA                   NA                0.6217725   0.6185851   0.6249599
18 months   ki1148112-LCNI-5           NA                   NA                0.4943182   0.4683446   0.5202917
24 months   ki0047075b-MAL-ED          NA                   NA                0.3468354   0.3411463   0.3525246
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.7244898   0.7212382   0.7277414
24 months   ki1000108-IRC              NA                   NA                0.4156479   0.4100950   0.4212008
24 months   ki1017093-NIH-Birth        NA                   NA                0.5539906   0.5422065   0.5657748
24 months   ki1101329-Keneba           NA                   NA                0.3346868   0.3298837   0.3394898
24 months   ki1126311-ZVITAMBO         NA                   NA                0.5877193   0.5754232   0.6000154
24 months   ki1135781-COHORTS          NA                   NA                0.5314419   0.5293217   0.5335621
24 months   ki1148112-LCNI-5           NA                   NA                0.4470990   0.4192981   0.4748999
3 months    ki0047075b-MAL-ED          NA                   NA                0.1534688   0.1449931   0.1619445
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.2604167   0.2310310   0.2898023
3 months    ki1000108-IRC              NA                   NA                0.2235872   0.2115328   0.2356416
3 months    ki1000109-ResPak           NA                   NA                0.5542169   0.5414089   0.5670248
3 months    ki1017093-NIH-Birth        NA                   NA                0.2283186   0.2148141   0.2418231
3 months    ki1101329-Keneba           NA                   NA                0.1443582   0.1386156   0.1501007
3 months    ki1114097-CMIN             NA                   NA                0.0942249   0.0730301   0.1154198
3 months    ki1126311-ZVITAMBO         NA                   NA                0.1721677   0.1684833   0.1758521
3 months    ki1135781-COHORTS          NA                   NA                0.1482742   0.1448032   0.1517451
6 months    ki0047075b-MAL-ED          NA                   NA                0.1558824   0.1494747   0.1622900
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.2604167   0.2483379   0.2724954
6 months    ki1000108-IRC              NA                   NA                0.2457002   0.2346058   0.2567947
6 months    ki1000109-ResPak           NA                   NA                0.4415584   0.4348293   0.4482876
6 months    ki1017093-NIH-Birth        NA                   NA                0.2701689   0.2553478   0.2849899
6 months    ki1101329-Keneba           NA                   NA                0.1412835   0.1370542   0.1455128
6 months    ki1114097-CMIN             NA                   NA                0.0732177   0.0637759   0.0826595
6 months    ki1126311-ZVITAMBO         NA                   NA                0.1625616   0.1591601   0.1659630
6 months    ki1135781-COHORTS          NA                   NA                0.2043721   0.2015605   0.2071838
9 months    ki0047075b-MAL-ED          NA                   NA                0.1978691   0.1916548   0.2040834
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.2577320   0.2398563   0.2756076
9 months    ki1000108-IRC              NA                   NA                0.2727273   0.2648358   0.2806187
9 months    ki1017093-NIH-Birth        NA                   NA                0.3578529   0.3448367   0.3708691
9 months    ki1101329-Keneba           NA                   NA                0.1800581   0.1758603   0.1842559
9 months    ki1114097-CMIN             NA                   NA                0.1287313   0.1164352   0.1410275
9 months    ki1126311-ZVITAMBO         NA                   NA                0.1954616   0.1932564   0.1976668
9 months    ki1135781-COHORTS          NA                   NA                0.2790412   0.2763459   0.2817366
9 months    ki1148112-LCNI-5           NA                   NA                0.3197492   0.2855880   0.3539104


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki0047075b-MAL-ED          1                    0                  3.0003003    2.5212752    3.570337
12 months   ki1000108-CMC-V-BCS-2002   1                    0                  1.6330645    1.0185643    2.618293
12 months   ki1000108-IRC              1                    0                  1.8750000    1.3394459    2.624686
12 months   ki1017093-NIH-Birth        1                    0                  2.1672064    1.7613964    2.666511
12 months   ki1101329-Keneba           1                    0                  2.7278740    2.3465595    3.171152
12 months   ki1114097-CMIN             1                    0                  3.9285714    2.6571824    5.808285
12 months   ki1126311-ZVITAMBO         1                    0                  1.9391598    1.5872149    2.369144
12 months   ki1135781-COHORTS          1                    0                  2.2342655    2.1229211    2.351450
12 months   ki1148112-LCNI-5           1                    0                  4.8205128    3.4477765    6.739806
18 months   ki0047075b-MAL-ED          1                    0                  1.9704573    1.7034211    2.279355
18 months   ki1000108-CMC-V-BCS-2002   1                    0                  1.0709135    0.7396233    1.550594
18 months   ki1000108-IRC              1                    0                  1.7577741    1.3181260    2.344063
18 months   ki1017093-NIH-Birth        1                    0                  1.6163951    1.4188589    1.841433
18 months   ki1101329-Keneba           1                    0                  2.3901099    2.1110197    2.706098
18 months   ki1114097-CMIN             1                    0                  3.4907563    2.5684950    4.744171
18 months   ki1126311-ZVITAMBO         1                    0                  1.2732421    1.0073531    1.609312
18 months   ki1135781-COHORTS          1                    0                  1.5426793    1.4678842    1.621285
18 months   ki1148112-LCNI-5           1                    0                  2.6942008    2.1707776    3.343833
24 months   ki0047075b-MAL-ED          1                    0                  1.9797826    1.6911130    2.317727
24 months   ki1000108-CMC-V-BCS-2002   1                    0                  0.9395833    0.6573448    1.343004
24 months   ki1000108-IRC              1                    0                  1.4542479    1.1018945    1.919274
24 months   ki1017093-NIH-Birth        1                    0                  1.6580695    1.4287713    1.924167
24 months   ki1101329-Keneba           1                    0                  2.1184751    1.8506884    2.425009
24 months   ki1126311-ZVITAMBO         1                    0                  1.3207547    0.9549439    1.826697
24 months   ki1135781-COHORTS          1                    0                  1.6235134    1.5608300    1.688714
24 months   ki1148112-LCNI-5           1                    0                  2.9005714    2.2370659    3.760870
3 months    ki0047075b-MAL-ED          1                    0                  6.3767107    5.1435218    7.905564
3 months    ki1000108-CMC-V-BCS-2002   1                    0                  3.0375000    1.6570617    5.567932
3 months    ki1000108-IRC              1                    0                  3.1552734    2.2583756    4.408368
3 months    ki1000109-ResPak           1                    0                  1.2745098    0.8516210    1.907392
3 months    ki1017093-NIH-Birth        1                    0                  3.8507865    2.9486537    5.028924
3 months    ki1101329-Keneba           1                    0                  5.6759420    4.7520563    6.779448
3 months    ki1114097-CMIN             1                    0                 21.7241379   11.3358545   41.632342
3 months    ki1126311-ZVITAMBO         1                    0                  3.0556283    2.5471426    3.665623
3 months    ki1135781-COHORTS          1                    0                  7.7640653    7.1840960    8.390855
6 months    ki0047075b-MAL-ED          1                    0                  4.2993170    3.4295247    5.389705
6 months    ki1000108-CMC-V-BCS-2002   1                    0                  1.7052632    0.8152716    3.566814
6 months    ki1000108-IRC              1                    0                  2.7573443    1.9918162    3.817093
6 months    ki1000109-ResPak           1                    0                  1.1730769    0.6609503    2.082016
6 months    ki1017093-NIH-Birth        1                    0                  3.4531440    2.7147063    4.392447
6 months    ki1101329-Keneba           1                    0                  4.0807278    3.3352095    4.992892
6 months    ki1114097-CMIN             1                    0                 10.9027778    6.2039079   19.160594
6 months    ki1126311-ZVITAMBO         1                    0                  2.9285295    2.3837971    3.597741
6 months    ki1135781-COHORTS          1                    0                  4.0058263    3.7423643    4.287836
9 months    ki0047075b-MAL-ED          1                    0                  3.2429378    2.6450524    3.975969
9 months    ki1000108-CMC-V-BCS-2002   1                    0                  2.1259259    1.0757383    4.201357
9 months    ki1000108-IRC              1                    0                  2.0511364    1.4573519    2.886853
9 months    ki1017093-NIH-Birth        1                    0                  2.3879032    1.9427613    2.935040
9 months    ki1101329-Keneba           1                    0                  3.2631141    2.7201756    3.914421
9 months    ki1114097-CMIN             1                    0                  6.9924812    4.7551931   10.282399
9 months    ki1126311-ZVITAMBO         1                    0                  1.9205786    1.5435170    2.389752
9 months    ki1135781-COHORTS          1                    0                  2.8313721    2.6651264    3.007988
9 months    ki1148112-LCNI-5           1                    0                  9.0336134    5.5689829   14.653694


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki0047075b-MAL-ED          0                    NA                 0.0498227    0.0256346   0.0740108
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                 0.0399644   -0.0679441   0.1478729
12 months   ki1000108-IRC              0                    NA                 0.0264368   -0.0198639   0.0727374
12 months   ki1017093-NIH-Birth        0                    NA                 0.0595966    0.0129357   0.1062575
12 months   ki1101329-Keneba           0                    NA                 0.0364368    0.0167012   0.0561723
12 months   ki1114097-CMIN             0                    NA                 0.0407960    0.0037448   0.0778473
12 months   ki1126311-ZVITAMBO         0                    NA                 0.0207934   -0.0002442   0.0418310
12 months   ki1135781-COHORTS          0                    NA                 0.0428376    0.0318021   0.0538731
12 months   ki1148112-LCNI-5           0                    NA                 0.2416638    0.1783486   0.3049789
18 months   ki0047075b-MAL-ED          0                    NA                 0.0394481    0.0108992   0.0679970
18 months   ki1000108-CMC-V-BCS-2002   0                    NA                 0.0075092   -0.0974925   0.1125110
18 months   ki1000108-IRC              0                    NA                 0.0287399   -0.0205188   0.0779986
18 months   ki1017093-NIH-Birth        0                    NA                 0.0555429    0.0042007   0.1068851
18 months   ki1101329-Keneba           0                    NA                 0.0375232    0.0156808   0.0593655
18 months   ki1114097-CMIN             0                    NA                 0.0488287    0.0096244   0.0880330
18 months   ki1126311-ZVITAMBO         0                    NA                 0.0194165   -0.0326651   0.0714981
18 months   ki1135781-COHORTS          0                    NA                 0.0254075    0.0064230   0.0443920
18 months   ki1148112-LCNI-5           0                    NA                 0.1911508    0.1251417   0.2571598
24 months   ki0047075b-MAL-ED          0                    NA                 0.0375869    0.0088888   0.0662850
24 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.0072175   -0.1036645   0.0892294
24 months   ki1000108-IRC              0                    NA                 0.0206203   -0.0301050   0.0713456
24 months   ki1017093-NIH-Birth        0                    NA                 0.0568315    0.0032264   0.1104366
24 months   ki1101329-Keneba           0                    NA                 0.0342992    0.0109564   0.0576419
24 months   ki1126311-ZVITAMBO         0                    NA                 0.0298246   -0.0712349   0.1308841
24 months   ki1135781-COHORTS          0                    NA                 0.0346222    0.0229047   0.0463397
24 months   ki1148112-LCNI-5           0                    NA                 0.1811415    0.1120357   0.2502474
3 months    ki0047075b-MAL-ED          0                    NA                 0.0626328    0.0445486   0.0807170
3 months    ki1000108-CMC-V-BCS-2002   0                    NA                 0.0628858   -0.0290934   0.1548650
3 months    ki1000108-IRC              0                    NA                 0.0453142    0.0038812   0.0867473
3 months    ki1000109-ResPak           0                    NA                 0.0311399   -0.0916901   0.1539699
3 months    ki1017093-NIH-Birth        0                    NA                 0.0707556    0.0353226   0.1061885
3 months    ki1101329-Keneba           0                    NA                 0.0444086    0.0300037   0.0588135
3 months    ki1114097-CMIN             0                    NA                 0.0608916    0.0315134   0.0902698
3 months    ki1126311-ZVITAMBO         0                    NA                 0.0303061    0.0146072   0.0460050
3 months    ki1135781-COHORTS          0                    NA                 0.0603954    0.0536593   0.0671315
6 months    ki0047075b-MAL-ED          0                    NA                 0.0457057    0.0267839   0.0646275
6 months    ki1000108-CMC-V-BCS-2002   0                    NA                 0.0258488   -0.0676957   0.1193932
6 months    ki1000108-IRC              0                    NA                 0.0407141   -0.0024312   0.0838594
6 months    ki1000109-ResPak           0                    NA                 0.0153289   -0.1097666   0.1404245
6 months    ki1017093-NIH-Birth        0                    NA                 0.0759724    0.0364252   0.1155197
6 months    ki1101329-Keneba           0                    NA                 0.0318176    0.0171202   0.0465150
6 months    ki1114097-CMIN             0                    NA                 0.0350012    0.0152652   0.0547371
6 months    ki1126311-ZVITAMBO         0                    NA                 0.0256276    0.0095226   0.0417326
6 months    ki1135781-COHORTS          0                    NA                 0.0479134    0.0398320   0.0559948
9 months    ki0047075b-MAL-ED          0                    NA                 0.0436879    0.0218859   0.0654899
9 months    ki1000108-CMC-V-BCS-2002   0                    NA                 0.0382198   -0.0535914   0.1300309
9 months    ki1000108-IRC              0                    NA                 0.0289600   -0.0160817   0.0740016
9 months    ki1017093-NIH-Birth        0                    NA                 0.0647087    0.0193772   0.1100402
9 months    ki1101329-Keneba           0                    NA                 0.0308839    0.0142254   0.0475423
9 months    ki1114097-CMIN             0                    NA                 0.0495647    0.0224408   0.0766885
9 months    ki1126311-ZVITAMBO         0                    NA                 0.0165625   -0.0015645   0.0346895
9 months    ki1135781-COHORTS          0                    NA                 0.0438420    0.0341964   0.0534877
9 months    ki1148112-LCNI-5           0                    NA                 0.2397492    0.1889054   0.2905930


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki0047075b-MAL-ED          0                    NA                 0.2027270    0.0997364   0.2939354
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                 0.0945498   -0.1995241   0.3165289
12 months   ki1000108-IRC              0                    NA                 0.0901961   -0.0819219   0.2349326
12 months   ki1017093-NIH-Birth        0                    NA                 0.1589242    0.0262319   0.2735349
12 months   ki1101329-Keneba           0                    NA                 0.1468786    0.0642216   0.2222346
12 months   ki1114097-CMIN             0                    NA                 0.2342857   -0.0051696   0.4166971
12 months   ki1126311-ZVITAMBO         0                    NA                 0.0873948   -0.0052909   0.1715351
12 months   ki1135781-COHORTS          0                    NA                 0.1147689    0.0849011   0.1436619
12 months   ki1148112-LCNI-5           0                    NA                 0.5944149    0.4340553   0.7093368
18 months   ki0047075b-MAL-ED          0                    NA                 0.1078714    0.0266500   0.1823152
18 months   ki1000108-CMC-V-BCS-2002   0                    NA                 0.0115618   -0.1640779   0.1607005
18 months   ki1000108-IRC              0                    NA                 0.0808310   -0.0683862   0.2092077
18 months   ki1017093-NIH-Birth        0                    NA                 0.0946287    0.0032092   0.1776637
18 months   ki1101329-Keneba           0                    NA                 0.1163218    0.0464020   0.1811150
18 months   ki1114097-CMIN             0                    NA                 0.2190040    0.0262988   0.3735709
18 months   ki1126311-ZVITAMBO         0                    NA                 0.0405718   -0.0746339   0.1434269
18 months   ki1135781-COHORTS          0                    NA                 0.0408630    0.0098745   0.0708816
18 months   ki1148112-LCNI-5           0                    NA                 0.3866958    0.2456852   0.5013460
24 months   ki0047075b-MAL-ED          0                    NA                 0.1083710    0.0220338   0.1870861
24 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.0099622   -0.1522600   0.1147626
24 months   ki1000108-IRC              0                    NA                 0.0496100   -0.0805306   0.1640763
24 months   ki1017093-NIH-Birth        0                    NA                 0.1025857    0.0009227   0.1939038
24 months   ki1101329-Keneba           0                    NA                 0.1024814    0.0302657   0.1693192
24 months   ki1126311-ZVITAMBO         0                    NA                 0.0507463   -0.1376134   0.2079184
24 months   ki1135781-COHORTS          0                    NA                 0.0651477    0.0428837   0.0868938
24 months   ki1148112-LCNI-5           0                    NA                 0.4051486    0.2393384   0.5348152
3 months    ki0047075b-MAL-ED          0                    NA                 0.4081142    0.2883064   0.5077534
3 months    ki1000108-CMC-V-BCS-2002   0                    NA                 0.2414815   -0.1960846   0.5189719
3 months    ki1000108-IRC              0                    NA                 0.2026692   -0.0023194   0.3657347
3 months    ki1000109-ResPak           0                    NA                 0.0561873   -0.1934581   0.2536123
3 months    ki1017093-NIH-Birth        0                    NA                 0.3098984    0.1433783   0.4440484
3 months    ki1101329-Keneba           0                    NA                 0.3076282    0.2051494   0.3968945
3 months    ki1114097-CMIN             0                    NA                 0.6462366    0.3220543   0.8154003
3 months    ki1126311-ZVITAMBO         0                    NA                 0.1760265    0.0805103   0.2616206
3 months    ki1135781-COHORTS          0                    NA                 0.4073224    0.3645144   0.4472468
6 months    ki0047075b-MAL-ED          0                    NA                 0.2932066    0.1649611   0.4017561
6 months    ki1000108-CMC-V-BCS-2002   0                    NA                 0.0992593   -0.3412865   0.3951077
6 months    ki1000108-IRC              0                    NA                 0.1657064   -0.0275560   0.3226201
6 months    ki1000109-ResPak           0                    NA                 0.0347155   -0.2945097   0.2802108
6 months    ki1017093-NIH-Birth        0                    NA                 0.2812035    0.1250293   0.4095021
6 months    ki1101329-Keneba           0                    NA                 0.2252041    0.1158528   0.3210309
6 months    ki1114097-CMIN             0                    NA                 0.4780422    0.1636419   0.6742545
6 months    ki1126311-ZVITAMBO         0                    NA                 0.1576485    0.0532412   0.2505419
6 months    ki1135781-COHORTS          0                    NA                 0.2344420    0.1949162   0.2720272
9 months    ki0047075b-MAL-ED          0                    NA                 0.2207920    0.1044765   0.3219998
9 months    ki1000108-CMC-V-BCS-2002   0                    NA                 0.1482927   -0.2911793   0.4381839
9 months    ki1000108-IRC              0                    NA                 0.1061865   -0.0745949   0.2565547
9 months    ki1017093-NIH-Birth        0                    NA                 0.1808248    0.0458455   0.2967092
9 months    ki1101329-Keneba           0                    NA                 0.1715217    0.0746758   0.2582315
9 months    ki1114097-CMIN             0                    NA                 0.3850242    0.1531186   0.5534259
9 months    ki1126311-ZVITAMBO         0                    NA                 0.0847353   -0.0127423   0.1728306
9 months    ki1135781-COHORTS          0                    NA                 0.1571167    0.1222403   0.1906074
9 months    ki1148112-LCNI-5           0                    NA                 0.7498039    0.5945741   0.8455992


