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

**Intervention Variable:** brthmon

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
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CMIN
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CMIN
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CMIN
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000109-ResPak
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CMIN
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000109-ResPak
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CMIN
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000109-ResPak
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1114097-CMIN
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1000109-ResPak
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1114097-CMIN
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: Birth, studyid: ki1126311-ZVITAMBO

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1000109-ResPak
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1114097-CMIN
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000109-ResPak
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CMIN
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000109-ResPak
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CMIN
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000109-ResPak
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1114097-CMIN
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000109-ResPak
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1148112-LCNI-5

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/84e7c51d-32f4-47a9-8ceb-0d38ea036f33/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/84e7c51d-32f4-47a9-8ceb-0d38ea036f33/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/84e7c51d-32f4-47a9-8ceb-0d38ea036f33/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/84e7c51d-32f4-47a9-8ceb-0d38ea036f33/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n    nA   nAY0   nAY1
----------  -------------------------  ---  -----  ----  -----  -----
Birth       ki0047075b-MAL-ED          1     1499   141    135      6
Birth       ki0047075b-MAL-ED          2     1499   128    125      3
Birth       ki0047075b-MAL-ED          3     1499   123    122      1
Birth       ki0047075b-MAL-ED          4     1499    99     97      2
Birth       ki0047075b-MAL-ED          5     1499   115    110      5
Birth       ki0047075b-MAL-ED          6     1499    92     91      1
Birth       ki0047075b-MAL-ED          7     1499   132    128      4
Birth       ki0047075b-MAL-ED          8     1499   110    106      4
Birth       ki0047075b-MAL-ED          9     1499   139    131      8
Birth       ki0047075b-MAL-ED          10    1499   141    135      6
Birth       ki0047075b-MAL-ED          11    1499   143    140      3
Birth       ki0047075b-MAL-ED          12    1499   136    133      3
Birth       ki1000108-CMC-V-BCS-2002   1       90     9      9      0
Birth       ki1000108-CMC-V-BCS-2002   2       90     1      1      0
Birth       ki1000108-CMC-V-BCS-2002   3       90     8      7      1
Birth       ki1000108-CMC-V-BCS-2002   4       90     9      9      0
Birth       ki1000108-CMC-V-BCS-2002   5       90    11     11      0
Birth       ki1000108-CMC-V-BCS-2002   6       90     9      9      0
Birth       ki1000108-CMC-V-BCS-2002   7       90     7      7      0
Birth       ki1000108-CMC-V-BCS-2002   8       90     4      4      0
Birth       ki1000108-CMC-V-BCS-2002   9       90     7      7      0
Birth       ki1000108-CMC-V-BCS-2002   10      90    10      9      1
Birth       ki1000108-CMC-V-BCS-2002   11      90    11     11      0
Birth       ki1000108-CMC-V-BCS-2002   12      90     4      3      1
Birth       ki1000108-IRC              1      388    35     32      3
Birth       ki1000108-IRC              2      388    26     25      1
Birth       ki1000108-IRC              3      388    26     26      0
Birth       ki1000108-IRC              4      388    21     21      0
Birth       ki1000108-IRC              5      388    22     21      1
Birth       ki1000108-IRC              6      388    34     31      3
Birth       ki1000108-IRC              7      388    35     34      1
Birth       ki1000108-IRC              8      388    38     38      0
Birth       ki1000108-IRC              9      388    25     24      1
Birth       ki1000108-IRC              10     388    38     36      2
Birth       ki1000108-IRC              11     388    39     38      1
Birth       ki1000108-IRC              12     388    49     46      3
Birth       ki1000109-EE               1        2     0      0      0
Birth       ki1000109-EE               2        2     0      0      0
Birth       ki1000109-EE               3        2     0      0      0
Birth       ki1000109-EE               4        2     0      0      0
Birth       ki1000109-EE               5        2     0      0      0
Birth       ki1000109-EE               6        2     0      0      0
Birth       ki1000109-EE               7        2     0      0      0
Birth       ki1000109-EE               8        2     0      0      0
Birth       ki1000109-EE               9        2     0      0      0
Birth       ki1000109-EE               10       2     0      0      0
Birth       ki1000109-EE               11       2     0      0      0
Birth       ki1000109-EE               12       2     2      2      0
Birth       ki1000109-ResPak           1        7     1      1      0
Birth       ki1000109-ResPak           2        7     0      0      0
Birth       ki1000109-ResPak           3        7     0      0      0
Birth       ki1000109-ResPak           4        7     2      2      0
Birth       ki1000109-ResPak           5        7     2      2      0
Birth       ki1000109-ResPak           6        7     1      1      0
Birth       ki1000109-ResPak           7        7     1      1      0
Birth       ki1000109-ResPak           8        7     0      0      0
Birth       ki1000109-ResPak           9        7     0      0      0
Birth       ki1000109-ResPak           10       7     0      0      0
Birth       ki1000109-ResPak           11       7     0      0      0
Birth       ki1000109-ResPak           12       7     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   1        0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   2        0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   3        0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   4        0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   5        0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   6        0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   7        0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   8        0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   9        0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   10       0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   11       0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   12       0     0      0      0
Birth       ki1017093-NIH-Birth        1       28    11     11      0
Birth       ki1017093-NIH-Birth        2       28     3      3      0
Birth       ki1017093-NIH-Birth        3       28     6      6      0
Birth       ki1017093-NIH-Birth        4       28     2      2      0
Birth       ki1017093-NIH-Birth        5       28     0      0      0
Birth       ki1017093-NIH-Birth        6       28     2      2      0
Birth       ki1017093-NIH-Birth        7       28     1      1      0
Birth       ki1017093-NIH-Birth        8       28     0      0      0
Birth       ki1017093-NIH-Birth        9       28     0      0      0
Birth       ki1017093-NIH-Birth        10      28     1      1      0
Birth       ki1017093-NIH-Birth        11      28     2      2      0
Birth       ki1017093-NIH-Birth        12      28     0      0      0
Birth       ki1066203-TanzaniaChild2   1        0     0      0      0
Birth       ki1066203-TanzaniaChild2   2        0     0      0      0
Birth       ki1066203-TanzaniaChild2   3        0     0      0      0
Birth       ki1066203-TanzaniaChild2   4        0     0      0      0
Birth       ki1066203-TanzaniaChild2   5        0     0      0      0
Birth       ki1066203-TanzaniaChild2   6        0     0      0      0
Birth       ki1066203-TanzaniaChild2   7        0     0      0      0
Birth       ki1066203-TanzaniaChild2   8        0     0      0      0
Birth       ki1066203-TanzaniaChild2   9        0     0      0      0
Birth       ki1066203-TanzaniaChild2   10       0     0      0      0
Birth       ki1066203-TanzaniaChild2   11       0     0      0      0
Birth       ki1066203-TanzaniaChild2   12       0     0      0      0
Birth       ki1101329-Keneba           1     1541   163    156      7
Birth       ki1101329-Keneba           2     1541   147    143      4
Birth       ki1101329-Keneba           3     1541   165    163      2
Birth       ki1101329-Keneba           4     1541   105    104      1
Birth       ki1101329-Keneba           5     1541   108    106      2
Birth       ki1101329-Keneba           6     1541    89     88      1
Birth       ki1101329-Keneba           7     1541    75     74      1
Birth       ki1101329-Keneba           8     1541   125    124      1
Birth       ki1101329-Keneba           9     1541   124    122      2
Birth       ki1101329-Keneba           10    1541   179    175      4
Birth       ki1101329-Keneba           11    1541   124    122      2
Birth       ki1101329-Keneba           12    1541   137    135      2
Birth       ki1112895-Guatemala BSC    1        0     0      0      0
Birth       ki1112895-Guatemala BSC    2        0     0      0      0
Birth       ki1112895-Guatemala BSC    3        0     0      0      0
Birth       ki1112895-Guatemala BSC    4        0     0      0      0
Birth       ki1112895-Guatemala BSC    5        0     0      0      0
Birth       ki1112895-Guatemala BSC    6        0     0      0      0
Birth       ki1112895-Guatemala BSC    7        0     0      0      0
Birth       ki1112895-Guatemala BSC    8        0     0      0      0
Birth       ki1112895-Guatemala BSC    9        0     0      0      0
Birth       ki1112895-Guatemala BSC    10       0     0      0      0
Birth       ki1112895-Guatemala BSC    11       0     0      0      0
Birth       ki1112895-Guatemala BSC    12       0     0      0      0
Birth       ki1113344-GMS-Nepal        1        0     0      0      0
Birth       ki1113344-GMS-Nepal        2        0     0      0      0
Birth       ki1113344-GMS-Nepal        3        0     0      0      0
Birth       ki1113344-GMS-Nepal        4        0     0      0      0
Birth       ki1113344-GMS-Nepal        5        0     0      0      0
Birth       ki1113344-GMS-Nepal        6        0     0      0      0
Birth       ki1113344-GMS-Nepal        7        0     0      0      0
Birth       ki1113344-GMS-Nepal        8        0     0      0      0
Birth       ki1113344-GMS-Nepal        9        0     0      0      0
Birth       ki1113344-GMS-Nepal        10       0     0      0      0
Birth       ki1113344-GMS-Nepal        11       0     0      0      0
Birth       ki1113344-GMS-Nepal        12       0     0      0      0
Birth       ki1114097-CMIN             1      138    15     14      1
Birth       ki1114097-CMIN             2      138    10     10      0
Birth       ki1114097-CMIN             3      138    15     15      0
Birth       ki1114097-CMIN             4      138    13     12      1
Birth       ki1114097-CMIN             5      138     6      6      0
Birth       ki1114097-CMIN             6      138     6      6      0
Birth       ki1114097-CMIN             7      138     4      4      0
Birth       ki1114097-CMIN             8      138    17     14      3
Birth       ki1114097-CMIN             9      138    11     11      0
Birth       ki1114097-CMIN             10     138    17     15      2
Birth       ki1114097-CMIN             11     138    14     13      1
Birth       ki1114097-CMIN             12     138    10     10      0
Birth       ki1114097-CONTENT          1        2     0      0      0
Birth       ki1114097-CONTENT          2        2     0      0      0
Birth       ki1114097-CONTENT          3        2     0      0      0
Birth       ki1114097-CONTENT          4        2     0      0      0
Birth       ki1114097-CONTENT          5        2     2      2      0
Birth       ki1114097-CONTENT          6        2     0      0      0
Birth       ki1114097-CONTENT          7        2     0      0      0
Birth       ki1114097-CONTENT          8        2     0      0      0
Birth       ki1114097-CONTENT          9        2     0      0      0
Birth       ki1114097-CONTENT          10       2     0      0      0
Birth       ki1114097-CONTENT          11       2     0      0      0
Birth       ki1114097-CONTENT          12       2     0      0      0
Birth       ki1126311-ZVITAMBO         1     3449   342    324     18
Birth       ki1126311-ZVITAMBO         2     3449   258    252      6
Birth       ki1126311-ZVITAMBO         3     3449   279    264     15
Birth       ki1126311-ZVITAMBO         4     3449   255    245     10
Birth       ki1126311-ZVITAMBO         5     3449   249    244      5
Birth       ki1126311-ZVITAMBO         6     3449   281    266     15
Birth       ki1126311-ZVITAMBO         7     3449   303    291     12
Birth       ki1126311-ZVITAMBO         8     3449   316    312      4
Birth       ki1126311-ZVITAMBO         9     3449   318    312      6
Birth       ki1126311-ZVITAMBO         10    3449   258    250      8
Birth       ki1126311-ZVITAMBO         11    3449   292    283      9
Birth       ki1126311-ZVITAMBO         12    3449   298    294      4
Birth       ki1148112-LCNI-5           1        0     0      0      0
Birth       ki1148112-LCNI-5           2        0     0      0      0
Birth       ki1148112-LCNI-5           3        0     0      0      0
Birth       ki1148112-LCNI-5           4        0     0      0      0
Birth       ki1148112-LCNI-5           5        0     0      0      0
Birth       ki1148112-LCNI-5           6        0     0      0      0
Birth       ki1148112-LCNI-5           7        0     0      0      0
Birth       ki1148112-LCNI-5           8        0     0      0      0
Birth       ki1148112-LCNI-5           9        0     0      0      0
Birth       ki1148112-LCNI-5           10       0     0      0      0
Birth       ki1148112-LCNI-5           11       0     0      0      0
Birth       ki1148112-LCNI-5           12       0     0      0      0
3 months    ki0047075b-MAL-ED          1     1778   175    166      9
3 months    ki0047075b-MAL-ED          2     1778   161    158      3
3 months    ki0047075b-MAL-ED          3     1778   135    131      4
3 months    ki0047075b-MAL-ED          4     1778   112    109      3
3 months    ki0047075b-MAL-ED          5     1778   136    127      9
3 months    ki0047075b-MAL-ED          6     1778   109    107      2
3 months    ki0047075b-MAL-ED          7     1778   150    144      6
3 months    ki0047075b-MAL-ED          8     1778   132    127      5
3 months    ki0047075b-MAL-ED          9     1778   157    152      5
3 months    ki0047075b-MAL-ED          10    1778   168    161      7
3 months    ki0047075b-MAL-ED          11    1778   173    167      6
3 months    ki0047075b-MAL-ED          12    1778   170    163      7
3 months    ki1000108-CMC-V-BCS-2002   1      362    33     31      2
3 months    ki1000108-CMC-V-BCS-2002   2      362    15     13      2
3 months    ki1000108-CMC-V-BCS-2002   3      362    31     30      1
3 months    ki1000108-CMC-V-BCS-2002   4      362    42     40      2
3 months    ki1000108-CMC-V-BCS-2002   5      362    36     34      2
3 months    ki1000108-CMC-V-BCS-2002   6      362    36     33      3
3 months    ki1000108-CMC-V-BCS-2002   7      362    37     32      5
3 months    ki1000108-CMC-V-BCS-2002   8      362    16     14      2
3 months    ki1000108-CMC-V-BCS-2002   9      362    21     20      1
3 months    ki1000108-CMC-V-BCS-2002   10     362    29     27      2
3 months    ki1000108-CMC-V-BCS-2002   11     362    41     37      4
3 months    ki1000108-CMC-V-BCS-2002   12     362    25     18      7
3 months    ki1000108-IRC              1      407    36     30      6
3 months    ki1000108-IRC              2      407    28     23      5
3 months    ki1000108-IRC              3      407    27     25      2
3 months    ki1000108-IRC              4      407    21     19      2
3 months    ki1000108-IRC              5      407    22     18      4
3 months    ki1000108-IRC              6      407    37     37      0
3 months    ki1000108-IRC              7      407    36     35      1
3 months    ki1000108-IRC              8      407    43     43      0
3 months    ki1000108-IRC              9      407    27     24      3
3 months    ki1000108-IRC              10     407    38     36      2
3 months    ki1000108-IRC              11     407    40     36      4
3 months    ki1000108-IRC              12     407    52     45      7
3 months    ki1000109-EE               1      376    94     60     34
3 months    ki1000109-EE               2      376    66     50     16
3 months    ki1000109-EE               3      376    41     32      9
3 months    ki1000109-EE               4      376    16      9      7
3 months    ki1000109-EE               5      376     0      0      0
3 months    ki1000109-EE               6      376     0      0      0
3 months    ki1000109-EE               7      376     0      0      0
3 months    ki1000109-EE               8      376     0      0      0
3 months    ki1000109-EE               9      376     0      0      0
3 months    ki1000109-EE               10     376     4      3      1
3 months    ki1000109-EE               11     376    70     41     29
3 months    ki1000109-EE               12     376    85     59     26
3 months    ki1000109-ResPak           1      260    10     10      0
3 months    ki1000109-ResPak           2      260    11     10      1
3 months    ki1000109-ResPak           3      260    21     14      7
3 months    ki1000109-ResPak           4      260    25     18      7
3 months    ki1000109-ResPak           5      260    48     38     10
3 months    ki1000109-ResPak           6      260    46     34     12
3 months    ki1000109-ResPak           7      260    33     26      7
3 months    ki1000109-ResPak           8      260    33     28      5
3 months    ki1000109-ResPak           9      260    19     17      2
3 months    ki1000109-ResPak           10     260     6      5      1
3 months    ki1000109-ResPak           11     260     3      2      1
3 months    ki1000109-ResPak           12     260     5      3      2
3 months    ki1000304b-SAS-FoodSuppl   1       97     7      6      1
3 months    ki1000304b-SAS-FoodSuppl   2       97     8      8      0
3 months    ki1000304b-SAS-FoodSuppl   3       97     6      6      0
3 months    ki1000304b-SAS-FoodSuppl   4       97     1      1      0
3 months    ki1000304b-SAS-FoodSuppl   5       97     2      2      0
3 months    ki1000304b-SAS-FoodSuppl   6       97     5      4      1
3 months    ki1000304b-SAS-FoodSuppl   7       97    10      9      1
3 months    ki1000304b-SAS-FoodSuppl   8       97    16     15      1
3 months    ki1000304b-SAS-FoodSuppl   9       97    15     12      3
3 months    ki1000304b-SAS-FoodSuppl   10      97    12     10      2
3 months    ki1000304b-SAS-FoodSuppl   11      97     6      3      3
3 months    ki1000304b-SAS-FoodSuppl   12      97     9      8      1
3 months    ki1017093-NIH-Birth        1      570    60     55      5
3 months    ki1017093-NIH-Birth        2      570    51     50      1
3 months    ki1017093-NIH-Birth        3      570    53     50      3
3 months    ki1017093-NIH-Birth        4      570    46     43      3
3 months    ki1017093-NIH-Birth        5      570    46     43      3
3 months    ki1017093-NIH-Birth        6      570    44     41      3
3 months    ki1017093-NIH-Birth        7      570    38     37      1
3 months    ki1017093-NIH-Birth        8      570    37     33      4
3 months    ki1017093-NIH-Birth        9      570    43     41      2
3 months    ki1017093-NIH-Birth        10     570    46     43      3
3 months    ki1017093-NIH-Birth        11     570    52     50      2
3 months    ki1017093-NIH-Birth        12     570    54     51      3
3 months    ki1066203-TanzaniaChild2   1      575    42     41      1
3 months    ki1066203-TanzaniaChild2   2      575    41     41      0
3 months    ki1066203-TanzaniaChild2   3      575    37     36      1
3 months    ki1066203-TanzaniaChild2   4      575    48     48      0
3 months    ki1066203-TanzaniaChild2   5      575    43     42      1
3 months    ki1066203-TanzaniaChild2   6      575    41     40      1
3 months    ki1066203-TanzaniaChild2   7      575    49     49      0
3 months    ki1066203-TanzaniaChild2   8      575    58     57      1
3 months    ki1066203-TanzaniaChild2   9      575    48     48      0
3 months    ki1066203-TanzaniaChild2   10     575    61     58      3
3 months    ki1066203-TanzaniaChild2   11     575    56     56      0
3 months    ki1066203-TanzaniaChild2   12     575    51     49      2
3 months    ki1101329-Keneba           1     2190   228    219      9
3 months    ki1101329-Keneba           2     2190   197    187     10
3 months    ki1101329-Keneba           3     2190   232    226      6
3 months    ki1101329-Keneba           4     2190   153    148      5
3 months    ki1101329-Keneba           5     2190   150    147      3
3 months    ki1101329-Keneba           6     2190   130    126      4
3 months    ki1101329-Keneba           7     2190    98     95      3
3 months    ki1101329-Keneba           8     2190   184    177      7
3 months    ki1101329-Keneba           9     2190   193    186      7
3 months    ki1101329-Keneba           10    2190   252    246      6
3 months    ki1101329-Keneba           11    2190   176    173      3
3 months    ki1101329-Keneba           12    2190   197    188      9
3 months    ki1112895-Guatemala BSC    1        6     1      1      0
3 months    ki1112895-Guatemala BSC    2        6     0      0      0
3 months    ki1112895-Guatemala BSC    3        6     0      0      0
3 months    ki1112895-Guatemala BSC    4        6     1      1      0
3 months    ki1112895-Guatemala BSC    5        6     0      0      0
3 months    ki1112895-Guatemala BSC    6        6     1      1      0
3 months    ki1112895-Guatemala BSC    7        6     0      0      0
3 months    ki1112895-Guatemala BSC    8        6     1      0      1
3 months    ki1112895-Guatemala BSC    9        6     0      0      0
3 months    ki1112895-Guatemala BSC    10       6     0      0      0
3 months    ki1112895-Guatemala BSC    11       6     1      0      1
3 months    ki1112895-Guatemala BSC    12       6     1      1      0
3 months    ki1113344-GMS-Nepal        1      571     0      0      0
3 months    ki1113344-GMS-Nepal        2      571     0      0      0
3 months    ki1113344-GMS-Nepal        3      571     0      0      0
3 months    ki1113344-GMS-Nepal        4      571     1      0      1
3 months    ki1113344-GMS-Nepal        5      571     0      0      0
3 months    ki1113344-GMS-Nepal        6      571   120    115      5
3 months    ki1113344-GMS-Nepal        7      571   221    212      9
3 months    ki1113344-GMS-Nepal        8      571   229    222      7
3 months    ki1113344-GMS-Nepal        9      571     0      0      0
3 months    ki1113344-GMS-Nepal        10     571     0      0      0
3 months    ki1113344-GMS-Nepal        11     571     0      0      0
3 months    ki1113344-GMS-Nepal        12     571     0      0      0
3 months    ki1114097-CMIN             1     1485   144    139      5
3 months    ki1114097-CMIN             2     1485   138    130      8
3 months    ki1114097-CMIN             3     1485   142    139      3
3 months    ki1114097-CMIN             4     1485   109    106      3
3 months    ki1114097-CMIN             5     1485   107    106      1
3 months    ki1114097-CMIN             6     1485   106    100      6
3 months    ki1114097-CMIN             7     1485   111    107      4
3 months    ki1114097-CMIN             8     1485   122    116      6
3 months    ki1114097-CMIN             9     1485   117    114      3
3 months    ki1114097-CMIN             10    1485   124    119      5
3 months    ki1114097-CMIN             11    1485   114    108      6
3 months    ki1114097-CMIN             12    1485   151    139     12
3 months    ki1114097-CONTENT          1      215    10     10      0
3 months    ki1114097-CONTENT          2      215    18     18      0
3 months    ki1114097-CONTENT          3      215    30     30      0
3 months    ki1114097-CONTENT          4      215    19     19      0
3 months    ki1114097-CONTENT          5      215    14     13      1
3 months    ki1114097-CONTENT          6      215    13     13      0
3 months    ki1114097-CONTENT          7      215    28     28      0
3 months    ki1114097-CONTENT          8      215    23     21      2
3 months    ki1114097-CONTENT          9      215    26     26      0
3 months    ki1114097-CONTENT          10     215    14     14      0
3 months    ki1114097-CONTENT          11     215     9      9      0
3 months    ki1114097-CONTENT          12     215    11     11      0
3 months    ki1126311-ZVITAMBO         1     2271   232    222     10
3 months    ki1126311-ZVITAMBO         2     2271   160    147     13
3 months    ki1126311-ZVITAMBO         3     2271   200    188     12
3 months    ki1126311-ZVITAMBO         4     2271   180    170     10
3 months    ki1126311-ZVITAMBO         5     2271   167    159      8
3 months    ki1126311-ZVITAMBO         6     2271   189    171     18
3 months    ki1126311-ZVITAMBO         7     2271   210    202      8
3 months    ki1126311-ZVITAMBO         8     2271   213    202     11
3 months    ki1126311-ZVITAMBO         9     2271   194    188      6
3 months    ki1126311-ZVITAMBO         10    2271   136    130      6
3 months    ki1126311-ZVITAMBO         11    2271   181    174      7
3 months    ki1126311-ZVITAMBO         12    2271   209    204      5
3 months    ki1148112-LCNI-5           1        0     0      0      0
3 months    ki1148112-LCNI-5           2        0     0      0      0
3 months    ki1148112-LCNI-5           3        0     0      0      0
3 months    ki1148112-LCNI-5           4        0     0      0      0
3 months    ki1148112-LCNI-5           5        0     0      0      0
3 months    ki1148112-LCNI-5           6        0     0      0      0
3 months    ki1148112-LCNI-5           7        0     0      0      0
3 months    ki1148112-LCNI-5           8        0     0      0      0
3 months    ki1148112-LCNI-5           9        0     0      0      0
3 months    ki1148112-LCNI-5           10       0     0      0      0
3 months    ki1148112-LCNI-5           11       0     0      0      0
3 months    ki1148112-LCNI-5           12       0     0      0      0
6 months    ki0047075b-MAL-ED          1     1696   168    160      8
6 months    ki0047075b-MAL-ED          2     1696   152    149      3
6 months    ki0047075b-MAL-ED          3     1696   133    129      4
6 months    ki0047075b-MAL-ED          4     1696   112    111      1
6 months    ki0047075b-MAL-ED          5     1696   126    123      3
6 months    ki0047075b-MAL-ED          6     1696   107    106      1
6 months    ki0047075b-MAL-ED          7     1696   142    136      6
6 months    ki0047075b-MAL-ED          8     1696   122    117      5
6 months    ki0047075b-MAL-ED          9     1696   150    149      1
6 months    ki0047075b-MAL-ED          10    1696   157    149      8
6 months    ki0047075b-MAL-ED          11    1696   169    162      7
6 months    ki0047075b-MAL-ED          12    1696   158    155      3
6 months    ki1000108-CMC-V-BCS-2002   1      369    34     31      3
6 months    ki1000108-CMC-V-BCS-2002   2      369    16     14      2
6 months    ki1000108-CMC-V-BCS-2002   3      369    31     31      0
6 months    ki1000108-CMC-V-BCS-2002   4      369    44     40      4
6 months    ki1000108-CMC-V-BCS-2002   5      369    35     29      6
6 months    ki1000108-CMC-V-BCS-2002   6      369    37     31      6
6 months    ki1000108-CMC-V-BCS-2002   7      369    39     28     11
6 months    ki1000108-CMC-V-BCS-2002   8      369    17     17      0
6 months    ki1000108-CMC-V-BCS-2002   9      369    20     18      2
6 months    ki1000108-CMC-V-BCS-2002   10     369    29     27      2
6 months    ki1000108-CMC-V-BCS-2002   11     369    42     41      1
6 months    ki1000108-CMC-V-BCS-2002   12     369    25     20      5
6 months    ki1000108-IRC              1      407    38     34      4
6 months    ki1000108-IRC              2      407    28     23      5
6 months    ki1000108-IRC              3      407    27     27      0
6 months    ki1000108-IRC              4      407    21     17      4
6 months    ki1000108-IRC              5      407    21     18      3
6 months    ki1000108-IRC              6      407    37     36      1
6 months    ki1000108-IRC              7      407    36     35      1
6 months    ki1000108-IRC              8      407    44     43      1
6 months    ki1000108-IRC              9      407    27     26      1
6 months    ki1000108-IRC              10     407    37     37      0
6 months    ki1000108-IRC              11     407    40     35      5
6 months    ki1000108-IRC              12     407    51     47      4
6 months    ki1000109-EE               1      372    90     62     28
6 months    ki1000109-EE               2      372    67     53     14
6 months    ki1000109-EE               3      372    42     36      6
6 months    ki1000109-EE               4      372    16     11      5
6 months    ki1000109-EE               5      372     0      0      0
6 months    ki1000109-EE               6      372     0      0      0
6 months    ki1000109-EE               7      372     0      0      0
6 months    ki1000109-EE               8      372     0      0      0
6 months    ki1000109-EE               9      372     0      0      0
6 months    ki1000109-EE               10     372     4      3      1
6 months    ki1000109-EE               11     372    70     49     21
6 months    ki1000109-EE               12     372    83     64     19
6 months    ki1000109-ResPak           1      235     9      9      0
6 months    ki1000109-ResPak           2      235    11     11      0
6 months    ki1000109-ResPak           3      235    20     10     10
6 months    ki1000109-ResPak           4      235    21     16      5
6 months    ki1000109-ResPak           5      235    45     36      9
6 months    ki1000109-ResPak           6      235    42     36      6
6 months    ki1000109-ResPak           7      235    26     20      6
6 months    ki1000109-ResPak           8      235    31     27      4
6 months    ki1000109-ResPak           9      235    20     18      2
6 months    ki1000109-ResPak           10     235     4      4      0
6 months    ki1000109-ResPak           11     235     1      1      0
6 months    ki1000109-ResPak           12     235     5      3      2
6 months    ki1000304b-SAS-FoodSuppl   1       96     6      4      2
6 months    ki1000304b-SAS-FoodSuppl   2       96     9      7      2
6 months    ki1000304b-SAS-FoodSuppl   3       96     6      6      0
6 months    ki1000304b-SAS-FoodSuppl   4       96     1      1      0
6 months    ki1000304b-SAS-FoodSuppl   5       96     3      3      0
6 months    ki1000304b-SAS-FoodSuppl   6       96     5      5      0
6 months    ki1000304b-SAS-FoodSuppl   7       96     9      8      1
6 months    ki1000304b-SAS-FoodSuppl   8       96    14     13      1
6 months    ki1000304b-SAS-FoodSuppl   9       96    17     13      4
6 months    ki1000304b-SAS-FoodSuppl   10      96    12     12      0
6 months    ki1000304b-SAS-FoodSuppl   11      96     5      3      2
6 months    ki1000304b-SAS-FoodSuppl   12      96     9      6      3
6 months    ki1017093-NIH-Birth        1      537    52     48      4
6 months    ki1017093-NIH-Birth        2      537    49     47      2
6 months    ki1017093-NIH-Birth        3      537    50     46      4
6 months    ki1017093-NIH-Birth        4      537    42     40      2
6 months    ki1017093-NIH-Birth        5      537    42     40      2
6 months    ki1017093-NIH-Birth        6      537    43     38      5
6 months    ki1017093-NIH-Birth        7      537    39     38      1
6 months    ki1017093-NIH-Birth        8      537    35     33      2
6 months    ki1017093-NIH-Birth        9      537    42     40      2
6 months    ki1017093-NIH-Birth        10     537    42     38      4
6 months    ki1017093-NIH-Birth        11     537    50     45      5
6 months    ki1017093-NIH-Birth        12     537    51     49      2
6 months    ki1066203-TanzaniaChild2   1      504    35     34      1
6 months    ki1066203-TanzaniaChild2   2      504    33     33      0
6 months    ki1066203-TanzaniaChild2   3      504    29     28      1
6 months    ki1066203-TanzaniaChild2   4      504    40     40      0
6 months    ki1066203-TanzaniaChild2   5      504    38     37      1
6 months    ki1066203-TanzaniaChild2   6      504    37     37      0
6 months    ki1066203-TanzaniaChild2   7      504    46     46      0
6 months    ki1066203-TanzaniaChild2   8      504    55     55      0
6 months    ki1066203-TanzaniaChild2   9      504    41     40      1
6 months    ki1066203-TanzaniaChild2   10     504    53     51      2
6 months    ki1066203-TanzaniaChild2   11     504    51     50      1
6 months    ki1066203-TanzaniaChild2   12     504    46     46      0
6 months    ki1101329-Keneba           1     2089   210    203      7
6 months    ki1101329-Keneba           2     2089   187    178      9
6 months    ki1101329-Keneba           3     2089   221    211     10
6 months    ki1101329-Keneba           4     2089   143    141      2
6 months    ki1101329-Keneba           5     2089   143    139      4
6 months    ki1101329-Keneba           6     2089   118    111      7
6 months    ki1101329-Keneba           7     2089    92     87      5
6 months    ki1101329-Keneba           8     2089   174    169      5
6 months    ki1101329-Keneba           9     2089   174    169      5
6 months    ki1101329-Keneba           10    2089   248    242      6
6 months    ki1101329-Keneba           11    2089   187    183      4
6 months    ki1101329-Keneba           12    2089   192    186      6
6 months    ki1112895-Guatemala BSC    1      106     7      4      3
6 months    ki1112895-Guatemala BSC    2      106     8      7      1
6 months    ki1112895-Guatemala BSC    3      106     7      7      0
6 months    ki1112895-Guatemala BSC    4      106    10      9      1
6 months    ki1112895-Guatemala BSC    5      106    12     12      0
6 months    ki1112895-Guatemala BSC    6      106     8      6      2
6 months    ki1112895-Guatemala BSC    7      106     9      8      1
6 months    ki1112895-Guatemala BSC    8      106     4      3      1
6 months    ki1112895-Guatemala BSC    9      106     8      8      0
6 months    ki1112895-Guatemala BSC    10     106    12     11      1
6 months    ki1112895-Guatemala BSC    11     106     8      8      0
6 months    ki1112895-Guatemala BSC    12     106    13     13      0
6 months    ki1113344-GMS-Nepal        1      563     0      0      0
6 months    ki1113344-GMS-Nepal        2      563     0      0      0
6 months    ki1113344-GMS-Nepal        3      563     0      0      0
6 months    ki1113344-GMS-Nepal        4      563     1      0      1
6 months    ki1113344-GMS-Nepal        5      563     0      0      0
6 months    ki1113344-GMS-Nepal        6      563   121    115      6
6 months    ki1113344-GMS-Nepal        7      563   218    212      6
6 months    ki1113344-GMS-Nepal        8      563   223    216      7
6 months    ki1113344-GMS-Nepal        9      563     0      0      0
6 months    ki1113344-GMS-Nepal        10     563     0      0      0
6 months    ki1113344-GMS-Nepal        11     563     0      0      0
6 months    ki1113344-GMS-Nepal        12     563     0      0      0
6 months    ki1114097-CMIN             1     1836   181    177      4
6 months    ki1114097-CMIN             2     1836   146    142      4
6 months    ki1114097-CMIN             3     1836   164    159      5
6 months    ki1114097-CMIN             4     1836   138    135      3
6 months    ki1114097-CMIN             5     1836   132    131      1
6 months    ki1114097-CMIN             6     1836   107    104      3
6 months    ki1114097-CMIN             7     1836   109    105      4
6 months    ki1114097-CMIN             8     1836   157    149      8
6 months    ki1114097-CMIN             9     1836   193    186      7
6 months    ki1114097-CMIN             10    1836   189    185      4
6 months    ki1114097-CMIN             11    1836   146    139      7
6 months    ki1114097-CMIN             12    1836   174    167      7
6 months    ki1114097-CONTENT          1      215    10     10      0
6 months    ki1114097-CONTENT          2      215    18     18      0
6 months    ki1114097-CONTENT          3      215    30     30      0
6 months    ki1114097-CONTENT          4      215    19     18      1
6 months    ki1114097-CONTENT          5      215    14     13      1
6 months    ki1114097-CONTENT          6      215    13     13      0
6 months    ki1114097-CONTENT          7      215    28     28      0
6 months    ki1114097-CONTENT          8      215    23     21      2
6 months    ki1114097-CONTENT          9      215    26     26      0
6 months    ki1114097-CONTENT          10     215    14     14      0
6 months    ki1114097-CONTENT          11     215     9      9      0
6 months    ki1114097-CONTENT          12     215    11     11      0
6 months    ki1126311-ZVITAMBO         1     2052   216    210      6
6 months    ki1126311-ZVITAMBO         2     2052   138    131      7
6 months    ki1126311-ZVITAMBO         3     2052   178    168     10
6 months    ki1126311-ZVITAMBO         4     2052   163    156      7
6 months    ki1126311-ZVITAMBO         5     2052   148    144      4
6 months    ki1126311-ZVITAMBO         6     2052   152    147      5
6 months    ki1126311-ZVITAMBO         7     2052   167    155     12
6 months    ki1126311-ZVITAMBO         8     2052   171    168      3
6 months    ki1126311-ZVITAMBO         9     2052   186    185      1
6 months    ki1126311-ZVITAMBO         10    2052   136    130      6
6 months    ki1126311-ZVITAMBO         11    2052   199    195      4
6 months    ki1126311-ZVITAMBO         12    2052   198    191      7
6 months    ki1148112-LCNI-5           1      417    35     31      4
6 months    ki1148112-LCNI-5           2      417    21     21      0
6 months    ki1148112-LCNI-5           3      417    13     12      1
6 months    ki1148112-LCNI-5           4      417    19     18      1
6 months    ki1148112-LCNI-5           5      417    23     19      4
6 months    ki1148112-LCNI-5           6      417    18     15      3
6 months    ki1148112-LCNI-5           7      417    30     30      0
6 months    ki1148112-LCNI-5           8      417    48     45      3
6 months    ki1148112-LCNI-5           9      417    45     42      3
6 months    ki1148112-LCNI-5           10     417    64     58      6
6 months    ki1148112-LCNI-5           11     417    51     48      3
6 months    ki1148112-LCNI-5           12     417    50     48      2
9 months    ki0047075b-MAL-ED          1     1640   161    151     10
9 months    ki0047075b-MAL-ED          2     1640   146    144      2
9 months    ki0047075b-MAL-ED          3     1640   129    123      6
9 months    ki0047075b-MAL-ED          4     1640   106    101      5
9 months    ki0047075b-MAL-ED          5     1640   122    120      2
9 months    ki0047075b-MAL-ED          6     1640   103    102      1
9 months    ki0047075b-MAL-ED          7     1640   138    132      6
9 months    ki0047075b-MAL-ED          8     1640   118    112      6
9 months    ki0047075b-MAL-ED          9     1640   146    142      4
9 months    ki0047075b-MAL-ED          10    1640   150    140     10
9 months    ki0047075b-MAL-ED          11    1640   165    154     11
9 months    ki0047075b-MAL-ED          12    1640   156    147      9
9 months    ki1000108-CMC-V-BCS-2002   1      366    34     29      5
9 months    ki1000108-CMC-V-BCS-2002   2      366    15     13      2
9 months    ki1000108-CMC-V-BCS-2002   3      366    30     27      3
9 months    ki1000108-CMC-V-BCS-2002   4      366    44     42      2
9 months    ki1000108-CMC-V-BCS-2002   5      366    35     27      8
9 months    ki1000108-CMC-V-BCS-2002   6      366    37     29      8
9 months    ki1000108-CMC-V-BCS-2002   7      366    38     30      8
9 months    ki1000108-CMC-V-BCS-2002   8      366    17     15      2
9 months    ki1000108-CMC-V-BCS-2002   9      366    20     19      1
9 months    ki1000108-CMC-V-BCS-2002   10     366    29     26      3
9 months    ki1000108-CMC-V-BCS-2002   11     366    42     42      0
9 months    ki1000108-CMC-V-BCS-2002   12     366    25     20      5
9 months    ki1000108-IRC              1      407    38     33      5
9 months    ki1000108-IRC              2      407    28     23      5
9 months    ki1000108-IRC              3      407    27     27      0
9 months    ki1000108-IRC              4      407    21     17      4
9 months    ki1000108-IRC              5      407    21     15      6
9 months    ki1000108-IRC              6      407    37     36      1
9 months    ki1000108-IRC              7      407    36     34      2
9 months    ki1000108-IRC              8      407    44     43      1
9 months    ki1000108-IRC              9      407    27     26      1
9 months    ki1000108-IRC              10     407    37     37      0
9 months    ki1000108-IRC              11     407    40     36      4
9 months    ki1000108-IRC              12     407    51     46      5
9 months    ki1000109-EE               1      366    90     63     27
9 months    ki1000109-EE               2      366    66     46     20
9 months    ki1000109-EE               3      366    41     32      9
9 months    ki1000109-EE               4      366    16      8      8
9 months    ki1000109-EE               5      366     0      0      0
9 months    ki1000109-EE               6      366     0      0      0
9 months    ki1000109-EE               7      366     0      0      0
9 months    ki1000109-EE               8      366     0      0      0
9 months    ki1000109-EE               9      366     0      0      0
9 months    ki1000109-EE               10     366     4      3      1
9 months    ki1000109-EE               11     366    68     53     15
9 months    ki1000109-EE               12     366    81     66     15
9 months    ki1000109-ResPak           1      211     9      6      3
9 months    ki1000109-ResPak           2      211     9      8      1
9 months    ki1000109-ResPak           3      211    15     11      4
9 months    ki1000109-ResPak           4      211    16     15      1
9 months    ki1000109-ResPak           5      211    45     37      8
9 months    ki1000109-ResPak           6      211    37     32      5
9 months    ki1000109-ResPak           7      211    20     17      3
9 months    ki1000109-ResPak           8      211    30     27      3
9 months    ki1000109-ResPak           9      211    19     16      3
9 months    ki1000109-ResPak           10     211     5      4      1
9 months    ki1000109-ResPak           11     211     1      1      0
9 months    ki1000109-ResPak           12     211     5      4      1
9 months    ki1000304b-SAS-FoodSuppl   1       85     6      3      3
9 months    ki1000304b-SAS-FoodSuppl   2       85     7      5      2
9 months    ki1000304b-SAS-FoodSuppl   3       85     6      6      0
9 months    ki1000304b-SAS-FoodSuppl   4       85     1      1      0
9 months    ki1000304b-SAS-FoodSuppl   5       85     3      3      0
9 months    ki1000304b-SAS-FoodSuppl   6       85     4      3      1
9 months    ki1000304b-SAS-FoodSuppl   7       85     8      8      0
9 months    ki1000304b-SAS-FoodSuppl   8       85    13      9      4
9 months    ki1000304b-SAS-FoodSuppl   9       85    15     13      2
9 months    ki1000304b-SAS-FoodSuppl   10      85     8      6      2
9 months    ki1000304b-SAS-FoodSuppl   11      85     4      2      2
9 months    ki1000304b-SAS-FoodSuppl   12      85    10      6      4
9 months    ki1017093-NIH-Birth        1      507    51     48      3
9 months    ki1017093-NIH-Birth        2      507    43     40      3
9 months    ki1017093-NIH-Birth        3      507    46     41      5
9 months    ki1017093-NIH-Birth        4      507    40     36      4
9 months    ki1017093-NIH-Birth        5      507    41     39      2
9 months    ki1017093-NIH-Birth        6      507    44     38      6
9 months    ki1017093-NIH-Birth        7      507    39     36      3
9 months    ki1017093-NIH-Birth        8      507    28     26      2
9 months    ki1017093-NIH-Birth        9      507    35     32      3
9 months    ki1017093-NIH-Birth        10     507    41     38      3
9 months    ki1017093-NIH-Birth        11     507    48     38     10
9 months    ki1017093-NIH-Birth        12     507    51     50      1
9 months    ki1066203-TanzaniaChild2   1      434    31     30      1
9 months    ki1066203-TanzaniaChild2   2      434    30     30      0
9 months    ki1066203-TanzaniaChild2   3      434    27     26      1
9 months    ki1066203-TanzaniaChild2   4      434    32     32      0
9 months    ki1066203-TanzaniaChild2   5      434    33     32      1
9 months    ki1066203-TanzaniaChild2   6      434    31     31      0
9 months    ki1066203-TanzaniaChild2   7      434    40     39      1
9 months    ki1066203-TanzaniaChild2   8      434    49     48      1
9 months    ki1066203-TanzaniaChild2   9      434    37     37      0
9 months    ki1066203-TanzaniaChild2   10     434    45     44      1
9 months    ki1066203-TanzaniaChild2   11     434    40     39      1
9 months    ki1066203-TanzaniaChild2   12     434    39     39      0
9 months    ki1101329-Keneba           1     2067   212    205      7
9 months    ki1101329-Keneba           2     2067   187    177     10
9 months    ki1101329-Keneba           3     2067   216    206     10
9 months    ki1101329-Keneba           4     2067   135    130      5
9 months    ki1101329-Keneba           5     2067   138    132      6
9 months    ki1101329-Keneba           6     2067   105     98      7
9 months    ki1101329-Keneba           7     2067    98     88     10
9 months    ki1101329-Keneba           8     2067   184    175      9
9 months    ki1101329-Keneba           9     2067   176    170      6
9 months    ki1101329-Keneba           10    2067   241    228     13
9 months    ki1101329-Keneba           11    2067   187    178      9
9 months    ki1101329-Keneba           12    2067   188    182      6
9 months    ki1112895-Guatemala BSC    1       60     4      2      2
9 months    ki1112895-Guatemala BSC    2       60     7      6      1
9 months    ki1112895-Guatemala BSC    3       60     5      5      0
9 months    ki1112895-Guatemala BSC    4       60     6      4      2
9 months    ki1112895-Guatemala BSC    5       60     5      5      0
9 months    ki1112895-Guatemala BSC    6       60     5      5      0
9 months    ki1112895-Guatemala BSC    7       60     4      3      1
9 months    ki1112895-Guatemala BSC    8       60     1      0      1
9 months    ki1112895-Guatemala BSC    9       60     4      4      0
9 months    ki1112895-Guatemala BSC    10      60     7      6      1
9 months    ki1112895-Guatemala BSC    11      60     4      3      1
9 months    ki1112895-Guatemala BSC    12      60     8      8      0
9 months    ki1113344-GMS-Nepal        1      551     0      0      0
9 months    ki1113344-GMS-Nepal        2      551     0      0      0
9 months    ki1113344-GMS-Nepal        3      551     0      0      0
9 months    ki1113344-GMS-Nepal        4      551     1      0      1
9 months    ki1113344-GMS-Nepal        5      551     0      0      0
9 months    ki1113344-GMS-Nepal        6      551   118    109      9
9 months    ki1113344-GMS-Nepal        7      551   215    202     13
9 months    ki1113344-GMS-Nepal        8      551   217    205     12
9 months    ki1113344-GMS-Nepal        9      551     0      0      0
9 months    ki1113344-GMS-Nepal        10     551     0      0      0
9 months    ki1113344-GMS-Nepal        11     551     0      0      0
9 months    ki1113344-GMS-Nepal        12     551     0      0      0
9 months    ki1114097-CMIN             1     1846   179    169     10
9 months    ki1114097-CMIN             2     1846   142    130     12
9 months    ki1114097-CMIN             3     1846   149    144      5
9 months    ki1114097-CMIN             4     1846   134    131      3
9 months    ki1114097-CMIN             5     1846   142    138      4
9 months    ki1114097-CMIN             6     1846   128    122      6
9 months    ki1114097-CMIN             7     1846   141    137      4
9 months    ki1114097-CMIN             8     1846   157    148      9
9 months    ki1114097-CMIN             9     1846   162    154      8
9 months    ki1114097-CMIN             10    1846   181    171     10
9 months    ki1114097-CMIN             11    1846   154    146      8
9 months    ki1114097-CMIN             12    1846   177    165     12
9 months    ki1114097-CONTENT          1      214    10     10      0
9 months    ki1114097-CONTENT          2      214    18     18      0
9 months    ki1114097-CONTENT          3      214    29     28      1
9 months    ki1114097-CONTENT          4      214    19     18      1
9 months    ki1114097-CONTENT          5      214    14     12      2
9 months    ki1114097-CONTENT          6      214    13     13      0
9 months    ki1114097-CONTENT          7      214    28     28      0
9 months    ki1114097-CONTENT          8      214    23     22      1
9 months    ki1114097-CONTENT          9      214    26     26      0
9 months    ki1114097-CONTENT          10     214    14     14      0
9 months    ki1114097-CONTENT          11     214     9      9      0
9 months    ki1114097-CONTENT          12     214    11     11      0
9 months    ki1126311-ZVITAMBO         1     1963   211    202      9
9 months    ki1126311-ZVITAMBO         2     1963   147    139      8
9 months    ki1126311-ZVITAMBO         3     1963   156    151      5
9 months    ki1126311-ZVITAMBO         4     1963   137    132      5
9 months    ki1126311-ZVITAMBO         5     1963   142    135      7
9 months    ki1126311-ZVITAMBO         6     1963   152    140     12
9 months    ki1126311-ZVITAMBO         7     1963   144    138      6
9 months    ki1126311-ZVITAMBO         8     1963   177    173      4
9 months    ki1126311-ZVITAMBO         9     1963   178    173      5
9 months    ki1126311-ZVITAMBO         10    1963   146    138      8
9 months    ki1126311-ZVITAMBO         11    1963   185    176      9
9 months    ki1126311-ZVITAMBO         12    1963   188    179      9
9 months    ki1148112-LCNI-5           1      322    23     21      2
9 months    ki1148112-LCNI-5           2      322    14     14      0
9 months    ki1148112-LCNI-5           3      322    11     10      1
9 months    ki1148112-LCNI-5           4      322    11     11      0
9 months    ki1148112-LCNI-5           5      322    18     15      3
9 months    ki1148112-LCNI-5           6      322    14     11      3
9 months    ki1148112-LCNI-5           7      322    20     20      0
9 months    ki1148112-LCNI-5           8      322    40     39      1
9 months    ki1148112-LCNI-5           9      322    39     37      2
9 months    ki1148112-LCNI-5           10     322    53     49      4
9 months    ki1148112-LCNI-5           11     322    42     42      0
9 months    ki1148112-LCNI-5           12     322    37     35      2
12 months   ki0047075b-MAL-ED          1     1616   159    145     14
12 months   ki0047075b-MAL-ED          2     1616   143    136      7
12 months   ki0047075b-MAL-ED          3     1616   125    119      6
12 months   ki0047075b-MAL-ED          4     1616   105     98      7
12 months   ki0047075b-MAL-ED          5     1616   121    115      6
12 months   ki0047075b-MAL-ED          6     1616   103    100      3
12 months   ki0047075b-MAL-ED          7     1616   140    133      7
12 months   ki0047075b-MAL-ED          8     1616   113    105      8
12 months   ki0047075b-MAL-ED          9     1616   143    135      8
12 months   ki0047075b-MAL-ED          10    1616   145    133     12
12 months   ki0047075b-MAL-ED          11    1616   164    150     14
12 months   ki0047075b-MAL-ED          12    1616   155    145     10
12 months   ki1000108-CMC-V-BCS-2002   1      368    34     27      7
12 months   ki1000108-CMC-V-BCS-2002   2      368    16     11      5
12 months   ki1000108-CMC-V-BCS-2002   3      368    31     23      8
12 months   ki1000108-CMC-V-BCS-2002   4      368    43     34      9
12 months   ki1000108-CMC-V-BCS-2002   5      368    36     25     11
12 months   ki1000108-CMC-V-BCS-2002   6      368    37     28      9
12 months   ki1000108-CMC-V-BCS-2002   7      368    38     25     13
12 months   ki1000108-CMC-V-BCS-2002   8      368    18     15      3
12 months   ki1000108-CMC-V-BCS-2002   9      368    20     19      1
12 months   ki1000108-CMC-V-BCS-2002   10     368    29     24      5
12 months   ki1000108-CMC-V-BCS-2002   11     368    43     38      5
12 months   ki1000108-CMC-V-BCS-2002   12     368    23     16      7
12 months   ki1000108-IRC              1      406    37     31      6
12 months   ki1000108-IRC              2      406    28     23      5
12 months   ki1000108-IRC              3      406    27     26      1
12 months   ki1000108-IRC              4      406    20     17      3
12 months   ki1000108-IRC              5      406    21     16      5
12 months   ki1000108-IRC              6      406    37     37      0
12 months   ki1000108-IRC              7      406    36     34      2
12 months   ki1000108-IRC              8      406    44     43      1
12 months   ki1000108-IRC              9      406    27     25      2
12 months   ki1000108-IRC              10     406    38     37      1
12 months   ki1000108-IRC              11     406    40     37      3
12 months   ki1000108-IRC              12     406    51     46      5
12 months   ki1000109-EE               1      357    89     56     33
12 months   ki1000109-EE               2      357    62     40     22
12 months   ki1000109-EE               3      357    40     26     14
12 months   ki1000109-EE               4      357    16      7      9
12 months   ki1000109-EE               5      357     0      0      0
12 months   ki1000109-EE               6      357     0      0      0
12 months   ki1000109-EE               7      357     0      0      0
12 months   ki1000109-EE               8      357     0      0      0
12 months   ki1000109-EE               9      357     0      0      0
12 months   ki1000109-EE               10     357     3      2      1
12 months   ki1000109-EE               11     357    65     45     20
12 months   ki1000109-EE               12     357    82     61     21
12 months   ki1000109-ResPak           1      194     5      5      0
12 months   ki1000109-ResPak           2      194     9      8      1
12 months   ki1000109-ResPak           3      194    14     12      2
12 months   ki1000109-ResPak           4      194    13     12      1
12 months   ki1000109-ResPak           5      194    43     37      6
12 months   ki1000109-ResPak           6      194    37     32      5
12 months   ki1000109-ResPak           7      194    19     16      3
12 months   ki1000109-ResPak           8      194    28     26      2
12 months   ki1000109-ResPak           9      194    18     16      2
12 months   ki1000109-ResPak           10     194     5      5      0
12 months   ki1000109-ResPak           11     194     0      0      0
12 months   ki1000109-ResPak           12     194     3      2      1
12 months   ki1000304b-SAS-FoodSuppl   1       92     7      3      4
12 months   ki1000304b-SAS-FoodSuppl   2       92     8      6      2
12 months   ki1000304b-SAS-FoodSuppl   3       92     6      5      1
12 months   ki1000304b-SAS-FoodSuppl   4       92     1      1      0
12 months   ki1000304b-SAS-FoodSuppl   5       92     3      2      1
12 months   ki1000304b-SAS-FoodSuppl   6       92     5      2      3
12 months   ki1000304b-SAS-FoodSuppl   7       92     9      4      5
12 months   ki1000304b-SAS-FoodSuppl   8       92    14      9      5
12 months   ki1000304b-SAS-FoodSuppl   9       92    15      7      8
12 months   ki1000304b-SAS-FoodSuppl   10      92    10      4      6
12 months   ki1000304b-SAS-FoodSuppl   11      92     4      2      2
12 months   ki1000304b-SAS-FoodSuppl   12      92    10      6      4
12 months   ki1017093-NIH-Birth        1      491    46     38      8
12 months   ki1017093-NIH-Birth        2      491    43     42      1
12 months   ki1017093-NIH-Birth        3      491    45     42      3
12 months   ki1017093-NIH-Birth        4      491    38     35      3
12 months   ki1017093-NIH-Birth        5      491    39     36      3
12 months   ki1017093-NIH-Birth        6      491    38     34      4
12 months   ki1017093-NIH-Birth        7      491    38     34      4
12 months   ki1017093-NIH-Birth        8      491    30     27      3
12 months   ki1017093-NIH-Birth        9      491    34     30      4
12 months   ki1017093-NIH-Birth        10     491    41     36      5
12 months   ki1017093-NIH-Birth        11     491    49     42      7
12 months   ki1017093-NIH-Birth        12     491    50     47      3
12 months   ki1066203-TanzaniaChild2   1      357    27     27      0
12 months   ki1066203-TanzaniaChild2   2      357    26     25      1
12 months   ki1066203-TanzaniaChild2   3      357    20     18      2
12 months   ki1066203-TanzaniaChild2   4      357    28     27      1
12 months   ki1066203-TanzaniaChild2   5      357    29     28      1
12 months   ki1066203-TanzaniaChild2   6      357    24     24      0
12 months   ki1066203-TanzaniaChild2   7      357    32     32      0
12 months   ki1066203-TanzaniaChild2   8      357    45     45      0
12 months   ki1066203-TanzaniaChild2   9      357    30     30      0
12 months   ki1066203-TanzaniaChild2   10     357    32     31      1
12 months   ki1066203-TanzaniaChild2   11     357    34     34      0
12 months   ki1066203-TanzaniaChild2   12     357    30     29      1
12 months   ki1101329-Keneba           1     1948   181    165     16
12 months   ki1101329-Keneba           2     1948   178    167     11
12 months   ki1101329-Keneba           3     1948   194    187      7
12 months   ki1101329-Keneba           4     1948   134    126      8
12 months   ki1101329-Keneba           5     1948   139    133      6
12 months   ki1101329-Keneba           6     1948   118    110      8
12 months   ki1101329-Keneba           7     1948    98     88     10
12 months   ki1101329-Keneba           8     1948   170    161      9
12 months   ki1101329-Keneba           9     1948   176    162     14
12 months   ki1101329-Keneba           10    1948   225    211     14
12 months   ki1101329-Keneba           11    1948   173    159     14
12 months   ki1101329-Keneba           12    1948   162    151     11
12 months   ki1112895-Guatemala BSC    1       53     4      2      2
12 months   ki1112895-Guatemala BSC    2       53     6      4      2
12 months   ki1112895-Guatemala BSC    3       53     4      4      0
12 months   ki1112895-Guatemala BSC    4       53     6      4      2
12 months   ki1112895-Guatemala BSC    5       53     3      3      0
12 months   ki1112895-Guatemala BSC    6       53     4      4      0
12 months   ki1112895-Guatemala BSC    7       53     4      3      1
12 months   ki1112895-Guatemala BSC    8       53     1      0      1
12 months   ki1112895-Guatemala BSC    9       53     4      4      0
12 months   ki1112895-Guatemala BSC    10      53     7      5      2
12 months   ki1112895-Guatemala BSC    11      53     3      2      1
12 months   ki1112895-Guatemala BSC    12      53     7      7      0
12 months   ki1113344-GMS-Nepal        1      558     0      0      0
12 months   ki1113344-GMS-Nepal        2      558     0      0      0
12 months   ki1113344-GMS-Nepal        3      558     0      0      0
12 months   ki1113344-GMS-Nepal        4      558     1      0      1
12 months   ki1113344-GMS-Nepal        5      558     0      0      0
12 months   ki1113344-GMS-Nepal        6      558   123    111     12
12 months   ki1113344-GMS-Nepal        7      558   214    197     17
12 months   ki1113344-GMS-Nepal        8      558   220    199     21
12 months   ki1113344-GMS-Nepal        9      558     0      0      0
12 months   ki1113344-GMS-Nepal        10     558     0      0      0
12 months   ki1113344-GMS-Nepal        11     558     0      0      0
12 months   ki1113344-GMS-Nepal        12     558     0      0      0
12 months   ki1114097-CMIN             1     1578   117    104     13
12 months   ki1114097-CMIN             2     1578   127    122      5
12 months   ki1114097-CMIN             3     1578   164    156      8
12 months   ki1114097-CMIN             4     1578   137    129      8
12 months   ki1114097-CMIN             5     1578   120    115      5
12 months   ki1114097-CMIN             6     1578   109    101      8
12 months   ki1114097-CMIN             7     1578   117    109      8
12 months   ki1114097-CMIN             8     1578   151    139     12
12 months   ki1114097-CMIN             9     1578   154    142     12
12 months   ki1114097-CMIN             10    1578   142    125     17
12 months   ki1114097-CMIN             11    1578   112    104      8
12 months   ki1114097-CMIN             12    1578   128    118     10
12 months   ki1114097-CONTENT          1      215    10     10      0
12 months   ki1114097-CONTENT          2      215    18     18      0
12 months   ki1114097-CONTENT          3      215    30     30      0
12 months   ki1114097-CONTENT          4      215    19     18      1
12 months   ki1114097-CONTENT          5      215    14     13      1
12 months   ki1114097-CONTENT          6      215    13     13      0
12 months   ki1114097-CONTENT          7      215    28     28      0
12 months   ki1114097-CONTENT          8      215    23     22      1
12 months   ki1114097-CONTENT          9      215    26     26      0
12 months   ki1114097-CONTENT          10     215    14     14      0
12 months   ki1114097-CONTENT          11     215     9      9      0
12 months   ki1114097-CONTENT          12     215    11     11      0
12 months   ki1126311-ZVITAMBO         1     1701   172    160     12
12 months   ki1126311-ZVITAMBO         2     1701   119    105     14
12 months   ki1126311-ZVITAMBO         3     1701   143    135      8
12 months   ki1126311-ZVITAMBO         4     1701   134    125      9
12 months   ki1126311-ZVITAMBO         5     1701   127    125      2
12 months   ki1126311-ZVITAMBO         6     1701   140    127     13
12 months   ki1126311-ZVITAMBO         7     1701   152    145      7
12 months   ki1126311-ZVITAMBO         8     1701   154    148      6
12 months   ki1126311-ZVITAMBO         9     1701   149    142      7
12 months   ki1126311-ZVITAMBO         10    1701   113    103     10
12 months   ki1126311-ZVITAMBO         11    1701   147    139      8
12 months   ki1126311-ZVITAMBO         12    1701   151    142      9
12 months   ki1148112-LCNI-5           1      310    29     25      4
12 months   ki1148112-LCNI-5           2      310    16     16      0
12 months   ki1148112-LCNI-5           3      310    10      7      3
12 months   ki1148112-LCNI-5           4      310    11     10      1
12 months   ki1148112-LCNI-5           5      310    18     13      5
12 months   ki1148112-LCNI-5           6      310    14     12      2
12 months   ki1148112-LCNI-5           7      310    23     23      0
12 months   ki1148112-LCNI-5           8      310    39     37      2
12 months   ki1148112-LCNI-5           9      310    32     29      3
12 months   ki1148112-LCNI-5           10     310    47     43      4
12 months   ki1148112-LCNI-5           11     310    35     30      5
12 months   ki1148112-LCNI-5           12     310    36     31      5
18 months   ki0047075b-MAL-ED          1     1546   154    135     19
18 months   ki0047075b-MAL-ED          2     1546   132    117     15
18 months   ki0047075b-MAL-ED          3     1546   118    105     13
18 months   ki0047075b-MAL-ED          4     1546   100     88     12
18 months   ki0047075b-MAL-ED          5     1546   113    101     12
18 months   ki0047075b-MAL-ED          6     1546   101     93      8
18 months   ki0047075b-MAL-ED          7     1546   137    114     23
18 months   ki0047075b-MAL-ED          8     1546   113     99     14
18 months   ki0047075b-MAL-ED          9     1546   139    125     14
18 months   ki0047075b-MAL-ED          10    1546   139    117     22
18 months   ki0047075b-MAL-ED          11    1546   151    134     17
18 months   ki0047075b-MAL-ED          12    1546   149    133     16
18 months   ki1000108-CMC-V-BCS-2002   1      369    34     23     11
18 months   ki1000108-CMC-V-BCS-2002   2      369    16      7      9
18 months   ki1000108-CMC-V-BCS-2002   3      369    30     22      8
18 months   ki1000108-CMC-V-BCS-2002   4      369    43     29     14
18 months   ki1000108-CMC-V-BCS-2002   5      369    35     23     12
18 months   ki1000108-CMC-V-BCS-2002   6      369    36     28      8
18 months   ki1000108-CMC-V-BCS-2002   7      369    39     28     11
18 months   ki1000108-CMC-V-BCS-2002   8      369    18     15      3
18 months   ki1000108-CMC-V-BCS-2002   9      369    21     20      1
18 months   ki1000108-CMC-V-BCS-2002   10     369    29     20      9
18 months   ki1000108-CMC-V-BCS-2002   11     369    43     32     11
18 months   ki1000108-CMC-V-BCS-2002   12     369    25     13     12
18 months   ki1000108-IRC              1      405    38     34      4
18 months   ki1000108-IRC              2      405    28     25      3
18 months   ki1000108-IRC              3      405    27     27      0
18 months   ki1000108-IRC              4      405    21     19      2
18 months   ki1000108-IRC              5      405    22     16      6
18 months   ki1000108-IRC              6      405    37     35      2
18 months   ki1000108-IRC              7      405    36     34      2
18 months   ki1000108-IRC              8      405    43     41      2
18 months   ki1000108-IRC              9      405    27     24      3
18 months   ki1000108-IRC              10     405    35     34      1
18 months   ki1000108-IRC              11     405    40     38      2
18 months   ki1000108-IRC              12     405    51     44      7
18 months   ki1000109-EE               1      350    87     45     42
18 months   ki1000109-EE               2      350    57     29     28
18 months   ki1000109-EE               3      350    39     18     21
18 months   ki1000109-EE               4      350    16      5     11
18 months   ki1000109-EE               5      350     0      0      0
18 months   ki1000109-EE               6      350     0      0      0
18 months   ki1000109-EE               7      350     0      0      0
18 months   ki1000109-EE               8      350     0      0      0
18 months   ki1000109-EE               9      350     0      0      0
18 months   ki1000109-EE               10     350     4      2      2
18 months   ki1000109-EE               11     350    65     36     29
18 months   ki1000109-EE               12     350    82     44     38
18 months   ki1000109-ResPak           1        9     1      1      0
18 months   ki1000109-ResPak           2        9     1      1      0
18 months   ki1000109-ResPak           3        9     4      3      1
18 months   ki1000109-ResPak           4        9     2      2      0
18 months   ki1000109-ResPak           5        9     0      0      0
18 months   ki1000109-ResPak           6        9     0      0      0
18 months   ki1000109-ResPak           7        9     0      0      0
18 months   ki1000109-ResPak           8        9     0      0      0
18 months   ki1000109-ResPak           9        9     0      0      0
18 months   ki1000109-ResPak           10       9     0      0      0
18 months   ki1000109-ResPak           11       9     0      0      0
18 months   ki1000109-ResPak           12       9     1      1      0
18 months   ki1000304b-SAS-FoodSuppl   1       84     6      3      3
18 months   ki1000304b-SAS-FoodSuppl   2       84     6      4      2
18 months   ki1000304b-SAS-FoodSuppl   3       84     6      5      1
18 months   ki1000304b-SAS-FoodSuppl   4       84     1      1      0
18 months   ki1000304b-SAS-FoodSuppl   5       84     3      0      3
18 months   ki1000304b-SAS-FoodSuppl   6       84     6      2      4
18 months   ki1000304b-SAS-FoodSuppl   7       84     8      3      5
18 months   ki1000304b-SAS-FoodSuppl   8       84    12      7      5
18 months   ki1000304b-SAS-FoodSuppl   9       84    15     11      4
18 months   ki1000304b-SAS-FoodSuppl   10      84     8      4      4
18 months   ki1000304b-SAS-FoodSuppl   11      84     5      2      3
18 months   ki1000304b-SAS-FoodSuppl   12      84     8      5      3
18 months   ki1017093-NIH-Birth        1      463    45     34     11
18 months   ki1017093-NIH-Birth        2      463    35     31      4
18 months   ki1017093-NIH-Birth        3      463    44     38      6
18 months   ki1017093-NIH-Birth        4      463    36     29      7
18 months   ki1017093-NIH-Birth        5      463    37     30      7
18 months   ki1017093-NIH-Birth        6      463    39     28     11
18 months   ki1017093-NIH-Birth        7      463    36     27      9
18 months   ki1017093-NIH-Birth        8      463    28     22      6
18 months   ki1017093-NIH-Birth        9      463    35     26      9
18 months   ki1017093-NIH-Birth        10     463    37     26     11
18 months   ki1017093-NIH-Birth        11     463    44     32     12
18 months   ki1017093-NIH-Birth        12     463    47     39      8
18 months   ki1066203-TanzaniaChild2   1      258    23     23      0
18 months   ki1066203-TanzaniaChild2   2      258    20     19      1
18 months   ki1066203-TanzaniaChild2   3      258    17     17      0
18 months   ki1066203-TanzaniaChild2   4      258    21     20      1
18 months   ki1066203-TanzaniaChild2   5      258    23     21      2
18 months   ki1066203-TanzaniaChild2   6      258    19     19      0
18 months   ki1066203-TanzaniaChild2   7      258    19     19      0
18 months   ki1066203-TanzaniaChild2   8      258    29     26      3
18 months   ki1066203-TanzaniaChild2   9      258    21     20      1
18 months   ki1066203-TanzaniaChild2   10     258    27     24      3
18 months   ki1066203-TanzaniaChild2   11     258    21     19      2
18 months   ki1066203-TanzaniaChild2   12     258    18     16      2
18 months   ki1101329-Keneba           1     1923   204    192     12
18 months   ki1101329-Keneba           2     1923   178    160     18
18 months   ki1101329-Keneba           3     1923   201    182     19
18 months   ki1101329-Keneba           4     1923   136    126     10
18 months   ki1101329-Keneba           5     1923   135    122     13
18 months   ki1101329-Keneba           6     1923   111     96     15
18 months   ki1101329-Keneba           7     1923    89     78     11
18 months   ki1101329-Keneba           8     1923   154    142     12
18 months   ki1101329-Keneba           9     1923   168    156     12
18 months   ki1101329-Keneba           10    1923   208    191     17
18 months   ki1101329-Keneba           11    1923   162    147     15
18 months   ki1101329-Keneba           12    1923   177    162     15
18 months   ki1112895-Guatemala BSC    1        0     0      0      0
18 months   ki1112895-Guatemala BSC    2        0     0      0      0
18 months   ki1112895-Guatemala BSC    3        0     0      0      0
18 months   ki1112895-Guatemala BSC    4        0     0      0      0
18 months   ki1112895-Guatemala BSC    5        0     0      0      0
18 months   ki1112895-Guatemala BSC    6        0     0      0      0
18 months   ki1112895-Guatemala BSC    7        0     0      0      0
18 months   ki1112895-Guatemala BSC    8        0     0      0      0
18 months   ki1112895-Guatemala BSC    9        0     0      0      0
18 months   ki1112895-Guatemala BSC    10       0     0      0      0
18 months   ki1112895-Guatemala BSC    11       0     0      0      0
18 months   ki1112895-Guatemala BSC    12       0     0      0      0
18 months   ki1113344-GMS-Nepal        1      550     0      0      0
18 months   ki1113344-GMS-Nepal        2      550     0      0      0
18 months   ki1113344-GMS-Nepal        3      550     0      0      0
18 months   ki1113344-GMS-Nepal        4      550     0      0      0
18 months   ki1113344-GMS-Nepal        5      550     0      0      0
18 months   ki1113344-GMS-Nepal        6      550   121     98     23
18 months   ki1113344-GMS-Nepal        7      550   216    187     29
18 months   ki1113344-GMS-Nepal        8      550   213    180     33
18 months   ki1113344-GMS-Nepal        9      550     0      0      0
18 months   ki1113344-GMS-Nepal        10     550     0      0      0
18 months   ki1113344-GMS-Nepal        11     550     0      0      0
18 months   ki1113344-GMS-Nepal        12     550     0      0      0
18 months   ki1114097-CMIN             1     1595   141    120     21
18 months   ki1114097-CMIN             2     1595   140    125     15
18 months   ki1114097-CMIN             3     1595   145    133     12
18 months   ki1114097-CMIN             4     1595   130    116     14
18 months   ki1114097-CMIN             5     1595   104     94     10
18 months   ki1114097-CMIN             6     1595    84     76      8
18 months   ki1114097-CMIN             7     1595    96     90      6
18 months   ki1114097-CMIN             8     1595   141    124     17
18 months   ki1114097-CMIN             9     1595   168    148     20
18 months   ki1114097-CMIN             10    1595   167    142     25
18 months   ki1114097-CMIN             11    1595   132    116     16
18 months   ki1114097-CMIN             12    1595   147    130     17
18 months   ki1114097-CONTENT          1      200     9      9      0
18 months   ki1114097-CONTENT          2      200    17     17      0
18 months   ki1114097-CONTENT          3      200    28     27      1
18 months   ki1114097-CONTENT          4      200    19     16      3
18 months   ki1114097-CONTENT          5      200    14     14      0
18 months   ki1114097-CONTENT          6      200    12     12      0
18 months   ki1114097-CONTENT          7      200    24     24      0
18 months   ki1114097-CONTENT          8      200    22     21      1
18 months   ki1114097-CONTENT          9      200    25     25      0
18 months   ki1114097-CONTENT          10     200    12     12      0
18 months   ki1114097-CONTENT          11     200     7      7      0
18 months   ki1114097-CONTENT          12     200    11     11      0
18 months   ki1126311-ZVITAMBO         1      425    55     43     12
18 months   ki1126311-ZVITAMBO         2      425    43     35      8
18 months   ki1126311-ZVITAMBO         3      425    38     34      4
18 months   ki1126311-ZVITAMBO         4      425    46     35     11
18 months   ki1126311-ZVITAMBO         5      425    28     24      4
18 months   ki1126311-ZVITAMBO         6      425    28     26      2
18 months   ki1126311-ZVITAMBO         7      425    31     25      6
18 months   ki1126311-ZVITAMBO         8      425    30     29      1
18 months   ki1126311-ZVITAMBO         9      425    25     23      2
18 months   ki1126311-ZVITAMBO         10     425    22     20      2
18 months   ki1126311-ZVITAMBO         11     425    35     27      8
18 months   ki1126311-ZVITAMBO         12     425    44     37      7
18 months   ki1148112-LCNI-5           1      357    27     25      2
18 months   ki1148112-LCNI-5           2      357    20     19      1
18 months   ki1148112-LCNI-5           3      357    11      9      2
18 months   ki1148112-LCNI-5           4      357    15     13      2
18 months   ki1148112-LCNI-5           5      357    19     13      6
18 months   ki1148112-LCNI-5           6      357    18     15      3
18 months   ki1148112-LCNI-5           7      357    28     26      2
18 months   ki1148112-LCNI-5           8      357    41     36      5
18 months   ki1148112-LCNI-5           9      357    39     34      5
18 months   ki1148112-LCNI-5           10     357    56     44     12
18 months   ki1148112-LCNI-5           11     357    39     35      4
18 months   ki1148112-LCNI-5           12     357    44     36      8
24 months   ki0047075b-MAL-ED          1     1489   146    126     20
24 months   ki0047075b-MAL-ED          2     1489   129    109     20
24 months   ki0047075b-MAL-ED          3     1489   116    100     16
24 months   ki0047075b-MAL-ED          4     1489    95     86      9
24 months   ki0047075b-MAL-ED          5     1489   110     97     13
24 months   ki0047075b-MAL-ED          6     1489    94     89      5
24 months   ki0047075b-MAL-ED          7     1489   128    114     14
24 months   ki0047075b-MAL-ED          8     1489   111     97     14
24 months   ki0047075b-MAL-ED          9     1489   136    126     10
24 months   ki0047075b-MAL-ED          10    1489   134    118     16
24 months   ki0047075b-MAL-ED          11    1489   145    124     21
24 months   ki0047075b-MAL-ED          12    1489   145    131     14
24 months   ki1000108-CMC-V-BCS-2002   1      372    34     26      8
24 months   ki1000108-CMC-V-BCS-2002   2      372    16      9      7
24 months   ki1000108-CMC-V-BCS-2002   3      372    31     18     13
24 months   ki1000108-CMC-V-BCS-2002   4      372    44     28     16
24 months   ki1000108-CMC-V-BCS-2002   5      372    36     23     13
24 months   ki1000108-CMC-V-BCS-2002   6      372    37     26     11
24 months   ki1000108-CMC-V-BCS-2002   7      372    39     29     10
24 months   ki1000108-CMC-V-BCS-2002   8      372    17     12      5
24 months   ki1000108-CMC-V-BCS-2002   9      372    21     18      3
24 months   ki1000108-CMC-V-BCS-2002   10     372    29     20      9
24 months   ki1000108-CMC-V-BCS-2002   11     372    43     28     15
24 months   ki1000108-CMC-V-BCS-2002   12     372    25     12     13
24 months   ki1000108-IRC              1      409    38     33      5
24 months   ki1000108-IRC              2      409    28     24      4
24 months   ki1000108-IRC              3      409    27     23      4
24 months   ki1000108-IRC              4      409    21     18      3
24 months   ki1000108-IRC              5      409    22     16      6
24 months   ki1000108-IRC              6      409    37     36      1
24 months   ki1000108-IRC              7      409    36     36      0
24 months   ki1000108-IRC              8      409    44     40      4
24 months   ki1000108-IRC              9      409    27     24      3
24 months   ki1000108-IRC              10     409    37     36      1
24 months   ki1000108-IRC              11     409    40     38      2
24 months   ki1000108-IRC              12     409    52     44      8
24 months   ki1000109-EE               1        0     0      0      0
24 months   ki1000109-EE               2        0     0      0      0
24 months   ki1000109-EE               3        0     0      0      0
24 months   ki1000109-EE               4        0     0      0      0
24 months   ki1000109-EE               5        0     0      0      0
24 months   ki1000109-EE               6        0     0      0      0
24 months   ki1000109-EE               7        0     0      0      0
24 months   ki1000109-EE               8        0     0      0      0
24 months   ki1000109-EE               9        0     0      0      0
24 months   ki1000109-EE               10       0     0      0      0
24 months   ki1000109-EE               11       0     0      0      0
24 months   ki1000109-EE               12       0     0      0      0
24 months   ki1000109-ResPak           1        0     0      0      0
24 months   ki1000109-ResPak           2        0     0      0      0
24 months   ki1000109-ResPak           3        0     0      0      0
24 months   ki1000109-ResPak           4        0     0      0      0
24 months   ki1000109-ResPak           5        0     0      0      0
24 months   ki1000109-ResPak           6        0     0      0      0
24 months   ki1000109-ResPak           7        0     0      0      0
24 months   ki1000109-ResPak           8        0     0      0      0
24 months   ki1000109-ResPak           9        0     0      0      0
24 months   ki1000109-ResPak           10       0     0      0      0
24 months   ki1000109-ResPak           11       0     0      0      0
24 months   ki1000109-ResPak           12       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   1        0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   2        0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   3        0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   4        0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   5        0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   6        0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   7        0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   8        0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   9        0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   10       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   11       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   12       0     0      0      0
24 months   ki1017093-NIH-Birth        1      429    43     34      9
24 months   ki1017093-NIH-Birth        2      429    36     32      4
24 months   ki1017093-NIH-Birth        3      429    39     33      6
24 months   ki1017093-NIH-Birth        4      429    34     24     10
24 months   ki1017093-NIH-Birth        5      429    35     26      9
24 months   ki1017093-NIH-Birth        6      429    33     26      7
24 months   ki1017093-NIH-Birth        7      429    34     29      5
24 months   ki1017093-NIH-Birth        8      429    27     19      8
24 months   ki1017093-NIH-Birth        9      429    26     22      4
24 months   ki1017093-NIH-Birth        10     429    33     24      9
24 months   ki1017093-NIH-Birth        11     429    43     31     12
24 months   ki1017093-NIH-Birth        12     429    46     36     10
24 months   ki1066203-TanzaniaChild2   1        2     0      0      0
24 months   ki1066203-TanzaniaChild2   2        2     0      0      0
24 months   ki1066203-TanzaniaChild2   3        2     0      0      0
24 months   ki1066203-TanzaniaChild2   4        2     0      0      0
24 months   ki1066203-TanzaniaChild2   5        2     1      1      0
24 months   ki1066203-TanzaniaChild2   6        2     0      0      0
24 months   ki1066203-TanzaniaChild2   7        2     1      1      0
24 months   ki1066203-TanzaniaChild2   8        2     0      0      0
24 months   ki1066203-TanzaniaChild2   9        2     0      0      0
24 months   ki1066203-TanzaniaChild2   10       2     0      0      0
24 months   ki1066203-TanzaniaChild2   11       2     0      0      0
24 months   ki1066203-TanzaniaChild2   12       2     0      0      0
24 months   ki1101329-Keneba           1     1725   171    159     12
24 months   ki1101329-Keneba           2     1725   167    149     18
24 months   ki1101329-Keneba           3     1725   170    158     12
24 months   ki1101329-Keneba           4     1725   114    105      9
24 months   ki1101329-Keneba           5     1725   122    117      5
24 months   ki1101329-Keneba           6     1725    92     86      6
24 months   ki1101329-Keneba           7     1725    81     76      5
24 months   ki1101329-Keneba           8     1725   158    149      9
24 months   ki1101329-Keneba           9     1725   159    143     16
24 months   ki1101329-Keneba           10    1725   200    187     13
24 months   ki1101329-Keneba           11    1725   141    127     14
24 months   ki1101329-Keneba           12    1725   150    132     18
24 months   ki1112895-Guatemala BSC    1        0     0      0      0
24 months   ki1112895-Guatemala BSC    2        0     0      0      0
24 months   ki1112895-Guatemala BSC    3        0     0      0      0
24 months   ki1112895-Guatemala BSC    4        0     0      0      0
24 months   ki1112895-Guatemala BSC    5        0     0      0      0
24 months   ki1112895-Guatemala BSC    6        0     0      0      0
24 months   ki1112895-Guatemala BSC    7        0     0      0      0
24 months   ki1112895-Guatemala BSC    8        0     0      0      0
24 months   ki1112895-Guatemala BSC    9        0     0      0      0
24 months   ki1112895-Guatemala BSC    10       0     0      0      0
24 months   ki1112895-Guatemala BSC    11       0     0      0      0
24 months   ki1112895-Guatemala BSC    12       0     0      0      0
24 months   ki1113344-GMS-Nepal        1      499     0      0      0
24 months   ki1113344-GMS-Nepal        2      499     0      0      0
24 months   ki1113344-GMS-Nepal        3      499     0      0      0
24 months   ki1113344-GMS-Nepal        4      499     0      0      0
24 months   ki1113344-GMS-Nepal        5      499     0      0      0
24 months   ki1113344-GMS-Nepal        6      499    91     81     10
24 months   ki1113344-GMS-Nepal        7      499   206    183     23
24 months   ki1113344-GMS-Nepal        8      499   202    181     21
24 months   ki1113344-GMS-Nepal        9      499     0      0      0
24 months   ki1113344-GMS-Nepal        10     499     0      0      0
24 months   ki1113344-GMS-Nepal        11     499     0      0      0
24 months   ki1113344-GMS-Nepal        12     499     0      0      0
24 months   ki1114097-CMIN             1     1222    87     73     14
24 months   ki1114097-CMIN             2     1222   104     92     12
24 months   ki1114097-CMIN             3     1222   123    115      8
24 months   ki1114097-CMIN             4     1222   120    100     20
24 months   ki1114097-CMIN             5     1222    94     87      7
24 months   ki1114097-CMIN             6     1222    77     69      8
24 months   ki1114097-CMIN             7     1222    96     87      9
24 months   ki1114097-CMIN             8     1222   101     84     17
24 months   ki1114097-CMIN             9     1222   124    114     10
24 months   ki1114097-CMIN             10    1222   114     94     20
24 months   ki1114097-CMIN             11    1222   100     85     15
24 months   ki1114097-CMIN             12    1222    82     69     13
24 months   ki1114097-CONTENT          1      164     7      7      0
24 months   ki1114097-CONTENT          2      164    14     14      0
24 months   ki1114097-CONTENT          3      164    22     21      1
24 months   ki1114097-CONTENT          4      164    15     14      1
24 months   ki1114097-CONTENT          5      164    14     14      0
24 months   ki1114097-CONTENT          6      164    11     11      0
24 months   ki1114097-CONTENT          7      164    23     23      0
24 months   ki1114097-CONTENT          8      164    14     13      1
24 months   ki1114097-CONTENT          9      164    17     17      0
24 months   ki1114097-CONTENT          10     164    11     11      0
24 months   ki1114097-CONTENT          11     164     6      6      0
24 months   ki1114097-CONTENT          12     164    10     10      0
24 months   ki1126311-ZVITAMBO         1      116    14     13      1
24 months   ki1126311-ZVITAMBO         2      116    17     14      3
24 months   ki1126311-ZVITAMBO         3      116    18     15      3
24 months   ki1126311-ZVITAMBO         4      116    14      8      6
24 months   ki1126311-ZVITAMBO         5      116    12     10      2
24 months   ki1126311-ZVITAMBO         6      116     7      6      1
24 months   ki1126311-ZVITAMBO         7      116     6      3      3
24 months   ki1126311-ZVITAMBO         8      116     7      7      0
24 months   ki1126311-ZVITAMBO         9      116     1      1      0
24 months   ki1126311-ZVITAMBO         10     116     3      3      0
24 months   ki1126311-ZVITAMBO         11     116     9      7      2
24 months   ki1126311-ZVITAMBO         12     116     8      7      1
24 months   ki1148112-LCNI-5           1      297    21     20      1
24 months   ki1148112-LCNI-5           2      297    14     14      0
24 months   ki1148112-LCNI-5           3      297     9      8      1
24 months   ki1148112-LCNI-5           4      297    13     12      1
24 months   ki1148112-LCNI-5           5      297    18     13      5
24 months   ki1148112-LCNI-5           6      297    14     11      3
24 months   ki1148112-LCNI-5           7      297    27     25      2
24 months   ki1148112-LCNI-5           8      297    36     34      2
24 months   ki1148112-LCNI-5           9      297    32     29      3
24 months   ki1148112-LCNI-5           10     297    46     40      6
24 months   ki1148112-LCNI-5           11     297    34     30      4
24 months   ki1148112-LCNI-5           12     297    33     24      9

