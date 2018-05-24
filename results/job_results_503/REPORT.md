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

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1000109-ResPak
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1114097-CMIN
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000109-ResPak
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000109-ResPak
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000109-ResPak
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000109-ResPak
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
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
![](/tmp/3ac7d7e9-d8a5-4714-9c6b-179498f114b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3ac7d7e9-d8a5-4714-9c6b-179498f114b1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/3ac7d7e9-d8a5-4714-9c6b-179498f114b1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3ac7d7e9-d8a5-4714-9c6b-179498f114b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n    nA   nAY0   nAY1
----------  -------------------------  ---  -----  ----  -----  -----
Birth       ki0047075b-MAL-ED          1     1499   141    122     19
Birth       ki0047075b-MAL-ED          2     1499   128    112     16
Birth       ki0047075b-MAL-ED          3     1499   123    107     16
Birth       ki0047075b-MAL-ED          4     1499    99     91      8
Birth       ki0047075b-MAL-ED          5     1499   115    101     14
Birth       ki0047075b-MAL-ED          6     1499    92     79     13
Birth       ki0047075b-MAL-ED          7     1499   132    112     20
Birth       ki0047075b-MAL-ED          8     1499   110     95     15
Birth       ki0047075b-MAL-ED          9     1499   139    120     19
Birth       ki0047075b-MAL-ED          10    1499   141    123     18
Birth       ki0047075b-MAL-ED          11    1499   143    119     24
Birth       ki0047075b-MAL-ED          12    1499   136    119     17
Birth       ki1000108-CMC-V-BCS-2002   1       90     9      7      2
Birth       ki1000108-CMC-V-BCS-2002   2       90     1      0      1
Birth       ki1000108-CMC-V-BCS-2002   3       90     8      7      1
Birth       ki1000108-CMC-V-BCS-2002   4       90     9      7      2
Birth       ki1000108-CMC-V-BCS-2002   5       90    11     10      1
Birth       ki1000108-CMC-V-BCS-2002   6       90     9      8      1
Birth       ki1000108-CMC-V-BCS-2002   7       90     7      7      0
Birth       ki1000108-CMC-V-BCS-2002   8       90     4      3      1
Birth       ki1000108-CMC-V-BCS-2002   9       90     7      5      2
Birth       ki1000108-CMC-V-BCS-2002   10      90    10      8      2
Birth       ki1000108-CMC-V-BCS-2002   11      90    11     10      1
Birth       ki1000108-CMC-V-BCS-2002   12      90     4      2      2
Birth       ki1000108-IRC              1      388    35     28      7
Birth       ki1000108-IRC              2      388    26     24      2
Birth       ki1000108-IRC              3      388    26     22      4
Birth       ki1000108-IRC              4      388    21     19      2
Birth       ki1000108-IRC              5      388    22     21      1
Birth       ki1000108-IRC              6      388    34     30      4
Birth       ki1000108-IRC              7      388    35     31      4
Birth       ki1000108-IRC              8      388    38     35      3
Birth       ki1000108-IRC              9      388    25     23      2
Birth       ki1000108-IRC              10     388    38     34      4
Birth       ki1000108-IRC              11     388    39     33      6
Birth       ki1000108-IRC              12     388    49     43      6
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
Birth       ki1000109-EE               12       2     2      1      1
Birth       ki1000109-ResPak           1        7     1      1      0
Birth       ki1000109-ResPak           2        7     0      0      0
Birth       ki1000109-ResPak           3        7     0      0      0
Birth       ki1000109-ResPak           4        7     2      0      2
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
Birth       ki1017093-NIH-Birth        1       28    11     10      1
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
Birth       ki1101329-Keneba           1     1541   163    151     12
Birth       ki1101329-Keneba           2     1541   147    142      5
Birth       ki1101329-Keneba           3     1541   165    161      4
Birth       ki1101329-Keneba           4     1541   105    103      2
Birth       ki1101329-Keneba           5     1541   108    105      3
Birth       ki1101329-Keneba           6     1541    89     85      4
Birth       ki1101329-Keneba           7     1541    75     71      4
Birth       ki1101329-Keneba           8     1541   125    119      6
Birth       ki1101329-Keneba           9     1541   124    116      8
Birth       ki1101329-Keneba           10    1541   179    164     15
Birth       ki1101329-Keneba           11    1541   124    113     11
Birth       ki1101329-Keneba           12    1541   137    129      8
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
Birth       ki1114097-CMIN             3      138    15     14      1
Birth       ki1114097-CMIN             4      138    13     12      1
Birth       ki1114097-CMIN             5      138     6      6      0
Birth       ki1114097-CMIN             6      138     6      6      0
Birth       ki1114097-CMIN             7      138     4      4      0
Birth       ki1114097-CMIN             8      138    17     13      4
Birth       ki1114097-CMIN             9      138    11     11      0
Birth       ki1114097-CMIN             10     138    17     15      2
Birth       ki1114097-CMIN             11     138    14     13      1
Birth       ki1114097-CMIN             12     138    10      9      1
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
Birth       ki1126311-ZVITAMBO         1     3449   342    286     56
Birth       ki1126311-ZVITAMBO         2     3449   258    224     34
Birth       ki1126311-ZVITAMBO         3     3449   279    248     31
Birth       ki1126311-ZVITAMBO         4     3449   255    229     26
Birth       ki1126311-ZVITAMBO         5     3449   249    220     29
Birth       ki1126311-ZVITAMBO         6     3449   281    246     35
Birth       ki1126311-ZVITAMBO         7     3449   303    273     30
Birth       ki1126311-ZVITAMBO         8     3449   316    289     27
Birth       ki1126311-ZVITAMBO         9     3449   318    295     23
Birth       ki1126311-ZVITAMBO         10    3449   258    240     18
Birth       ki1126311-ZVITAMBO         11    3449   292    264     28
Birth       ki1126311-ZVITAMBO         12    3449   298    275     23
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
3 months    ki0047075b-MAL-ED          1     1778   175    143     32
3 months    ki0047075b-MAL-ED          2     1778   161    135     26
3 months    ki0047075b-MAL-ED          3     1778   135    116     19
3 months    ki0047075b-MAL-ED          4     1778   112    103      9
3 months    ki0047075b-MAL-ED          5     1778   136    114     22
3 months    ki0047075b-MAL-ED          6     1778   109     94     15
3 months    ki0047075b-MAL-ED          7     1778   150    120     30
3 months    ki0047075b-MAL-ED          8     1778   132    115     17
3 months    ki0047075b-MAL-ED          9     1778   157    137     20
3 months    ki0047075b-MAL-ED          10    1778   168    141     27
3 months    ki0047075b-MAL-ED          11    1778   173    141     32
3 months    ki0047075b-MAL-ED          12    1778   170    143     27
3 months    ki1000108-CMC-V-BCS-2002   1      362    33     23     10
3 months    ki1000108-CMC-V-BCS-2002   2      362    15     12      3
3 months    ki1000108-CMC-V-BCS-2002   3      362    31     29      2
3 months    ki1000108-CMC-V-BCS-2002   4      362    42     35      7
3 months    ki1000108-CMC-V-BCS-2002   5      362    36     26     10
3 months    ki1000108-CMC-V-BCS-2002   6      362    36     27      9
3 months    ki1000108-CMC-V-BCS-2002   7      362    37     26     11
3 months    ki1000108-CMC-V-BCS-2002   8      362    16     12      4
3 months    ki1000108-CMC-V-BCS-2002   9      362    21     16      5
3 months    ki1000108-CMC-V-BCS-2002   10     362    29     22      7
3 months    ki1000108-CMC-V-BCS-2002   11     362    41     31     10
3 months    ki1000108-CMC-V-BCS-2002   12     362    25     13     12
3 months    ki1000108-IRC              1      407    36     27      9
3 months    ki1000108-IRC              2      407    28     17     11
3 months    ki1000108-IRC              3      407    27     19      8
3 months    ki1000108-IRC              4      407    21     16      5
3 months    ki1000108-IRC              5      407    22     15      7
3 months    ki1000108-IRC              6      407    37     32      5
3 months    ki1000108-IRC              7      407    36     32      4
3 months    ki1000108-IRC              8      407    43     41      2
3 months    ki1000108-IRC              9      407    27     20      7
3 months    ki1000108-IRC              10     407    38     32      6
3 months    ki1000108-IRC              11     407    40     31      9
3 months    ki1000108-IRC              12     407    52     34     18
3 months    ki1000109-EE               1      376    94     31     63
3 months    ki1000109-EE               2      376    66     34     32
3 months    ki1000109-EE               3      376    41     23     18
3 months    ki1000109-EE               4      376    16      5     11
3 months    ki1000109-EE               5      376     0      0      0
3 months    ki1000109-EE               6      376     0      0      0
3 months    ki1000109-EE               7      376     0      0      0
3 months    ki1000109-EE               8      376     0      0      0
3 months    ki1000109-EE               9      376     0      0      0
3 months    ki1000109-EE               10     376     4      2      2
3 months    ki1000109-EE               11     376    70     25     45
3 months    ki1000109-EE               12     376    85     39     46
3 months    ki1000109-ResPak           1      260    10      6      4
3 months    ki1000109-ResPak           2      260    11      9      2
3 months    ki1000109-ResPak           3      260    21     11     10
3 months    ki1000109-ResPak           4      260    25     13     12
3 months    ki1000109-ResPak           5      260    48     28     20
3 months    ki1000109-ResPak           6      260    46     25     21
3 months    ki1000109-ResPak           7      260    33     20     13
3 months    ki1000109-ResPak           8      260    33     20     13
3 months    ki1000109-ResPak           9      260    19     14      5
3 months    ki1000109-ResPak           10     260     6      4      2
3 months    ki1000109-ResPak           11     260     3      1      2
3 months    ki1000109-ResPak           12     260     5      3      2
3 months    ki1000304b-SAS-FoodSuppl   1       97     7      4      3
3 months    ki1000304b-SAS-FoodSuppl   2       97     8      7      1
3 months    ki1000304b-SAS-FoodSuppl   3       97     6      5      1
3 months    ki1000304b-SAS-FoodSuppl   4       97     1      1      0
3 months    ki1000304b-SAS-FoodSuppl   5       97     2      2      0
3 months    ki1000304b-SAS-FoodSuppl   6       97     5      2      3
3 months    ki1000304b-SAS-FoodSuppl   7       97    10      6      4
3 months    ki1000304b-SAS-FoodSuppl   8       97    16      9      7
3 months    ki1000304b-SAS-FoodSuppl   9       97    15     10      5
3 months    ki1000304b-SAS-FoodSuppl   10      97    12      6      6
3 months    ki1000304b-SAS-FoodSuppl   11      97     6      3      3
3 months    ki1000304b-SAS-FoodSuppl   12      97     9      4      5
3 months    ki1017093-NIH-Birth        1      570    60     41     19
3 months    ki1017093-NIH-Birth        2      570    51     43      8
3 months    ki1017093-NIH-Birth        3      570    53     47      6
3 months    ki1017093-NIH-Birth        4      570    46     37      9
3 months    ki1017093-NIH-Birth        5      570    46     39      7
3 months    ki1017093-NIH-Birth        6      570    44     31     13
3 months    ki1017093-NIH-Birth        7      570    38     28     10
3 months    ki1017093-NIH-Birth        8      570    37     27     10
3 months    ki1017093-NIH-Birth        9      570    43     31     12
3 months    ki1017093-NIH-Birth        10     570    46     33     13
3 months    ki1017093-NIH-Birth        11     570    52     38     14
3 months    ki1017093-NIH-Birth        12     570    54     45      9
3 months    ki1066203-TanzaniaChild2   1      575    42     37      5
3 months    ki1066203-TanzaniaChild2   2      575    41     38      3
3 months    ki1066203-TanzaniaChild2   3      575    37     36      1
3 months    ki1066203-TanzaniaChild2   4      575    48     46      2
3 months    ki1066203-TanzaniaChild2   5      575    43     40      3
3 months    ki1066203-TanzaniaChild2   6      575    41     38      3
3 months    ki1066203-TanzaniaChild2   7      575    49     47      2
3 months    ki1066203-TanzaniaChild2   8      575    58     55      3
3 months    ki1066203-TanzaniaChild2   9      575    48     42      6
3 months    ki1066203-TanzaniaChild2   10     575    61     57      4
3 months    ki1066203-TanzaniaChild2   11     575    56     52      4
3 months    ki1066203-TanzaniaChild2   12     575    51     48      3
3 months    ki1101329-Keneba           1     2190   228    189     39
3 months    ki1101329-Keneba           2     2190   197    176     21
3 months    ki1101329-Keneba           3     2190   232    210     22
3 months    ki1101329-Keneba           4     2190   153    135     18
3 months    ki1101329-Keneba           5     2190   150    130     20
3 months    ki1101329-Keneba           6     2190   130    114     16
3 months    ki1101329-Keneba           7     2190    98     82     16
3 months    ki1101329-Keneba           8     2190   184    158     26
3 months    ki1101329-Keneba           9     2190   193    157     36
3 months    ki1101329-Keneba           10    2190   252    208     44
3 months    ki1101329-Keneba           11    2190   176    152     24
3 months    ki1101329-Keneba           12    2190   197    163     34
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
3 months    ki1113344-GMS-Nepal        6      571   120    104     16
3 months    ki1113344-GMS-Nepal        7      571   221    182     39
3 months    ki1113344-GMS-Nepal        8      571   229    201     28
3 months    ki1113344-GMS-Nepal        9      571     0      0      0
3 months    ki1113344-GMS-Nepal        10     571     0      0      0
3 months    ki1113344-GMS-Nepal        11     571     0      0      0
3 months    ki1113344-GMS-Nepal        12     571     0      0      0
3 months    ki1114097-CMIN             1     1485   144    123     21
3 months    ki1114097-CMIN             2     1485   138    114     24
3 months    ki1114097-CMIN             3     1485   142    129     13
3 months    ki1114097-CMIN             4     1485   109     93     16
3 months    ki1114097-CMIN             5     1485   107    100      7
3 months    ki1114097-CMIN             6     1485   106     94     12
3 months    ki1114097-CMIN             7     1485   111     96     15
3 months    ki1114097-CMIN             8     1485   122    108     14
3 months    ki1114097-CMIN             9     1485   117     99     18
3 months    ki1114097-CMIN             10    1485   124    106     18
3 months    ki1114097-CMIN             11    1485   114     96     18
3 months    ki1114097-CMIN             12    1485   151    125     26
3 months    ki1114097-CONTENT          1      215    10     10      0
3 months    ki1114097-CONTENT          2      215    18     17      1
3 months    ki1114097-CONTENT          3      215    30     27      3
3 months    ki1114097-CONTENT          4      215    19     17      2
3 months    ki1114097-CONTENT          5      215    14     11      3
3 months    ki1114097-CONTENT          6      215    13     12      1
3 months    ki1114097-CONTENT          7      215    28     26      2
3 months    ki1114097-CONTENT          8      215    23     20      3
3 months    ki1114097-CONTENT          9      215    26     23      3
3 months    ki1114097-CONTENT          10     215    14     13      1
3 months    ki1114097-CONTENT          11     215     9      8      1
3 months    ki1114097-CONTENT          12     215    11     11      0
3 months    ki1126311-ZVITAMBO         1     2271   232    195     37
3 months    ki1126311-ZVITAMBO         2     2271   160    126     34
3 months    ki1126311-ZVITAMBO         3     2271   200    163     37
3 months    ki1126311-ZVITAMBO         4     2271   180    149     31
3 months    ki1126311-ZVITAMBO         5     2271   167    136     31
3 months    ki1126311-ZVITAMBO         6     2271   189    137     52
3 months    ki1126311-ZVITAMBO         7     2271   210    178     32
3 months    ki1126311-ZVITAMBO         8     2271   213    174     39
3 months    ki1126311-ZVITAMBO         9     2271   194    167     27
3 months    ki1126311-ZVITAMBO         10    2271   136    112     24
3 months    ki1126311-ZVITAMBO         11    2271   181    155     26
3 months    ki1126311-ZVITAMBO         12    2271   209    188     21
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
6 months    ki0047075b-MAL-ED          1     1696   168    136     32
6 months    ki0047075b-MAL-ED          2     1696   152    128     24
6 months    ki0047075b-MAL-ED          3     1696   133    108     25
6 months    ki0047075b-MAL-ED          4     1696   112     95     17
6 months    ki0047075b-MAL-ED          5     1696   126    111     15
6 months    ki0047075b-MAL-ED          6     1696   107    100      7
6 months    ki0047075b-MAL-ED          7     1696   142    112     30
6 months    ki0047075b-MAL-ED          8     1696   122    106     16
6 months    ki0047075b-MAL-ED          9     1696   150    131     19
6 months    ki0047075b-MAL-ED          10    1696   157    130     27
6 months    ki0047075b-MAL-ED          11    1696   169    134     35
6 months    ki0047075b-MAL-ED          12    1696   158    128     30
6 months    ki1000108-CMC-V-BCS-2002   1      369    34     24     10
6 months    ki1000108-CMC-V-BCS-2002   2      369    16     11      5
6 months    ki1000108-CMC-V-BCS-2002   3      369    31     25      6
6 months    ki1000108-CMC-V-BCS-2002   4      369    44     36      8
6 months    ki1000108-CMC-V-BCS-2002   5      369    35     23     12
6 months    ki1000108-CMC-V-BCS-2002   6      369    37     21     16
6 months    ki1000108-CMC-V-BCS-2002   7      369    39     19     20
6 months    ki1000108-CMC-V-BCS-2002   8      369    17     11      6
6 months    ki1000108-CMC-V-BCS-2002   9      369    20     14      6
6 months    ki1000108-CMC-V-BCS-2002   10     369    29     21      8
6 months    ki1000108-CMC-V-BCS-2002   11     369    42     35      7
6 months    ki1000108-CMC-V-BCS-2002   12     369    25     18      7
6 months    ki1000108-IRC              1      407    38     27     11
6 months    ki1000108-IRC              2      407    28     15     13
6 months    ki1000108-IRC              3      407    27     19      8
6 months    ki1000108-IRC              4      407    21     15      6
6 months    ki1000108-IRC              5      407    21     14      7
6 months    ki1000108-IRC              6      407    37     32      5
6 months    ki1000108-IRC              7      407    36     25     11
6 months    ki1000108-IRC              8      407    44     38      6
6 months    ki1000108-IRC              9      407    27     20      7
6 months    ki1000108-IRC              10     407    37     32      5
6 months    ki1000108-IRC              11     407    40     33      7
6 months    ki1000108-IRC              12     407    51     37     14
6 months    ki1000109-EE               1      372    90     39     51
6 months    ki1000109-EE               2      372    67     36     31
6 months    ki1000109-EE               3      372    42     24     18
6 months    ki1000109-EE               4      372    16      5     11
6 months    ki1000109-EE               5      372     0      0      0
6 months    ki1000109-EE               6      372     0      0      0
6 months    ki1000109-EE               7      372     0      0      0
6 months    ki1000109-EE               8      372     0      0      0
6 months    ki1000109-EE               9      372     0      0      0
6 months    ki1000109-EE               10     372     4      3      1
6 months    ki1000109-EE               11     372    70     28     42
6 months    ki1000109-EE               12     372    83     44     39
6 months    ki1000109-ResPak           1      235     9      4      5
6 months    ki1000109-ResPak           2      235    11      9      2
6 months    ki1000109-ResPak           3      235    20      8     12
6 months    ki1000109-ResPak           4      235    21     13      8
6 months    ki1000109-ResPak           5      235    45     30     15
6 months    ki1000109-ResPak           6      235    42     27     15
6 months    ki1000109-ResPak           7      235    26     16     10
6 months    ki1000109-ResPak           8      235    31     23      8
6 months    ki1000109-ResPak           9      235    20     15      5
6 months    ki1000109-ResPak           10     235     4      4      0
6 months    ki1000109-ResPak           11     235     1      1      0
6 months    ki1000109-ResPak           12     235     5      2      3
6 months    ki1000304b-SAS-FoodSuppl   1       96     6      1      5
6 months    ki1000304b-SAS-FoodSuppl   2       96     9      4      5
6 months    ki1000304b-SAS-FoodSuppl   3       96     6      2      4
6 months    ki1000304b-SAS-FoodSuppl   4       96     1      0      1
6 months    ki1000304b-SAS-FoodSuppl   5       96     3      2      1
6 months    ki1000304b-SAS-FoodSuppl   6       96     5      1      4
6 months    ki1000304b-SAS-FoodSuppl   7       96     9      6      3
6 months    ki1000304b-SAS-FoodSuppl   8       96    14      8      6
6 months    ki1000304b-SAS-FoodSuppl   9       96    17     10      7
6 months    ki1000304b-SAS-FoodSuppl   10      96    12      8      4
6 months    ki1000304b-SAS-FoodSuppl   11      96     5      3      2
6 months    ki1000304b-SAS-FoodSuppl   12      96     9      3      6
6 months    ki1017093-NIH-Birth        1      537    52     37     15
6 months    ki1017093-NIH-Birth        2      537    49     35     14
6 months    ki1017093-NIH-Birth        3      537    50     38     12
6 months    ki1017093-NIH-Birth        4      537    42     32     10
6 months    ki1017093-NIH-Birth        5      537    42     33      9
6 months    ki1017093-NIH-Birth        6      537    43     27     16
6 months    ki1017093-NIH-Birth        7      537    39     28     11
6 months    ki1017093-NIH-Birth        8      537    35     28      7
6 months    ki1017093-NIH-Birth        9      537    42     29     13
6 months    ki1017093-NIH-Birth        10     537    42     32     10
6 months    ki1017093-NIH-Birth        11     537    50     33     17
6 months    ki1017093-NIH-Birth        12     537    51     41     10
6 months    ki1066203-TanzaniaChild2   1      504    35     29      6
6 months    ki1066203-TanzaniaChild2   2      504    33     32      1
6 months    ki1066203-TanzaniaChild2   3      504    29     28      1
6 months    ki1066203-TanzaniaChild2   4      504    40     35      5
6 months    ki1066203-TanzaniaChild2   5      504    38     35      3
6 months    ki1066203-TanzaniaChild2   6      504    37     30      7
6 months    ki1066203-TanzaniaChild2   7      504    46     41      5
6 months    ki1066203-TanzaniaChild2   8      504    55     52      3
6 months    ki1066203-TanzaniaChild2   9      504    41     39      2
6 months    ki1066203-TanzaniaChild2   10     504    53     45      8
6 months    ki1066203-TanzaniaChild2   11     504    51     48      3
6 months    ki1066203-TanzaniaChild2   12     504    46     45      1
6 months    ki1101329-Keneba           1     2089   210    183     27
6 months    ki1101329-Keneba           2     2089   187    166     21
6 months    ki1101329-Keneba           3     2089   221    190     31
6 months    ki1101329-Keneba           4     2089   143    128     15
6 months    ki1101329-Keneba           5     2089   143    123     20
6 months    ki1101329-Keneba           6     2089   118     96     22
6 months    ki1101329-Keneba           7     2089    92     73     19
6 months    ki1101329-Keneba           8     2089   174    149     25
6 months    ki1101329-Keneba           9     2089   174    146     28
6 months    ki1101329-Keneba           10    2089   248    208     40
6 months    ki1101329-Keneba           11    2089   187    163     24
6 months    ki1101329-Keneba           12    2089   192    169     23
6 months    ki1112895-Guatemala BSC    1      106     7      2      5
6 months    ki1112895-Guatemala BSC    2      106     8      7      1
6 months    ki1112895-Guatemala BSC    3      106     7      5      2
6 months    ki1112895-Guatemala BSC    4      106    10      6      4
6 months    ki1112895-Guatemala BSC    5      106    12     10      2
6 months    ki1112895-Guatemala BSC    6      106     8      2      6
6 months    ki1112895-Guatemala BSC    7      106     9      7      2
6 months    ki1112895-Guatemala BSC    8      106     4      3      1
6 months    ki1112895-Guatemala BSC    9      106     8      6      2
6 months    ki1112895-Guatemala BSC    10     106    12     11      1
6 months    ki1112895-Guatemala BSC    11     106     8      6      2
6 months    ki1112895-Guatemala BSC    12     106    13     11      2
6 months    ki1113344-GMS-Nepal        1      563     0      0      0
6 months    ki1113344-GMS-Nepal        2      563     0      0      0
6 months    ki1113344-GMS-Nepal        3      563     0      0      0
6 months    ki1113344-GMS-Nepal        4      563     1      0      1
6 months    ki1113344-GMS-Nepal        5      563     0      0      0
6 months    ki1113344-GMS-Nepal        6      563   121     94     27
6 months    ki1113344-GMS-Nepal        7      563   218    168     50
6 months    ki1113344-GMS-Nepal        8      563   223    182     41
6 months    ki1113344-GMS-Nepal        9      563     0      0      0
6 months    ki1113344-GMS-Nepal        10     563     0      0      0
6 months    ki1113344-GMS-Nepal        11     563     0      0      0
6 months    ki1113344-GMS-Nepal        12     563     0      0      0
6 months    ki1114097-CMIN             1     1836   181    149     32
6 months    ki1114097-CMIN             2     1836   146    131     15
6 months    ki1114097-CMIN             3     1836   164    147     17
6 months    ki1114097-CMIN             4     1836   138    124     14
6 months    ki1114097-CMIN             5     1836   132    123      9
6 months    ki1114097-CMIN             6     1836   107     98      9
6 months    ki1114097-CMIN             7     1836   109     99     10
6 months    ki1114097-CMIN             8     1836   157    139     18
6 months    ki1114097-CMIN             9     1836   193    162     31
6 months    ki1114097-CMIN             10    1836   189    169     20
6 months    ki1114097-CMIN             11    1836   146    127     19
6 months    ki1114097-CMIN             12    1836   174    146     28
6 months    ki1114097-CONTENT          1      215    10     10      0
6 months    ki1114097-CONTENT          2      215    18     16      2
6 months    ki1114097-CONTENT          3      215    30     27      3
6 months    ki1114097-CONTENT          4      215    19     15      4
6 months    ki1114097-CONTENT          5      215    14     12      2
6 months    ki1114097-CONTENT          6      215    13     11      2
6 months    ki1114097-CONTENT          7      215    28     27      1
6 months    ki1114097-CONTENT          8      215    23     21      2
6 months    ki1114097-CONTENT          9      215    26     24      2
6 months    ki1114097-CONTENT          10     215    14     14      0
6 months    ki1114097-CONTENT          11     215     9      8      1
6 months    ki1114097-CONTENT          12     215    11     11      0
6 months    ki1126311-ZVITAMBO         1     2052   216    176     40
6 months    ki1126311-ZVITAMBO         2     2052   138    108     30
6 months    ki1126311-ZVITAMBO         3     2052   178    141     37
6 months    ki1126311-ZVITAMBO         4     2052   163    130     33
6 months    ki1126311-ZVITAMBO         5     2052   148    123     25
6 months    ki1126311-ZVITAMBO         6     2052   152    126     26
6 months    ki1126311-ZVITAMBO         7     2052   167    136     31
6 months    ki1126311-ZVITAMBO         8     2052   171    154     17
6 months    ki1126311-ZVITAMBO         9     2052   186    168     18
6 months    ki1126311-ZVITAMBO         10    2052   136    114     22
6 months    ki1126311-ZVITAMBO         11    2052   199    171     28
6 months    ki1126311-ZVITAMBO         12    2052   198    170     28
6 months    ki1148112-LCNI-5           1      417    35     24     11
6 months    ki1148112-LCNI-5           2      417    21     16      5
6 months    ki1148112-LCNI-5           3      417    13      5      8
6 months    ki1148112-LCNI-5           4      417    19     11      8
6 months    ki1148112-LCNI-5           5      417    23     13     10
6 months    ki1148112-LCNI-5           6      417    18     10      8
6 months    ki1148112-LCNI-5           7      417    30     24      6
6 months    ki1148112-LCNI-5           8      417    48     32     16
6 months    ki1148112-LCNI-5           9      417    45     25     20
6 months    ki1148112-LCNI-5           10     417    64     38     26
6 months    ki1148112-LCNI-5           11     417    51     34     17
6 months    ki1148112-LCNI-5           12     417    50     30     20
9 months    ki0047075b-MAL-ED          1     1640   161    124     37
9 months    ki0047075b-MAL-ED          2     1640   146    109     37
9 months    ki0047075b-MAL-ED          3     1640   129    102     27
9 months    ki0047075b-MAL-ED          4     1640   106     88     18
9 months    ki0047075b-MAL-ED          5     1640   122    100     22
9 months    ki0047075b-MAL-ED          6     1640   103     85     18
9 months    ki0047075b-MAL-ED          7     1640   138    101     37
9 months    ki0047075b-MAL-ED          8     1640   118     98     20
9 months    ki0047075b-MAL-ED          9     1640   146    130     16
9 months    ki0047075b-MAL-ED          10    1640   150    118     32
9 months    ki0047075b-MAL-ED          11    1640   165    123     42
9 months    ki0047075b-MAL-ED          12    1640   156    123     33
9 months    ki1000108-CMC-V-BCS-2002   1      366    34     20     14
9 months    ki1000108-CMC-V-BCS-2002   2      366    15      7      8
9 months    ki1000108-CMC-V-BCS-2002   3      366    30     18     12
9 months    ki1000108-CMC-V-BCS-2002   4      366    44     30     14
9 months    ki1000108-CMC-V-BCS-2002   5      366    35     18     17
9 months    ki1000108-CMC-V-BCS-2002   6      366    37     20     17
9 months    ki1000108-CMC-V-BCS-2002   7      366    38     21     17
9 months    ki1000108-CMC-V-BCS-2002   8      366    17     12      5
9 months    ki1000108-CMC-V-BCS-2002   9      366    20     17      3
9 months    ki1000108-CMC-V-BCS-2002   10     366    29     23      6
9 months    ki1000108-CMC-V-BCS-2002   11     366    42     33      9
9 months    ki1000108-CMC-V-BCS-2002   12     366    25     12     13
9 months    ki1000108-IRC              1      407    38     24     14
9 months    ki1000108-IRC              2      407    28     17     11
9 months    ki1000108-IRC              3      407    27     22      5
9 months    ki1000108-IRC              4      407    21     11     10
9 months    ki1000108-IRC              5      407    21     11     10
9 months    ki1000108-IRC              6      407    37     32      5
9 months    ki1000108-IRC              7      407    36     27      9
9 months    ki1000108-IRC              8      407    44     36      8
9 months    ki1000108-IRC              9      407    27     19      8
9 months    ki1000108-IRC              10     407    37     31      6
9 months    ki1000108-IRC              11     407    40     31      9
9 months    ki1000108-IRC              12     407    51     35     16
9 months    ki1000109-EE               1      366    90     35     55
9 months    ki1000109-EE               2      366    66     24     42
9 months    ki1000109-EE               3      366    41     17     24
9 months    ki1000109-EE               4      366    16      4     12
9 months    ki1000109-EE               5      366     0      0      0
9 months    ki1000109-EE               6      366     0      0      0
9 months    ki1000109-EE               7      366     0      0      0
9 months    ki1000109-EE               8      366     0      0      0
9 months    ki1000109-EE               9      366     0      0      0
9 months    ki1000109-EE               10     366     4      2      2
9 months    ki1000109-EE               11     366    68     30     38
9 months    ki1000109-EE               12     366    81     37     44
9 months    ki1000109-ResPak           1      211     9      3      6
9 months    ki1000109-ResPak           2      211     9      7      2
9 months    ki1000109-ResPak           3      211    15      9      6
9 months    ki1000109-ResPak           4      211    16     13      3
9 months    ki1000109-ResPak           5      211    45     31     14
9 months    ki1000109-ResPak           6      211    37     24     13
9 months    ki1000109-ResPak           7      211    20     14      6
9 months    ki1000109-ResPak           8      211    30     20     10
9 months    ki1000109-ResPak           9      211    19     13      6
9 months    ki1000109-ResPak           10     211     5      3      2
9 months    ki1000109-ResPak           11     211     1      1      0
9 months    ki1000109-ResPak           12     211     5      3      2
9 months    ki1000304b-SAS-FoodSuppl   1       85     6      0      6
9 months    ki1000304b-SAS-FoodSuppl   2       85     7      4      3
9 months    ki1000304b-SAS-FoodSuppl   3       85     6      2      4
9 months    ki1000304b-SAS-FoodSuppl   4       85     1      0      1
9 months    ki1000304b-SAS-FoodSuppl   5       85     3      0      3
9 months    ki1000304b-SAS-FoodSuppl   6       85     4      1      3
9 months    ki1000304b-SAS-FoodSuppl   7       85     8      3      5
9 months    ki1000304b-SAS-FoodSuppl   8       85    13      4      9
9 months    ki1000304b-SAS-FoodSuppl   9       85    15      8      7
9 months    ki1000304b-SAS-FoodSuppl   10      85     8      1      7
9 months    ki1000304b-SAS-FoodSuppl   11      85     4      2      2
9 months    ki1000304b-SAS-FoodSuppl   12      85    10      3      7
9 months    ki1017093-NIH-Birth        1      507    51     28     23
9 months    ki1017093-NIH-Birth        2      507    43     28     15
9 months    ki1017093-NIH-Birth        3      507    46     31     15
9 months    ki1017093-NIH-Birth        4      507    40     30     10
9 months    ki1017093-NIH-Birth        5      507    41     28     13
9 months    ki1017093-NIH-Birth        6      507    44     29     15
9 months    ki1017093-NIH-Birth        7      507    39     26     13
9 months    ki1017093-NIH-Birth        8      507    28     16     12
9 months    ki1017093-NIH-Birth        9      507    35     22     13
9 months    ki1017093-NIH-Birth        10     507    41     26     15
9 months    ki1017093-NIH-Birth        11     507    48     28     20
9 months    ki1017093-NIH-Birth        12     507    51     34     17
9 months    ki1066203-TanzaniaChild2   1      434    31     25      6
9 months    ki1066203-TanzaniaChild2   2      434    30     29      1
9 months    ki1066203-TanzaniaChild2   3      434    27     21      6
9 months    ki1066203-TanzaniaChild2   4      434    32     23      9
9 months    ki1066203-TanzaniaChild2   5      434    33     28      5
9 months    ki1066203-TanzaniaChild2   6      434    31     25      6
9 months    ki1066203-TanzaniaChild2   7      434    40     33      7
9 months    ki1066203-TanzaniaChild2   8      434    49     44      5
9 months    ki1066203-TanzaniaChild2   9      434    37     33      4
9 months    ki1066203-TanzaniaChild2   10     434    45     38      7
9 months    ki1066203-TanzaniaChild2   11     434    40     37      3
9 months    ki1066203-TanzaniaChild2   12     434    39     35      4
9 months    ki1101329-Keneba           1     2067   212    172     40
9 months    ki1101329-Keneba           2     2067   187    159     28
9 months    ki1101329-Keneba           3     2067   216    183     33
9 months    ki1101329-Keneba           4     2067   135    110     25
9 months    ki1101329-Keneba           5     2067   138    114     24
9 months    ki1101329-Keneba           6     2067   105     82     23
9 months    ki1101329-Keneba           7     2067    98     73     25
9 months    ki1101329-Keneba           8     2067   184    160     24
9 months    ki1101329-Keneba           9     2067   176    150     26
9 months    ki1101329-Keneba           10    2067   241    193     48
9 months    ki1101329-Keneba           11    2067   187    151     36
9 months    ki1101329-Keneba           12    2067   188    148     40
9 months    ki1112895-Guatemala BSC    1       60     4      2      2
9 months    ki1112895-Guatemala BSC    2       60     7      5      2
9 months    ki1112895-Guatemala BSC    3       60     5      4      1
9 months    ki1112895-Guatemala BSC    4       60     6      3      3
9 months    ki1112895-Guatemala BSC    5       60     5      5      0
9 months    ki1112895-Guatemala BSC    6       60     5      2      3
9 months    ki1112895-Guatemala BSC    7       60     4      2      2
9 months    ki1112895-Guatemala BSC    8       60     1      0      1
9 months    ki1112895-Guatemala BSC    9       60     4      3      1
9 months    ki1112895-Guatemala BSC    10      60     7      5      2
9 months    ki1112895-Guatemala BSC    11      60     4      2      2
9 months    ki1112895-Guatemala BSC    12      60     8      5      3
9 months    ki1113344-GMS-Nepal        1      551     0      0      0
9 months    ki1113344-GMS-Nepal        2      551     0      0      0
9 months    ki1113344-GMS-Nepal        3      551     0      0      0
9 months    ki1113344-GMS-Nepal        4      551     1      0      1
9 months    ki1113344-GMS-Nepal        5      551     0      0      0
9 months    ki1113344-GMS-Nepal        6      551   118     80     38
9 months    ki1113344-GMS-Nepal        7      551   215    155     60
9 months    ki1113344-GMS-Nepal        8      551   217    161     56
9 months    ki1113344-GMS-Nepal        9      551     0      0      0
9 months    ki1113344-GMS-Nepal        10     551     0      0      0
9 months    ki1113344-GMS-Nepal        11     551     0      0      0
9 months    ki1113344-GMS-Nepal        12     551     0      0      0
9 months    ki1114097-CMIN             1     1846   179    143     36
9 months    ki1114097-CMIN             2     1846   142    114     28
9 months    ki1114097-CMIN             3     1846   149    133     16
9 months    ki1114097-CMIN             4     1846   134    107     27
9 months    ki1114097-CMIN             5     1846   142    117     25
9 months    ki1114097-CMIN             6     1846   128    111     17
9 months    ki1114097-CMIN             7     1846   141    118     23
9 months    ki1114097-CMIN             8     1846   157    134     23
9 months    ki1114097-CMIN             9     1846   162    135     27
9 months    ki1114097-CMIN             10    1846   181    140     41
9 months    ki1114097-CMIN             11    1846   154    129     25
9 months    ki1114097-CMIN             12    1846   177    142     35
9 months    ki1114097-CONTENT          1      214    10     10      0
9 months    ki1114097-CONTENT          2      214    18     16      2
9 months    ki1114097-CONTENT          3      214    29     28      1
9 months    ki1114097-CONTENT          4      214    19     14      5
9 months    ki1114097-CONTENT          5      214    14     12      2
9 months    ki1114097-CONTENT          6      214    13     11      2
9 months    ki1114097-CONTENT          7      214    28     26      2
9 months    ki1114097-CONTENT          8      214    23     21      2
9 months    ki1114097-CONTENT          9      214    26     24      2
9 months    ki1114097-CONTENT          10     214    14     12      2
9 months    ki1114097-CONTENT          11     214     9      7      2
9 months    ki1114097-CONTENT          12     214    11     11      0
9 months    ki1126311-ZVITAMBO         1     1963   211    166     45
9 months    ki1126311-ZVITAMBO         2     1963   147    117     30
9 months    ki1126311-ZVITAMBO         3     1963   156    126     30
9 months    ki1126311-ZVITAMBO         4     1963   137    117     20
9 months    ki1126311-ZVITAMBO         5     1963   142    115     27
9 months    ki1126311-ZVITAMBO         6     1963   152    118     34
9 months    ki1126311-ZVITAMBO         7     1963   144    118     26
9 months    ki1126311-ZVITAMBO         8     1963   177    150     27
9 months    ki1126311-ZVITAMBO         9     1963   178    145     33
9 months    ki1126311-ZVITAMBO         10    1963   146    108     38
9 months    ki1126311-ZVITAMBO         11    1963   185    151     34
9 months    ki1126311-ZVITAMBO         12    1963   188    150     38
9 months    ki1148112-LCNI-5           1      322    23     16      7
9 months    ki1148112-LCNI-5           2      322    14     12      2
9 months    ki1148112-LCNI-5           3      322    11      6      5
9 months    ki1148112-LCNI-5           4      322    11     10      1
9 months    ki1148112-LCNI-5           5      322    18     13      5
9 months    ki1148112-LCNI-5           6      322    14      8      6
9 months    ki1148112-LCNI-5           7      322    20     16      4
9 months    ki1148112-LCNI-5           8      322    40     32      8
9 months    ki1148112-LCNI-5           9      322    39     23     16
9 months    ki1148112-LCNI-5           10     322    53     35     18
9 months    ki1148112-LCNI-5           11     322    42     30     12
9 months    ki1148112-LCNI-5           12     322    37     19     18
12 months   ki0047075b-MAL-ED          1     1616   159    115     44
12 months   ki0047075b-MAL-ED          2     1616   143     90     53
12 months   ki0047075b-MAL-ED          3     1616   125     91     34
12 months   ki0047075b-MAL-ED          4     1616   105     81     24
12 months   ki0047075b-MAL-ED          5     1616   121     93     28
12 months   ki0047075b-MAL-ED          6     1616   103     77     26
12 months   ki0047075b-MAL-ED          7     1616   140     97     43
12 months   ki0047075b-MAL-ED          8     1616   113     85     28
12 months   ki0047075b-MAL-ED          9     1616   143    113     30
12 months   ki0047075b-MAL-ED          10    1616   145    107     38
12 months   ki0047075b-MAL-ED          11    1616   164    117     47
12 months   ki0047075b-MAL-ED          12    1616   155    114     41
12 months   ki1000108-CMC-V-BCS-2002   1      368    34     17     17
12 months   ki1000108-CMC-V-BCS-2002   2      368    16      4     12
12 months   ki1000108-CMC-V-BCS-2002   3      368    31     16     15
12 months   ki1000108-CMC-V-BCS-2002   4      368    43     22     21
12 months   ki1000108-CMC-V-BCS-2002   5      368    36     16     20
12 months   ki1000108-CMC-V-BCS-2002   6      368    37     17     20
12 months   ki1000108-CMC-V-BCS-2002   7      368    38     20     18
12 months   ki1000108-CMC-V-BCS-2002   8      368    18     12      6
12 months   ki1000108-CMC-V-BCS-2002   9      368    20     14      6
12 months   ki1000108-CMC-V-BCS-2002   10     368    29     16     13
12 months   ki1000108-CMC-V-BCS-2002   11     368    43     27     16
12 months   ki1000108-CMC-V-BCS-2002   12     368    23      4     19
12 months   ki1000108-IRC              1      406    37     22     15
12 months   ki1000108-IRC              2      406    28     14     14
12 months   ki1000108-IRC              3      406    27     20      7
12 months   ki1000108-IRC              4      406    20      9     11
12 months   ki1000108-IRC              5      406    21     10     11
12 months   ki1000108-IRC              6      406    37     32      5
12 months   ki1000108-IRC              7      406    36     30      6
12 months   ki1000108-IRC              8      406    44     36      8
12 months   ki1000108-IRC              9      406    27     18      9
12 months   ki1000108-IRC              10     406    38     33      5
12 months   ki1000108-IRC              11     406    40     29     11
12 months   ki1000108-IRC              12     406    51     34     17
12 months   ki1000109-EE               1      357    89     19     70
12 months   ki1000109-EE               2      357    62     15     47
12 months   ki1000109-EE               3      357    40     12     28
12 months   ki1000109-EE               4      357    16      3     13
12 months   ki1000109-EE               5      357     0      0      0
12 months   ki1000109-EE               6      357     0      0      0
12 months   ki1000109-EE               7      357     0      0      0
12 months   ki1000109-EE               8      357     0      0      0
12 months   ki1000109-EE               9      357     0      0      0
12 months   ki1000109-EE               10     357     3      0      3
12 months   ki1000109-EE               11     357    65     26     39
12 months   ki1000109-EE               12     357    82     27     55
12 months   ki1000109-ResPak           1      194     5      2      3
12 months   ki1000109-ResPak           2      194     9      7      2
12 months   ki1000109-ResPak           3      194    14     10      4
12 months   ki1000109-ResPak           4      194    13      9      4
12 months   ki1000109-ResPak           5      194    43     28     15
12 months   ki1000109-ResPak           6      194    37     22     15
12 months   ki1000109-ResPak           7      194    19     14      5
12 months   ki1000109-ResPak           8      194    28     19      9
12 months   ki1000109-ResPak           9      194    18     14      4
12 months   ki1000109-ResPak           10     194     5      4      1
12 months   ki1000109-ResPak           11     194     0      0      0
12 months   ki1000109-ResPak           12     194     3      1      2
12 months   ki1000304b-SAS-FoodSuppl   1       92     7      1      6
12 months   ki1000304b-SAS-FoodSuppl   2       92     8      2      6
12 months   ki1000304b-SAS-FoodSuppl   3       92     6      1      5
12 months   ki1000304b-SAS-FoodSuppl   4       92     1      0      1
12 months   ki1000304b-SAS-FoodSuppl   5       92     3      1      2
12 months   ki1000304b-SAS-FoodSuppl   6       92     5      1      4
12 months   ki1000304b-SAS-FoodSuppl   7       92     9      2      7
12 months   ki1000304b-SAS-FoodSuppl   8       92    14      4     10
12 months   ki1000304b-SAS-FoodSuppl   9       92    15      1     14
12 months   ki1000304b-SAS-FoodSuppl   10      92    10      2      8
12 months   ki1000304b-SAS-FoodSuppl   11      92     4      1      3
12 months   ki1000304b-SAS-FoodSuppl   12      92    10      3      7
12 months   ki1017093-NIH-Birth        1      491    46     26     20
12 months   ki1017093-NIH-Birth        2      491    43     28     15
12 months   ki1017093-NIH-Birth        3      491    45     31     14
12 months   ki1017093-NIH-Birth        4      491    38     25     13
12 months   ki1017093-NIH-Birth        5      491    39     28     11
12 months   ki1017093-NIH-Birth        6      491    38     23     15
12 months   ki1017093-NIH-Birth        7      491    38     23     15
12 months   ki1017093-NIH-Birth        8      491    30     18     12
12 months   ki1017093-NIH-Birth        9      491    34     20     14
12 months   ki1017093-NIH-Birth        10     491    41     27     14
12 months   ki1017093-NIH-Birth        11     491    49     29     20
12 months   ki1017093-NIH-Birth        12     491    50     29     21
12 months   ki1066203-TanzaniaChild2   1      357    27     22      5
12 months   ki1066203-TanzaniaChild2   2      357    26     24      2
12 months   ki1066203-TanzaniaChild2   3      357    20     16      4
12 months   ki1066203-TanzaniaChild2   4      357    28     20      8
12 months   ki1066203-TanzaniaChild2   5      357    29     25      4
12 months   ki1066203-TanzaniaChild2   6      357    24     22      2
12 months   ki1066203-TanzaniaChild2   7      357    32     27      5
12 months   ki1066203-TanzaniaChild2   8      357    45     38      7
12 months   ki1066203-TanzaniaChild2   9      357    30     27      3
12 months   ki1066203-TanzaniaChild2   10     357    32     30      2
12 months   ki1066203-TanzaniaChild2   11     357    34     30      4
12 months   ki1066203-TanzaniaChild2   12     357    30     24      6
12 months   ki1101329-Keneba           1     1948   181    132     49
12 months   ki1101329-Keneba           2     1948   178    139     39
12 months   ki1101329-Keneba           3     1948   194    151     43
12 months   ki1101329-Keneba           4     1948   134    107     27
12 months   ki1101329-Keneba           5     1948   139    107     32
12 months   ki1101329-Keneba           6     1948   118     95     23
12 months   ki1101329-Keneba           7     1948    98     74     24
12 months   ki1101329-Keneba           8     1948   170    129     41
12 months   ki1101329-Keneba           9     1948   176    130     46
12 months   ki1101329-Keneba           10    1948   225    158     67
12 months   ki1101329-Keneba           11    1948   173    128     45
12 months   ki1101329-Keneba           12    1948   162    115     47
12 months   ki1112895-Guatemala BSC    1       53     4      1      3
12 months   ki1112895-Guatemala BSC    2       53     6      4      2
12 months   ki1112895-Guatemala BSC    3       53     4      4      0
12 months   ki1112895-Guatemala BSC    4       53     6      2      4
12 months   ki1112895-Guatemala BSC    5       53     3      3      0
12 months   ki1112895-Guatemala BSC    6       53     4      2      2
12 months   ki1112895-Guatemala BSC    7       53     4      2      2
12 months   ki1112895-Guatemala BSC    8       53     1      0      1
12 months   ki1112895-Guatemala BSC    9       53     4      2      2
12 months   ki1112895-Guatemala BSC    10      53     7      5      2
12 months   ki1112895-Guatemala BSC    11      53     3      1      2
12 months   ki1112895-Guatemala BSC    12      53     7      4      3
12 months   ki1113344-GMS-Nepal        1      558     0      0      0
12 months   ki1113344-GMS-Nepal        2      558     0      0      0
12 months   ki1113344-GMS-Nepal        3      558     0      0      0
12 months   ki1113344-GMS-Nepal        4      558     1      0      1
12 months   ki1113344-GMS-Nepal        5      558     0      0      0
12 months   ki1113344-GMS-Nepal        6      558   123     75     48
12 months   ki1113344-GMS-Nepal        7      558   214    139     75
12 months   ki1113344-GMS-Nepal        8      558   220    153     67
12 months   ki1113344-GMS-Nepal        9      558     0      0      0
12 months   ki1113344-GMS-Nepal        10     558     0      0      0
12 months   ki1113344-GMS-Nepal        11     558     0      0      0
12 months   ki1113344-GMS-Nepal        12     558     0      0      0
12 months   ki1114097-CMIN             1     1578   117     80     37
12 months   ki1114097-CMIN             2     1578   127     96     31
12 months   ki1114097-CMIN             3     1578   164    135     29
12 months   ki1114097-CMIN             4     1578   137    103     34
12 months   ki1114097-CMIN             5     1578   120     98     22
12 months   ki1114097-CMIN             6     1578   109     82     27
12 months   ki1114097-CMIN             7     1578   117     92     25
12 months   ki1114097-CMIN             8     1578   151    117     34
12 months   ki1114097-CMIN             9     1578   154    114     40
12 months   ki1114097-CMIN             10    1578   142     99     43
12 months   ki1114097-CMIN             11    1578   112     82     30
12 months   ki1114097-CMIN             12    1578   128     88     40
12 months   ki1114097-CONTENT          1      215    10     10      0
12 months   ki1114097-CONTENT          2      215    18     16      2
12 months   ki1114097-CONTENT          3      215    30     28      2
12 months   ki1114097-CONTENT          4      215    19     12      7
12 months   ki1114097-CONTENT          5      215    14     12      2
12 months   ki1114097-CONTENT          6      215    13      8      5
12 months   ki1114097-CONTENT          7      215    28     27      1
12 months   ki1114097-CONTENT          8      215    23     21      2
12 months   ki1114097-CONTENT          9      215    26     24      2
12 months   ki1114097-CONTENT          10     215    14     12      2
12 months   ki1114097-CONTENT          11     215     9      8      1
12 months   ki1114097-CONTENT          12     215    11     11      0
12 months   ki1126311-ZVITAMBO         1     1701   172    135     37
12 months   ki1126311-ZVITAMBO         2     1701   119     83     36
12 months   ki1126311-ZVITAMBO         3     1701   143    110     33
12 months   ki1126311-ZVITAMBO         4     1701   134    101     33
12 months   ki1126311-ZVITAMBO         5     1701   127     96     31
12 months   ki1126311-ZVITAMBO         6     1701   140    106     34
12 months   ki1126311-ZVITAMBO         7     1701   152    116     36
12 months   ki1126311-ZVITAMBO         8     1701   154    118     36
12 months   ki1126311-ZVITAMBO         9     1701   149    120     29
12 months   ki1126311-ZVITAMBO         10    1701   113     79     34
12 months   ki1126311-ZVITAMBO         11    1701   147    110     37
12 months   ki1126311-ZVITAMBO         12    1701   151    122     29
12 months   ki1148112-LCNI-5           1      310    29     15     14
12 months   ki1148112-LCNI-5           2      310    16     12      4
12 months   ki1148112-LCNI-5           3      310    10      2      8
12 months   ki1148112-LCNI-5           4      310    11      9      2
12 months   ki1148112-LCNI-5           5      310    18      9      9
12 months   ki1148112-LCNI-5           6      310    14      8      6
12 months   ki1148112-LCNI-5           7      310    23     17      6
12 months   ki1148112-LCNI-5           8      310    39     26     13
12 months   ki1148112-LCNI-5           9      310    32     21     11
12 months   ki1148112-LCNI-5           10     310    47     26     21
12 months   ki1148112-LCNI-5           11     310    35     22     13
12 months   ki1148112-LCNI-5           12     310    36     16     20
18 months   ki0047075b-MAL-ED          1     1546   154     91     63
18 months   ki0047075b-MAL-ED          2     1546   132     69     63
18 months   ki0047075b-MAL-ED          3     1546   118     72     46
18 months   ki0047075b-MAL-ED          4     1546   100     65     35
18 months   ki0047075b-MAL-ED          5     1546   113     70     43
18 months   ki0047075b-MAL-ED          6     1546   101     64     37
18 months   ki0047075b-MAL-ED          7     1546   137     75     62
18 months   ki0047075b-MAL-ED          8     1546   113     76     37
18 months   ki0047075b-MAL-ED          9     1546   139    100     39
18 months   ki0047075b-MAL-ED          10    1546   139     88     51
18 months   ki0047075b-MAL-ED          11    1546   151     88     63
18 months   ki0047075b-MAL-ED          12    1546   149     90     59
18 months   ki1000108-CMC-V-BCS-2002   1      369    34     15     19
18 months   ki1000108-CMC-V-BCS-2002   2      369    16      2     14
18 months   ki1000108-CMC-V-BCS-2002   3      369    30      7     23
18 months   ki1000108-CMC-V-BCS-2002   4      369    43     19     24
18 months   ki1000108-CMC-V-BCS-2002   5      369    35      7     28
18 months   ki1000108-CMC-V-BCS-2002   6      369    36     11     25
18 months   ki1000108-CMC-V-BCS-2002   7      369    39     12     27
18 months   ki1000108-CMC-V-BCS-2002   8      369    18      7     11
18 months   ki1000108-CMC-V-BCS-2002   9      369    21      7     14
18 months   ki1000108-CMC-V-BCS-2002   10     369    29     12     17
18 months   ki1000108-CMC-V-BCS-2002   11     369    43     15     28
18 months   ki1000108-CMC-V-BCS-2002   12     369    25      1     24
18 months   ki1000108-IRC              1      405    38     23     15
18 months   ki1000108-IRC              2      405    28     16     12
18 months   ki1000108-IRC              3      405    27     17     10
18 months   ki1000108-IRC              4      405    21     11     10
18 months   ki1000108-IRC              5      405    22     10     12
18 months   ki1000108-IRC              6      405    37     32      5
18 months   ki1000108-IRC              7      405    36     26     10
18 months   ki1000108-IRC              8      405    43     30     13
18 months   ki1000108-IRC              9      405    27     12     15
18 months   ki1000108-IRC              10     405    35     29      6
18 months   ki1000108-IRC              11     405    40     24     16
18 months   ki1000108-IRC              12     405    51     31     20
18 months   ki1000109-EE               1      350    87     12     75
18 months   ki1000109-EE               2      350    57     10     47
18 months   ki1000109-EE               3      350    39      5     34
18 months   ki1000109-EE               4      350    16      1     15
18 months   ki1000109-EE               5      350     0      0      0
18 months   ki1000109-EE               6      350     0      0      0
18 months   ki1000109-EE               7      350     0      0      0
18 months   ki1000109-EE               8      350     0      0      0
18 months   ki1000109-EE               9      350     0      0      0
18 months   ki1000109-EE               10     350     4      1      3
18 months   ki1000109-EE               11     350    65     10     55
18 months   ki1000109-EE               12     350    82     14     68
18 months   ki1000109-ResPak           1        9     1      0      1
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
18 months   ki1000304b-SAS-FoodSuppl   1       84     6      0      6
18 months   ki1000304b-SAS-FoodSuppl   2       84     6      1      5
18 months   ki1000304b-SAS-FoodSuppl   3       84     6      2      4
18 months   ki1000304b-SAS-FoodSuppl   4       84     1      0      1
18 months   ki1000304b-SAS-FoodSuppl   5       84     3      0      3
18 months   ki1000304b-SAS-FoodSuppl   6       84     6      1      5
18 months   ki1000304b-SAS-FoodSuppl   7       84     8      2      6
18 months   ki1000304b-SAS-FoodSuppl   8       84    12      1     11
18 months   ki1000304b-SAS-FoodSuppl   9       84    15      2     13
18 months   ki1000304b-SAS-FoodSuppl   10      84     8      0      8
18 months   ki1000304b-SAS-FoodSuppl   11      84     5      1      4
18 months   ki1000304b-SAS-FoodSuppl   12      84     8      0      8
18 months   ki1017093-NIH-Birth        1      463    45     16     29
18 months   ki1017093-NIH-Birth        2      463    35     13     22
18 months   ki1017093-NIH-Birth        3      463    44     21     23
18 months   ki1017093-NIH-Birth        4      463    36     12     24
18 months   ki1017093-NIH-Birth        5      463    37     13     24
18 months   ki1017093-NIH-Birth        6      463    39     14     25
18 months   ki1017093-NIH-Birth        7      463    36     14     22
18 months   ki1017093-NIH-Birth        8      463    28     14     14
18 months   ki1017093-NIH-Birth        9      463    35     14     21
18 months   ki1017093-NIH-Birth        10     463    37     14     23
18 months   ki1017093-NIH-Birth        11     463    44     21     23
18 months   ki1017093-NIH-Birth        12     463    47     25     22
18 months   ki1066203-TanzaniaChild2   1      258    23     17      6
18 months   ki1066203-TanzaniaChild2   2      258    20     18      2
18 months   ki1066203-TanzaniaChild2   3      258    17     10      7
18 months   ki1066203-TanzaniaChild2   4      258    21     11     10
18 months   ki1066203-TanzaniaChild2   5      258    23     17      6
18 months   ki1066203-TanzaniaChild2   6      258    19     15      4
18 months   ki1066203-TanzaniaChild2   7      258    19     15      4
18 months   ki1066203-TanzaniaChild2   8      258    29     23      6
18 months   ki1066203-TanzaniaChild2   9      258    21     15      6
18 months   ki1066203-TanzaniaChild2   10     258    27     20      7
18 months   ki1066203-TanzaniaChild2   11     258    21     16      5
18 months   ki1066203-TanzaniaChild2   12     258    18     13      5
18 months   ki1101329-Keneba           1     1923   204    143     61
18 months   ki1101329-Keneba           2     1923   178    120     58
18 months   ki1101329-Keneba           3     1923   201    129     72
18 months   ki1101329-Keneba           4     1923   136     89     47
18 months   ki1101329-Keneba           5     1923   135     90     45
18 months   ki1101329-Keneba           6     1923   111     70     41
18 months   ki1101329-Keneba           7     1923    89     53     36
18 months   ki1101329-Keneba           8     1923   154    112     42
18 months   ki1101329-Keneba           9     1923   168    119     49
18 months   ki1101329-Keneba           10    1923   208    133     75
18 months   ki1101329-Keneba           11    1923   162    120     42
18 months   ki1101329-Keneba           12    1923   177    125     52
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
18 months   ki1113344-GMS-Nepal        6      550   121     57     64
18 months   ki1113344-GMS-Nepal        7      550   216     97    119
18 months   ki1113344-GMS-Nepal        8      550   213    104    109
18 months   ki1113344-GMS-Nepal        9      550     0      0      0
18 months   ki1113344-GMS-Nepal        10     550     0      0      0
18 months   ki1113344-GMS-Nepal        11     550     0      0      0
18 months   ki1113344-GMS-Nepal        12     550     0      0      0
18 months   ki1114097-CMIN             1     1595   141     93     48
18 months   ki1114097-CMIN             2     1595   140     86     54
18 months   ki1114097-CMIN             3     1595   145    103     42
18 months   ki1114097-CMIN             4     1595   130     86     44
18 months   ki1114097-CMIN             5     1595   104     65     39
18 months   ki1114097-CMIN             6     1595    84     55     29
18 months   ki1114097-CMIN             7     1595    96     66     30
18 months   ki1114097-CMIN             8     1595   141     93     48
18 months   ki1114097-CMIN             9     1595   168    104     64
18 months   ki1114097-CMIN             10    1595   167    106     61
18 months   ki1114097-CMIN             11    1595   132     82     50
18 months   ki1114097-CMIN             12    1595   147     91     56
18 months   ki1114097-CONTENT          1      200     9      9      0
18 months   ki1114097-CONTENT          2      200    17     13      4
18 months   ki1114097-CONTENT          3      200    28     24      4
18 months   ki1114097-CONTENT          4      200    19     12      7
18 months   ki1114097-CONTENT          5      200    14     12      2
18 months   ki1114097-CONTENT          6      200    12      9      3
18 months   ki1114097-CONTENT          7      200    24     22      2
18 months   ki1114097-CONTENT          8      200    22     20      2
18 months   ki1114097-CONTENT          9      200    25     24      1
18 months   ki1114097-CONTENT          10     200    12     11      1
18 months   ki1114097-CONTENT          11     200     7      7      0
18 months   ki1114097-CONTENT          12     200    11     10      1
18 months   ki1126311-ZVITAMBO         1      425    55     25     30
18 months   ki1126311-ZVITAMBO         2      425    43     21     22
18 months   ki1126311-ZVITAMBO         3      425    38     22     16
18 months   ki1126311-ZVITAMBO         4      425    46     22     24
18 months   ki1126311-ZVITAMBO         5      425    28     14     14
18 months   ki1126311-ZVITAMBO         6      425    28     21      7
18 months   ki1126311-ZVITAMBO         7      425    31     19     12
18 months   ki1126311-ZVITAMBO         8      425    30     22      8
18 months   ki1126311-ZVITAMBO         9      425    25     10     15
18 months   ki1126311-ZVITAMBO         10     425    22     10     12
18 months   ki1126311-ZVITAMBO         11     425    35     13     22
18 months   ki1126311-ZVITAMBO         12     425    44     24     20
18 months   ki1148112-LCNI-5           1      357    27     14     13
18 months   ki1148112-LCNI-5           2      357    20     11      9
18 months   ki1148112-LCNI-5           3      357    11      4      7
18 months   ki1148112-LCNI-5           4      357    15      9      6
18 months   ki1148112-LCNI-5           5      357    19     12      7
18 months   ki1148112-LCNI-5           6      357    18      6     12
18 months   ki1148112-LCNI-5           7      357    28     15     13
18 months   ki1148112-LCNI-5           8      357    41     24     17
18 months   ki1148112-LCNI-5           9      357    39     25     14
18 months   ki1148112-LCNI-5           10     357    56     24     32
18 months   ki1148112-LCNI-5           11     357    39     21     18
18 months   ki1148112-LCNI-5           12     357    44     16     28
24 months   ki0047075b-MAL-ED          1     1489   146     85     61
24 months   ki0047075b-MAL-ED          2     1489   129     72     57
24 months   ki0047075b-MAL-ED          3     1489   116     64     52
24 months   ki0047075b-MAL-ED          4     1489    95     67     28
24 months   ki0047075b-MAL-ED          5     1489   110     67     43
24 months   ki0047075b-MAL-ED          6     1489    94     64     30
24 months   ki0047075b-MAL-ED          7     1489   128     77     51
24 months   ki0047075b-MAL-ED          8     1489   111     78     33
24 months   ki0047075b-MAL-ED          9     1489   136     99     37
24 months   ki0047075b-MAL-ED          10    1489   134     88     46
24 months   ki0047075b-MAL-ED          11    1489   145     83     62
24 months   ki0047075b-MAL-ED          12    1489   145     86     59
24 months   ki1000108-CMC-V-BCS-2002   1      372    34     15     19
24 months   ki1000108-CMC-V-BCS-2002   2      372    16      4     12
24 months   ki1000108-CMC-V-BCS-2002   3      372    31      6     25
24 months   ki1000108-CMC-V-BCS-2002   4      372    44     15     29
24 months   ki1000108-CMC-V-BCS-2002   5      372    36      8     28
24 months   ki1000108-CMC-V-BCS-2002   6      372    37     10     27
24 months   ki1000108-CMC-V-BCS-2002   7      372    39     11     28
24 months   ki1000108-CMC-V-BCS-2002   8      372    17      5     12
24 months   ki1000108-CMC-V-BCS-2002   9      372    21      7     14
24 months   ki1000108-CMC-V-BCS-2002   10     372    29      9     20
24 months   ki1000108-CMC-V-BCS-2002   11     372    43     12     31
24 months   ki1000108-CMC-V-BCS-2002   12     372    25      4     21
24 months   ki1000108-IRC              1      409    38     18     20
24 months   ki1000108-IRC              2      409    28     12     16
24 months   ki1000108-IRC              3      409    27     15     12
24 months   ki1000108-IRC              4      409    21      8     13
24 months   ki1000108-IRC              5      409    22      5     17
24 months   ki1000108-IRC              6      409    37     29      8
24 months   ki1000108-IRC              7      409    36     21     15
24 months   ki1000108-IRC              8      409    44     33     11
24 months   ki1000108-IRC              9      409    27     13     14
24 months   ki1000108-IRC              10     409    37     28      9
24 months   ki1000108-IRC              11     409    40     26     14
24 months   ki1000108-IRC              12     409    52     31     21
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
24 months   ki1017093-NIH-Birth        1      429    43     14     29
24 months   ki1017093-NIH-Birth        2      429    36     13     23
24 months   ki1017093-NIH-Birth        3      429    39     22     17
24 months   ki1017093-NIH-Birth        4      429    34     12     22
24 months   ki1017093-NIH-Birth        5      429    35     12     23
24 months   ki1017093-NIH-Birth        6      429    33     16     17
24 months   ki1017093-NIH-Birth        7      429    34     16     18
24 months   ki1017093-NIH-Birth        8      429    27     14     13
24 months   ki1017093-NIH-Birth        9      429    26     14     12
24 months   ki1017093-NIH-Birth        10     429    33     15     18
24 months   ki1017093-NIH-Birth        11     429    43     21     22
24 months   ki1017093-NIH-Birth        12     429    46     22     24
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
24 months   ki1101329-Keneba           1     1725   171    115     56
24 months   ki1101329-Keneba           2     1725   167    117     50
24 months   ki1101329-Keneba           3     1725   170    121     49
24 months   ki1101329-Keneba           4     1725   114     75     39
24 months   ki1101329-Keneba           5     1725   122     76     46
24 months   ki1101329-Keneba           6     1725    92     61     31
24 months   ki1101329-Keneba           7     1725    81     46     35
24 months   ki1101329-Keneba           8     1725   158    114     44
24 months   ki1101329-Keneba           9     1725   159    109     50
24 months   ki1101329-Keneba           10    1725   200    122     78
24 months   ki1101329-Keneba           11    1725   141     95     46
24 months   ki1101329-Keneba           12    1725   150     97     53
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
24 months   ki1113344-GMS-Nepal        6      499    91     49     42
24 months   ki1113344-GMS-Nepal        7      499   206    110     96
24 months   ki1113344-GMS-Nepal        8      499   202    117     85
24 months   ki1113344-GMS-Nepal        9      499     0      0      0
24 months   ki1113344-GMS-Nepal        10     499     0      0      0
24 months   ki1113344-GMS-Nepal        11     499     0      0      0
24 months   ki1113344-GMS-Nepal        12     499     0      0      0
24 months   ki1114097-CMIN             1     1222    87     47     40
24 months   ki1114097-CMIN             2     1222   104     62     42
24 months   ki1114097-CMIN             3     1222   123     80     43
24 months   ki1114097-CMIN             4     1222   120     65     55
24 months   ki1114097-CMIN             5     1222    94     52     42
24 months   ki1114097-CMIN             6     1222    77     54     23
24 months   ki1114097-CMIN             7     1222    96     66     30
24 months   ki1114097-CMIN             8     1222   101     62     39
24 months   ki1114097-CMIN             9     1222   124     74     50
24 months   ki1114097-CMIN             10    1222   114     68     46
24 months   ki1114097-CMIN             11    1222   100     61     39
24 months   ki1114097-CMIN             12    1222    82     42     40
24 months   ki1114097-CONTENT          1      164     7      7      0
24 months   ki1114097-CONTENT          2      164    14     12      2
24 months   ki1114097-CONTENT          3      164    22     20      2
24 months   ki1114097-CONTENT          4      164    15     10      5
24 months   ki1114097-CONTENT          5      164    14     12      2
24 months   ki1114097-CONTENT          6      164    11     10      1
24 months   ki1114097-CONTENT          7      164    23     21      2
24 months   ki1114097-CONTENT          8      164    14     12      2
24 months   ki1114097-CONTENT          9      164    17     14      3
24 months   ki1114097-CONTENT          10     164    11     10      1
24 months   ki1114097-CONTENT          11     164     6      5      1
24 months   ki1114097-CONTENT          12     164    10     10      0
24 months   ki1126311-ZVITAMBO         1      116    14      5      9
24 months   ki1126311-ZVITAMBO         2      116    17      6     11
24 months   ki1126311-ZVITAMBO         3      116    18     10      8
24 months   ki1126311-ZVITAMBO         4      116    14      6      8
24 months   ki1126311-ZVITAMBO         5      116    12      5      7
24 months   ki1126311-ZVITAMBO         6      116     7      4      3
24 months   ki1126311-ZVITAMBO         7      116     6      2      4
24 months   ki1126311-ZVITAMBO         8      116     7      3      4
24 months   ki1126311-ZVITAMBO         9      116     1      0      1
24 months   ki1126311-ZVITAMBO         10     116     3      3      0
24 months   ki1126311-ZVITAMBO         11     116     9      1      8
24 months   ki1126311-ZVITAMBO         12     116     8      3      5
24 months   ki1148112-LCNI-5           1      297    21     16      5
24 months   ki1148112-LCNI-5           2      297    14     10      4
24 months   ki1148112-LCNI-5           3      297     9      4      5
24 months   ki1148112-LCNI-5           4      297    13      9      4
24 months   ki1148112-LCNI-5           5      297    18     11      7
24 months   ki1148112-LCNI-5           6      297    14      6      8
24 months   ki1148112-LCNI-5           7      297    27     16     11
24 months   ki1148112-LCNI-5           8      297    36     22     14
24 months   ki1148112-LCNI-5           9      297    32     20     12
24 months   ki1148112-LCNI-5           10     297    46     24     22
24 months   ki1148112-LCNI-5           11     297    34     19     15
24 months   ki1148112-LCNI-5           12     297    33      9     24

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          1                    NA                0.1347518   0.0783723   0.1911313
Birth       ki0047075b-MAL-ED          2                    NA                0.1250000   0.0676878   0.1823122
Birth       ki0047075b-MAL-ED          3                    NA                0.1300813   0.0706128   0.1895498
Birth       ki0047075b-MAL-ED          4                    NA                0.0808081   0.0271042   0.1345120
Birth       ki0047075b-MAL-ED          5                    NA                0.1217391   0.0619571   0.1815212
Birth       ki0047075b-MAL-ED          6                    NA                0.1413043   0.0701016   0.2125071
Birth       ki0047075b-MAL-ED          7                    NA                0.1515152   0.0903286   0.2127017
Birth       ki0047075b-MAL-ED          8                    NA                0.1363636   0.0722115   0.2005158
Birth       ki0047075b-MAL-ED          9                    NA                0.1366906   0.0795641   0.1938172
Birth       ki0047075b-MAL-ED          10                   NA                0.1276596   0.0725594   0.1827598
Birth       ki0047075b-MAL-ED          11                   NA                0.1678322   0.1065593   0.2291050
Birth       ki0047075b-MAL-ED          12                   NA                0.1250000   0.0693990   0.1806010
Birth       ki1126311-ZVITAMBO         1                    NA                0.1637427   0.1245190   0.2029664
Birth       ki1126311-ZVITAMBO         2                    NA                0.1317829   0.0905024   0.1730634
Birth       ki1126311-ZVITAMBO         3                    NA                0.1111111   0.0742294   0.1479929
Birth       ki1126311-ZVITAMBO         4                    NA                0.1019608   0.0648154   0.1391062
Birth       ki1126311-ZVITAMBO         5                    NA                0.1164659   0.0766164   0.1563153
Birth       ki1126311-ZVITAMBO         6                    NA                0.1245552   0.0859404   0.1631699
Birth       ki1126311-ZVITAMBO         7                    NA                0.0990099   0.0653751   0.1326447
Birth       ki1126311-ZVITAMBO         8                    NA                0.0854430   0.0546175   0.1162686
Birth       ki1126311-ZVITAMBO         9                    NA                0.0723270   0.0438533   0.1008008
Birth       ki1126311-ZVITAMBO         10                   NA                0.0697674   0.0386773   0.1008576
Birth       ki1126311-ZVITAMBO         11                   NA                0.0958904   0.0621137   0.1296672
Birth       ki1126311-ZVITAMBO         12                   NA                0.0771812   0.0468760   0.1074864
3 months    ki0047075b-MAL-ED          1                    NA                0.1828571   0.1255701   0.2401442
3 months    ki0047075b-MAL-ED          2                    NA                0.1614907   0.1046335   0.2183478
3 months    ki0047075b-MAL-ED          3                    NA                0.1407407   0.0820627   0.1994188
3 months    ki0047075b-MAL-ED          4                    NA                0.0803572   0.0299975   0.1307169
3 months    ki0047075b-MAL-ED          5                    NA                0.1617647   0.0998597   0.2236697
3 months    ki0047075b-MAL-ED          6                    NA                0.1376147   0.0729242   0.2023051
3 months    ki0047075b-MAL-ED          7                    NA                0.2000000   0.1359698   0.2640302
3 months    ki0047075b-MAL-ED          8                    NA                0.1287879   0.0716291   0.1859466
3 months    ki0047075b-MAL-ED          9                    NA                0.1273885   0.0752215   0.1795556
3 months    ki0047075b-MAL-ED          10                   NA                0.1607143   0.1051625   0.2162660
3 months    ki0047075b-MAL-ED          11                   NA                0.1849711   0.1270968   0.2428454
3 months    ki0047075b-MAL-ED          12                   NA                0.1588235   0.1038635   0.2137835
3 months    ki1017093-NIH-Birth        1                    NA                0.3166667   0.1988596   0.4344737
3 months    ki1017093-NIH-Birth        2                    NA                0.1568627   0.0569655   0.2567600
3 months    ki1017093-NIH-Birth        3                    NA                0.1132075   0.0278307   0.1985844
3 months    ki1017093-NIH-Birth        4                    NA                0.1956522   0.0809122   0.3103921
3 months    ki1017093-NIH-Birth        5                    NA                0.1521739   0.0482839   0.2560640
3 months    ki1017093-NIH-Birth        6                    NA                0.2954545   0.1605263   0.4303828
3 months    ki1017093-NIH-Birth        7                    NA                0.2631579   0.1230273   0.4032885
3 months    ki1017093-NIH-Birth        8                    NA                0.2702703   0.1270486   0.4134919
3 months    ki1017093-NIH-Birth        9                    NA                0.2790698   0.1448866   0.4132530
3 months    ki1017093-NIH-Birth        10                   NA                0.2826087   0.1523756   0.4128418
3 months    ki1017093-NIH-Birth        11                   NA                0.2692308   0.1485661   0.3898955
3 months    ki1017093-NIH-Birth        12                   NA                0.1666667   0.0671797   0.2661536
3 months    ki1101329-Keneba           1                    NA                0.1710526   0.1221640   0.2199413
3 months    ki1101329-Keneba           2                    NA                0.1065990   0.0634953   0.1497026
3 months    ki1101329-Keneba           3                    NA                0.0948276   0.0571193   0.1325358
3 months    ki1101329-Keneba           4                    NA                0.1176471   0.0665832   0.1687109
3 months    ki1101329-Keneba           5                    NA                0.1333333   0.0789210   0.1877456
3 months    ki1101329-Keneba           6                    NA                0.1230769   0.0665904   0.1795634
3 months    ki1101329-Keneba           7                    NA                0.1632653   0.0900714   0.2364592
3 months    ki1101329-Keneba           8                    NA                0.1413043   0.0909617   0.1916470
3 months    ki1101329-Keneba           9                    NA                0.1865285   0.1315602   0.2414968
3 months    ki1101329-Keneba           10                   NA                0.1746032   0.1277214   0.2214850
3 months    ki1101329-Keneba           11                   NA                0.1363636   0.0856522   0.1870750
3 months    ki1101329-Keneba           12                   NA                0.1725888   0.1198074   0.2253703
3 months    ki1114097-CMIN             1                    NA                0.1458333   0.0881683   0.2034984
3 months    ki1114097-CMIN             2                    NA                0.1739130   0.1106524   0.2371737
3 months    ki1114097-CMIN             3                    NA                0.0915493   0.0441002   0.1389984
3 months    ki1114097-CMIN             4                    NA                0.1467890   0.0803296   0.2132483
3 months    ki1114097-CMIN             5                    NA                0.0654206   0.0185535   0.1122876
3 months    ki1114097-CMIN             6                    NA                0.1132075   0.0528697   0.1735454
3 months    ki1114097-CMIN             7                    NA                0.1351351   0.0715155   0.1987548
3 months    ki1114097-CMIN             8                    NA                0.1147541   0.0581783   0.1713299
3 months    ki1114097-CMIN             9                    NA                0.1538462   0.0884474   0.2192449
3 months    ki1114097-CMIN             10                   NA                0.1451613   0.0831385   0.2071840
3 months    ki1114097-CMIN             11                   NA                0.1578947   0.0909357   0.2248537
3 months    ki1114097-CMIN             12                   NA                0.1721854   0.1119474   0.2324234
3 months    ki1126311-ZVITAMBO         1                    NA                0.1594828   0.1123601   0.2066054
3 months    ki1126311-ZVITAMBO         2                    NA                0.2125000   0.1491001   0.2758999
3 months    ki1126311-ZVITAMBO         3                    NA                0.1850000   0.1311738   0.2388262
3 months    ki1126311-ZVITAMBO         4                    NA                0.1722222   0.1170515   0.2273930
3 months    ki1126311-ZVITAMBO         5                    NA                0.1856287   0.1266468   0.2446107
3 months    ki1126311-ZVITAMBO         6                    NA                0.2751323   0.2114508   0.3388137
3 months    ki1126311-ZVITAMBO         7                    NA                0.1523810   0.1037627   0.2009993
3 months    ki1126311-ZVITAMBO         8                    NA                0.1830986   0.1311491   0.2350481
3 months    ki1126311-ZVITAMBO         9                    NA                0.1391753   0.0904582   0.1878923
3 months    ki1126311-ZVITAMBO         10                   NA                0.1764706   0.1123865   0.2405546
3 months    ki1126311-ZVITAMBO         11                   NA                0.1436464   0.0925396   0.1947532
3 months    ki1126311-ZVITAMBO         12                   NA                0.1004785   0.0597111   0.1412459
6 months    ki0047075b-MAL-ED          1                    NA                0.1904762   0.1310803   0.2498721
6 months    ki0047075b-MAL-ED          2                    NA                0.1578947   0.0999090   0.2158805
6 months    ki0047075b-MAL-ED          3                    NA                0.1879699   0.1215527   0.2543871
6 months    ki0047075b-MAL-ED          4                    NA                0.1517857   0.0853142   0.2182572
6 months    ki0047075b-MAL-ED          5                    NA                0.1190476   0.0624853   0.1756100
6 months    ki0047075b-MAL-ED          6                    NA                0.0654206   0.0185555   0.1122857
6 months    ki0047075b-MAL-ED          7                    NA                0.2112676   0.1441072   0.2784280
6 months    ki0047075b-MAL-ED          8                    NA                0.1311475   0.0712306   0.1910644
6 months    ki0047075b-MAL-ED          9                    NA                0.1266667   0.0734250   0.1799083
6 months    ki0047075b-MAL-ED          10                   NA                0.1719745   0.1129299   0.2310191
6 months    ki0047075b-MAL-ED          11                   NA                0.2071006   0.1459877   0.2682134
6 months    ki0047075b-MAL-ED          12                   NA                0.1898734   0.1287009   0.2510459
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.2941176   0.1407532   0.4474821
6 months    ki1000108-CMC-V-BCS-2002   2                    NA                0.3125000   0.0850747   0.5399253
6 months    ki1000108-CMC-V-BCS-2002   3                    NA                0.1935484   0.0542839   0.3328129
6 months    ki1000108-CMC-V-BCS-2002   4                    NA                0.1818182   0.0677001   0.2959363
6 months    ki1000108-CMC-V-BCS-2002   5                    NA                0.3428571   0.1853900   0.5003242
6 months    ki1000108-CMC-V-BCS-2002   6                    NA                0.4324324   0.2725855   0.5922794
6 months    ki1000108-CMC-V-BCS-2002   7                    NA                0.5128205   0.3557364   0.6699046
6 months    ki1000108-CMC-V-BCS-2002   8                    NA                0.3529412   0.1254650   0.5804174
6 months    ki1000108-CMC-V-BCS-2002   9                    NA                0.3000000   0.0988908   0.5011092
6 months    ki1000108-CMC-V-BCS-2002   10                   NA                0.2758621   0.1129718   0.4387523
6 months    ki1000108-CMC-V-BCS-2002   11                   NA                0.1666667   0.0538050   0.2795283
6 months    ki1000108-CMC-V-BCS-2002   12                   NA                0.2800000   0.1037567   0.4562433
6 months    ki1000108-IRC              1                    NA                0.2894737   0.1451010   0.4338464
6 months    ki1000108-IRC              2                    NA                0.4642857   0.2793322   0.6492392
6 months    ki1000108-IRC              3                    NA                0.2962963   0.1238482   0.4687444
6 months    ki1000108-IRC              4                    NA                0.2857143   0.0922617   0.4791669
6 months    ki1000108-IRC              5                    NA                0.3333333   0.1314658   0.5352008
6 months    ki1000108-IRC              6                    NA                0.1351351   0.0248442   0.2454260
6 months    ki1000108-IRC              7                    NA                0.3055556   0.1548966   0.4562145
6 months    ki1000108-IRC              8                    NA                0.1363636   0.0348392   0.2378881
6 months    ki1000108-IRC              9                    NA                0.2592593   0.0937582   0.4247603
6 months    ki1000108-IRC              10                   NA                0.1351351   0.0248442   0.2454260
6 months    ki1000108-IRC              11                   NA                0.1750000   0.0571042   0.2928958
6 months    ki1000108-IRC              12                   NA                0.2745098   0.1518812   0.3971384
6 months    ki1017093-NIH-Birth        1                    NA                0.2884615   0.1652094   0.4117136
6 months    ki1017093-NIH-Birth        2                    NA                0.2857143   0.1591076   0.4123210
6 months    ki1017093-NIH-Birth        3                    NA                0.2400000   0.1215104   0.3584896
6 months    ki1017093-NIH-Birth        4                    NA                0.2380952   0.1091653   0.3670252
6 months    ki1017093-NIH-Birth        5                    NA                0.2142857   0.0900756   0.3384959
6 months    ki1017093-NIH-Birth        6                    NA                0.3720930   0.2274851   0.5167009
6 months    ki1017093-NIH-Birth        7                    NA                0.2820513   0.1406897   0.4234128
6 months    ki1017093-NIH-Birth        8                    NA                0.2000000   0.0673587   0.3326413
6 months    ki1017093-NIH-Birth        9                    NA                0.3095238   0.1695813   0.4494663
6 months    ki1017093-NIH-Birth        10                   NA                0.2380952   0.1091653   0.3670252
6 months    ki1017093-NIH-Birth        11                   NA                0.3400000   0.2085746   0.4714254
6 months    ki1017093-NIH-Birth        12                   NA                0.1960784   0.0870124   0.3051445
6 months    ki1101329-Keneba           1                    NA                0.1285714   0.0832889   0.1738539
6 months    ki1101329-Keneba           2                    NA                0.1122995   0.0670354   0.1575635
6 months    ki1101329-Keneba           3                    NA                0.1402715   0.0944762   0.1860668
6 months    ki1101329-Keneba           4                    NA                0.1048951   0.0546610   0.1551292
6 months    ki1101329-Keneba           5                    NA                0.1398601   0.0829990   0.1967213
6 months    ki1101329-Keneba           6                    NA                0.1864407   0.1161535   0.2567278
6 months    ki1101329-Keneba           7                    NA                0.2065217   0.1237831   0.2892604
6 months    ki1101329-Keneba           8                    NA                0.1436782   0.0915477   0.1958086
6 months    ki1101329-Keneba           9                    NA                0.1609195   0.1063081   0.2155310
6 months    ki1101329-Keneba           10                   NA                0.1612903   0.1155040   0.2070767
6 months    ki1101329-Keneba           11                   NA                0.1283422   0.0803922   0.1762923
6 months    ki1101329-Keneba           12                   NA                0.1197917   0.0738499   0.1657334
6 months    ki1114097-CMIN             1                    NA                0.1767956   0.1212030   0.2323881
6 months    ki1114097-CMIN             2                    NA                0.1027397   0.0534770   0.1520024
6 months    ki1114097-CMIN             3                    NA                0.1036585   0.0569943   0.1503227
6 months    ki1114097-CMIN             4                    NA                0.1014493   0.0510618   0.1518368
6 months    ki1114097-CMIN             5                    NA                0.0681818   0.0251708   0.1111928
6 months    ki1114097-CMIN             6                    NA                0.0841121   0.0315074   0.1367169
6 months    ki1114097-CMIN             7                    NA                0.0917431   0.0375375   0.1459487
6 months    ki1114097-CMIN             8                    NA                0.1146497   0.0648002   0.1644992
6 months    ki1114097-CMIN             9                    NA                0.1606218   0.1088052   0.2124383
6 months    ki1114097-CMIN             10                   NA                0.1058201   0.0619537   0.1496865
6 months    ki1114097-CMIN             11                   NA                0.1301370   0.0755466   0.1847273
6 months    ki1114097-CMIN             12                   NA                0.1609195   0.1063063   0.2155328
6 months    ki1126311-ZVITAMBO         1                    NA                0.1851852   0.1333697   0.2370007
6 months    ki1126311-ZVITAMBO         2                    NA                0.2173913   0.1485565   0.2862261
6 months    ki1126311-ZVITAMBO         3                    NA                0.2078652   0.1482394   0.2674910
6 months    ki1126311-ZVITAMBO         4                    NA                0.2024540   0.1407517   0.2641563
6 months    ki1126311-ZVITAMBO         5                    NA                0.1689189   0.1085402   0.2292976
6 months    ki1126311-ZVITAMBO         6                    NA                0.1710526   0.1111756   0.2309297
6 months    ki1126311-ZVITAMBO         7                    NA                0.1856287   0.1266454   0.2446121
6 months    ki1126311-ZVITAMBO         8                    NA                0.0994152   0.0545567   0.1442737
6 months    ki1126311-ZVITAMBO         9                    NA                0.0967742   0.0542755   0.1392729
6 months    ki1126311-ZVITAMBO         10                   NA                0.1617647   0.0998620   0.2236674
6 months    ki1126311-ZVITAMBO         11                   NA                0.1407035   0.0923808   0.1890262
6 months    ki1126311-ZVITAMBO         12                   NA                0.1414141   0.0928675   0.1899608
6 months    ki1148112-LCNI-5           1                    NA                0.3142857   0.1603039   0.4682675
6 months    ki1148112-LCNI-5           2                    NA                0.2380952   0.0557118   0.4204787
6 months    ki1148112-LCNI-5           3                    NA                0.6153846   0.3506051   0.8801642
6 months    ki1148112-LCNI-5           4                    NA                0.4210526   0.1987829   0.6433224
6 months    ki1148112-LCNI-5           5                    NA                0.4347826   0.2319446   0.6376206
6 months    ki1148112-LCNI-5           6                    NA                0.4444444   0.2146150   0.6742739
6 months    ki1148112-LCNI-5           7                    NA                0.2000000   0.0566925   0.3433075
6 months    ki1148112-LCNI-5           8                    NA                0.3333333   0.1998145   0.4668522
6 months    ki1148112-LCNI-5           9                    NA                0.4444444   0.2990875   0.5898014
6 months    ki1148112-LCNI-5           10                   NA                0.4062500   0.2857803   0.5267197
6 months    ki1148112-LCNI-5           11                   NA                0.3333333   0.2038010   0.4628656
6 months    ki1148112-LCNI-5           12                   NA                0.4000000   0.2640466   0.5359534
9 months    ki0047075b-MAL-ED          1                    NA                0.2298137   0.1648077   0.2948197
9 months    ki0047075b-MAL-ED          2                    NA                0.2534247   0.1828473   0.3240020
9 months    ki0047075b-MAL-ED          3                    NA                0.2093023   0.1390796   0.2795251
9 months    ki0047075b-MAL-ED          4                    NA                0.1698113   0.0983124   0.2413102
9 months    ki0047075b-MAL-ED          5                    NA                0.1803279   0.1120858   0.2485699
9 months    ki0047075b-MAL-ED          6                    NA                0.1747573   0.1013954   0.2481192
9 months    ki0047075b-MAL-ED          7                    NA                0.2681159   0.1941855   0.3420464
9 months    ki0047075b-MAL-ED          8                    NA                0.1694915   0.1017764   0.2372066
9 months    ki0047075b-MAL-ED          9                    NA                0.1095890   0.0589036   0.1602744
9 months    ki0047075b-MAL-ED          10                   NA                0.2133333   0.1477551   0.2789116
9 months    ki0047075b-MAL-ED          11                   NA                0.2545455   0.1880592   0.3210317
9 months    ki0047075b-MAL-ED          12                   NA                0.2115385   0.1474318   0.2756451
9 months    ki1000108-IRC              1                    NA                0.3684211   0.2148616   0.5219805
9 months    ki1000108-IRC              2                    NA                0.3928571   0.2117373   0.5739770
9 months    ki1000108-IRC              3                    NA                0.1851852   0.0384842   0.3318862
9 months    ki1000108-IRC              4                    NA                0.4761905   0.2623206   0.6900604
9 months    ki1000108-IRC              5                    NA                0.4761905   0.2623206   0.6900604
9 months    ki1000108-IRC              6                    NA                0.1351351   0.0248442   0.2454260
9 months    ki1000108-IRC              7                    NA                0.2500000   0.1083777   0.3916223
9 months    ki1000108-IRC              8                    NA                0.1818182   0.0677145   0.2959218
9 months    ki1000108-IRC              9                    NA                0.2962963   0.1238482   0.4687444
9 months    ki1000108-IRC              10                   NA                0.1621622   0.0432473   0.2810770
9 months    ki1000108-IRC              11                   NA                0.2250000   0.0954330   0.3545670
9 months    ki1000108-IRC              12                   NA                0.3137255   0.1862223   0.4412287
9 months    ki1017093-NIH-Birth        1                    NA                0.4509804   0.3142817   0.5876791
9 months    ki1017093-NIH-Birth        2                    NA                0.3488372   0.2062440   0.4914304
9 months    ki1017093-NIH-Birth        3                    NA                0.3260870   0.1904848   0.4616891
9 months    ki1017093-NIH-Birth        4                    NA                0.2500000   0.1156779   0.3843221
9 months    ki1017093-NIH-Birth        5                    NA                0.3170732   0.1744954   0.4596509
9 months    ki1017093-NIH-Birth        6                    NA                0.3409091   0.2007109   0.4811073
9 months    ki1017093-NIH-Birth        7                    NA                0.3333333   0.1852391   0.4814276
9 months    ki1017093-NIH-Birth        8                    NA                0.4285714   0.2450907   0.6120521
9 months    ki1017093-NIH-Birth        9                    NA                0.3714286   0.2111934   0.5316637
9 months    ki1017093-NIH-Birth        10                   NA                0.3658537   0.2182717   0.5134356
9 months    ki1017093-NIH-Birth        11                   NA                0.4166667   0.2770591   0.5562742
9 months    ki1017093-NIH-Birth        12                   NA                0.3333333   0.2038287   0.4628380
9 months    ki1101329-Keneba           1                    NA                0.1886792   0.1359995   0.2413590
9 months    ki1101329-Keneba           2                    NA                0.1497326   0.0985799   0.2008853
9 months    ki1101329-Keneba           3                    NA                0.1527778   0.1047873   0.2007683
9 months    ki1101329-Keneba           4                    NA                0.1851852   0.1196433   0.2507271
9 months    ki1101329-Keneba           5                    NA                0.1739130   0.1106584   0.2371677
9 months    ki1101329-Keneba           6                    NA                0.2190476   0.1399178   0.2981774
9 months    ki1101329-Keneba           7                    NA                0.2551020   0.1687753   0.3414288
9 months    ki1101329-Keneba           8                    NA                0.1304348   0.0817613   0.1791082
9 months    ki1101329-Keneba           9                    NA                0.1477273   0.0952929   0.2001617
9 months    ki1101329-Keneba           10                   NA                0.1991701   0.1487357   0.2496045
9 months    ki1101329-Keneba           11                   NA                0.1925134   0.1359897   0.2490371
9 months    ki1101329-Keneba           12                   NA                0.2127660   0.1542496   0.2712823
9 months    ki1114097-CMIN             1                    NA                0.2011173   0.1423812   0.2598535
9 months    ki1114097-CMIN             2                    NA                0.1971831   0.1317248   0.2626414
9 months    ki1114097-CMIN             3                    NA                0.1073826   0.0576579   0.1571072
9 months    ki1114097-CMIN             4                    NA                0.2014925   0.1335593   0.2694258
9 months    ki1114097-CMIN             5                    NA                0.1760563   0.1133955   0.2387172
9 months    ki1114097-CMIN             6                    NA                0.1328125   0.0740045   0.1916205
9 months    ki1114097-CMIN             7                    NA                0.1631206   0.1021189   0.2241223
9 months    ki1114097-CMIN             8                    NA                0.1464968   0.0911704   0.2018232
9 months    ki1114097-CMIN             9                    NA                0.1666667   0.1092627   0.2240706
9 months    ki1114097-CMIN             10                   NA                0.2265193   0.1655230   0.2875157
9 months    ki1114097-CMIN             11                   NA                0.1623377   0.1040805   0.2205949
9 months    ki1114097-CMIN             12                   NA                0.1977401   0.1390474   0.2564328
9 months    ki1126311-ZVITAMBO         1                    NA                0.2132701   0.1579867   0.2685536
9 months    ki1126311-ZVITAMBO         2                    NA                0.2040816   0.1389133   0.2692499
9 months    ki1126311-ZVITAMBO         3                    NA                0.1923077   0.1304466   0.2541688
9 months    ki1126311-ZVITAMBO         4                    NA                0.1459854   0.0868448   0.2051260
9 months    ki1126311-ZVITAMBO         5                    NA                0.1901408   0.1255818   0.2546999
9 months    ki1126311-ZVITAMBO         6                    NA                0.2236842   0.1574208   0.2899476
9 months    ki1126311-ZVITAMBO         7                    NA                0.1805556   0.1177146   0.2433965
9 months    ki1126311-ZVITAMBO         8                    NA                0.1525424   0.0995606   0.2055241
9 months    ki1126311-ZVITAMBO         9                    NA                0.1853933   0.1282888   0.2424977
9 months    ki1126311-ZVITAMBO         10                   NA                0.2602740   0.1890817   0.3314663
9 months    ki1126311-ZVITAMBO         11                   NA                0.1837838   0.1279587   0.2396088
9 months    ki1126311-ZVITAMBO         12                   NA                0.2021277   0.1447082   0.2595472
12 months   ki0047075b-MAL-ED          1                    NA                0.2767296   0.2071692   0.3462900
12 months   ki0047075b-MAL-ED          2                    NA                0.3706294   0.2914453   0.4498134
12 months   ki0047075b-MAL-ED          3                    NA                0.2720000   0.1939671   0.3500329
12 months   ki0047075b-MAL-ED          4                    NA                0.2285714   0.1482287   0.3089142
12 months   ki0047075b-MAL-ED          5                    NA                0.2314050   0.1562384   0.3065716
12 months   ki0047075b-MAL-ED          6                    NA                0.2524272   0.1685085   0.3363459
12 months   ki0047075b-MAL-ED          7                    NA                0.3071429   0.2307046   0.3835811
12 months   ki0047075b-MAL-ED          8                    NA                0.2477876   0.1681619   0.3274133
12 months   ki0047075b-MAL-ED          9                    NA                0.2097902   0.1430361   0.2765444
12 months   ki0047075b-MAL-ED          10                   NA                0.2620690   0.1904688   0.3336692
12 months   ki0047075b-MAL-ED          11                   NA                0.2865854   0.2173611   0.3558097
12 months   ki0047075b-MAL-ED          12                   NA                0.2645161   0.1950570   0.3339753
12 months   ki1000108-IRC              1                    NA                0.4054054   0.2470117   0.5637991
12 months   ki1000108-IRC              2                    NA                0.5000000   0.3145723   0.6854277
12 months   ki1000108-IRC              3                    NA                0.2592593   0.0937577   0.4247608
12 months   ki1000108-IRC              4                    NA                0.5500000   0.3316988   0.7683012
12 months   ki1000108-IRC              5                    NA                0.5238095   0.3099390   0.7376801
12 months   ki1000108-IRC              6                    NA                0.1351351   0.0248439   0.2454264
12 months   ki1000108-IRC              7                    NA                0.1666667   0.0447772   0.2885561
12 months   ki1000108-IRC              8                    NA                0.1818182   0.0677142   0.2959222
12 months   ki1000108-IRC              9                    NA                0.3333333   0.1553024   0.5113643
12 months   ki1000108-IRC              10                   NA                0.1315789   0.0239696   0.2391883
12 months   ki1000108-IRC              11                   NA                0.2750000   0.1364556   0.4135444
12 months   ki1000108-IRC              12                   NA                0.3333333   0.2037968   0.4628699
12 months   ki1017093-NIH-Birth        1                    NA                0.4347826   0.2913804   0.5781848
12 months   ki1017093-NIH-Birth        2                    NA                0.3488372   0.2062394   0.4914350
12 months   ki1017093-NIH-Birth        3                    NA                0.3111111   0.1757117   0.4465106
12 months   ki1017093-NIH-Birth        4                    NA                0.3421053   0.1911122   0.4930984
12 months   ki1017093-NIH-Birth        5                    NA                0.2820513   0.1406774   0.4234252
12 months   ki1017093-NIH-Birth        6                    NA                0.3947368   0.2391672   0.5503065
12 months   ki1017093-NIH-Birth        7                    NA                0.3947368   0.2391672   0.5503065
12 months   ki1017093-NIH-Birth        8                    NA                0.4000000   0.2245167   0.5754833
12 months   ki1017093-NIH-Birth        9                    NA                0.4117647   0.2461681   0.5773613
12 months   ki1017093-NIH-Birth        10                   NA                0.3414634   0.1961650   0.4867618
12 months   ki1017093-NIH-Birth        11                   NA                0.4081633   0.2704072   0.5459193
12 months   ki1017093-NIH-Birth        12                   NA                0.4200000   0.2830555   0.5569445
12 months   ki1101329-Keneba           1                    NA                0.2707182   0.2059702   0.3354663
12 months   ki1101329-Keneba           2                    NA                0.2191011   0.1583199   0.2798823
12 months   ki1101329-Keneba           3                    NA                0.2216495   0.1631867   0.2801123
12 months   ki1101329-Keneba           4                    NA                0.2014925   0.1335603   0.2694248
12 months   ki1101329-Keneba           5                    NA                0.2302158   0.1602148   0.3002168
12 months   ki1101329-Keneba           6                    NA                0.1949153   0.1234225   0.2664081
12 months   ki1101329-Keneba           7                    NA                0.2448980   0.1597367   0.3300592
12 months   ki1101329-Keneba           8                    NA                0.2411765   0.1768525   0.3055005
12 months   ki1101329-Keneba           9                    NA                0.2613636   0.1964343   0.3262930
12 months   ki1101329-Keneba           10                   NA                0.2977778   0.2380121   0.3575434
12 months   ki1101329-Keneba           11                   NA                0.2601156   0.1947271   0.3255042
12 months   ki1101329-Keneba           12                   NA                0.2901235   0.2202222   0.3600247
12 months   ki1114097-CMIN             1                    NA                0.3162393   0.2319538   0.4005248
12 months   ki1114097-CMIN             2                    NA                0.2440945   0.1693642   0.3188248
12 months   ki1114097-CMIN             3                    NA                0.1768293   0.1184195   0.2352391
12 months   ki1114097-CMIN             4                    NA                0.2481752   0.1758211   0.3205293
12 months   ki1114097-CMIN             5                    NA                0.1833333   0.1140804   0.2525863
12 months   ki1114097-CMIN             6                    NA                0.2477064   0.1666412   0.3287717
12 months   ki1114097-CMIN             7                    NA                0.2136752   0.1393783   0.2879721
12 months   ki1114097-CMIN             8                    NA                0.2251656   0.1585228   0.2918083
12 months   ki1114097-CMIN             9                    NA                0.2597403   0.1904636   0.3290169
12 months   ki1114097-CMIN             10                   NA                0.3028169   0.2272198   0.3784140
12 months   ki1114097-CMIN             11                   NA                0.2678571   0.1858170   0.3498973
12 months   ki1114097-CMIN             12                   NA                0.3125000   0.2321766   0.3928234
12 months   ki1126311-ZVITAMBO         1                    NA                0.2151163   0.1536905   0.2765421
12 months   ki1126311-ZVITAMBO         2                    NA                0.3025210   0.2199656   0.3850764
12 months   ki1126311-ZVITAMBO         3                    NA                0.2307692   0.1616936   0.2998449
12 months   ki1126311-ZVITAMBO         4                    NA                0.2462687   0.1733000   0.3192373
12 months   ki1126311-ZVITAMBO         5                    NA                0.2440945   0.1693659   0.3188231
12 months   ki1126311-ZVITAMBO         6                    NA                0.2428571   0.1718052   0.3139091
12 months   ki1126311-ZVITAMBO         7                    NA                0.2368421   0.1692353   0.3044489
12 months   ki1126311-ZVITAMBO         8                    NA                0.2337662   0.1669031   0.3006294
12 months   ki1126311-ZVITAMBO         9                    NA                0.1946309   0.1310413   0.2582205
12 months   ki1126311-ZVITAMBO         10                   NA                0.3008850   0.2162965   0.3854734
12 months   ki1126311-ZVITAMBO         11                   NA                0.2517007   0.1815233   0.3218780
12 months   ki1126311-ZVITAMBO         12                   NA                0.1920530   0.1292053   0.2549007
18 months   ki0047075b-MAL-ED          1                    NA                0.4090909   0.3314128   0.4867690
18 months   ki0047075b-MAL-ED          2                    NA                0.4772727   0.3920368   0.5625086
18 months   ki0047075b-MAL-ED          3                    NA                0.3898305   0.3018046   0.4778565
18 months   ki0047075b-MAL-ED          4                    NA                0.3500000   0.2564854   0.4435146
18 months   ki0047075b-MAL-ED          5                    NA                0.3805310   0.2909833   0.4700786
18 months   ki0047075b-MAL-ED          6                    NA                0.3663366   0.2723432   0.4603300
18 months   ki0047075b-MAL-ED          7                    NA                0.4525547   0.3691801   0.5359294
18 months   ki0047075b-MAL-ED          8                    NA                0.3274336   0.2408813   0.4139859
18 months   ki0047075b-MAL-ED          9                    NA                0.2805755   0.2058621   0.3552890
18 months   ki0047075b-MAL-ED          10                   NA                0.3669065   0.2867585   0.4470545
18 months   ki0047075b-MAL-ED          11                   NA                0.4172185   0.3385439   0.4958932
18 months   ki0047075b-MAL-ED          12                   NA                0.3959732   0.3174213   0.4745250
18 months   ki1000108-IRC              1                    NA                0.3947368   0.2391334   0.5503402
18 months   ki1000108-IRC              2                    NA                0.4285714   0.2450451   0.6120978
18 months   ki1000108-IRC              3                    NA                0.3703704   0.1879960   0.5527447
18 months   ki1000108-IRC              4                    NA                0.4761905   0.2623193   0.6900617
18 months   ki1000108-IRC              5                    NA                0.5454545   0.3371295   0.7537796
18 months   ki1000108-IRC              6                    NA                0.1351351   0.0248436   0.2454267
18 months   ki1000108-IRC              7                    NA                0.2777778   0.1312845   0.4242711
18 months   ki1000108-IRC              8                    NA                0.3023256   0.1648851   0.4397660
18 months   ki1000108-IRC              9                    NA                0.5555556   0.3678939   0.7432172
18 months   ki1000108-IRC              10                   NA                0.1714286   0.0464149   0.2964422
18 months   ki1000108-IRC              11                   NA                0.4000000   0.2479941   0.5520059
18 months   ki1000108-IRC              12                   NA                0.3921569   0.2579961   0.5263176
18 months   ki1017093-NIH-Birth        1                    NA                0.6444444   0.5044348   0.7844540
18 months   ki1017093-NIH-Birth        2                    NA                0.6285714   0.4683212   0.7888216
18 months   ki1017093-NIH-Birth        3                    NA                0.5227273   0.3749825   0.6704721
18 months   ki1017093-NIH-Birth        4                    NA                0.6666667   0.5125108   0.8208225
18 months   ki1017093-NIH-Birth        5                    NA                0.6486486   0.4946587   0.8026386
18 months   ki1017093-NIH-Birth        6                    NA                0.6410256   0.4903113   0.7917400
18 months   ki1017093-NIH-Birth        7                    NA                0.6111111   0.4516924   0.7705298
18 months   ki1017093-NIH-Birth        8                    NA                0.5000000   0.3146005   0.6853995
18 months   ki1017093-NIH-Birth        9                    NA                0.6000000   0.4375240   0.7624760
18 months   ki1017093-NIH-Birth        10                   NA                0.6216216   0.4651834   0.7780599
18 months   ki1017093-NIH-Birth        11                   NA                0.5227273   0.3749825   0.6704721
18 months   ki1017093-NIH-Birth        12                   NA                0.4680851   0.3252772   0.6108930
18 months   ki1101329-Keneba           1                    NA                0.2990196   0.2361778   0.3618614
18 months   ki1101329-Keneba           2                    NA                0.3258427   0.2569718   0.3947136
18 months   ki1101329-Keneba           3                    NA                0.3582090   0.2919067   0.4245112
18 months   ki1101329-Keneba           4                    NA                0.3455882   0.2656423   0.4255342
18 months   ki1101329-Keneba           5                    NA                0.3333333   0.2537929   0.4128738
18 months   ki1101329-Keneba           6                    NA                0.3693694   0.2795609   0.4591779
18 months   ki1101329-Keneba           7                    NA                0.4044944   0.3025026   0.5064862
18 months   ki1101329-Keneba           8                    NA                0.2727273   0.2023693   0.3430853
18 months   ki1101329-Keneba           9                    NA                0.2916667   0.2229173   0.3604160
18 months   ki1101329-Keneba           10                   NA                0.3605769   0.2953056   0.4258483
18 months   ki1101329-Keneba           11                   NA                0.2592593   0.1917593   0.3267593
18 months   ki1101329-Keneba           12                   NA                0.2937853   0.2266644   0.3609062
18 months   ki1114097-CMIN             1                    NA                0.3404255   0.2621875   0.4186635
18 months   ki1114097-CMIN             2                    NA                0.3857143   0.3050580   0.4663706
18 months   ki1114097-CMIN             3                    NA                0.2896552   0.2158009   0.3635094
18 months   ki1114097-CMIN             4                    NA                0.3384615   0.2570952   0.4198279
18 months   ki1114097-CMIN             5                    NA                0.3750000   0.2819271   0.4680729
18 months   ki1114097-CMIN             6                    NA                0.3452381   0.2435323   0.4469439
18 months   ki1114097-CMIN             7                    NA                0.3125000   0.2197508   0.4052492
18 months   ki1114097-CMIN             8                    NA                0.3404255   0.2621875   0.4186635
18 months   ki1114097-CMIN             9                    NA                0.3809524   0.3074964   0.4544083
18 months   ki1114097-CMIN             10                   NA                0.3652695   0.2922183   0.4383207
18 months   ki1114097-CMIN             11                   NA                0.3787879   0.2960098   0.4615660
18 months   ki1114097-CMIN             12                   NA                0.3809524   0.3024247   0.4594801
18 months   ki1126311-ZVITAMBO         1                    NA                0.5454545   0.4137059   0.6772032
18 months   ki1126311-ZVITAMBO         2                    NA                0.5116279   0.3620464   0.6612094
18 months   ki1126311-ZVITAMBO         3                    NA                0.4210526   0.2638877   0.5782175
18 months   ki1126311-ZVITAMBO         4                    NA                0.5217391   0.3772152   0.6662631
18 months   ki1126311-ZVITAMBO         5                    NA                0.5000000   0.3145825   0.6854175
18 months   ki1126311-ZVITAMBO         6                    NA                0.2500000   0.0894238   0.4105762
18 months   ki1126311-ZVITAMBO         7                    NA                0.3870968   0.2154307   0.5587629
18 months   ki1126311-ZVITAMBO         8                    NA                0.2666667   0.1082379   0.4250954
18 months   ki1126311-ZVITAMBO         9                    NA                0.6000000   0.4077372   0.7922628
18 months   ki1126311-ZVITAMBO         10                   NA                0.5454545   0.3371416   0.7537675
18 months   ki1126311-ZVITAMBO         11                   NA                0.6285714   0.4683057   0.7888371
18 months   ki1126311-ZVITAMBO         12                   NA                0.4545455   0.3072460   0.6018449
24 months   ki0047075b-MAL-ED          1                    NA                0.4178082   0.3377808   0.4978357
24 months   ki0047075b-MAL-ED          2                    NA                0.4418605   0.3561344   0.5275866
24 months   ki0047075b-MAL-ED          3                    NA                0.4482759   0.3577446   0.5388071
24 months   ki0047075b-MAL-ED          4                    NA                0.2947368   0.2030251   0.3864486
24 months   ki0047075b-MAL-ED          5                    NA                0.3909091   0.2996919   0.4821263
24 months   ki0047075b-MAL-ED          6                    NA                0.3191489   0.2248834   0.4134144
24 months   ki0047075b-MAL-ED          7                    NA                0.3984375   0.3135958   0.4832792
24 months   ki0047075b-MAL-ED          8                    NA                0.2972973   0.2122396   0.3823550
24 months   ki0047075b-MAL-ED          9                    NA                0.2720588   0.1972412   0.3468765
24 months   ki0047075b-MAL-ED          10                   NA                0.3432836   0.2628649   0.4237023
24 months   ki0047075b-MAL-ED          11                   NA                0.4275862   0.3470341   0.5081383
24 months   ki0047075b-MAL-ED          12                   NA                0.4068966   0.3269100   0.4868831
24 months   ki1000108-IRC              1                    NA                0.5263158   0.3673676   0.6852640
24 months   ki1000108-IRC              2                    NA                0.5714286   0.3879044   0.7549527
24 months   ki1000108-IRC              3                    NA                0.4444444   0.2567851   0.6321038
24 months   ki1000108-IRC              4                    NA                0.6190476   0.4110936   0.8270017
24 months   ki1000108-IRC              5                    NA                0.7727273   0.5973977   0.9480568
24 months   ki1000108-IRC              6                    NA                0.2162162   0.0834092   0.3490232
24 months   ki1000108-IRC              7                    NA                0.4166667   0.2554235   0.5779098
24 months   ki1000108-IRC              8                    NA                0.2500000   0.1218986   0.3781014
24 months   ki1000108-IRC              9                    NA                0.5185185   0.3298195   0.7072176
24 months   ki1000108-IRC              10                   NA                0.2432432   0.1048301   0.3816564
24 months   ki1000108-IRC              11                   NA                0.3500000   0.2020073   0.4979927
24 months   ki1000108-IRC              12                   NA                0.4038462   0.2703204   0.5373719
24 months   ki1017093-NIH-Birth        1                    NA                0.6744186   0.5341969   0.8146403
24 months   ki1017093-NIH-Birth        2                    NA                0.6388889   0.4818032   0.7959746
24 months   ki1017093-NIH-Birth        3                    NA                0.4358974   0.2800880   0.5917069
24 months   ki1017093-NIH-Birth        4                    NA                0.6470588   0.4862394   0.8078782
24 months   ki1017093-NIH-Birth        5                    NA                0.6571429   0.4997057   0.8145800
24 months   ki1017093-NIH-Birth        6                    NA                0.5151515   0.3444378   0.6858652
24 months   ki1017093-NIH-Birth        7                    NA                0.5294118   0.3614414   0.6973822
24 months   ki1017093-NIH-Birth        8                    NA                0.4814815   0.2927932   0.6701698
24 months   ki1017093-NIH-Birth        9                    NA                0.4615385   0.2696939   0.6533830
24 months   ki1017093-NIH-Birth        10                   NA                0.5454545   0.3753696   0.7155395
24 months   ki1017093-NIH-Birth        11                   NA                0.5116279   0.3620480   0.6612078
24 months   ki1017093-NIH-Birth        12                   NA                0.5217391   0.3772168   0.6662615
24 months   ki1101329-Keneba           1                    NA                0.3274854   0.2571259   0.3978449
24 months   ki1101329-Keneba           2                    NA                0.2994012   0.2299184   0.3688840
24 months   ki1101329-Keneba           3                    NA                0.2882353   0.2201284   0.3563422
24 months   ki1101329-Keneba           4                    NA                0.3421053   0.2549929   0.4292176
24 months   ki1101329-Keneba           5                    NA                0.3770492   0.2910251   0.4630732
24 months   ki1101329-Keneba           6                    NA                0.3369565   0.2403430   0.4335701
24 months   ki1101329-Keneba           7                    NA                0.4320988   0.3241893   0.5400082
24 months   ki1101329-Keneba           8                    NA                0.2784810   0.2085665   0.3483955
24 months   ki1101329-Keneba           9                    NA                0.3144654   0.2422755   0.3866553
24 months   ki1101329-Keneba           10                   NA                0.3900000   0.3223829   0.4576171
24 months   ki1101329-Keneba           11                   NA                0.3262411   0.2488331   0.4036492
24 months   ki1101329-Keneba           12                   NA                0.3533333   0.2768158   0.4298509
24 months   ki1114097-CMIN             1                    NA                0.4597701   0.3550028   0.5645375
24 months   ki1114097-CMIN             2                    NA                0.4038462   0.3095061   0.4981863
24 months   ki1114097-CMIN             3                    NA                0.3495935   0.2652896   0.4338973
24 months   ki1114097-CMIN             4                    NA                0.4583333   0.3691483   0.5475184
24 months   ki1114097-CMIN             5                    NA                0.4468085   0.3462635   0.5473535
24 months   ki1114097-CMIN             6                    NA                0.2987013   0.1964308   0.4009718
24 months   ki1114097-CMIN             7                    NA                0.3125000   0.2197420   0.4052580
24 months   ki1114097-CMIN             8                    NA                0.3861386   0.2911499   0.4811273
24 months   ki1114097-CMIN             9                    NA                0.4032258   0.3168496   0.4896020
24 months   ki1114097-CMIN             10                   NA                0.4035088   0.3134135   0.4936040
24 months   ki1114097-CMIN             11                   NA                0.3900000   0.2943636   0.4856364
24 months   ki1114097-CMIN             12                   NA                0.4878049   0.3795719   0.5960379


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NA                   NA                0.1327552   0.1317987   0.1337117
Birth       ki1126311-ZVITAMBO         NA                   NA                0.1043781   0.1034682   0.1052880
3 months    ki0047075b-MAL-ED          NA                   NA                0.1552306   0.1538754   0.1565858
3 months    ki1017093-NIH-Birth        NA                   NA                0.2280702   0.2225262   0.2336141
3 months    ki1101329-Keneba           NA                   NA                0.1442922   0.1430334   0.1455511
3 months    ki1114097-CMIN             NA                   NA                0.1360269   0.1344378   0.1376161
3 months    ki1126311-ZVITAMBO         NA                   NA                0.1721708   0.1704645   0.1738772
6 months    ki0047075b-MAL-ED          NA                   NA                0.1633255   0.1614623   0.1651887
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3008130   0.2898222   0.3118038
6 months    ki1000108-IRC              NA                   NA                0.2457002   0.2367038   0.2546967
6 months    ki1017093-NIH-Birth        NA                   NA                0.2681564   0.2636769   0.2726360
6 months    ki1101329-Keneba           NA                   NA                0.1412159   0.1401457   0.1422861
6 months    ki1114097-CMIN             NA                   NA                0.1209150   0.1194187   0.1224114
6 months    ki1126311-ZVITAMBO         NA                   NA                0.1632554   0.1616213   0.1648895
6 months    ki1148112-LCNI-5           NA                   NA                0.3717026   0.3637167   0.3796886
9 months    ki0047075b-MAL-ED          NA                   NA                0.2067073   0.2045726   0.2088420
9 months    ki1000108-IRC              NA                   NA                0.2727273   0.2625854   0.2828692
9 months    ki1017093-NIH-Birth        NA                   NA                0.3570020   0.3524116   0.3615923
9 months    ki1101329-Keneba           NA                   NA                0.1799710   0.1786217   0.1813203
9 months    ki1114097-CMIN             NA                   NA                0.1749729   0.1734897   0.1764562
9 months    ki1126311-ZVITAMBO         NA                   NA                0.1946001   0.1933522   0.1958480
12 months   ki0047075b-MAL-ED          NA                   NA                0.2698020   0.2678180   0.2717859
12 months   ki1000108-IRC              NA                   NA                0.2931034   0.2800368   0.3061701
12 months   ki1017093-NIH-Birth        NA                   NA                0.3747454   0.3706487   0.3788421
12 months   ki1101329-Keneba           NA                   NA                0.2479466   0.2465399   0.2493533
12 months   ki1114097-CMIN             NA                   NA                0.2484157   0.2462210   0.2506104
12 months   ki1126311-ZVITAMBO         NA                   NA                0.2380952   0.2365984   0.2395921
18 months   ki0047075b-MAL-ED          NA                   NA                0.3868047   0.3842348   0.3893746
18 months   ki1000108-IRC              NA                   NA                0.3555556   0.3438224   0.3672887
18 months   ki1017093-NIH-Birth        NA                   NA                0.5874730   0.5814753   0.5934707
18 months   ki1101329-Keneba           NA                   NA                0.3224129   0.3206655   0.3241603
18 months   ki1114097-CMIN             NA                   NA                0.3542320   0.3527915   0.3556724
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4752941   0.4651134   0.4854749
24 months   ki0047075b-MAL-ED          NA                   NA                0.3754197   0.3723985   0.3784410
24 months   ki1000108-IRC              NA                   NA                0.4156479   0.4011860   0.4301098
24 months   ki1017093-NIH-Birth        NA                   NA                0.5547786   0.5473248   0.5622323
24 months   ki1101329-Keneba           NA                   NA                0.3344928   0.3325855   0.3364000
24 months   ki1114097-CMIN             NA                   NA                0.4001637   0.3971926   0.4031347


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          2                    1                 0.9276316   0.4986627   1.7256161
Birth       ki0047075b-MAL-ED          3                    1                 0.9653402   0.5194445   1.7939967
Birth       ki0047075b-MAL-ED          4                    1                 0.5996814   0.2734388   1.3151671
Birth       ki0047075b-MAL-ED          5                    1                 0.9034325   0.4739324   1.7221658
Birth       ki0047075b-MAL-ED          6                    1                 1.0486270   0.5447256   2.0186650
Birth       ki0047075b-MAL-ED          7                    1                 1.1244019   0.6286115   2.0112257
Birth       ki0047075b-MAL-ED          8                    1                 1.0119617   0.5391864   1.8992812
Birth       ki0047075b-MAL-ED          9                    1                 1.0143885   0.5615343   1.8324509
Birth       ki0047075b-MAL-ED          10                   1                 0.9473684   0.5193433   1.7281572
Birth       ki0047075b-MAL-ED          11                   1                 1.2454914   0.7147987   2.1701896
Birth       ki0047075b-MAL-ED          12                   1                 0.9276316   0.5036957   1.7083735
Birth       ki1126311-ZVITAMBO         2                    1                 0.8048173   0.5425467   1.1938712
Birth       ki1126311-ZVITAMBO         3                    1                 0.6785714   0.4506293   1.0218137
Birth       ki1126311-ZVITAMBO         4                    1                 0.6226891   0.4026380   0.9630031
Birth       ki1126311-ZVITAMBO         5                    1                 0.7112737   0.4684280   1.0800170
Birth       ki1126311-ZVITAMBO         6                    1                 0.7606762   0.5141029   1.1255105
Birth       ki1126311-ZVITAMBO         7                    1                 0.6046676   0.3990169   0.9163093
Birth       ki1126311-ZVITAMBO         8                    1                 0.5218128   0.3384076   0.8046175
Birth       ki1126311-ZVITAMBO         9                    1                 0.4417116   0.2786133   0.7002866
Birth       ki1126311-ZVITAMBO         10                   1                 0.4260797   0.2569027   0.7066643
Birth       ki1126311-ZVITAMBO         11                   1                 0.5856164   0.3824842   0.8966295
Birth       ki1126311-ZVITAMBO         12                   1                 0.4713567   0.2975741   0.7466278
3 months    ki0047075b-MAL-ED          2                    1                 0.8831522   0.5512643   1.4148526
3 months    ki0047075b-MAL-ED          3                    1                 0.7696759   0.4568971   1.2965744
3 months    ki0047075b-MAL-ED          4                    1                 0.4394534   0.2180859   0.8855193
3 months    ki0047075b-MAL-ED          5                    1                 0.8846507   0.5394903   1.4506415
3 months    ki0047075b-MAL-ED          6                    1                 0.7525803   0.4277732   1.3240125
3 months    ki0047075b-MAL-ED          7                    1                 1.0937500   0.6988471   1.7118037
3 months    ki0047075b-MAL-ED          8                    1                 0.7043087   0.4091007   1.2125396
3 months    ki0047075b-MAL-ED          9                    1                 0.6966561   0.4160005   1.1666565
3 months    ki0047075b-MAL-ED          10                   1                 0.8789062   0.5512414   1.4013391
3 months    ki0047075b-MAL-ED          11                   1                 1.0115607   0.6496798   1.5750144
3 months    ki0047075b-MAL-ED          12                   1                 0.8685662   0.5445992   1.3852522
3 months    ki1017093-NIH-Birth        2                    1                 0.4953560   0.2369223   1.0356879
3 months    ki1017093-NIH-Birth        3                    1                 0.3574975   0.1541922   0.8288649
3 months    ki1017093-NIH-Birth        4                    1                 0.6178490   0.3085085   1.2373640
3 months    ki1017093-NIH-Birth        5                    1                 0.4805492   0.2208406   1.0456751
3 months    ki1017093-NIH-Birth        6                    1                 0.9330144   0.5176968   1.6815167
3 months    ki1017093-NIH-Birth        7                    1                 0.8310249   0.4340157   1.5911921
3 months    ki1017093-NIH-Birth        8                    1                 0.8534851   0.4466875   1.6307525
3 months    ki1017093-NIH-Birth        9                    1                 0.8812729   0.4798277   1.6185852
3 months    ki1017093-NIH-Birth        10                   1                 0.8924485   0.4935968   1.6135931
3 months    ki1017093-NIH-Birth        11                   1                 0.8502024   0.4748537   1.5222461
3 months    ki1017093-NIH-Birth        12                   1                 0.5263158   0.2604838   1.0634378
3 months    ki1101329-Keneba           2                    1                 0.6231941   0.3798180   1.0225183
3 months    ki1101329-Keneba           3                    1                 0.5543767   0.3397251   0.9046536
3 months    ki1101329-Keneba           4                    1                 0.6877828   0.4090267   1.1565143
3 months    ki1101329-Keneba           5                    1                 0.7794872   0.4736234   1.2828765
3 months    ki1101329-Keneba           6                    1                 0.7195266   0.4190215   1.2355417
3 months    ki1101329-Keneba           7                    1                 0.9544741   0.5608712   1.6242959
3 months    ki1101329-Keneba           8                    1                 0.8260870   0.5231951   1.3043312
3 months    ki1101329-Keneba           9                    1                 1.0904743   0.7233138   1.6440087
3 months    ki1101329-Keneba           10                   1                 1.0207570   0.6896254   1.5108854
3 months    ki1101329-Keneba           11                   1                 0.7972028   0.4987392   1.2742778
3 months    ki1101329-Keneba           12                   1                 1.0089809   0.6638853   1.5334612
3 months    ki1114097-CMIN             2                    1                 1.1925466   0.6968482   2.0408566
3 months    ki1114097-CMIN             3                    1                 0.6277666   0.3270991   1.2048057
3 months    ki1114097-CMIN             4                    1                 1.0065531   0.5517914   1.8361090
3 months    ki1114097-CMIN             5                    1                 0.4485981   0.1979173   1.0167897
3 months    ki1114097-CMIN             6                    1                 0.7762803   0.3997608   1.5074293
3 months    ki1114097-CMIN             7                    1                 0.9266409   0.5010741   1.7136454
3 months    ki1114097-CMIN             8                    1                 0.7868852   0.4182522   1.4804188
3 months    ki1114097-CMIN             9                    1                 1.0549451   0.5903271   1.8852413
3 months    ki1114097-CMIN             10                   1                 0.9953917   0.5561144   1.7816561
3 months    ki1114097-CMIN             11                   1                 1.0827068   0.6063137   1.9334118
3 months    ki1114097-CMIN             12                   1                 1.1807001   0.6963824   2.0018493
3 months    ki1126311-ZVITAMBO         2                    1                 1.3324324   0.8755562   2.0277125
3 months    ki1126311-ZVITAMBO         3                    1                 1.1600000   0.7662423   1.7561024
3 months    ki1126311-ZVITAMBO         4                    1                 1.0798799   0.6984061   1.6697170
3 months    ki1126311-ZVITAMBO         5                    1                 1.1639424   0.7542130   1.7962589
3 months    ki1126311-ZVITAMBO         6                    1                 1.7251537   1.1852827   2.5109245
3 months    ki1126311-ZVITAMBO         7                    1                 0.9554698   0.6185297   1.4759557
3 months    ki1126311-ZVITAMBO         8                    1                 1.1480777   0.7621981   1.7293171
3 months    ki1126311-ZVITAMBO         9                    1                 0.8726665   0.5519617   1.3797095
3 months    ki1126311-ZVITAMBO         10                   1                 1.1065183   0.6928481   1.7671733
3 months    ki1126311-ZVITAMBO         11                   1                 0.9007018   0.5671921   1.4303157
3 months    ki1126311-ZVITAMBO         12                   1                 0.6300272   0.3813982   1.0407343
6 months    ki0047075b-MAL-ED          2                    1                 0.8289474   0.5120305   1.3420171
6 months    ki0047075b-MAL-ED          3                    1                 0.9868421   0.6160020   1.5809322
6 months    ki0047075b-MAL-ED          4                    1                 0.7968750   0.4654908   1.3641725
6 months    ki0047075b-MAL-ED          5                    1                 0.6250000   0.3540502   1.1033041
6 months    ki0047075b-MAL-ED          6                    1                 0.3434579   0.1572398   0.7502130
6 months    ki0047075b-MAL-ED          7                    1                 1.1091549   0.7105597   1.7313461
6 months    ki0047075b-MAL-ED          8                    1                 0.6885246   0.3959987   1.1971406
6 months    ki0047075b-MAL-ED          9                    1                 0.6650000   0.3940270   1.1223215
6 months    ki0047075b-MAL-ED          10                   1                 0.9028662   0.5678002   1.4356590
6 months    ki0047075b-MAL-ED          11                   1                 1.0872781   0.7077669   1.6702868
6 months    ki0047075b-MAL-ED          12                   1                 0.9968354   0.6366485   1.5607999
6 months    ki1000108-CMC-V-BCS-2002   2                    1                 1.0625000   0.4340220   2.6010345
6 months    ki1000108-CMC-V-BCS-2002   3                    1                 0.6580645   0.2706140   1.6002457
6 months    ki1000108-CMC-V-BCS-2002   4                    1                 0.6181818   0.2733603   1.3979672
6 months    ki1000108-CMC-V-BCS-2002   5                    1                 1.1657143   0.5818574   2.3354345
6 months    ki1000108-CMC-V-BCS-2002   6                    1                 1.4702703   0.7759069   2.7860231
6 months    ki1000108-CMC-V-BCS-2002   7                    1                 1.7435897   0.9523644   3.1921659
6 months    ki1000108-CMC-V-BCS-2002   8                    1                 1.2000000   0.5237642   2.7493287
6 months    ki1000108-CMC-V-BCS-2002   9                    1                 1.0200000   0.4362746   2.3847365
6 months    ki1000108-CMC-V-BCS-2002   10                   1                 0.9379310   0.4266308   2.0620045
6 months    ki1000108-CMC-V-BCS-2002   11                   1                 0.5666667   0.2410738   1.3320036
6 months    ki1000108-CMC-V-BCS-2002   12                   1                 0.9520000   0.4203951   2.1558387
6 months    ki1000108-IRC              2                    1                 1.6038961   0.8471555   3.0366121
6 months    ki1000108-IRC              3                    1                 1.0235690   0.4756000   2.2028883
6 months    ki1000108-IRC              4                    1                 0.9870130   0.4257019   2.2884433
6 months    ki1000108-IRC              5                    1                 1.1515152   0.5254721   2.5234207
6 months    ki1000108-IRC              6                    1                 0.4668305   0.1793768   1.2149321
6 months    ki1000108-IRC              7                    1                 1.0555556   0.5234791   2.1284471
6 months    ki1000108-IRC              8                    1                 0.4710744   0.1922678   1.1541767
6 months    ki1000108-IRC              9                    1                 0.8956229   0.3983886   2.0134624
6 months    ki1000108-IRC              10                   1                 0.4668305   0.1793768   1.2149321
6 months    ki1000108-IRC              11                   1                 0.6045455   0.2614553   1.3978499
6 months    ki1000108-IRC              12                   1                 0.9483066   0.4854736   1.8523879
6 months    ki1017093-NIH-Birth        2                    1                 0.9904762   0.5351889   1.8330780
6 months    ki1017093-NIH-Birth        3                    1                 0.8320000   0.4330741   1.5983963
6 months    ki1017093-NIH-Birth        4                    1                 0.8253968   0.4140918   1.6452387
6 months    ki1017093-NIH-Birth        5                    1                 0.7428571   0.3615487   1.5263138
6 months    ki1017093-NIH-Birth        6                    1                 1.2899225   0.7239751   2.2982836
6 months    ki1017093-NIH-Birth        7                    1                 0.9777778   0.5060732   1.8891523
6 months    ki1017093-NIH-Birth        8                    1                 0.6933333   0.3150035   1.5260500
6 months    ki1017093-NIH-Birth        9                    1                 1.0730159   0.5760265   1.9988023
6 months    ki1017093-NIH-Birth        10                   1                 0.8253968   0.4140918   1.6452387
6 months    ki1017093-NIH-Birth        11                   1                 1.1786667   0.6624611   2.0971119
6 months    ki1017093-NIH-Birth        12                   1                 0.6797386   0.3370759   1.3707434
6 months    ki1101329-Keneba           2                    1                 0.8734403   0.5114134   1.4917440
6 months    ki1101329-Keneba           3                    1                 1.0910005   0.6749314   1.7635601
6 months    ki1101329-Keneba           4                    1                 0.8158508   0.4502343   1.4783692
6 months    ki1101329-Keneba           5                    1                 1.0878011   0.6352496   1.8627501
6 months    ki1101329-Keneba           6                    1                 1.4500942   0.8656399   2.4291545
6 months    ki1101329-Keneba           7                    1                 1.6062802   0.9422277   2.7383359
6 months    ki1101329-Keneba           8                    1                 1.1174968   0.6739739   1.8528893
6 months    ki1101329-Keneba           9                    1                 1.2515964   0.7674538   2.0411568
6 months    ki1101329-Keneba           10                   1                 1.2544803   0.7980076   1.9720625
6 months    ki1101329-Keneba           11                   1                 0.9982175   0.5973624   1.6680630
6 months    ki1101329-Keneba           12                   1                 0.9317130   0.5535364   1.5682602
6 months    ki1114097-CMIN             2                    1                 0.5811216   0.3275237   1.0310774
6 months    ki1114097-CMIN             3                    1                 0.5863186   0.3385748   1.0153429
6 months    ki1114097-CMIN             4                    1                 0.5738225   0.3187712   1.0329423
6 months    ki1114097-CMIN             5                    1                 0.3856534   0.1905824   0.7803896
6 months    ki1114097-CMIN             6                    1                 0.4757593   0.2362524   0.9580728
6 months    ki1114097-CMIN             7                    1                 0.5189220   0.2657215   1.0133922
6 months    ki1114097-CMIN             8                    1                 0.6484873   0.3791969   1.1090168
6 months    ki1114097-CMIN             9                    1                 0.9085168   0.5790086   1.4255450
6 months    ki1114097-CMIN             10                   1                 0.5985450   0.3557388   1.0070763
6 months    ki1114097-CMIN             11                   1                 0.7360873   0.4357613   1.2433976
6 months    ki1114097-CMIN             12                   1                 0.9102011   0.5730675   1.4456694
6 months    ki1126311-ZVITAMBO         2                    1                 1.1739130   0.7693493   1.7912174
6 months    ki1126311-ZVITAMBO         3                    1                 1.1224719   0.7518780   1.6757283
6 months    ki1126311-ZVITAMBO         4                    1                 1.0932515   0.7228324   1.6534938
6 months    ki1126311-ZVITAMBO         5                    1                 0.9121622   0.5793374   1.4361921
6 months    ki1126311-ZVITAMBO         6                    1                 0.9236842   0.5900662   1.4459268
6 months    ki1126311-ZVITAMBO         7                    1                 1.0023952   0.6563951   1.5307794
6 months    ki1126311-ZVITAMBO         8                    1                 0.5368421   0.3156924   0.9129123
6 months    ki1126311-ZVITAMBO         9                    1                 0.5225807   0.3104625   0.8796249
6 months    ki1126311-ZVITAMBO         10                   1                 0.8735294   0.5437490   1.4033195
6 months    ki1126311-ZVITAMBO         11                   1                 0.7597990   0.4878781   1.1832762
6 months    ki1126311-ZVITAMBO         12                   1                 0.7636364   0.4903961   1.1891214
6 months    ki1148112-LCNI-5           2                    1                 0.7575758   0.3051580   1.8807342
6 months    ki1148112-LCNI-5           3                    1                 1.9580420   1.0200915   3.7584162
6 months    ki1148112-LCNI-5           4                    1                 1.3397129   0.6519671   2.7529466
6 months    ki1148112-LCNI-5           5                    1                 1.3833992   0.7032906   2.7211984
6 months    ki1148112-LCNI-5           6                    1                 1.4141414   0.6936177   2.8831387
6 months    ki1148112-LCNI-5           7                    1                 0.6363636   0.2671324   1.5159477
6 months    ki1148112-LCNI-5           8                    1                 1.0606061   0.5632671   1.9970724
6 months    ki1148112-LCNI-5           9                    1                 1.4141414   0.7846242   2.5487308
6 months    ki1148112-LCNI-5           10                   1                 1.2926136   0.7290384   2.2918546
6 months    ki1148112-LCNI-5           11                   1                 1.0606061   0.5675082   1.9821479
6 months    ki1148112-LCNI-5           12                   1                 1.2727273   0.7010824   2.3104768
9 months    ki0047075b-MAL-ED          2                    1                 1.1027397   0.7414448   1.6400883
9 months    ki0047075b-MAL-ED          3                    1                 0.9107480   0.5872373   1.4124816
9 months    ki0047075b-MAL-ED          4                    1                 0.7389087   0.4449369   1.2271090
9 months    ki0047075b-MAL-ED          5                    1                 0.7846699   0.4892128   1.2585666
9 months    ki0047075b-MAL-ED          6                    1                 0.7604303   0.4583737   1.2615346
9 months    ki0047075b-MAL-ED          7                    1                 1.1666667   0.7859402   1.7318252
9 months    ki0047075b-MAL-ED          8                    1                 0.7375172   0.4520405   1.2032807
9 months    ki0047075b-MAL-ED          9                    1                 0.4768604   0.2772939   0.8200537
9 months    ki0047075b-MAL-ED          10                   1                 0.9282883   0.6113098   1.4096277
9 months    ki0047075b-MAL-ED          11                   1                 1.1076167   0.7536684   1.6277912
9 months    ki0047075b-MAL-ED          12                   1                 0.9204782   0.6081028   1.3933171
9 months    ki1000108-IRC              2                    1                 1.0663265   0.5727580   1.9852227
9 months    ki1000108-IRC              3                    1                 0.5026455   0.2053552   1.2303197
9 months    ki1000108-IRC              4                    1                 1.2925170   0.7003741   2.3852969
9 months    ki1000108-IRC              5                    1                 1.2925170   0.7003741   2.3852969
9 months    ki1000108-IRC              6                    1                 0.3667954   0.1466988   0.9171096
9 months    ki1000108-IRC              7                    1                 0.6785714   0.3358573   1.3709966
9 months    ki1000108-IRC              8                    1                 0.4935065   0.2323311   1.0482825
9 months    ki1000108-IRC              9                    1                 0.8042328   0.3930838   1.6454263
9 months    ki1000108-IRC              10                   1                 0.4401544   0.1893582   1.0231185
9 months    ki1000108-IRC              11                   1                 0.6107143   0.2999937   1.2432657
9 months    ki1000108-IRC              12                   1                 0.8515406   0.4757517   1.5241595
9 months    ki1017093-NIH-Birth        2                    1                 0.7735086   0.4650044   1.2866880
9 months    ki1017093-NIH-Birth        3                    1                 0.7230624   0.4322057   1.2096536
9 months    ki1017093-NIH-Birth        4                    1                 0.5543478   0.2991362   1.0272962
9 months    ki1017093-NIH-Birth        5                    1                 0.7030753   0.4087781   1.2092497
9 months    ki1017093-NIH-Birth        6                    1                 0.7559289   0.4535304   1.2599561
9 months    ki1017093-NIH-Birth        7                    1                 0.7391304   0.4316608   1.2656089
9 months    ki1017093-NIH-Birth        8                    1                 0.9503106   0.5624069   1.6057594
9 months    ki1017093-NIH-Birth        9                    1                 0.8236025   0.4861143   1.3953941
9 months    ki1017093-NIH-Birth        10                   1                 0.8112407   0.4897932   1.3436518
9 months    ki1017093-NIH-Birth        11                   1                 0.9239130   0.5880410   1.4516254
9 months    ki1017093-NIH-Birth        12                   1                 0.7391304   0.4515586   1.2098404
9 months    ki1101329-Keneba           2                    1                 0.7935829   0.5104801   1.2336891
9 months    ki1101329-Keneba           3                    1                 0.8097222   0.5318829   1.2326963
9 months    ki1101329-Keneba           4                    1                 0.9814815   0.6253217   1.5404964
9 months    ki1101329-Keneba           5                    1                 0.9217391   0.5827396   1.4579462
9 months    ki1101329-Keneba           6                    1                 1.1609524   0.7354119   1.8327287
9 months    ki1101329-Keneba           7                    1                 1.3520408   0.8718847   2.0966239
9 months    ki1101329-Keneba           8                    1                 0.6913043   0.4337758   1.1017251
9 months    ki1101329-Keneba           9                    1                 0.7829545   0.4984388   1.2298758
9 months    ki1101329-Keneba           10                   1                 1.0556017   0.7241052   1.5388577
9 months    ki1101329-Keneba           11                   1                 1.0203209   0.6804166   1.5300254
9 months    ki1101329-Keneba           12                   1                 1.1276596   0.7620324   1.6687166
9 months    ki1114097-CMIN             2                    1                 0.9804382   0.6300830   1.5256069
9 months    ki1114097-CMIN             3                    1                 0.5339299   0.3088325   0.9230931
9 months    ki1114097-CMIN             4                    1                 1.0018657   0.6413444   1.5650481
9 months    ki1114097-CMIN             5                    1                 0.8753912   0.5523998   1.3872378
9 months    ki1114097-CMIN             6                    1                 0.6603733   0.3885320   1.1224117
9 months    ki1114097-CMIN             7                    1                 0.8110717   0.5046489   1.3035544
9 months    ki1114097-CMIN             8                    1                 0.7284147   0.4518990   1.1741296
9 months    ki1114097-CMIN             9                    1                 0.8287037   0.5275729   1.3017155
9 months    ki1114097-CMIN             10                   1                 1.1263045   0.7570683   1.6756240
9 months    ki1114097-CMIN             11                   1                 0.8071789   0.5081931   1.2820674
9 months    ki1114097-CMIN             12                   1                 0.9832078   0.6483400   1.4910348
9 months    ki1126311-ZVITAMBO         2                    1                 0.9569161   0.6342368   1.4437643
9 months    ki1126311-ZVITAMBO         3                    1                 0.9017094   0.5965537   1.3629617
9 months    ki1126311-ZVITAMBO         4                    1                 0.6845093   0.4231618   1.1072669
9 months    ki1126311-ZVITAMBO         5                    1                 0.8915493   0.5816030   1.3666713
9 months    ki1126311-ZVITAMBO         6                    1                 1.0488304   0.7075399   1.5547466
9 months    ki1126311-ZVITAMBO         7                    1                 0.8466049   0.5485438   1.3066229
9 months    ki1126311-ZVITAMBO         8                    1                 0.7152542   0.4637039   1.1032658
9 months    ki1126311-ZVITAMBO         9                    1                 0.8692884   0.5812012   1.3001733
9 months    ki1126311-ZVITAMBO         10                   1                 1.2203957   0.8372192   1.7789436
9 months    ki1126311-ZVITAMBO         11                   1                 0.8617417   0.5780328   1.2847002
9 months    ki1126311-ZVITAMBO         12                   1                 0.9477541   0.6451783   1.3922320
12 months   ki0047075b-MAL-ED          2                    1                 1.3393198   0.9629707   1.8627538
12 months   ki0047075b-MAL-ED          3                    1                 0.9829091   0.6712136   1.4393484
12 months   ki0047075b-MAL-ED          4                    1                 0.8259740   0.5361601   1.2724429
12 months   ki0047075b-MAL-ED          5                    1                 0.8362134   0.5545493   1.2609389
12 months   ki0047075b-MAL-ED          6                    1                 0.9121801   0.6012777   1.3838405
12 months   ki0047075b-MAL-ED          7                    1                 1.1099026   0.7792281   1.5809026
12 months   ki0047075b-MAL-ED          8                    1                 0.8954143   0.5954429   1.3465049
12 months   ki0047075b-MAL-ED          9                    1                 0.7581055   0.5053845   1.1372015
12 months   ki0047075b-MAL-ED          10                   1                 0.9470219   0.6533210   1.3727563
12 months   ki0047075b-MAL-ED          11                   1                 1.0356153   0.7307991   1.4675703
12 months   ki0047075b-MAL-ED          12                   1                 0.9558651   0.6645491   1.3748842
12 months   ki1000108-IRC              2                    1                 1.2333333   0.7196671   2.1136316
12 months   ki1000108-IRC              3                    1                 0.6395062   0.3025540   1.3517196
12 months   ki1000108-IRC              4                    1                 1.3566667   0.7773107   2.3678362
12 months   ki1000108-IRC              5                    1                 1.2920635   0.7342713   2.2735849
12 months   ki1000108-IRC              6                    1                 0.3333333   0.1348671   0.8238563
12 months   ki1000108-IRC              7                    1                 0.4111111   0.1794157   0.9420155
12 months   ki1000108-IRC              8                    1                 0.4484848   0.2141380   0.9392944
12 months   ki1000108-IRC              9                    1                 0.8222222   0.4242262   1.5936061
12 months   ki1000108-IRC              10                   1                 0.3245614   0.1311195   0.8033899
12 months   ki1000108-IRC              11                   1                 0.6783333   0.3585596   1.2832904
12 months   ki1000108-IRC              12                   1                 0.8222222   0.4738782   1.4266310
12 months   ki1017093-NIH-Birth        2                    1                 0.8023256   0.4745021   1.3566353
12 months   ki1017093-NIH-Birth        3                    1                 0.7155556   0.4144645   1.2353765
12 months   ki1017093-NIH-Birth        4                    1                 0.7868421   0.4535204   1.3651437
12 months   ki1017093-NIH-Birth        5                    1                 0.6487179   0.3560178   1.1820617
12 months   ki1017093-NIH-Birth        6                    1                 0.9078947   0.5430574   1.5178376
12 months   ki1017093-NIH-Birth        7                    1                 0.9078947   0.5430574   1.5178376
12 months   ki1017093-NIH-Birth        8                    1                 0.9200000   0.5313982   1.5927791
12 months   ki1017093-NIH-Birth        9                    1                 0.9470588   0.5629811   1.5931625
12 months   ki1017093-NIH-Birth        10                   1                 0.7853659   0.4584143   1.3455068
12 months   ki1017093-NIH-Birth        11                   1                 0.9387755   0.5856214   1.5048963
12 months   ki1017093-NIH-Birth        12                   1                 0.9660000   0.6075149   1.5360216
12 months   ki1101329-Keneba           2                    1                 0.8093327   0.5611180   1.1673470
12 months   ki1101329-Keneba           3                    1                 0.8187461   0.5734789   1.1689097
12 months   ki1101329-Keneba           4                    1                 0.7442888   0.4922885   1.1252869
12 months   ki1101329-Keneba           5                    1                 0.8503891   0.5775733   1.2520690
12 months   ki1101329-Keneba           6                    1                 0.7199931   0.4646867   1.1155688
12 months   ki1101329-Keneba           7                    1                 0.9046231   0.5931617   1.3796286
12 months   ki1101329-Keneba           8                    1                 0.8908764   0.6226375   1.2746754
12 months   ki1101329-Keneba           9                    1                 0.9654453   0.6838539   1.3629878
12 months   ki1101329-Keneba           10                   1                 1.0999546   0.8049638   1.5030493
12 months   ki1101329-Keneba           11                   1                 0.9608352   0.6791360   1.3593806
12 months   ki1101329-Keneba           12                   1                 1.0716805   0.7631798   1.5048867
12 months   ki1114097-CMIN             2                    1                 0.7718664   0.5143474   1.1583176
12 months   ki1114097-CMIN             3                    1                 0.5591628   0.3657704   0.8548069
12 months   ki1114097-CMIN             4                    1                 0.7847702   0.5286784   1.1649127
12 months   ki1114097-CMIN             5                    1                 0.5797297   0.3651315   0.9204534
12 months   ki1114097-CMIN             6                    1                 0.7832879   0.5135965   1.1945952
12 months   ki1114097-CMIN             7                    1                 0.6756757   0.4359845   1.0471418
12 months   ki1114097-CMIN             8                    1                 0.7120100   0.4780916   1.0603791
12 months   ki1114097-CMIN             9                    1                 0.8213408   0.5633386   1.1975050
12 months   ki1114097-CMIN             10                   1                 0.9575561   0.6646108   1.3796252
12 months   ki1114097-CMIN             11                   1                 0.8470077   0.5643639   1.2712048
12 months   ki1114097-CMIN             12                   1                 0.9881757   0.6823805   1.4310069
12 months   ki1126311-ZVITAMBO         2                    1                 1.4063139   0.9474273   2.0874622
12 months   ki1126311-ZVITAMBO         3                    1                 1.0727651   0.7093230   1.6224271
12 months   ki1126311-ZVITAMBO         4                    1                 1.1448165   0.7586220   1.7276123
12 months   ki1126311-ZVITAMBO         5                    1                 1.1347095   0.7465692   1.7246434
12 months   ki1126311-ZVITAMBO         6                    1                 1.1289575   0.7501188   1.6991244
12 months   ki1126311-ZVITAMBO         7                    1                 1.1009957   0.7352522   1.6486745
12 months   ki1126311-ZVITAMBO         8                    1                 1.0866971   0.7254086   1.6279247
12 months   ki1126311-ZVITAMBO         9                    1                 0.9047705   0.5862617   1.3963214
12 months   ki1126311-ZVITAMBO         10                   1                 1.3987084   0.9369123   2.0881200
12 months   ki1126311-ZVITAMBO         11                   1                 1.1700680   0.7850333   1.7439504
12 months   ki1126311-ZVITAMBO         12                   1                 0.8927868   0.5782690   1.3783694
18 months   ki0047075b-MAL-ED          2                    1                 1.1666667   0.8989582   1.5140983
18 months   ki0047075b-MAL-ED          3                    1                 0.9529190   0.7094572   1.2799287
18 months   ki0047075b-MAL-ED          4                    1                 0.8555556   0.6164442   1.1874154
18 months   ki0047075b-MAL-ED          5                    1                 0.9301868   0.6874641   1.2586076
18 months   ki0047075b-MAL-ED          6                    1                 0.8954895   0.6507821   1.2322120
18 months   ki0047075b-MAL-ED          7                    1                 1.1062449   0.8490857   1.4412890
18 months   ki0047075b-MAL-ED          8                    1                 0.8003933   0.5780372   1.1082842
18 months   ki0047075b-MAL-ED          9                    1                 0.6858513   0.4945307   0.9511887
18 months   ki0047075b-MAL-ED          10                   1                 0.8968825   0.6714851   1.1979391
18 months   ki0047075b-MAL-ED          11                   1                 1.0198675   0.7804124   1.3327951
18 months   ki0047075b-MAL-ED          12                   1                 0.9679344   0.7355068   1.2738114
18 months   ki1000108-IRC              2                    1                 1.0857143   0.6066515   1.9430852
18 months   ki1000108-IRC              3                    1                 0.9382716   0.4993361   1.7630482
18 months   ki1000108-IRC              4                    1                 1.2063492   0.6636596   2.1928085
18 months   ki1000108-IRC              5                    1                 1.3818182   0.7981400   2.3923392
18 months   ki1000108-IRC              6                    1                 0.3423423   0.1383025   0.8474055
18 months   ki1000108-IRC              7                    1                 0.7037037   0.3642857   1.3593694
18 months   ki1000108-IRC              8                    1                 0.7658915   0.4196100   1.3979405
18 months   ki1000108-IRC              9                    1                 1.4074074   0.8374636   2.3652320
18 months   ki1000108-IRC              10                   1                 0.4342857   0.1895653   0.9949296
18 months   ki1000108-IRC              11                   1                 1.0133333   0.5860819   1.7520495
18 months   ki1000108-IRC              12                   1                 0.9934641   0.5894857   1.6742914
18 months   ki1017093-NIH-Birth        2                    1                 0.9753695   0.6977486   1.3634503
18 months   ki1017093-NIH-Birth        3                    1                 0.8111285   0.5678936   1.1585436
18 months   ki1017093-NIH-Birth        4                    1                 1.0344828   0.7532314   1.4207514
18 months   ki1017093-NIH-Birth        5                    1                 1.0065238   0.7295669   1.3886185
18 months   ki1017093-NIH-Birth        6                    1                 0.9946950   0.7222075   1.3699913
18 months   ki1017093-NIH-Birth        7                    1                 0.9482759   0.6753005   1.3315954
18 months   ki1017093-NIH-Birth        8                    1                 0.7758621   0.5048273   1.1924116
18 months   ki1017093-NIH-Birth        9                    1                 0.9310345   0.6579461   1.3174715
18 months   ki1017093-NIH-Birth        10                   1                 0.9645853   0.6917551   1.3450205
18 months   ki1017093-NIH-Birth        11                   1                 0.8111285   0.5678936   1.1585436
18 months   ki1017093-NIH-Birth        12                   1                 0.7263390   0.4994349   1.0563305
18 months   ki1101329-Keneba           2                    1                 1.0897034   0.8088380   1.4680981
18 months   ki1101329-Keneba           3                    1                 1.1979447   0.9053440   1.5851119
18 months   ki1101329-Keneba           4                    1                 1.1557377   0.8455209   1.5797712
18 months   ki1101329-Keneba           5                    1                 1.1147541   0.8111197   1.5320509
18 months   ki1101329-Keneba           6                    1                 1.2352681   0.8957531   1.7034686
18 months   ki1101329-Keneba           7                    1                 1.3527353   0.9742217   1.8783125
18 months   ki1101329-Keneba           8                    1                 0.9120715   0.6539113   1.2721519
18 months   ki1101329-Keneba           9                    1                 0.9754098   0.7112767   1.3376289
18 months   ki1101329-Keneba           10                   1                 1.2058638   0.9137709   1.5913261
18 months   ki1101329-Keneba           11                   1                 0.8670310   0.6204724   1.2115651
18 months   ki1101329-Keneba           12                   1                 0.9824951   0.7203001   1.3401313
18 months   ki1114097-CMIN             2                    1                 1.1330357   0.8304251   1.5459189
18 months   ki1114097-CMIN             3                    1                 0.8508621   0.6036447   1.1993252
18 months   ki1114097-CMIN             4                    1                 0.9942308   0.7129321   1.3865203
18 months   ki1114097-CMIN             5                    1                 1.1015625   0.7854252   1.5449465
18 months   ki1114097-CMIN             6                    1                 1.0141369   0.6979548   1.4735534
18 months   ki1114097-CMIN             7                    1                 0.9179688   0.6306724   1.3361401
18 months   ki1114097-CMIN             8                    1                 1.0000000   0.7225126   1.3840588
18 months   ki1114097-CMIN             9                    1                 1.1190476   0.8290117   1.5105548
18 months   ki1114097-CMIN             10                   1                 1.0729790   0.7911889   1.4551317
18 months   ki1114097-CMIN             11                   1                 1.1126894   0.8102944   1.5279357
18 months   ki1114097-CMIN             12                   1                 1.1190476   0.8218096   1.5237929
18 months   ki1126311-ZVITAMBO         2                    1                 0.9379845   0.6419434   1.3705490
18 months   ki1126311-ZVITAMBO         3                    1                 0.7719298   0.4948693   1.2041072
18 months   ki1126311-ZVITAMBO         4                    1                 0.9565217   0.6623415   1.3813626
18 months   ki1126311-ZVITAMBO         5                    1                 0.9166667   0.5888571   1.4269639
18 months   ki1126311-ZVITAMBO         6                    1                 0.4583333   0.2307598   0.9103380
18 months   ki1126311-ZVITAMBO         7                    1                 0.7096774   0.4283017   1.1759048
18 months   ki1126311-ZVITAMBO         8                    1                 0.4888889   0.2574445   0.9284033
18 months   ki1126311-ZVITAMBO         9                    1                 1.1000000   0.7364125   1.6431009
18 months   ki1126311-ZVITAMBO         10                   1                 1.0000000   0.6364315   1.5712610
18 months   ki1126311-ZVITAMBO         11                   1                 1.1523810   0.8110854   1.6372898
18 months   ki1126311-ZVITAMBO         12                   1                 0.8333333   0.5562742   1.2483852
24 months   ki0047075b-MAL-ED          2                    1                 1.0575677   0.8052029   1.3890281
24 months   ki0047075b-MAL-ED          3                    1                 1.0729226   0.8122440   1.4172623
24 months   ki0047075b-MAL-ED          4                    1                 0.7054357   0.4895190   1.0165888
24 months   ki0047075b-MAL-ED          5                    1                 0.9356185   0.6918134   1.2653440
24 months   ki0047075b-MAL-ED          6                    1                 0.7638647   0.5371920   1.0861837
24 months   ki0047075b-MAL-ED          7                    1                 0.9536373   0.7161395   1.2698980
24 months   ki0047075b-MAL-ED          8                    1                 0.7115640   0.5042966   1.0040190
24 months   ki0047075b-MAL-ED          9                    1                 0.6511572   0.4657343   0.9104025
24 months   ki0047075b-MAL-ED          10                   1                 0.8216296   0.6070972   1.1119721
24 months   ki0047075b-MAL-ED          11                   1                 1.0234031   0.7822927   1.3388260
24 months   ki0047075b-MAL-ED          12                   1                 0.9738836   0.7401312   1.2814608
24 months   ki1000108-IRC              2                    1                 1.0857143   0.6986418   1.6872388
24 months   ki1000108-IRC              3                    1                 0.8444444   0.5024813   1.4191303
24 months   ki1000108-IRC              4                    1                 1.1761905   0.7486832   1.8478095
24 months   ki1000108-IRC              5                    1                 1.4681818   1.0063050   2.1420522
24 months   ki1000108-IRC              6                    1                 0.4108108   0.2071974   0.8145156
24 months   ki1000108-IRC              7                    1                 0.7916667   0.4845703   1.2933853
24 months   ki1000108-IRC              8                    1                 0.4750000   0.2620496   0.8610012
24 months   ki1000108-IRC              9                    1                 0.9851852   0.6139547   1.5808818
24 months   ki1000108-IRC              10                   1                 0.4621622   0.2426716   0.8801765
24 months   ki1000108-IRC              11                   1                 0.6650000   0.3955100   1.1181133
24 months   ki1000108-IRC              12                   1                 0.7673077   0.4903347   1.2007332
24 months   ki1017093-NIH-Birth        2                    1                 0.9473180   0.6865215   1.3071862
24 months   ki1017093-NIH-Birth        3                    1                 0.6463307   0.4274319   0.9773330
24 months   ki1017093-NIH-Birth        4                    1                 0.9594320   0.6938835   1.3266058
24 months   ki1017093-NIH-Birth        5                    1                 0.9743842   0.7095203   1.3381219
24 months   ki1017093-NIH-Birth        6                    1                 0.7638454   0.5165416   1.1295503
24 months   ki1017093-NIH-Birth        7                    1                 0.7849899   0.5371824   1.1471132
24 months   ki1017093-NIH-Birth        8                    1                 0.7139208   0.4581252   1.1125407
24 months   ki1017093-NIH-Birth        9                    1                 0.6843501   0.4299663   1.0892368
24 months   ki1017093-NIH-Birth        10                   1                 0.8087774   0.5559851   1.1765081
24 months   ki1017093-NIH-Birth        11                   1                 0.7586207   0.5299324   1.0859977
24 months   ki1017093-NIH-Birth        12                   1                 0.7736132   0.5471495   1.0938096
24 months   ki1101329-Keneba           2                    1                 0.9142429   0.6663675   1.2543231
24 months   ki1101329-Keneba           3                    1                 0.8801471   0.6395257   1.2113022
24 months   ki1101329-Keneba           4                    1                 1.0446429   0.7486451   1.4576715
24 months   ki1101329-Keneba           5                    1                 1.1513466   0.8415951   1.5751031
24 months   ki1101329-Keneba           6                    1                 1.0289208   0.7190837   1.4722597
24 months   ki1101329-Keneba           7                    1                 1.3194444   0.9491177   1.8342653
24 months   ki1101329-Keneba           8                    1                 0.8503617   0.6110778   1.1833436
24 months   ki1101329-Keneba           9                    1                 0.9602426   0.7011818   1.3150168
24 months   ki1101329-Keneba           10                   1                 1.1908929   0.9035942   1.5695383
24 months   ki1101329-Keneba           11                   1                 0.9962006   0.7233248   1.3720194
24 months   ki1101329-Keneba           12                   1                 1.0789286   0.7952613   1.4637792
24 months   ki1114097-CMIN             2                    1                 0.8783654   0.6337958   1.2173097
24 months   ki1114097-CMIN             3                    1                 0.7603659   0.5456739   1.0595270
24 months   ki1114097-CMIN             4                    1                 0.9968750   0.7387646   1.3451644
24 months   ki1114097-CMIN             5                    1                 0.9718085   0.7054988   1.3386440
24 months   ki1114097-CMIN             6                    1                 0.6496753   0.4306058   0.9801960
24 months   ki1114097-CMIN             7                    1                 0.6796875   0.4675132   0.9881541
24 months   ki1114097-CMIN             8                    1                 0.8398515   0.6005865   1.1744363
24 months   ki1114097-CMIN             9                    1                 0.8770161   0.6414794   1.1990366
24 months   ki1114097-CMIN             10                   1                 0.8776316   0.6379119   1.2074350
24 months   ki1114097-CMIN             11                   1                 0.8482500   0.6069370   1.1855070
24 months   ki1114097-CMIN             12                   1                 1.0609756   0.7719324   1.4582484


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          1                    NA                -0.0019966   -0.0583842    0.0543910
Birth       ki1126311-ZVITAMBO         1                    NA                -0.0593646   -0.0985989   -0.0201303
3 months    ki0047075b-MAL-ED          1                    NA                -0.0276265   -0.0849296    0.0296765
3 months    ki1017093-NIH-Birth        1                    NA                -0.0885965   -0.2065339    0.0293409
3 months    ki1101329-Keneba           1                    NA                -0.0267604   -0.0756653    0.0221445
3 months    ki1114097-CMIN             1                    NA                -0.0098064   -0.0674934    0.0478806
3 months    ki1126311-ZVITAMBO         1                    NA                 0.0126881   -0.0344655    0.0598416
6 months    ki0047075b-MAL-ED          1                    NA                -0.0271507   -0.0865759    0.0322744
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                 0.0066954   -0.1470624    0.1604531
6 months    ki1000108-IRC              1                    NA                -0.0437734   -0.1884262    0.1008793
6 months    ki1017093-NIH-Birth        1                    NA                -0.0203051   -0.1436386    0.1030284
6 months    ki1101329-Keneba           1                    NA                 0.0126445   -0.0326507    0.0579396
6 months    ki1114097-CMIN             1                    NA                -0.0558805   -0.1114932   -0.0002679
6 months    ki1126311-ZVITAMBO         1                    NA                -0.0219298   -0.0737711    0.0299114
6 months    ki1148112-LCNI-5           1                    NA                 0.0574169   -0.0967718    0.2116057
9 months    ki0047075b-MAL-ED          1                    NA                -0.0231063   -0.0881474    0.0419347
9 months    ki1000108-IRC              1                    NA                -0.0956938   -0.2495878    0.0582002
9 months    ki1017093-NIH-Birth        1                    NA                -0.0939784   -0.2307542    0.0427974
9 months    ki1101329-Keneba           1                    NA                -0.0087083   -0.0614053    0.0439887
9 months    ki1114097-CMIN             1                    NA                -0.0261444   -0.0848993    0.0326105
9 months    ki1126311-ZVITAMBO         1                    NA                -0.0186700   -0.0739676    0.0366275
12 months   ki0047075b-MAL-ED          1                    NA                -0.0069276   -0.0765163    0.0626611
12 months   ki1000108-IRC              1                    NA                -0.1123020   -0.2712337    0.0466298
12 months   ki1017093-NIH-Birth        1                    NA                -0.0600372   -0.2034979    0.0834235
12 months   ki1101329-Keneba           1                    NA                -0.0227716   -0.0875350    0.0419917
12 months   ki1114097-CMIN             1                    NA                -0.0678236   -0.1521377    0.0164905
12 months   ki1126311-ZVITAMBO         1                    NA                 0.0229790   -0.0384651    0.0844230
18 months   ki0047075b-MAL-ED          1                    NA                -0.0222863   -0.1000068    0.0554343
18 months   ki1000108-IRC              1                    NA                -0.0391813   -0.1952264    0.1168638
18 months   ki1017093-NIH-Birth        1                    NA                -0.0569714   -0.1971094    0.0831666
18 months   ki1101329-Keneba           1                    NA                 0.0233933   -0.0394728    0.0862594
18 months   ki1114097-CMIN             1                    NA                 0.0138064   -0.0644448    0.0920577
18 months   ki1126311-ZVITAMBO         1                    NA                -0.0701604   -0.2023019    0.0619810
24 months   ki0047075b-MAL-ED          1                    NA                -0.0423885   -0.1224730    0.0376960
24 months   ki1000108-IRC              1                    NA                -0.1106679   -0.2702726    0.0489369
24 months   ki1017093-NIH-Birth        1                    NA                -0.1196400   -0.2600597    0.0207796
24 months   ki1101329-Keneba           1                    NA                 0.0070074   -0.0633780    0.0773927
24 months   ki1114097-CMIN             1                    NA                -0.0596064   -0.1644159    0.0452030


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          1                    NA                -0.0150397   -0.5424697    0.3320416
Birth       ki1126311-ZVITAMBO         1                    NA                -0.5687459   -0.9936758   -0.2343852
3 months    ki0047075b-MAL-ED          1                    NA                -0.1779710   -0.6115613    0.1389619
3 months    ki1017093-NIH-Birth        1                    NA                -0.3884615   -1.0157914    0.0436384
3 months    ki1101329-Keneba           1                    NA                -0.1854597   -0.5778678    0.1093584
3 months    ki1114097-CMIN             1                    NA                -0.0720916   -0.5923353    0.2781794
3 months    ki1126311-ZVITAMBO         1                    NA                 0.0736948   -0.2449391    0.3107764
6 months    ki0047075b-MAL-ED          1                    NA                -0.1662369   -0.5933193    0.1463679
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                 0.0222576   -0.6490651    0.4202895
6 months    ki1000108-IRC              1                    NA                -0.1781579   -0.9426178    0.2854714
6 months    ki1017093-NIH-Birth        1                    NA                -0.0757212   -0.6496970    0.2985524
6 months    ki1101329-Keneba           1                    NA                 0.0895400   -0.2949520    0.3598701
6 months    ki1114097-CMIN             1                    NA                -0.4621472   -1.0028975   -0.0673909
6 months    ki1126311-ZVITAMBO         1                    NA                -0.1343284   -0.5008376    0.1426782
6 months    ki1148112-LCNI-5           1                    NA                 0.1544700   -0.3807422    0.4822199
9 months    ki0047075b-MAL-ED          1                    NA                -0.1117829   -0.4755302    0.1622935
9 months    ki1000108-IRC              1                    NA                -0.3508772   -1.0528190    0.1110423
9 months    ki1017093-NIH-Birth        1                    NA                -0.2632434   -0.7109859    0.0673307
9 months    ki1101329-Keneba           1                    NA                -0.0483871   -0.3861861    0.2070938
9 months    ki1114097-CMIN             1                    NA                -0.1494197   -0.5394565    0.1417973
9 months    ki1126311-ZVITAMBO         1                    NA                -0.0959405   -0.4203600    0.1543794
12 months   ki0047075b-MAL-ED          1                    NA                -0.0256765   -0.3189368    0.2023785
12 months   ki1000108-IRC              1                    NA                -0.3831479   -1.0495118    0.0665592
12 months   ki1017093-NIH-Birth        1                    NA                -0.1602079   -0.6138221    0.1659041
12 months   ki1101329-Keneba           1                    NA                -0.0918408   -0.3869454    0.1404735
12 months   ki1114097-CMIN             1                    NA                -0.2730246   -0.6620743    0.0249584
12 months   ki1126311-ZVITAMBO         1                    NA                 0.0965116   -0.2021651    0.3209824
18 months   ki0047075b-MAL-ED          1                    NA                -0.0576163   -0.2789169    0.1253910
18 months   ki1000108-IRC              1                    NA                -0.1101974   -0.6489058    0.2525115
18 months   ki1017093-NIH-Birth        1                    NA                -0.0969771   -0.3634992    0.1174481
18 months   ki1101329-Keneba           1                    NA                 0.0725569   -0.1444287    0.2484017
18 months   ki1114097-CMIN             1                    NA                 0.0389757   -0.2093759    0.2363271
18 months   ki1126311-ZVITAMBO         1                    NA                -0.1476148   -0.4625373    0.0994967
24 months   ki0047075b-MAL-ED          1                    NA                -0.1129095   -0.3480889    0.0812418
24 months   ki1000108-IRC              1                    NA                -0.2662539   -0.7161133    0.0656801
24 months   ki1017093-NIH-Birth        1                    NA                -0.2156537   -0.4972507    0.0129816
24 months   ki1101329-Keneba           1                    NA                 0.0209493   -0.2137948    0.2102945
24 months   ki1114097-CMIN             1                    NA                -0.1489552   -0.4431711    0.0852797


