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

**Intervention Variable:** month

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
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1000109-ResPak
* agecat: Birth, studyid: ki1017093-NIH-Birth
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
![](/tmp/253ac751-4f1f-4bb0-8363-e86ec6a0b935/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/253ac751-4f1f-4bb0-8363-e86ec6a0b935/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/253ac751-4f1f-4bb0-8363-e86ec6a0b935/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/253ac751-4f1f-4bb0-8363-e86ec6a0b935/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n    nA   nAY0   nAY1
----------  -------------------------  ---  -----  ----  -----  -----
Birth       ki0047075b-MAL-ED          1     1499   136    131      5
Birth       ki0047075b-MAL-ED          2     1499   130    126      4
Birth       ki0047075b-MAL-ED          3     1499   125    124      1
Birth       ki0047075b-MAL-ED          4     1499    97     95      2
Birth       ki0047075b-MAL-ED          5     1499   111    106      5
Birth       ki0047075b-MAL-ED          6     1499    94     93      1
Birth       ki0047075b-MAL-ED          7     1499   136    132      4
Birth       ki0047075b-MAL-ED          8     1499   110    106      4
Birth       ki0047075b-MAL-ED          9     1499   137    129      8
Birth       ki0047075b-MAL-ED          10    1499   143    137      6
Birth       ki0047075b-MAL-ED          11    1499   139    136      3
Birth       ki0047075b-MAL-ED          12    1499   141    138      3
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
Birth       ki1000108-IRC              1      388    34     31      3
Birth       ki1000108-IRC              2      388    25     24      1
Birth       ki1000108-IRC              3      388    27     27      0
Birth       ki1000108-IRC              4      388    22     22      0
Birth       ki1000108-IRC              5      388    21     20      1
Birth       ki1000108-IRC              6      388    34     31      3
Birth       ki1000108-IRC              7      388    35     34      1
Birth       ki1000108-IRC              8      388    39     39      0
Birth       ki1000108-IRC              9      388    25     24      1
Birth       ki1000108-IRC              10     388    37     35      2
Birth       ki1000108-IRC              11     388    40     39      1
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
Birth       ki1000109-ResPak           5        7     1      1      0
Birth       ki1000109-ResPak           6        7     2      2      0
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
Birth       ki1017093-NIH-Birth        1       28    10     10      0
Birth       ki1017093-NIH-Birth        2       28     4      4      0
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
Birth       ki1126311-ZVITAMBO         1     3443   342    324     18
Birth       ki1126311-ZVITAMBO         2     3443   255    249      6
Birth       ki1126311-ZVITAMBO         3     3443   277    263     14
Birth       ki1126311-ZVITAMBO         4     3443   257    246     11
Birth       ki1126311-ZVITAMBO         5     3443   246    241      5
Birth       ki1126311-ZVITAMBO         6     3443   281    267     14
Birth       ki1126311-ZVITAMBO         7     3443   303    290     13
Birth       ki1126311-ZVITAMBO         8     3443   311    307      4
Birth       ki1126311-ZVITAMBO         9     3443   322    317      5
Birth       ki1126311-ZVITAMBO         10    3443   257    248      9
Birth       ki1126311-ZVITAMBO         11    3443   282    274      8
Birth       ki1126311-ZVITAMBO         12    3443   310    305      5
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
3 months    ki0047075b-MAL-ED          1     1778   173    163     10
3 months    ki0047075b-MAL-ED          2     1778   161    158      3
3 months    ki0047075b-MAL-ED          3     1778   139    135      4
3 months    ki0047075b-MAL-ED          4     1778   110    108      2
3 months    ki0047075b-MAL-ED          5     1778   131    121     10
3 months    ki0047075b-MAL-ED          6     1778   111    109      2
3 months    ki0047075b-MAL-ED          7     1778   153    147      6
3 months    ki0047075b-MAL-ED          8     1778   133    128      5
3 months    ki0047075b-MAL-ED          9     1778   156    151      5
3 months    ki0047075b-MAL-ED          10    1778   168    161      7
3 months    ki0047075b-MAL-ED          11    1778   168    162      6
3 months    ki0047075b-MAL-ED          12    1778   175    169      6
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
3 months    ki1000108-IRC              1      407    34     28      6
3 months    ki1000108-IRC              2      407    27     22      5
3 months    ki1000108-IRC              3      407    29     27      2
3 months    ki1000108-IRC              4      407    22     20      2
3 months    ki1000108-IRC              5      407    21     17      4
3 months    ki1000108-IRC              6      407    37     37      0
3 months    ki1000108-IRC              7      407    36     35      1
3 months    ki1000108-IRC              8      407    44     44      0
3 months    ki1000108-IRC              9      407    27     24      3
3 months    ki1000108-IRC              10     407    37     35      2
3 months    ki1000108-IRC              11     407    41     37      4
3 months    ki1000108-IRC              12     407    52     45      7
3 months    ki1000109-EE               1      376    94     60     34
3 months    ki1000109-EE               2      376    65     49     16
3 months    ki1000109-EE               3      376    42     33      9
3 months    ki1000109-EE               4      376    16      9      7
3 months    ki1000109-EE               5      376     0      0      0
3 months    ki1000109-EE               6      376     0      0      0
3 months    ki1000109-EE               7      376     0      0      0
3 months    ki1000109-EE               8      376     0      0      0
3 months    ki1000109-EE               9      376     0      0      0
3 months    ki1000109-EE               10     376     4      3      1
3 months    ki1000109-EE               11     376    70     41     29
3 months    ki1000109-EE               12     376    85     59     26
3 months    ki1000109-ResPak           1      260     9      8      1
3 months    ki1000109-ResPak           2      260    11     11      0
3 months    ki1000109-ResPak           3      260    17     10      7
3 months    ki1000109-ResPak           4      260    31     25      6
3 months    ki1000109-ResPak           5      260    35     27      8
3 months    ki1000109-ResPak           6      260    49     37     12
3 months    ki1000109-ResPak           7      260    35     29      6
3 months    ki1000109-ResPak           8      260    35     28      7
3 months    ki1000109-ResPak           9      260    24     19      5
3 months    ki1000109-ResPak           10     260     8      8      0
3 months    ki1000109-ResPak           11     260     4      2      2
3 months    ki1000109-ResPak           12     260     2      1      1
3 months    ki1000304b-SAS-FoodSuppl   1       97    14     11      3
3 months    ki1000304b-SAS-FoodSuppl   2       97     9      7      2
3 months    ki1000304b-SAS-FoodSuppl   3       97     9      6      3
3 months    ki1000304b-SAS-FoodSuppl   4       97     7      6      1
3 months    ki1000304b-SAS-FoodSuppl   5       97     8      7      1
3 months    ki1000304b-SAS-FoodSuppl   6       97     8      8      0
3 months    ki1000304b-SAS-FoodSuppl   7       97     5      5      0
3 months    ki1000304b-SAS-FoodSuppl   8       97     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   9       97     3      2      1
3 months    ki1000304b-SAS-FoodSuppl   10      97     6      5      1
3 months    ki1000304b-SAS-FoodSuppl   11      97    12     12      0
3 months    ki1000304b-SAS-FoodSuppl   12      97    16     15      1
3 months    ki1017093-NIH-Birth        1      570    60     55      5
3 months    ki1017093-NIH-Birth        2      570    52     50      2
3 months    ki1017093-NIH-Birth        3      570    52     49      3
3 months    ki1017093-NIH-Birth        4      570    48     45      3
3 months    ki1017093-NIH-Birth        5      570    44     41      3
3 months    ki1017093-NIH-Birth        6      570    41     38      3
3 months    ki1017093-NIH-Birth        7      570    43     42      1
3 months    ki1017093-NIH-Birth        8      570    40     36      4
3 months    ki1017093-NIH-Birth        9      570    30     29      1
3 months    ki1017093-NIH-Birth        10     570    56     52      4
3 months    ki1017093-NIH-Birth        11     570    52     50      2
3 months    ki1017093-NIH-Birth        12     570    52     50      2
3 months    ki1066203-TanzaniaChild2   1      575    43     42      1
3 months    ki1066203-TanzaniaChild2   2      575    39     39      0
3 months    ki1066203-TanzaniaChild2   3      575    39     38      1
3 months    ki1066203-TanzaniaChild2   4      575    49     49      0
3 months    ki1066203-TanzaniaChild2   5      575    43     42      1
3 months    ki1066203-TanzaniaChild2   6      575    40     39      1
3 months    ki1066203-TanzaniaChild2   7      575    46     46      0
3 months    ki1066203-TanzaniaChild2   8      575    61     60      1
3 months    ki1066203-TanzaniaChild2   9      575    46     46      0
3 months    ki1066203-TanzaniaChild2   10     575    63     60      3
3 months    ki1066203-TanzaniaChild2   11     575    54     54      0
3 months    ki1066203-TanzaniaChild2   12     575    52     50      2
3 months    ki1112895-Guatemala BSC    1        6     0      0      0
3 months    ki1112895-Guatemala BSC    2        6     0      0      0
3 months    ki1112895-Guatemala BSC    3        6     1      0      1
3 months    ki1112895-Guatemala BSC    4        6     1      1      0
3 months    ki1112895-Guatemala BSC    5        6     1      1      0
3 months    ki1112895-Guatemala BSC    6        6     0      0      0
3 months    ki1112895-Guatemala BSC    7        6     0      0      0
3 months    ki1112895-Guatemala BSC    8        6     1      1      0
3 months    ki1112895-Guatemala BSC    9        6     0      0      0
3 months    ki1112895-Guatemala BSC    10       6     1      1      0
3 months    ki1112895-Guatemala BSC    11       6     0      0      0
3 months    ki1112895-Guatemala BSC    12       6     1      0      1
3 months    ki1113344-GMS-Nepal        1      571     0      0      0
3 months    ki1113344-GMS-Nepal        2      571     0      0      0
3 months    ki1113344-GMS-Nepal        3      571     0      0      0
3 months    ki1113344-GMS-Nepal        4      571     0      0      0
3 months    ki1113344-GMS-Nepal        5      571     0      0      0
3 months    ki1113344-GMS-Nepal        6      571   103    100      3
3 months    ki1113344-GMS-Nepal        7      571   220    209     11
3 months    ki1113344-GMS-Nepal        8      571   231    223      8
3 months    ki1113344-GMS-Nepal        9      571    15     15      0
3 months    ki1113344-GMS-Nepal        10     571     2      2      0
3 months    ki1113344-GMS-Nepal        11     571     0      0      0
3 months    ki1113344-GMS-Nepal        12     571     0      0      0
3 months    ki1114097-CMIN             1     1485   134    131      3
3 months    ki1114097-CMIN             2     1485   126    120      6
3 months    ki1114097-CMIN             3     1485   116    111      5
3 months    ki1114097-CMIN             4     1485   169    164      5
3 months    ki1114097-CMIN             5     1485   128    124      4
3 months    ki1114097-CMIN             6     1485   111    106      5
3 months    ki1114097-CMIN             7     1485    90     85      5
3 months    ki1114097-CMIN             8     1485    95     90      5
3 months    ki1114097-CMIN             9     1485   135    132      3
3 months    ki1114097-CMIN             10    1485    94     90      4
3 months    ki1114097-CMIN             11    1485   156    148      8
3 months    ki1114097-CMIN             12    1485   131    122      9
3 months    ki1114097-CONTENT          1      215     9      9      0
3 months    ki1114097-CONTENT          2      215    16     16      0
3 months    ki1114097-CONTENT          3      215    30     30      0
3 months    ki1114097-CONTENT          4      215    12     12      0
3 months    ki1114097-CONTENT          5      215    25     25      0
3 months    ki1114097-CONTENT          6      215    14     13      1
3 months    ki1114097-CONTENT          7      215    24     24      0
3 months    ki1114097-CONTENT          8      215    18     17      1
3 months    ki1114097-CONTENT          9      215    20     19      1
3 months    ki1114097-CONTENT          10     215    24     24      0
3 months    ki1114097-CONTENT          11     215    18     18      0
3 months    ki1114097-CONTENT          12     215     5      5      0
3 months    ki1126311-ZVITAMBO         1     2266   235    225     10
3 months    ki1126311-ZVITAMBO         2     2266   155    142     13
3 months    ki1126311-ZVITAMBO         3     2266   197    185     12
3 months    ki1126311-ZVITAMBO         4     2266   182    172     10
3 months    ki1126311-ZVITAMBO         5     2266   163    155      8
3 months    ki1126311-ZVITAMBO         6     2266   190    172     18
3 months    ki1126311-ZVITAMBO         7     2266   208    200      8
3 months    ki1126311-ZVITAMBO         8     2266   214    203     11
3 months    ki1126311-ZVITAMBO         9     2266   196    190      6
3 months    ki1126311-ZVITAMBO         10    2266   138    132      6
3 months    ki1126311-ZVITAMBO         11    2266   170    164      6
3 months    ki1126311-ZVITAMBO         12    2266   218    212      6
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
6 months    ki0047075b-MAL-ED          1     1696   164    157      7
6 months    ki0047075b-MAL-ED          2     1696   153    149      4
6 months    ki0047075b-MAL-ED          3     1696   136    132      4
6 months    ki0047075b-MAL-ED          4     1696   110    109      1
6 months    ki0047075b-MAL-ED          5     1696   121    118      3
6 months    ki0047075b-MAL-ED          6     1696   109    108      1
6 months    ki0047075b-MAL-ED          7     1696   147    141      6
6 months    ki0047075b-MAL-ED          8     1696   121    116      5
6 months    ki0047075b-MAL-ED          9     1696   149    148      1
6 months    ki0047075b-MAL-ED          10    1696   157    149      8
6 months    ki0047075b-MAL-ED          11    1696   165    158      7
6 months    ki0047075b-MAL-ED          12    1696   164    161      3
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
6 months    ki1000108-IRC              1      407    36     32      4
6 months    ki1000108-IRC              2      407    27     23      4
6 months    ki1000108-IRC              3      407    29     28      1
6 months    ki1000108-IRC              4      407    22     18      4
6 months    ki1000108-IRC              5      407    20     17      3
6 months    ki1000108-IRC              6      407    37     36      1
6 months    ki1000108-IRC              7      407    36     35      1
6 months    ki1000108-IRC              8      407    45     44      1
6 months    ki1000108-IRC              9      407    27     26      1
6 months    ki1000108-IRC              10     407    36     36      0
6 months    ki1000108-IRC              11     407    41     36      5
6 months    ki1000108-IRC              12     407    51     47      4
6 months    ki1000109-EE               1      372    90     62     28
6 months    ki1000109-EE               2      372    66     52     14
6 months    ki1000109-EE               3      372    43     37      6
6 months    ki1000109-EE               4      372    16     11      5
6 months    ki1000109-EE               5      372     0      0      0
6 months    ki1000109-EE               6      372     0      0      0
6 months    ki1000109-EE               7      372     0      0      0
6 months    ki1000109-EE               8      372     0      0      0
6 months    ki1000109-EE               9      372     0      0      0
6 months    ki1000109-EE               10     372     4      3      1
6 months    ki1000109-EE               11     372    70     49     21
6 months    ki1000109-EE               12     372    83     64     19
6 months    ki1000109-ResPak           1      235     8      7      1
6 months    ki1000109-ResPak           2      235    12     12      0
6 months    ki1000109-ResPak           3      235    16      8      8
6 months    ki1000109-ResPak           4      235    26     20      6
6 months    ki1000109-ResPak           5      235    32     25      7
6 months    ki1000109-ResPak           6      235    48     39      9
6 months    ki1000109-ResPak           7      235    28     26      2
6 months    ki1000109-ResPak           8      235    33     26      7
6 months    ki1000109-ResPak           9      235    22     19      3
6 months    ki1000109-ResPak           10     235     7      7      0
6 months    ki1000109-ResPak           11     235     1      1      0
6 months    ki1000109-ResPak           12     235     2      1      1
6 months    ki1000304b-SAS-FoodSuppl   1       96    15     11      4
6 months    ki1000304b-SAS-FoodSuppl   2       96     9      9      0
6 months    ki1000304b-SAS-FoodSuppl   3       96     9      5      4
6 months    ki1000304b-SAS-FoodSuppl   4       96     7      6      1
6 months    ki1000304b-SAS-FoodSuppl   5       96     7      5      2
6 months    ki1000304b-SAS-FoodSuppl   6       96     9      7      2
6 months    ki1000304b-SAS-FoodSuppl   7       96     5      5      0
6 months    ki1000304b-SAS-FoodSuppl   8       96     0      0      0
6 months    ki1000304b-SAS-FoodSuppl   9       96     4      4      0
6 months    ki1000304b-SAS-FoodSuppl   10      96     6      5      1
6 months    ki1000304b-SAS-FoodSuppl   11      96    10     10      0
6 months    ki1000304b-SAS-FoodSuppl   12      96    15     14      1
6 months    ki1017093-NIH-Birth        1      537    50     46      4
6 months    ki1017093-NIH-Birth        2      537    50     47      3
6 months    ki1017093-NIH-Birth        3      537    50     46      4
6 months    ki1017093-NIH-Birth        4      537    44     42      2
6 months    ki1017093-NIH-Birth        5      537    40     39      1
6 months    ki1017093-NIH-Birth        6      537    39     35      4
6 months    ki1017093-NIH-Birth        7      537    45     42      3
6 months    ki1017093-NIH-Birth        8      537    38     36      2
6 months    ki1017093-NIH-Birth        9      537    30     28      2
6 months    ki1017093-NIH-Birth        10     537    52     48      4
6 months    ki1017093-NIH-Birth        11     537    49     44      5
6 months    ki1017093-NIH-Birth        12     537    50     49      1
6 months    ki1066203-TanzaniaChild2   1      504    36     34      2
6 months    ki1066203-TanzaniaChild2   2      504    31     31      0
6 months    ki1066203-TanzaniaChild2   3      504    32     31      1
6 months    ki1066203-TanzaniaChild2   4      504    40     40      0
6 months    ki1066203-TanzaniaChild2   5      504    38     37      1
6 months    ki1066203-TanzaniaChild2   6      504    36     36      0
6 months    ki1066203-TanzaniaChild2   7      504    43     43      0
6 months    ki1066203-TanzaniaChild2   8      504    57     57      0
6 months    ki1066203-TanzaniaChild2   9      504    40     39      1
6 months    ki1066203-TanzaniaChild2   10     504    55     53      2
6 months    ki1066203-TanzaniaChild2   11     504    49     49      0
6 months    ki1066203-TanzaniaChild2   12     504    47     47      0
6 months    ki1112895-Guatemala BSC    1      106     9      9      0
6 months    ki1112895-Guatemala BSC    2      106     7      7      0
6 months    ki1112895-Guatemala BSC    3      106     5      5      0
6 months    ki1112895-Guatemala BSC    4      106    11     10      1
6 months    ki1112895-Guatemala BSC    5      106    12     12      0
6 months    ki1112895-Guatemala BSC    6      106    12      9      3
6 months    ki1112895-Guatemala BSC    7      106     7      6      1
6 months    ki1112895-Guatemala BSC    8      106     6      6      0
6 months    ki1112895-Guatemala BSC    9      106    11     11      0
6 months    ki1112895-Guatemala BSC    10     106    11      9      2
6 months    ki1112895-Guatemala BSC    11     106    13     11      2
6 months    ki1112895-Guatemala BSC    12     106     2      1      1
6 months    ki1113344-GMS-Nepal        1      563     0      0      0
6 months    ki1113344-GMS-Nepal        2      563     0      0      0
6 months    ki1113344-GMS-Nepal        3      563     0      0      0
6 months    ki1113344-GMS-Nepal        4      563     0      0      0
6 months    ki1113344-GMS-Nepal        5      563     0      0      0
6 months    ki1113344-GMS-Nepal        6      563   104    100      4
6 months    ki1113344-GMS-Nepal        7      563   216    208      8
6 months    ki1113344-GMS-Nepal        8      563   226    218      8
6 months    ki1113344-GMS-Nepal        9      563    15     15      0
6 months    ki1113344-GMS-Nepal        10     563     2      2      0
6 months    ki1113344-GMS-Nepal        11     563     0      0      0
6 months    ki1113344-GMS-Nepal        12     563     0      0      0
6 months    ki1114097-CMIN             1     1836   158    155      3
6 months    ki1114097-CMIN             2     1836   142    136      6
6 months    ki1114097-CMIN             3     1836   155    149      6
6 months    ki1114097-CMIN             4     1836   243    239      4
6 months    ki1114097-CMIN             5     1836   175    173      2
6 months    ki1114097-CMIN             6     1836   147    144      3
6 months    ki1114097-CMIN             7     1836   111    106      5
6 months    ki1114097-CMIN             8     1836   113    106      7
6 months    ki1114097-CMIN             9     1836   162    157      5
6 months    ki1114097-CMIN             10    1836   127    124      3
6 months    ki1114097-CMIN             11    1836   166    158      8
6 months    ki1114097-CMIN             12    1836   137    132      5
6 months    ki1114097-CONTENT          1      215     9      9      0
6 months    ki1114097-CONTENT          2      215    16     16      0
6 months    ki1114097-CONTENT          3      215    30     30      0
6 months    ki1114097-CONTENT          4      215    12     12      0
6 months    ki1114097-CONTENT          5      215    25     24      1
6 months    ki1114097-CONTENT          6      215    14     13      1
6 months    ki1114097-CONTENT          7      215    24     24      0
6 months    ki1114097-CONTENT          8      215    18     17      1
6 months    ki1114097-CONTENT          9      215    20     19      1
6 months    ki1114097-CONTENT          10     215    24     24      0
6 months    ki1114097-CONTENT          11     215    18     18      0
6 months    ki1114097-CONTENT          12     215     5      5      0
6 months    ki1126311-ZVITAMBO         1     2048   220    214      6
6 months    ki1126311-ZVITAMBO         2     2048   133    127      6
6 months    ki1126311-ZVITAMBO         3     2048   179    168     11
6 months    ki1126311-ZVITAMBO         4     2048   165    158      7
6 months    ki1126311-ZVITAMBO         5     2048   142    138      4
6 months    ki1126311-ZVITAMBO         6     2048   155    151      4
6 months    ki1126311-ZVITAMBO         7     2048   165    153     12
6 months    ki1126311-ZVITAMBO         8     2048   169    165      4
6 months    ki1126311-ZVITAMBO         9     2048   187    186      1
6 months    ki1126311-ZVITAMBO         10    2048   138    133      5
6 months    ki1126311-ZVITAMBO         11    2048   187    182      5
6 months    ki1126311-ZVITAMBO         12    2048   208    201      7
6 months    ki1148112-LCNI-5           1      417    27     27      0
6 months    ki1148112-LCNI-5           2      417    56     54      2
6 months    ki1148112-LCNI-5           3      417    49     43      6
6 months    ki1148112-LCNI-5           4      417    55     51      4
6 months    ki1148112-LCNI-5           5      417    52     49      3
6 months    ki1148112-LCNI-5           6      417    48     46      2
6 months    ki1148112-LCNI-5           7      417    38     34      4
6 months    ki1148112-LCNI-5           8      417    20     19      1
6 months    ki1148112-LCNI-5           9      417    13     13      0
6 months    ki1148112-LCNI-5           10     417    16     15      1
6 months    ki1148112-LCNI-5           11     417    25     21      4
6 months    ki1148112-LCNI-5           12     417    18     15      3
9 months    ki0047075b-MAL-ED          1     1640   158    150      8
9 months    ki0047075b-MAL-ED          2     1640   147    143      4
9 months    ki0047075b-MAL-ED          3     1640   132    126      6
9 months    ki0047075b-MAL-ED          4     1640   105    101      4
9 months    ki0047075b-MAL-ED          5     1640   117    114      3
9 months    ki0047075b-MAL-ED          6     1640   104    103      1
9 months    ki0047075b-MAL-ED          7     1640   143    137      6
9 months    ki0047075b-MAL-ED          8     1640   117    111      6
9 months    ki0047075b-MAL-ED          9     1640   145    141      4
9 months    ki0047075b-MAL-ED          10    1640   151    141     10
9 months    ki0047075b-MAL-ED          11    1640   160    149     11
9 months    ki0047075b-MAL-ED          12    1640   161    152      9
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
9 months    ki1000108-IRC              1      407    36     31      5
9 months    ki1000108-IRC              2      407    27     23      4
9 months    ki1000108-IRC              3      407    29     28      1
9 months    ki1000108-IRC              4      407    22     18      4
9 months    ki1000108-IRC              5      407    20     14      6
9 months    ki1000108-IRC              6      407    37     36      1
9 months    ki1000108-IRC              7      407    36     34      2
9 months    ki1000108-IRC              8      407    45     44      1
9 months    ki1000108-IRC              9      407    27     26      1
9 months    ki1000108-IRC              10     407    36     36      0
9 months    ki1000108-IRC              11     407    41     37      4
9 months    ki1000108-IRC              12     407    51     46      5
9 months    ki1000109-EE               1      366    90     63     27
9 months    ki1000109-EE               2      366    65     45     20
9 months    ki1000109-EE               3      366    42     33      9
9 months    ki1000109-EE               4      366    16      8      8
9 months    ki1000109-EE               5      366     0      0      0
9 months    ki1000109-EE               6      366     0      0      0
9 months    ki1000109-EE               7      366     0      0      0
9 months    ki1000109-EE               8      366     0      0      0
9 months    ki1000109-EE               9      366     0      0      0
9 months    ki1000109-EE               10     366     4      3      1
9 months    ki1000109-EE               11     366    68     53     15
9 months    ki1000109-EE               12     366    81     66     15
9 months    ki1000109-ResPak           1      211     8      5      3
9 months    ki1000109-ResPak           2      211     9      8      1
9 months    ki1000109-ResPak           3      211    13      9      4
9 months    ki1000109-ResPak           4      211    20     19      1
9 months    ki1000109-ResPak           5      211    33     27      6
9 months    ki1000109-ResPak           6      211    46     38      8
9 months    ki1000109-ResPak           7      211    19     18      1
9 months    ki1000109-ResPak           8      211    30     27      3
9 months    ki1000109-ResPak           9      211    22     17      5
9 months    ki1000109-ResPak           10     211     7      7      0
9 months    ki1000109-ResPak           11     211     2      1      1
9 months    ki1000109-ResPak           12     211     2      2      0
9 months    ki1000304b-SAS-FoodSuppl   1       85    12     10      2
9 months    ki1000304b-SAS-FoodSuppl   2       85     7      5      2
9 months    ki1000304b-SAS-FoodSuppl   3       85     7      4      3
9 months    ki1000304b-SAS-FoodSuppl   4       85     8      4      4
9 months    ki1000304b-SAS-FoodSuppl   5       85     7      5      2
9 months    ki1000304b-SAS-FoodSuppl   6       85     7      5      2
9 months    ki1000304b-SAS-FoodSuppl   7       85     5      5      0
9 months    ki1000304b-SAS-FoodSuppl   8       85     0      0      0
9 months    ki1000304b-SAS-FoodSuppl   9       85     4      4      0
9 months    ki1000304b-SAS-FoodSuppl   10      85     4      3      1
9 months    ki1000304b-SAS-FoodSuppl   11      85    10      9      1
9 months    ki1000304b-SAS-FoodSuppl   12      85    14     11      3
9 months    ki1017093-NIH-Birth        1      507    49     46      3
9 months    ki1017093-NIH-Birth        2      507    44     42      2
9 months    ki1017093-NIH-Birth        3      507    47     41      6
9 months    ki1017093-NIH-Birth        4      507    42     38      4
9 months    ki1017093-NIH-Birth        5      507    39     37      2
9 months    ki1017093-NIH-Birth        6      507    39     36      3
9 months    ki1017093-NIH-Birth        7      507    45     39      6
9 months    ki1017093-NIH-Birth        8      507    31     29      2
9 months    ki1017093-NIH-Birth        9      507    25     23      2
9 months    ki1017093-NIH-Birth        10     507    49     45      4
9 months    ki1017093-NIH-Birth        11     507    47     37     10
9 months    ki1017093-NIH-Birth        12     507    50     49      1
9 months    ki1066203-TanzaniaChild2   1      434    33     31      2
9 months    ki1066203-TanzaniaChild2   2      434    27     27      0
9 months    ki1066203-TanzaniaChild2   3      434    30     29      1
9 months    ki1066203-TanzaniaChild2   4      434    32     32      0
9 months    ki1066203-TanzaniaChild2   5      434    33     32      1
9 months    ki1066203-TanzaniaChild2   6      434    30     30      0
9 months    ki1066203-TanzaniaChild2   7      434    38     37      1
9 months    ki1066203-TanzaniaChild2   8      434    50     49      1
9 months    ki1066203-TanzaniaChild2   9      434    38     38      0
9 months    ki1066203-TanzaniaChild2   10     434    45     44      1
9 months    ki1066203-TanzaniaChild2   11     434    39     39      0
9 months    ki1066203-TanzaniaChild2   12     434    39     39      0
9 months    ki1112895-Guatemala BSC    1       60     4      4      0
9 months    ki1112895-Guatemala BSC    2       60     5      5      0
9 months    ki1112895-Guatemala BSC    3       60     2      1      1
9 months    ki1112895-Guatemala BSC    4       60     5      4      1
9 months    ki1112895-Guatemala BSC    5       60     7      7      0
9 months    ki1112895-Guatemala BSC    6       60     9      7      2
9 months    ki1112895-Guatemala BSC    7       60     5      4      1
9 months    ki1112895-Guatemala BSC    8       60     5      5      0
9 months    ki1112895-Guatemala BSC    9       60     5      4      1
9 months    ki1112895-Guatemala BSC    10      60     6      5      1
9 months    ki1112895-Guatemala BSC    11      60     6      5      1
9 months    ki1112895-Guatemala BSC    12      60     1      0      1
9 months    ki1113344-GMS-Nepal        1      551     0      0      0
9 months    ki1113344-GMS-Nepal        2      551     0      0      0
9 months    ki1113344-GMS-Nepal        3      551     0      0      0
9 months    ki1113344-GMS-Nepal        4      551     0      0      0
9 months    ki1113344-GMS-Nepal        5      551     0      0      0
9 months    ki1113344-GMS-Nepal        6      551   102     96      6
9 months    ki1113344-GMS-Nepal        7      551   212    197     15
9 months    ki1113344-GMS-Nepal        8      551   220    206     14
9 months    ki1113344-GMS-Nepal        9      551    15     15      0
9 months    ki1113344-GMS-Nepal        10     551     2      2      0
9 months    ki1113344-GMS-Nepal        11     551     0      0      0
9 months    ki1113344-GMS-Nepal        12     551     0      0      0
9 months    ki1114097-CMIN             1     1846   184    177      7
9 months    ki1114097-CMIN             2     1846   132    119     13
9 months    ki1114097-CMIN             3     1846   143    138      5
9 months    ki1114097-CMIN             4     1846   254    247      7
9 months    ki1114097-CMIN             5     1846   186    184      2
9 months    ki1114097-CMIN             6     1846   148    140      8
9 months    ki1114097-CMIN             7     1846   128    121      7
9 months    ki1114097-CMIN             8     1846   113    102     11
9 months    ki1114097-CMIN             9     1846   149    143      6
9 months    ki1114097-CMIN             10    1846   112    104      8
9 months    ki1114097-CMIN             11    1846   161    154      7
9 months    ki1114097-CMIN             12    1846   136    126     10
9 months    ki1114097-CONTENT          1      214     9      9      0
9 months    ki1114097-CONTENT          2      214    16     16      0
9 months    ki1114097-CONTENT          3      214    30     30      0
9 months    ki1114097-CONTENT          4      214    12     11      1
9 months    ki1114097-CONTENT          5      214    24     23      1
9 months    ki1114097-CONTENT          6      214    14     12      2
9 months    ki1114097-CONTENT          7      214    24     24      0
9 months    ki1114097-CONTENT          8      214    18     17      1
9 months    ki1114097-CONTENT          9      214    20     20      0
9 months    ki1114097-CONTENT          10     214    24     24      0
9 months    ki1114097-CONTENT          11     214    18     18      0
9 months    ki1114097-CONTENT          12     214     5      5      0
9 months    ki1126311-ZVITAMBO         1     1959   213    204      9
9 months    ki1126311-ZVITAMBO         2     1959   144    136      8
9 months    ki1126311-ZVITAMBO         3     1959   154    149      5
9 months    ki1126311-ZVITAMBO         4     1959   140    136      4
9 months    ki1126311-ZVITAMBO         5     1959   139    131      8
9 months    ki1126311-ZVITAMBO         6     1959   152    141     11
9 months    ki1126311-ZVITAMBO         7     1959   145    138      7
9 months    ki1126311-ZVITAMBO         8     1959   174    170      4
9 months    ki1126311-ZVITAMBO         9     1959   180    175      5
9 months    ki1126311-ZVITAMBO         10    1959   144    137      7
9 months    ki1126311-ZVITAMBO         11    1959   176    168      8
9 months    ki1126311-ZVITAMBO         12    1959   198    187     11
9 months    ki1148112-LCNI-5           1      322    18     18      0
9 months    ki1148112-LCNI-5           2      322    47     46      1
9 months    ki1148112-LCNI-5           3      322    41     38      3
9 months    ki1148112-LCNI-5           4      322    46     43      3
9 months    ki1148112-LCNI-5           5      322    43     43      0
9 months    ki1148112-LCNI-5           6      322    37     35      2
9 months    ki1148112-LCNI-5           7      322    24     22      2
9 months    ki1148112-LCNI-5           8      322    12     12      0
9 months    ki1148112-LCNI-5           9      322    12     11      1
9 months    ki1148112-LCNI-5           10     322     9      9      0
9 months    ki1148112-LCNI-5           11     322    20     17      3
9 months    ki1148112-LCNI-5           12     322    13     10      3
12 months   ki0047075b-MAL-ED          1     1616   155    142     13
12 months   ki0047075b-MAL-ED          2     1616   144    136      8
12 months   ki0047075b-MAL-ED          3     1616   128    122      6
12 months   ki0047075b-MAL-ED          4     1616   104     98      6
12 months   ki0047075b-MAL-ED          5     1616   116    109      7
12 months   ki0047075b-MAL-ED          6     1616   104    101      3
12 months   ki0047075b-MAL-ED          7     1616   145    138      7
12 months   ki0047075b-MAL-ED          8     1616   113    105      8
12 months   ki0047075b-MAL-ED          9     1616   141    133      8
12 months   ki0047075b-MAL-ED          10    1616   146    134     12
12 months   ki0047075b-MAL-ED          11    1616   159    145     14
12 months   ki0047075b-MAL-ED          12    1616   161    151     10
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
12 months   ki1000108-IRC              1      406    35     29      6
12 months   ki1000108-IRC              2      406    27     23      4
12 months   ki1000108-IRC              3      406    29     27      2
12 months   ki1000108-IRC              4      406    21     18      3
12 months   ki1000108-IRC              5      406    20     15      5
12 months   ki1000108-IRC              6      406    37     37      0
12 months   ki1000108-IRC              7      406    36     34      2
12 months   ki1000108-IRC              8      406    45     44      1
12 months   ki1000108-IRC              9      406    27     25      2
12 months   ki1000108-IRC              10     406    37     36      1
12 months   ki1000108-IRC              11     406    41     38      3
12 months   ki1000108-IRC              12     406    51     46      5
12 months   ki1000109-EE               1      357    89     56     33
12 months   ki1000109-EE               2      357    61     39     22
12 months   ki1000109-EE               3      357    41     27     14
12 months   ki1000109-EE               4      357    16      7      9
12 months   ki1000109-EE               5      357     0      0      0
12 months   ki1000109-EE               6      357     0      0      0
12 months   ki1000109-EE               7      357     0      0      0
12 months   ki1000109-EE               8      357     0      0      0
12 months   ki1000109-EE               9      357     0      0      0
12 months   ki1000109-EE               10     357     3      2      1
12 months   ki1000109-EE               11     357    65     45     20
12 months   ki1000109-EE               12     357    82     61     21
12 months   ki1000109-ResPak           1      194     6      5      1
12 months   ki1000109-ResPak           2      194     6      6      0
12 months   ki1000109-ResPak           3      194    12     10      2
12 months   ki1000109-ResPak           4      194    17     16      1
12 months   ki1000109-ResPak           5      194    31     27      4
12 months   ki1000109-ResPak           6      194    45     37      8
12 months   ki1000109-ResPak           7      194    19     18      1
12 months   ki1000109-ResPak           8      194    29     26      3
12 months   ki1000109-ResPak           9      194    20     17      3
12 months   ki1000109-ResPak           10     194     7      7      0
12 months   ki1000109-ResPak           11     194     1      1      0
12 months   ki1000109-ResPak           12     194     1      1      0
12 months   ki1000304b-SAS-FoodSuppl   1       92    13      6      7
12 months   ki1000304b-SAS-FoodSuppl   2       92     8      2      6
12 months   ki1000304b-SAS-FoodSuppl   3       92     7      3      4
12 months   ki1000304b-SAS-FoodSuppl   4       92     8      5      3
12 months   ki1000304b-SAS-FoodSuppl   5       92     8      5      3
12 months   ki1000304b-SAS-FoodSuppl   6       92     8      5      3
12 months   ki1000304b-SAS-FoodSuppl   7       92     5      5      0
12 months   ki1000304b-SAS-FoodSuppl   8       92     0      0      0
12 months   ki1000304b-SAS-FoodSuppl   9       92     4      2      2
12 months   ki1000304b-SAS-FoodSuppl   10      92     5      3      2
12 months   ki1000304b-SAS-FoodSuppl   11      92    10      4      6
12 months   ki1000304b-SAS-FoodSuppl   12      92    16     11      5
12 months   ki1017093-NIH-Birth        1      491    47     39      8
12 months   ki1017093-NIH-Birth        2      491    41     40      1
12 months   ki1017093-NIH-Birth        3      491    46     44      2
12 months   ki1017093-NIH-Birth        4      491    40     36      4
12 months   ki1017093-NIH-Birth        5      491    37     35      2
12 months   ki1017093-NIH-Birth        6      491    36     33      3
12 months   ki1017093-NIH-Birth        7      491    41     35      6
12 months   ki1017093-NIH-Birth        8      491    33     30      3
12 months   ki1017093-NIH-Birth        9      491    24     21      3
12 months   ki1017093-NIH-Birth        10     491    49     43      6
12 months   ki1017093-NIH-Birth        11     491    48     41      7
12 months   ki1017093-NIH-Birth        12     491    49     46      3
12 months   ki1066203-TanzaniaChild2   1      357    28     28      0
12 months   ki1066203-TanzaniaChild2   2      357    24     24      0
12 months   ki1066203-TanzaniaChild2   3      357    22     20      2
12 months   ki1066203-TanzaniaChild2   4      357    28     26      2
12 months   ki1066203-TanzaniaChild2   5      357    29     28      1
12 months   ki1066203-TanzaniaChild2   6      357    23     23      0
12 months   ki1066203-TanzaniaChild2   7      357    31     31      0
12 months   ki1066203-TanzaniaChild2   8      357    45     45      0
12 months   ki1066203-TanzaniaChild2   9      357    30     30      0
12 months   ki1066203-TanzaniaChild2   10     357    33     32      1
12 months   ki1066203-TanzaniaChild2   11     357    34     34      0
12 months   ki1066203-TanzaniaChild2   12     357    30     29      1
12 months   ki1112895-Guatemala BSC    1       53     4      4      0
12 months   ki1112895-Guatemala BSC    2       53     5      5      0
12 months   ki1112895-Guatemala BSC    3       53     2      1      1
12 months   ki1112895-Guatemala BSC    4       53     3      1      2
12 months   ki1112895-Guatemala BSC    5       53     7      7      0
12 months   ki1112895-Guatemala BSC    6       53     8      6      2
12 months   ki1112895-Guatemala BSC    7       53     4      2      2
12 months   ki1112895-Guatemala BSC    8       53     5      5      0
12 months   ki1112895-Guatemala BSC    9       53     4      3      1
12 months   ki1112895-Guatemala BSC    10      53     5      4      1
12 months   ki1112895-Guatemala BSC    11      53     5      4      1
12 months   ki1112895-Guatemala BSC    12      53     1      0      1
12 months   ki1113344-GMS-Nepal        1      558     0      0      0
12 months   ki1113344-GMS-Nepal        2      558     0      0      0
12 months   ki1113344-GMS-Nepal        3      558     0      0      0
12 months   ki1113344-GMS-Nepal        4      558     0      0      0
12 months   ki1113344-GMS-Nepal        5      558     0      0      0
12 months   ki1113344-GMS-Nepal        6      558   106     97      9
12 months   ki1113344-GMS-Nepal        7      558   214    195     19
12 months   ki1113344-GMS-Nepal        8      558   221    199     22
12 months   ki1113344-GMS-Nepal        9      558    15     14      1
12 months   ki1113344-GMS-Nepal        10     558     2      2      0
12 months   ki1113344-GMS-Nepal        11     558     0      0      0
12 months   ki1113344-GMS-Nepal        12     558     0      0      0
12 months   ki1114097-CMIN             1     1578   171    155     16
12 months   ki1114097-CMIN             2     1578   111    103      8
12 months   ki1114097-CMIN             3     1578   124    118      6
12 months   ki1114097-CMIN             4     1578   236    224     12
12 months   ki1114097-CMIN             5     1578   156    150      6
12 months   ki1114097-CMIN             6     1578   115    105     10
12 months   ki1114097-CMIN             7     1578   103     95      8
12 months   ki1114097-CMIN             8     1578   109     97     12
12 months   ki1114097-CMIN             9     1578   122    115      7
12 months   ki1114097-CMIN             10    1578   106     94     12
12 months   ki1114097-CMIN             11    1578   130    121      9
12 months   ki1114097-CMIN             12    1578    95     87      8
12 months   ki1114097-CONTENT          1      215     9      9      0
12 months   ki1114097-CONTENT          2      215    16     16      0
12 months   ki1114097-CONTENT          3      215    30     30      0
12 months   ki1114097-CONTENT          4      215    12     12      0
12 months   ki1114097-CONTENT          5      215    25     24      1
12 months   ki1114097-CONTENT          6      215    14     13      1
12 months   ki1114097-CONTENT          7      215    24     24      0
12 months   ki1114097-CONTENT          8      215    18     17      1
12 months   ki1114097-CONTENT          9      215    20     20      0
12 months   ki1114097-CONTENT          10     215    24     24      0
12 months   ki1114097-CONTENT          11     215    18     18      0
12 months   ki1114097-CONTENT          12     215     5      5      0
12 months   ki1126311-ZVITAMBO         1     1699   173    162     11
12 months   ki1126311-ZVITAMBO         2     1699   116    101     15
12 months   ki1126311-ZVITAMBO         3     1699   141    133      8
12 months   ki1126311-ZVITAMBO         4     1699   137    129      8
12 months   ki1126311-ZVITAMBO         5     1699   124    121      3
12 months   ki1126311-ZVITAMBO         6     1699   142    129     13
12 months   ki1126311-ZVITAMBO         7     1699   149    142      7
12 months   ki1126311-ZVITAMBO         8     1699   154    149      5
12 months   ki1126311-ZVITAMBO         9     1699   153    145      8
12 months   ki1126311-ZVITAMBO         10    1699   110    101      9
12 months   ki1126311-ZVITAMBO         11    1699   139    130      9
12 months   ki1126311-ZVITAMBO         12    1699   161    152      9
12 months   ki1148112-LCNI-5           1      310    22     21      1
12 months   ki1148112-LCNI-5           2      310    45     43      2
12 months   ki1148112-LCNI-5           3      310    34     31      3
12 months   ki1148112-LCNI-5           4      310    41     37      4
12 months   ki1148112-LCNI-5           5      310    35     31      4
12 months   ki1148112-LCNI-5           6      310    34     30      4
12 months   ki1148112-LCNI-5           7      310    32     27      5
12 months   ki1148112-LCNI-5           8      310    16     15      1
12 months   ki1148112-LCNI-5           9      310     9      7      2
12 months   ki1148112-LCNI-5           10     310     8      7      1
12 months   ki1148112-LCNI-5           11     310    21     16      5
12 months   ki1148112-LCNI-5           12     310    13     11      2
18 months   ki0047075b-MAL-ED          1     1546   151    133     18
18 months   ki0047075b-MAL-ED          2     1546   134    119     15
18 months   ki0047075b-MAL-ED          3     1546   120    106     14
18 months   ki0047075b-MAL-ED          4     1546   100     88     12
18 months   ki0047075b-MAL-ED          5     1546   108     96     12
18 months   ki0047075b-MAL-ED          6     1546   101     93      8
18 months   ki0047075b-MAL-ED          7     1546   142    120     22
18 months   ki0047075b-MAL-ED          8     1546   113     98     15
18 months   ki0047075b-MAL-ED          9     1546   137    123     14
18 months   ki0047075b-MAL-ED          10    1546   141    119     22
18 months   ki0047075b-MAL-ED          11    1546   146    129     17
18 months   ki0047075b-MAL-ED          12    1546   153    137     16
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
18 months   ki1000108-IRC              1      405    36     32      4
18 months   ki1000108-IRC              2      405    27     25      2
18 months   ki1000108-IRC              3      405    29     28      1
18 months   ki1000108-IRC              4      405    22     20      2
18 months   ki1000108-IRC              5      405    21     15      6
18 months   ki1000108-IRC              6      405    37     35      2
18 months   ki1000108-IRC              7      405    36     34      2
18 months   ki1000108-IRC              8      405    44     42      2
18 months   ki1000108-IRC              9      405    27     24      3
18 months   ki1000108-IRC              10     405    34     33      1
18 months   ki1000108-IRC              11     405    41     39      2
18 months   ki1000108-IRC              12     405    51     44      7
18 months   ki1000109-EE               1      350    87     45     42
18 months   ki1000109-EE               2      350    56     29     27
18 months   ki1000109-EE               3      350    40     18     22
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
18 months   ki1000109-ResPak           2        9     2      2      0
18 months   ki1000109-ResPak           3        9     2      2      0
18 months   ki1000109-ResPak           4        9     2      2      0
18 months   ki1000109-ResPak           5        9     2      1      1
18 months   ki1000109-ResPak           6        9     0      0      0
18 months   ki1000109-ResPak           7        9     0      0      0
18 months   ki1000109-ResPak           8        9     0      0      0
18 months   ki1000109-ResPak           9        9     0      0      0
18 months   ki1000109-ResPak           10       9     0      0      0
18 months   ki1000109-ResPak           11       9     0      0      0
18 months   ki1000109-ResPak           12       9     0      0      0
18 months   ki1000304b-SAS-FoodSuppl   1       84    13      8      5
18 months   ki1000304b-SAS-FoodSuppl   2       84     6      3      3
18 months   ki1000304b-SAS-FoodSuppl   3       84     7      2      5
18 months   ki1000304b-SAS-FoodSuppl   4       84     7      5      2
18 months   ki1000304b-SAS-FoodSuppl   5       84     6      3      3
18 months   ki1000304b-SAS-FoodSuppl   6       84     7      5      2
18 months   ki1000304b-SAS-FoodSuppl   7       84     5      5      0
18 months   ki1000304b-SAS-FoodSuppl   8       84     0      0      0
18 months   ki1000304b-SAS-FoodSuppl   9       84     4      0      4
18 months   ki1000304b-SAS-FoodSuppl   10      84     5      2      3
18 months   ki1000304b-SAS-FoodSuppl   11      84    11      5      6
18 months   ki1000304b-SAS-FoodSuppl   12      84    13      9      4
18 months   ki1017093-NIH-Birth        1      463    45     34     11
18 months   ki1017093-NIH-Birth        2      463    35     32      3
18 months   ki1017093-NIH-Birth        3      463    44     37      7
18 months   ki1017093-NIH-Birth        4      463    38     31      7
18 months   ki1017093-NIH-Birth        5      463    35     28      7
18 months   ki1017093-NIH-Birth        6      463    35     28      7
18 months   ki1017093-NIH-Birth        7      463    41     29     12
18 months   ki1017093-NIH-Birth        8      463    31     23      8
18 months   ki1017093-NIH-Birth        9      463    25     19      6
18 months   ki1017093-NIH-Birth        10     463    45     32     13
18 months   ki1017093-NIH-Birth        11     463    44     31     13
18 months   ki1017093-NIH-Birth        12     463    45     38      7
18 months   ki1066203-TanzaniaChild2   1      258    24     24      0
18 months   ki1066203-TanzaniaChild2   2      258    19     19      0
18 months   ki1066203-TanzaniaChild2   3      258    19     18      1
18 months   ki1066203-TanzaniaChild2   4      258    20     19      1
18 months   ki1066203-TanzaniaChild2   5      258    23     21      2
18 months   ki1066203-TanzaniaChild2   6      258    18     18      0
18 months   ki1066203-TanzaniaChild2   7      258    20     20      0
18 months   ki1066203-TanzaniaChild2   8      258    29     26      3
18 months   ki1066203-TanzaniaChild2   9      258    21     20      1
18 months   ki1066203-TanzaniaChild2   10     258    27     24      3
18 months   ki1066203-TanzaniaChild2   11     258    20     18      2
18 months   ki1066203-TanzaniaChild2   12     258    18     16      2
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
18 months   ki1113344-GMS-Nepal        6      550   104     87     17
18 months   ki1113344-GMS-Nepal        7      550   216    186     30
18 months   ki1113344-GMS-Nepal        8      550   213    177     36
18 months   ki1113344-GMS-Nepal        9      550    15     13      2
18 months   ki1113344-GMS-Nepal        10     550     2      2      0
18 months   ki1113344-GMS-Nepal        11     550     0      0      0
18 months   ki1113344-GMS-Nepal        12     550     0      0      0
18 months   ki1114097-CMIN             1     1595   215    184     31
18 months   ki1114097-CMIN             2     1595   114    101     13
18 months   ki1114097-CMIN             3     1595   125    110     15
18 months   ki1114097-CMIN             4     1595   239    213     26
18 months   ki1114097-CMIN             5     1595   139    129     10
18 months   ki1114097-CMIN             6     1595   108     97     11
18 months   ki1114097-CMIN             7     1595    85     76      9
18 months   ki1114097-CMIN             8     1595    94     85      9
18 months   ki1114097-CMIN             9     1595   126    112     14
18 months   ki1114097-CMIN             10    1595   102     87     15
18 months   ki1114097-CMIN             11    1595   139    127     12
18 months   ki1114097-CMIN             12    1595   109     93     16
18 months   ki1114097-CONTENT          1      200     9      9      0
18 months   ki1114097-CONTENT          2      200    15     15      0
18 months   ki1114097-CONTENT          3      200    27     27      0
18 months   ki1114097-CONTENT          4      200    12     10      2
18 months   ki1114097-CONTENT          5      200    25     23      2
18 months   ki1114097-CONTENT          6      200    13     13      0
18 months   ki1114097-CONTENT          7      200    20     20      0
18 months   ki1114097-CONTENT          8      200    18     18      0
18 months   ki1114097-CONTENT          9      200    19     18      1
18 months   ki1114097-CONTENT          10     200    21     21      0
18 months   ki1114097-CONTENT          11     200    18     18      0
18 months   ki1114097-CONTENT          12     200     3      3      0
18 months   ki1126311-ZVITAMBO         1      424    56     44     12
18 months   ki1126311-ZVITAMBO         2      424    41     33      8
18 months   ki1126311-ZVITAMBO         3      424    37     33      4
18 months   ki1126311-ZVITAMBO         4      424    47     37     10
18 months   ki1126311-ZVITAMBO         5      424    27     23      4
18 months   ki1126311-ZVITAMBO         6      424    27     24      3
18 months   ki1126311-ZVITAMBO         7      424    34     28      6
18 months   ki1126311-ZVITAMBO         8      424    29     28      1
18 months   ki1126311-ZVITAMBO         9      424    25     23      2
18 months   ki1126311-ZVITAMBO         10     424    23     21      2
18 months   ki1126311-ZVITAMBO         11     424    31     24      7
18 months   ki1126311-ZVITAMBO         12     424    47     39      8
18 months   ki1148112-LCNI-5           1      357    25     22      3
18 months   ki1148112-LCNI-5           2      357    50     45      5
18 months   ki1148112-LCNI-5           3      357    42     34      8
18 months   ki1148112-LCNI-5           4      357    48     40      8
18 months   ki1148112-LCNI-5           5      357    39     35      4
18 months   ki1148112-LCNI-5           6      357    42     36      6
18 months   ki1148112-LCNI-5           7      357    30     26      4
18 months   ki1148112-LCNI-5           8      357    20     18      2
18 months   ki1148112-LCNI-5           9      357    10      9      1
18 months   ki1148112-LCNI-5           10     357    12     10      2
18 months   ki1148112-LCNI-5           11     357    22     16      6
18 months   ki1148112-LCNI-5           12     357    17     14      3
24 months   ki0047075b-MAL-ED          1     1489   144    125     19
24 months   ki0047075b-MAL-ED          2     1489   130    110     20
24 months   ki0047075b-MAL-ED          3     1489   118    101     17
24 months   ki0047075b-MAL-ED          4     1489    95     86      9
24 months   ki0047075b-MAL-ED          5     1489   106     94     12
24 months   ki0047075b-MAL-ED          6     1489    93     87      6
24 months   ki0047075b-MAL-ED          7     1489   133    119     14
24 months   ki0047075b-MAL-ED          8     1489   111     97     14
24 months   ki0047075b-MAL-ED          9     1489   134    124     10
24 months   ki0047075b-MAL-ED          10    1489   136    120     16
24 months   ki0047075b-MAL-ED          11    1489   139    118     21
24 months   ki0047075b-MAL-ED          12    1489   150    136     14
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
24 months   ki1000108-IRC              1      409    36     31      5
24 months   ki1000108-IRC              2      409    27     24      3
24 months   ki1000108-IRC              3      409    29     24      5
24 months   ki1000108-IRC              4      409    22     19      3
24 months   ki1000108-IRC              5      409    21     15      6
24 months   ki1000108-IRC              6      409    37     36      1
24 months   ki1000108-IRC              7      409    36     36      0
24 months   ki1000108-IRC              8      409    45     41      4
24 months   ki1000108-IRC              9      409    27     24      3
24 months   ki1000108-IRC              10     409    36     35      1
24 months   ki1000108-IRC              11     409    41     39      2
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
24 months   ki1017093-NIH-Birth        1      429    42     35      7
24 months   ki1017093-NIH-Birth        2      429    36     32      4
24 months   ki1017093-NIH-Birth        3      429    41     35      6
24 months   ki1017093-NIH-Birth        4      429    34     24     10
24 months   ki1017093-NIH-Birth        5      429    34     25      9
24 months   ki1017093-NIH-Birth        6      429    30     25      5
24 months   ki1017093-NIH-Birth        7      429    37     29      8
24 months   ki1017093-NIH-Birth        8      429    30     21      9
24 months   ki1017093-NIH-Birth        9      429    19     16      3
24 months   ki1017093-NIH-Birth        10     429    40     30     10
24 months   ki1017093-NIH-Birth        11     429    41     29     12
24 months   ki1017093-NIH-Birth        12     429    45     35     10
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
24 months   ki1113344-GMS-Nepal        6      499    79     70      9
24 months   ki1113344-GMS-Nepal        7      499   201    180     21
24 months   ki1113344-GMS-Nepal        8      499   201    179     22
24 months   ki1113344-GMS-Nepal        9      499    16     14      2
24 months   ki1113344-GMS-Nepal        10     499     2      2      0
24 months   ki1113344-GMS-Nepal        11     499     0      0      0
24 months   ki1113344-GMS-Nepal        12     499     0      0      0
24 months   ki1114097-CMIN             1     1222   241    214     27
24 months   ki1114097-CMIN             2     1222    86     78      8
24 months   ki1114097-CMIN             3     1222    90     79     11
24 months   ki1114097-CMIN             4     1222   201    172     29
24 months   ki1114097-CMIN             5     1222    90     82      8
24 months   ki1114097-CMIN             6     1222    66     58      8
24 months   ki1114097-CMIN             7     1222    59     53      6
24 months   ki1114097-CMIN             8     1222    66     54     12
24 months   ki1114097-CMIN             9     1222    88     79      9
24 months   ki1114097-CMIN             10    1222    75     63     12
24 months   ki1114097-CMIN             11    1222    94     82     12
24 months   ki1114097-CMIN             12    1222    66     55     11
24 months   ki1114097-CONTENT          1      164     8      8      0
24 months   ki1114097-CONTENT          2      164    13     13      0
24 months   ki1114097-CONTENT          3      164    20     20      0
24 months   ki1114097-CONTENT          4      164    10      9      1
24 months   ki1114097-CONTENT          5      164    22     21      1
24 months   ki1114097-CONTENT          6      164    11     11      0
24 months   ki1114097-CONTENT          7      164    19     19      0
24 months   ki1114097-CONTENT          8      164    17     17      0
24 months   ki1114097-CONTENT          9      164    12     11      1
24 months   ki1114097-CONTENT          10     164    13     13      0
24 months   ki1114097-CONTENT          11     164    16     16      0
24 months   ki1114097-CONTENT          12     164     3      3      0
24 months   ki1126311-ZVITAMBO         1      116    14     13      1
24 months   ki1126311-ZVITAMBO         2      116    17     14      3
24 months   ki1126311-ZVITAMBO         3      116    18     15      3
24 months   ki1126311-ZVITAMBO         4      116    13      8      5
24 months   ki1126311-ZVITAMBO         5      116    11      9      2
24 months   ki1126311-ZVITAMBO         6      116     8      6      2
24 months   ki1126311-ZVITAMBO         7      116     7      4      3
24 months   ki1126311-ZVITAMBO         8      116     7      7      0
24 months   ki1126311-ZVITAMBO         9      116     1      1      0
24 months   ki1126311-ZVITAMBO         10     116     3      3      0
24 months   ki1126311-ZVITAMBO         11     116     9      7      2
24 months   ki1126311-ZVITAMBO         12     116     8      7      1
24 months   ki1148112-LCNI-5           1      297    21     19      2
24 months   ki1148112-LCNI-5           2      297    45     42      3
24 months   ki1148112-LCNI-5           3      297    36     32      4
24 months   ki1148112-LCNI-5           4      297    41     36      5
24 months   ki1148112-LCNI-5           5      297    32     29      3
24 months   ki1148112-LCNI-5           6      297    34     25      9
24 months   ki1148112-LCNI-5           7      297    21     20      1
24 months   ki1148112-LCNI-5           8      297    13     13      0
24 months   ki1148112-LCNI-5           9      297     9      8      1
24 months   ki1148112-LCNI-5           10     297    11     10      1
24 months   ki1148112-LCNI-5           11     297    20     15      5
24 months   ki1148112-LCNI-5           12     297    14     11      3

## Results Table

### Parameter: TSM


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1126311-ZVITAMBO   1                    NA                0.0425532   0.0167405   0.0683659
3 months    ki1126311-ZVITAMBO   2                    NA                0.0838710   0.0402232   0.1275188
3 months    ki1126311-ZVITAMBO   3                    NA                0.0609137   0.0275080   0.0943194
3 months    ki1126311-ZVITAMBO   4                    NA                0.0549451   0.0218319   0.0880582
3 months    ki1126311-ZVITAMBO   5                    NA                0.0490798   0.0159076   0.0822519
3 months    ki1126311-ZVITAMBO   6                    NA                0.0947368   0.0530869   0.1363867
3 months    ki1126311-ZVITAMBO   7                    NA                0.0384615   0.0123213   0.0646017
3 months    ki1126311-ZVITAMBO   8                    NA                0.0514019   0.0218103   0.0809934
3 months    ki1126311-ZVITAMBO   9                    NA                0.0306122   0.0064903   0.0547342
3 months    ki1126311-ZVITAMBO   10                   NA                0.0434783   0.0094462   0.0775103
3 months    ki1126311-ZVITAMBO   11                   NA                0.0352941   0.0075502   0.0630381
3 months    ki1126311-ZVITAMBO   12                   NA                0.0275229   0.0058008   0.0492451
12 months   ki1114097-CMIN       1                    NA                0.0935673   0.0499039   0.1372306
12 months   ki1114097-CMIN       2                    NA                0.0720721   0.0239477   0.1201964
12 months   ki1114097-CMIN       3                    NA                0.0483871   0.0106064   0.0861678
12 months   ki1114097-CMIN       4                    NA                0.0508475   0.0228104   0.0788845
12 months   ki1114097-CMIN       5                    NA                0.0384615   0.0082745   0.0686486
12 months   ki1114097-CMIN       6                    NA                0.0869565   0.0354415   0.1384715
12 months   ki1114097-CMIN       7                    NA                0.0776699   0.0259644   0.1293754
12 months   ki1114097-CMIN       8                    NA                0.1100917   0.0513127   0.1688708
12 months   ki1114097-CMIN       9                    NA                0.0573770   0.0160966   0.0986575
12 months   ki1114097-CMIN       10                   NA                0.1132075   0.0528709   0.1735442
12 months   ki1114097-CMIN       11                   NA                0.0692308   0.0255807   0.1128808
12 months   ki1114097-CMIN       12                   NA                0.0842105   0.0283500   0.1400710
18 months   ki0047075b-MAL-ED    1                    NA                0.1192053   0.0675059   0.1709047
18 months   ki0047075b-MAL-ED    2                    NA                0.1119403   0.0585392   0.1653414
18 months   ki0047075b-MAL-ED    3                    NA                0.1166667   0.0592109   0.1741224
18 months   ki0047075b-MAL-ED    4                    NA                0.1200000   0.0562881   0.1837119
18 months   ki0047075b-MAL-ED    5                    NA                0.1111111   0.0518214   0.1704008
18 months   ki0047075b-MAL-ED    6                    NA                0.0792079   0.0265222   0.1318937
18 months   ki0047075b-MAL-ED    7                    NA                0.1549296   0.0953965   0.2144626
18 months   ki0047075b-MAL-ED    8                    NA                0.1327434   0.0701642   0.1953225
18 months   ki0047075b-MAL-ED    9                    NA                0.1021898   0.0514528   0.1529267
18 months   ki0047075b-MAL-ED    10                   NA                0.1560284   0.0961121   0.2159446
18 months   ki0047075b-MAL-ED    11                   NA                0.1164384   0.0643934   0.1684833
18 months   ki0047075b-MAL-ED    12                   NA                0.1045752   0.0560718   0.1530785
18 months   ki1114097-CMIN       1                    NA                0.1441860   0.0972165   0.1911556
18 months   ki1114097-CMIN       2                    NA                0.1140351   0.0556692   0.1724010
18 months   ki1114097-CMIN       3                    NA                0.1200000   0.0630149   0.1769851
18 months   ki1114097-CMIN       4                    NA                0.1087866   0.0692987   0.1482745
18 months   ki1114097-CMIN       5                    NA                0.0719424   0.0289733   0.1149116
18 months   ki1114097-CMIN       6                    NA                0.1018519   0.0447920   0.1589117
18 months   ki1114097-CMIN       7                    NA                0.1058824   0.0404513   0.1713134
18 months   ki1114097-CMIN       8                    NA                0.0957447   0.0362438   0.1552455
18 months   ki1114097-CMIN       9                    NA                0.1111111   0.0562201   0.1660022
18 months   ki1114097-CMIN       10                   NA                0.1470588   0.0783062   0.2158114
18 months   ki1114097-CMIN       11                   NA                0.0863309   0.0396269   0.1330350
18 months   ki1114097-CMIN       12                   NA                0.1467890   0.0803312   0.2132468
24 months   ki0047075b-MAL-ED    1                    NA                0.1319444   0.0766499   0.1872390
24 months   ki0047075b-MAL-ED    2                    NA                0.1538462   0.0918035   0.2158888
24 months   ki0047075b-MAL-ED    3                    NA                0.1440678   0.0806872   0.2074484
24 months   ki0047075b-MAL-ED    4                    NA                0.0947368   0.0358282   0.1536455
24 months   ki0047075b-MAL-ED    5                    NA                0.1132075   0.0528697   0.1735454
24 months   ki0047075b-MAL-ED    6                    NA                0.0645161   0.0145697   0.1144626
24 months   ki0047075b-MAL-ED    7                    NA                0.1052632   0.0530892   0.1574371
24 months   ki0047075b-MAL-ED    8                    NA                0.1261261   0.0643445   0.1879078
24 months   ki0047075b-MAL-ED    9                    NA                0.0746269   0.0301179   0.1191358
24 months   ki0047075b-MAL-ED    10                   NA                0.1176471   0.0634799   0.1718142
24 months   ki0047075b-MAL-ED    11                   NA                0.1510791   0.0915236   0.2106347
24 months   ki0047075b-MAL-ED    12                   NA                0.0933333   0.0467650   0.1399017
24 months   ki1114097-CMIN       1                    NA                0.1120332   0.0721960   0.1518704
24 months   ki1114097-CMIN       2                    NA                0.0930233   0.0316088   0.1544377
24 months   ki1114097-CMIN       3                    NA                0.1222222   0.0545248   0.1899196
24 months   ki1114097-CMIN       4                    NA                0.1442786   0.0956832   0.1928740
24 months   ki1114097-CMIN       5                    NA                0.0888889   0.0300704   0.1477074
24 months   ki1114097-CMIN       6                    NA                0.1212121   0.0424407   0.1999836
24 months   ki1114097-CMIN       7                    NA                0.1016949   0.0245404   0.1788494
24 months   ki1114097-CMIN       8                    NA                0.1818182   0.0887294   0.2749070
24 months   ki1114097-CMIN       9                    NA                0.1022727   0.0389388   0.1656067
24 months   ki1114097-CMIN       10                   NA                0.1600000   0.0769968   0.2430032
24 months   ki1114097-CMIN       11                   NA                0.1276596   0.0601708   0.1951484
24 months   ki1114097-CMIN       12                   NA                0.1666667   0.0767195   0.2566139


### Parameter: E(Y)


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1126311-ZVITAMBO   NA                   NA                0.0503089   0.0495097   0.0511082
12 months   ki1114097-CMIN       NA                   NA                0.0722433   0.0711059   0.0733808
18 months   ki0047075b-MAL-ED    NA                   NA                0.1196636   0.1186468   0.1206805
18 months   ki1114097-CMIN       NA                   NA                0.1134796   0.1123521   0.1146071
24 months   ki0047075b-MAL-ED    NA                   NA                0.1155138   0.1141263   0.1169012
24 months   ki1114097-CMIN       NA                   NA                0.1252046   0.1237518   0.1266574


### Parameter: RR


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1126311-ZVITAMBO   2                    1                 1.9709677   0.8862808   4.3831638
3 months    ki1126311-ZVITAMBO   3                    1                 1.4314721   0.6318853   3.2428546
3 months    ki1126311-ZVITAMBO   4                    1                 1.2912088   0.5490858   3.0363565
3 months    ki1126311-ZVITAMBO   5                    1                 1.1533742   0.4651100   2.8601236
3 months    ki1126311-ZVITAMBO   6                    1                 2.2263158   1.0525192   4.7091607
3 months    ki1126311-ZVITAMBO   7                    1                 0.9038462   0.3634647   2.2476405
3 months    ki1126311-ZVITAMBO   8                    1                 1.2079439   0.5234205   2.7876794
3 months    ki1126311-ZVITAMBO   9                    1                 0.7193878   0.2661277   1.9446255
3 months    ki1126311-ZVITAMBO   10                   1                 1.0217391   0.3795512   2.7504874
3 months    ki1126311-ZVITAMBO   11                   1                 0.8294118   0.3072929   2.2386582
3 months    ki1126311-ZVITAMBO   12                   1                 0.6467890   0.2390330   1.7501185
12 months   ki1114097-CMIN       2                    1                 0.7702703   0.3410782   1.7395317
12 months   ki1114097-CMIN       3                    1                 0.5171371   0.2082386   1.2842514
12 months   ki1114097-CMIN       4                    1                 0.5434322   0.2638938   1.1190811
12 months   ki1114097-CMIN       5                    1                 0.4110578   0.1649467   1.0243828
12 months   ki1114097-CMIN       6                    1                 0.9293478   0.4371787   1.9755936
12 months   ki1114097-CMIN       7                    1                 0.8300971   0.3681776   1.8715456
12 months   ki1114097-CMIN       8                    1                 1.1766055   0.5789917   2.3910544
12 months   ki1114097-CMIN       9                    1                 0.6132172   0.2601279   1.4455789
12 months   ki1114097-CMIN       10                   1                 1.2099057   0.5957976   2.4569951
12 months   ki1114097-CMIN       11                   1                 0.7399038   0.3376847   1.6212099
12 months   ki1114097-CMIN       12                   1                 0.9000000   0.3999552   2.0252266
18 months   ki0047075b-MAL-ED    2                    1                 0.9390547   0.4928214   1.7893374
18 months   ki0047075b-MAL-ED    3                    1                 0.9787037   0.5077578   1.8864526
18 months   ki0047075b-MAL-ED    4                    1                 1.0066667   0.5071694   1.9981050
18 months   ki0047075b-MAL-ED    5                    1                 0.9320988   0.4686286   1.8539375
18 months   ki0047075b-MAL-ED    6                    1                 0.6644664   0.3003430   1.4700383
18 months   ki0047075b-MAL-ED    7                    1                 1.2996870   0.7281003   2.3199913
18 months   ki0047075b-MAL-ED    8                    1                 1.1135693   0.5868367   2.1130865
18 months   ki0047075b-MAL-ED    9                    1                 0.8572587   0.4434095   1.6573677
18 months   ki0047075b-MAL-ED    10                   1                 1.3089046   0.7333856   2.3360580
18 months   ki0047075b-MAL-ED    11                   1                 0.9767884   0.5239878   1.8208738
18 months   ki0047075b-MAL-ED    12                   1                 0.8772694   0.4648985   1.6554186
18 months   ki1114097-CMIN       2                    1                 0.7908885   0.4311517   1.4507764
18 months   ki1114097-CMIN       3                    1                 0.8322581   0.4679092   1.4803160
18 months   ki1114097-CMIN       4                    1                 0.7544878   0.4632721   1.2287635
18 months   ki1114097-CMIN       5                    1                 0.4989557   0.2526957   0.9852037
18 months   ki1114097-CMIN       6                    1                 0.7063919   0.3694888   1.3504862
18 months   ki1114097-CMIN       7                    1                 0.7343454   0.3651891   1.4766681
18 months   ki1114097-CMIN       8                    1                 0.6640357   0.3292046   1.3394204
18 months   ki1114097-CMIN       9                    1                 0.7706093   0.4264213   1.3926104
18 months   ki1114097-CMIN       10                   1                 1.0199241   0.5768992   1.8031663
18 months   ki1114097-CMIN       11                   1                 0.5987468   0.3184113   1.1258953
18 months   ki1114097-CMIN       12                   1                 1.0180527   0.5828260   1.7782859
24 months   ki0047075b-MAL-ED    2                    1                 1.1659919   0.6517949   2.0858358
24 months   ki0047075b-MAL-ED    3                    1                 1.0918822   0.5947062   2.0046989
24 months   ki0047075b-MAL-ED    4                    1                 0.7180055   0.3392126   1.5197899
24 months   ki0047075b-MAL-ED    5                    1                 0.8579940   0.4355409   1.6902057
24 months   ki0047075b-MAL-ED    6                    1                 0.4889643   0.2027492   1.1792210
24 months   ki0047075b-MAL-ED    7                    1                 0.7977839   0.4168662   1.5267708
24 months   ki0047075b-MAL-ED    8                    1                 0.9559033   0.5017050   1.8212916
24 months   ki0047075b-MAL-ED    9                    1                 0.5655931   0.2728559   1.1723973
24 months   ki0047075b-MAL-ED    10                   1                 0.8916409   0.4784155   1.6617846
24 months   ki0047075b-MAL-ED    11                   1                 1.1450208   0.6440888   2.0355464
24 months   ki0047075b-MAL-ED    12                   1                 0.7073684   0.3686917   1.3571503
24 months   ki1114097-CMIN       2                    1                 0.8303187   0.3922642   1.7575632
24 months   ki1114097-CMIN       3                    1                 1.0909465   0.5648711   2.1069662
24 months   ki1114097-CMIN       4                    1                 1.2878202   0.7891256   2.1016690
24 months   ki1114097-CMIN       5                    1                 0.7934157   0.3743345   1.6816738
24 months   ki1114097-CMIN       6                    1                 1.0819304   0.5157984   2.2694398
24 months   ki1114097-CMIN       7                    1                 0.9077213   0.3927041   2.0981651
24 months   ki1114097-CMIN       8                    1                 1.6228956   0.8701030   3.0269865
24 months   ki1114097-CMIN       9                    1                 0.9128788   0.4469781   1.8644040
24 months   ki1114097-CMIN       10                   1                 1.4281481   0.7614286   2.6786585
24 months   ki1114097-CMIN       11                   1                 1.1394799   0.6025712   2.1547903
24 months   ki1114097-CMIN       12                   1                 1.4876543   0.7795059   2.8391258


### Parameter: PAR


agecat      studyid              intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1126311-ZVITAMBO   1                    NA                 0.0077557   -0.0180693   0.0335808
12 months   ki1114097-CMIN       1                    NA                -0.0213239   -0.0650021   0.0223543
18 months   ki0047075b-MAL-ED    1                    NA                 0.0004584   -0.0512510   0.0521677
18 months   ki1114097-CMIN       1                    NA                -0.0307064   -0.0776895   0.0162767
24 months   ki0047075b-MAL-ED    1                    NA                -0.0164307   -0.0717426   0.0388812
24 months   ki1114097-CMIN       1                    NA                 0.0131714   -0.0266923   0.0530351


### Parameter: PAF


agecat      studyid              intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1126311-ZVITAMBO   1                    NA                 0.1541620   -0.5517433   0.5389431
12 months   ki1114097-CMIN       1                    NA                -0.2951677   -1.0658839   0.1880185
18 months   ki0047075b-MAL-ED    1                    NA                 0.0038303   -0.5371742   0.3544297
18 months   ki1114097-CMIN       1                    NA                -0.2705897   -0.7601326   0.0827973
24 months   ki0047075b-MAL-ED    1                    NA                -0.1422400   -0.7371356   0.2489290
24 months   ki1114097-CMIN       1                    NA                 0.1051989   -0.2771353   0.3730743