## Results Table

### Parameter: TSM


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1126311-ZVITAMBO   1                    NA                0.0431034   0.0169645   0.0692424
3 months    ki1126311-ZVITAMBO   2                    NA                0.0812500   0.0389058   0.1235942
3 months    ki1126311-ZVITAMBO   3                    NA                0.0600000   0.0270794   0.0929206
3 months    ki1126311-ZVITAMBO   4                    NA                0.0555556   0.0220853   0.0890258
3 months    ki1126311-ZVITAMBO   5                    NA                0.0479042   0.0155066   0.0803018
3 months    ki1126311-ZVITAMBO   6                    NA                0.0952381   0.0533794   0.1370968
3 months    ki1126311-ZVITAMBO   7                    NA                0.0380952   0.0121991   0.0639914
3 months    ki1126311-ZVITAMBO   8                    NA                0.0516432   0.0219165   0.0813699
3 months    ki1126311-ZVITAMBO   9                    NA                0.0309278   0.0065612   0.0552945
3 months    ki1126311-ZVITAMBO   10                   NA                0.0441176   0.0095967   0.0786386
3 months    ki1126311-ZVITAMBO   11                   NA                0.0386740   0.0105777   0.0667704
3 months    ki1126311-ZVITAMBO   12                   NA                0.0239234   0.0032018   0.0446451
9 months    ki1101329-Keneba     1                    NA                0.0330189   0.0089600   0.0570777
9 months    ki1101329-Keneba     2                    NA                0.0534759   0.0212224   0.0857295
9 months    ki1101329-Keneba     3                    NA                0.0462963   0.0182674   0.0743252
9 months    ki1101329-Keneba     4                    NA                0.0370370   0.0051724   0.0689017
9 months    ki1101329-Keneba     5                    NA                0.0434783   0.0094455   0.0775110
9 months    ki1101329-Keneba     6                    NA                0.0666667   0.0189433   0.1143901
9 months    ki1101329-Keneba     7                    NA                0.1020408   0.0420955   0.1619862
9 months    ki1101329-Keneba     8                    NA                0.0489130   0.0177409   0.0800852
9 months    ki1101329-Keneba     9                    NA                0.0340909   0.0072755   0.0609063
9 months    ki1101329-Keneba     10                   NA                0.0539419   0.0254142   0.0824696
9 months    ki1101329-Keneba     11                   NA                0.0481283   0.0174436   0.0788131
9 months    ki1101329-Keneba     12                   NA                0.0319149   0.0067829   0.0570469
12 months   ki1101329-Keneba     1                    NA                0.0883978   0.0470318   0.1297638
12 months   ki1101329-Keneba     2                    NA                0.0617978   0.0264156   0.0971799
12 months   ki1101329-Keneba     3                    NA                0.0360825   0.0098326   0.0623323
12 months   ki1101329-Keneba     4                    NA                0.0597015   0.0195749   0.0998281
12 months   ki1101329-Keneba     5                    NA                0.0431655   0.0093715   0.0769594
12 months   ki1101329-Keneba     6                    NA                0.0677966   0.0224257   0.1131676
12 months   ki1101329-Keneba     7                    NA                0.1020408   0.0420946   0.1619870
12 months   ki1101329-Keneba     8                    NA                0.0529412   0.0192729   0.0866094
12 months   ki1101329-Keneba     9                    NA                0.0795455   0.0395591   0.1195318
12 months   ki1101329-Keneba     10                   NA                0.0622222   0.0306510   0.0937934
12 months   ki1101329-Keneba     11                   NA                0.0809249   0.0402756   0.1215742
12 months   ki1101329-Keneba     12                   NA                0.0679012   0.0291512   0.1066513
12 months   ki1114097-CMIN       1                    NA                0.1111111   0.0541478   0.1680744
12 months   ki1114097-CMIN       2                    NA                0.0393701   0.0055367   0.0732034
12 months   ki1114097-CMIN       3                    NA                0.0487805   0.0158023   0.0817587
12 months   ki1114097-CMIN       4                    NA                0.0583942   0.0191166   0.0976717
12 months   ki1114097-CMIN       5                    NA                0.0416667   0.0059025   0.0774308
12 months   ki1114097-CMIN       6                    NA                0.0733945   0.0244221   0.1223669
12 months   ki1114097-CMIN       7                    NA                0.0683761   0.0226288   0.1141233
12 months   ki1114097-CMIN       8                    NA                0.0794702   0.0363165   0.1226239
12 months   ki1114097-CMIN       9                    NA                0.0779221   0.0355734   0.1202707
12 months   ki1114097-CMIN       10                   NA                0.1197183   0.0663071   0.1731296
12 months   ki1114097-CMIN       11                   NA                0.0714286   0.0237174   0.1191398
12 months   ki1114097-CMIN       12                   NA                0.0781250   0.0316187   0.1246313
18 months   ki0047075b-MAL-ED    1                    NA                0.1233766   0.0714188   0.1753345
18 months   ki0047075b-MAL-ED    2                    NA                0.1136364   0.0594779   0.1677948
18 months   ki0047075b-MAL-ED    3                    NA                0.1101695   0.0536586   0.1666804
18 months   ki0047075b-MAL-ED    4                    NA                0.1200000   0.0562881   0.1837119
18 months   ki0047075b-MAL-ED    5                    NA                0.1061947   0.0493719   0.1630174
18 months   ki0047075b-MAL-ED    6                    NA                0.0792079   0.0265222   0.1318937
18 months   ki0047075b-MAL-ED    7                    NA                0.1678832   0.1052760   0.2304904
18 months   ki0047075b-MAL-ED    8                    NA                0.1238938   0.0631289   0.1846587
18 months   ki0047075b-MAL-ED    9                    NA                0.1007194   0.0506716   0.1507673
18 months   ki0047075b-MAL-ED    10                   NA                0.1582734   0.0975759   0.2189709
18 months   ki0047075b-MAL-ED    11                   NA                0.1125828   0.0621515   0.1630141
18 months   ki0047075b-MAL-ED    12                   NA                0.1073826   0.0576552   0.1571099
18 months   ki1101329-Keneba     1                    NA                0.0588235   0.0265269   0.0911201
18 months   ki1101329-Keneba     2                    NA                0.1011236   0.0568212   0.1454260
18 months   ki1101329-Keneba     3                    NA                0.0945274   0.0540717   0.1349830
18 months   ki1101329-Keneba     4                    NA                0.0735294   0.0296523   0.1174065
18 months   ki1101329-Keneba     5                    NA                0.0962963   0.0465212   0.1460714
18 months   ki1101329-Keneba     6                    NA                0.1351351   0.0715204   0.1987499
18 months   ki1101329-Keneba     7                    NA                0.1235955   0.0552012   0.1919898
18 months   ki1101329-Keneba     8                    NA                0.0779221   0.0355758   0.1202683
18 months   ki1101329-Keneba     9                    NA                0.0714286   0.0324748   0.1103824
18 months   ki1101329-Keneba     10                   NA                0.0817308   0.0444910   0.1189706
18 months   ki1101329-Keneba     11                   NA                0.0925926   0.0479455   0.1372396
18 months   ki1101329-Keneba     12                   NA                0.0847458   0.0437061   0.1257855
18 months   ki1114097-CMIN       1                    NA                0.1489362   0.0901526   0.2077197
18 months   ki1114097-CMIN       2                    NA                0.1071429   0.0558930   0.1583927
18 months   ki1114097-CMIN       3                    NA                0.0827586   0.0378997   0.1276175
18 months   ki1114097-CMIN       4                    NA                0.1076923   0.0543880   0.1609966
18 months   ki1114097-CMIN       5                    NA                0.0961538   0.0394780   0.1528297
18 months   ki1114097-CMIN       6                    NA                0.0952381   0.0324442   0.1580319
18 months   ki1114097-CMIN       7                    NA                0.0625000   0.0140633   0.1109367
18 months   ki1114097-CMIN       8                    NA                0.1205674   0.0668035   0.1743313
18 months   ki1114097-CMIN       9                    NA                0.1190476   0.0700623   0.1680330
18 months   ki1114097-CMIN       10                   NA                0.1497006   0.0955724   0.2038288
18 months   ki1114097-CMIN       11                   NA                0.1212121   0.0655176   0.1769066
18 months   ki1114097-CMIN       12                   NA                0.1156463   0.0639327   0.1673598
24 months   ki0047075b-MAL-ED    1                    NA                0.1369863   0.0811952   0.1927774
24 months   ki0047075b-MAL-ED    2                    NA                0.1550388   0.0925592   0.2175183
24 months   ki0047075b-MAL-ED    3                    NA                0.1379310   0.0751589   0.2007032
24 months   ki0047075b-MAL-ED    4                    NA                0.0947368   0.0358282   0.1536455
24 months   ki0047075b-MAL-ED    5                    NA                0.1181818   0.0578339   0.1785298
24 months   ki0047075b-MAL-ED    6                    NA                0.0531915   0.0078096   0.0985733
24 months   ki0047075b-MAL-ED    7                    NA                0.1093750   0.0552877   0.1634623
24 months   ki0047075b-MAL-ED    8                    NA                0.1261261   0.0643445   0.1879078
24 months   ki0047075b-MAL-ED    9                    NA                0.0735294   0.0296490   0.1174098
24 months   ki0047075b-MAL-ED    10                   NA                0.1194030   0.0644821   0.1743239
24 months   ki0047075b-MAL-ED    11                   NA                0.1448276   0.0875266   0.2021286
24 months   ki0047075b-MAL-ED    12                   NA                0.0965517   0.0484632   0.1446403
24 months   ki1101329-Keneba     1                    NA                0.0701754   0.0318781   0.1084728
24 months   ki1101329-Keneba     2                    NA                0.1077844   0.0607378   0.1548311
24 months   ki1101329-Keneba     3                    NA                0.0705882   0.0320741   0.1091023
24 months   ki1101329-Keneba     4                    NA                0.0789474   0.0294328   0.1284619
24 months   ki1101329-Keneba     5                    NA                0.0409836   0.0057942   0.0761730
24 months   ki1101329-Keneba     6                    NA                0.0652174   0.0147493   0.1156855
24 months   ki1101329-Keneba     7                    NA                0.0617284   0.0093034   0.1141534
24 months   ki1101329-Keneba     8                    NA                0.0569620   0.0208125   0.0931116
24 months   ki1101329-Keneba     9                    NA                0.1006289   0.0538547   0.1474031
24 months   ki1101329-Keneba     10                   NA                0.0650000   0.0308240   0.0991760
24 months   ki1101329-Keneba     11                   NA                0.0992908   0.0499153   0.1486662
24 months   ki1101329-Keneba     12                   NA                0.1200000   0.0679812   0.1720188
24 months   ki1114097-CMIN       1                    NA                0.1609195   0.0836742   0.2381649
24 months   ki1114097-CMIN       2                    NA                0.1153846   0.0539575   0.1768118
24 months   ki1114097-CMIN       3                    NA                0.0650407   0.0214431   0.1086382
24 months   ki1114097-CMIN       4                    NA                0.1666667   0.0999600   0.2333733
24 months   ki1114097-CMIN       5                    NA                0.0744681   0.0213744   0.1275618
24 months   ki1114097-CMIN       6                    NA                0.1038961   0.0357157   0.1720765
24 months   ki1114097-CMIN       7                    NA                0.0937500   0.0354189   0.1520811
24 months   ki1114097-CMIN       8                    NA                0.1683168   0.0953193   0.2413143
24 months   ki1114097-CMIN       9                    NA                0.0806452   0.0326999   0.1285904
24 months   ki1114097-CMIN       10                   NA                0.1754386   0.1055916   0.2452856
24 months   ki1114097-CMIN       11                   NA                0.1500000   0.0799866   0.2200134
24 months   ki1114097-CMIN       12                   NA                0.1585366   0.0794503   0.2376229


### Parameter: E(Y)


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1126311-ZVITAMBO   NA                   NA                0.0501982   0.0494017   0.0509946
9 months    ki1101329-Keneba     NA                   NA                0.0474117   0.0467503   0.0480731
12 months   ki1101329-Keneba     NA                   NA                0.0657084   0.0649443   0.0664726
12 months   ki1114097-CMIN       NA                   NA                0.0722433   0.0710765   0.0734102
18 months   ki0047075b-MAL-ED    NA                   NA                0.1196636   0.1185215   0.1208058
18 months   ki1101329-Keneba     NA                   NA                0.0878835   0.0870396   0.0887274
18 months   ki1114097-CMIN       NA                   NA                0.1134796   0.1123313   0.1146279
24 months   ki0047075b-MAL-ED    NA                   NA                0.1155138   0.1140896   0.1169379
24 months   ki1101329-Keneba     NA                   NA                0.0794203   0.0783530   0.0804876
24 months   ki1114097-CMIN       NA                   NA                0.1252046   0.1229249   0.1274843


### Parameter: RR


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1126311-ZVITAMBO   2                    1                 1.8850000   0.8473256   4.1934589
3 months    ki1126311-ZVITAMBO   3                    1                 1.3920000   0.6144312   3.1535898
3 months    ki1126311-ZVITAMBO   4                    1                 1.2888889   0.5482425   3.0301092
3 months    ki1126311-ZVITAMBO   5                    1                 1.1113772   0.4480873   2.7565148
3 months    ki1126311-ZVITAMBO   6                    1                 2.2095238   1.0448030   4.6726467
3 months    ki1126311-ZVITAMBO   7                    1                 0.8838095   0.3554144   2.1977706
3 months    ki1126311-ZVITAMBO   8                    1                 1.1981221   0.5192566   2.7645226
3 months    ki1126311-ZVITAMBO   9                    1                 0.7175258   0.2654942   1.9391880
3 months    ki1126311-ZVITAMBO   10                   1                 1.0235294   0.3803357   2.7544415
3 months    ki1126311-ZVITAMBO   11                   1                 0.8972376   0.3482748   2.3114947
3 months    ki1126311-ZVITAMBO   12                   1                 0.5550239   0.1928013   1.5977673
9 months    ki1101329-Keneba     2                    1                 1.6195569   0.6289327   4.1705014
9 months    ki1101329-Keneba     3                    1                 1.4021164   0.5436996   3.6158392
9 months    ki1101329-Keneba     4                    1                 1.1216931   0.3632745   3.4634837
9 months    ki1101329-Keneba     5                    1                 1.3167702   0.4519338   3.8365878
9 months    ki1101329-Keneba     6                    1                 2.0190476   0.7270038   5.6073341
9 months    ki1101329-Keneba     7                    1                 3.0903790   1.2120686   7.8794567
9 months    ki1101329-Keneba     8                    1                 1.4813665   0.5626734   3.9000360
9 months    ki1101329-Keneba     9                    1                 1.0324675   0.3533636   3.0166918
9 months    ki1101329-Keneba     10                   1                 1.6336692   0.6639757   4.0195376
9 months    ki1101329-Keneba     11                   1                 1.4576012   0.5535508   3.8381328
9 months    ki1101329-Keneba     12                   1                 0.9665653   0.3305936   2.8259727
12 months   ki1101329-Keneba     2                    1                 0.6990871   0.3337267   1.4644401
12 months   ki1101329-Keneba     3                    1                 0.4081832   0.1718657   0.9694402
12 months   ki1101329-Keneba     4                    1                 0.6753731   0.2977595   1.5318699
12 months   ki1101329-Keneba     5                    1                 0.4883094   0.1961467   1.2156515
12 months   ki1101329-Keneba     6                    1                 0.7669492   0.3389387   1.7354495
12 months   ki1101329-Keneba     7                    1                 1.1543367   0.5446875   2.4463445
12 months   ki1101329-Keneba     8                    1                 0.5988971   0.2719234   1.3190394
12 months   ki1101329-Keneba     9                    1                 0.8998580   0.4528008   1.7883016
12 months   ki1101329-Keneba     10                   1                 0.7038889   0.3529697   1.4036887
12 months   ki1101329-Keneba     11                   1                 0.9154624   0.4607798   1.8188110
12 months   ki1101329-Keneba     12                   1                 0.7681327   0.3672170   1.6067553
12 months   ki1114097-CMIN       2                    1                 0.3543308   0.1302636   0.9638173
12 months   ki1114097-CMIN       3                    1                 0.4390244   0.1879354   1.0255781
12 months   ki1114097-CMIN       4                    1                 0.5255474   0.2255880   1.2243565
12 months   ki1114097-CMIN       5                    1                 0.3750000   0.1379840   1.0191401
12 months   ki1114097-CMIN       6                    1                 0.6605505   0.2847510   1.5323103
12 months   ki1114097-CMIN       7                    1                 0.6153846   0.2649014   1.4295820
12 months   ki1114097-CMIN       8                    1                 0.7152318   0.3389370   1.5092965
12 months   ki1114097-CMIN       9                    1                 0.7012987   0.3322241   1.4803860
12 months   ki1114097-CMIN       10                   1                 1.0774648   0.5460739   2.1259583
12 months   ki1114097-CMIN       11                   1                 0.6428571   0.2769683   1.4921033
12 months   ki1114097-CMIN       12                   1                 0.7031250   0.3205123   1.5424830
18 months   ki0047075b-MAL-ED    2                    1                 0.9210526   0.4876112   1.7397835
18 months   ki0047075b-MAL-ED    3                    1                 0.8929527   0.4598308   1.7340390
18 months   ki0047075b-MAL-ED    4                    1                 0.9726316   0.4938993   1.9153947
18 months   ki0047075b-MAL-ED    5                    1                 0.8607359   0.4356587   1.7005659
18 months   ki0047075b-MAL-ED    6                    1                 0.6420010   0.2921668   1.4107195
18 months   ki0047075b-MAL-ED    7                    1                 1.3607376   0.7753139   2.3882029
18 months   ki0047075b-MAL-ED    8                    1                 1.0041919   0.5260965   1.9167613
18 months   ki0047075b-MAL-ED    9                    1                 0.8163574   0.4255982   1.5658889
18 months   ki0047075b-MAL-ED    10                   1                 1.2828474   0.7257868   2.2674669
18 months   ki0047075b-MAL-ED    11                   1                 0.9125131   0.4934281   1.6875409
18 months   ki0047075b-MAL-ED    12                   1                 0.8703638   0.4654346   1.6275824
18 months   ki1101329-Keneba     2                    1                 1.7191011   0.8516250   3.4701996
18 months   ki1101329-Keneba     3                    1                 1.6069652   0.8010802   3.2235688
18 months   ki1101329-Keneba     4                    1                 1.2500000   0.5555813   2.8123697
18 months   ki1101329-Keneba     5                    1                 1.6370370   0.7701373   3.4797564
18 months   ki1101329-Keneba     6                    1                 2.2972973   1.1146157   4.7348827
18 months   ki1101329-Keneba     7                    1                 2.1011236   0.9636199   4.5813918
18 months   ki1101329-Keneba     8                    1                 1.3246753   0.6118018   2.8681913
18 months   ki1101329-Keneba     9                    1                 1.2142857   0.5600646   2.6327139
18 months   ki1101329-Keneba     10                   1                 1.3894231   0.6807280   2.8359293
18 months   ki1101329-Keneba     11                   1                 1.5740741   0.7580138   3.2686863
18 months   ki1101329-Keneba     12                   1                 1.4406780   0.6928224   2.9957938
18 months   ki1114097-CMIN       2                    1                 0.7193878   0.3869340   1.3374859
18 months   ki1114097-CMIN       3                    1                 0.5556650   0.2841916   1.0864627
18 months   ki1114097-CMIN       4                    1                 0.7230769   0.3839256   1.3618271
18 months   ki1114097-CMIN       5                    1                 0.6456044   0.3176075   1.3123273
18 months   ki1114097-CMIN       6                    1                 0.6394558   0.2965380   1.3789250
18 months   ki1114097-CMIN       7                    1                 0.4196429   0.1758621   1.0013533
18 months   ki1114097-CMIN       8                    1                 0.8095238   0.4462768   1.4684357
18 months   ki1114097-CMIN       9                    1                 0.7993197   0.4519591   1.4136502
18 months   ki1114097-CMIN       10                   1                 1.0051326   0.5885145   1.7166809
18 months   ki1114097-CMIN       11                   1                 0.8138528   0.4441026   1.4914491
18 months   ki1114097-CMIN       12                   1                 0.7764820   0.4276620   1.4098150
24 months   ki0047075b-MAL-ED    2                    1                 1.1317829   0.6381642   2.0072150
24 months   ki0047075b-MAL-ED    3                    1                 1.0068966   0.5467006   1.8544714
24 months   ki0047075b-MAL-ED    4                    1                 0.6915789   0.3288682   1.4543256
24 months   ki0047075b-MAL-ED    5                    1                 0.8627273   0.4489606   1.6578256
24 months   ki0047075b-MAL-ED    6                    1                 0.3882979   0.1508626   0.9994207
24 months   ki0047075b-MAL-ED    7                    1                 0.7984375   0.4207420   1.5151863
24 months   ki0047075b-MAL-ED    8                    1                 0.9207207   0.4869296   1.7409633
24 months   ki0047075b-MAL-ED    9                    1                 0.5367647   0.2606180   1.1055120
24 months   ki0047075b-MAL-ED    10                   1                 0.8716418   0.4715467   1.6112070
24 months   ki0047075b-MAL-ED    11                   1                 1.0572414   0.5992058   1.8654015
24 months   ki0047075b-MAL-ED    12                   1                 0.7048276   0.3703965   1.3412165
24 months   ki1101329-Keneba     2                    1                 1.5359281   0.7636187   3.0893368
24 months   ki1101329-Keneba     3                    1                 1.0058824   0.4649438   2.1761756
24 months   ki1101329-Keneba     4                    1                 1.1250000   0.4898799   2.5835412
24 months   ki1101329-Keneba     5                    1                 0.5840165   0.2111459   1.6153529
24 months   ki1101329-Keneba     6                    1                 0.9293478   0.3605242   2.3956430
24 months   ki1101329-Keneba     7                    1                 0.8796296   0.3205343   2.4139332
24 months   ki1101329-Keneba     8                    1                 0.8117089   0.3514741   1.8745943
24 months   ki1101329-Keneba     9                    1                 1.4339623   0.7001807   2.9367389
24 months   ki1101329-Keneba     10                   1                 0.9262500   0.4341248   1.9762500
24 months   ki1101329-Keneba     11                   1                 1.4148936   0.6761996   2.9605519
24 months   ki1101329-Keneba     12                   1                 1.7100000   0.8517524   3.4330399
24 months   ki1114097-CMIN       2                    1                 0.7170330   0.3501268   1.4684288
24 months   ki1114097-CMIN       3                    1                 0.4041812   0.1772211   0.9217999
24 months   ki1114097-CMIN       4                    1                 1.0357143   0.5543821   1.9349546
24 months   ki1114097-CMIN       5                    1                 0.4627660   0.1959215   1.0930518
24 months   ki1114097-CMIN       6                    1                 0.6456401   0.2863401   1.4557900
24 months   ki1114097-CMIN       7                    1                 0.5825893   0.2655057   1.2783540
24 months   ki1114097-CMIN       8                    1                 1.0459689   0.5477254   1.9974440
24 months   ki1114097-CMIN       9                    1                 0.5011521   0.2334084   1.0760257
24 months   ki1114097-CMIN       10                   1                 1.0902256   0.5843487   2.0340455
24 months   ki1114097-CMIN       11                   1                 0.9321429   0.4772046   1.8207918
24 months   ki1114097-CMIN       12                   1                 0.9851916   0.4930141   1.9687117


### Parameter: PAR


agecat      studyid              intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1126311-ZVITAMBO   1                    NA                 0.0070947   -0.0190564   0.0332458
9 months    ki1101329-Keneba     1                    NA                 0.0143928   -0.0096751   0.0384608
12 months   ki1101329-Keneba     1                    NA                -0.0226894   -0.0640624   0.0186837
12 months   ki1114097-CMIN       1                    NA                -0.0388678   -0.0958430   0.0181075
18 months   ki0047075b-MAL-ED    1                    NA                -0.0037130   -0.0556834   0.0482574
18 months   ki1101329-Keneba     1                    NA                 0.0290600   -0.0032477   0.0613676
18 months   ki1114097-CMIN       1                    NA                -0.0354565   -0.0942513   0.0233382
24 months   ki0047075b-MAL-ED    1                    NA                -0.0214725   -0.0772818   0.0343367
24 months   ki1101329-Keneba     1                    NA                 0.0092449   -0.0290674   0.0475571
24 months   ki1114097-CMIN       1                    NA                -0.0357150   -0.1129940   0.0415640


### Parameter: PAF


agecat      studyid              intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1126311-ZVITAMBO   1                    NA                 0.1413339   -0.5750013   0.5318687
9 months    ki1101329-Keneba     1                    NA                 0.3035714   -0.4433744   0.6639730
12 months   ki1101329-Keneba     1                    NA                -0.3453038   -1.1483872   0.1575809
12 months   ki1114097-CMIN       1                    NA                -0.5380117   -1.5687380   0.0791276
18 months   ki0047075b-MAL-ED    1                    NA                -0.0310284   -0.5711330   0.3234057
18 months   ki1101329-Keneba     1                    NA                 0.3306648   -0.1591143   0.6134897
18 months   ki1114097-CMIN       1                    NA                -0.3124486   -0.9478259   0.1156698
24 months   ki0047075b-MAL-ED    1                    NA                -0.1858872   -0.7823859   0.2109854
24 months   ki1101329-Keneba     1                    NA                 0.1164042   -0.5252336   0.4881167
24 months   ki1114097-CMIN       1                    NA                -0.2852528   -1.0778327   0.2050011


