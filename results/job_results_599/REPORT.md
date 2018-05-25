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
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CMIN
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
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
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000109-ResPak
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000109-ResPak
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000109-ResPak
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1148112-LCNI-5

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/33e45e40-cac7-4826-aea3-2911c2f69a46/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/33e45e40-cac7-4826-aea3-2911c2f69a46/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/33e45e40-cac7-4826-aea3-2911c2f69a46/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/33e45e40-cac7-4826-aea3-2911c2f69a46/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n    nA   nAY0   nAY1
----------  -------------------------  ---  -----  ----  -----  -----
3 months    ki0047075b-MAL-ED          1     1868   178    132     46
3 months    ki0047075b-MAL-ED          2     1868   174    137     37
3 months    ki0047075b-MAL-ED          3     1868   149    106     43
3 months    ki0047075b-MAL-ED          4     1868   116     95     21
3 months    ki0047075b-MAL-ED          5     1868   135     98     37
3 months    ki0047075b-MAL-ED          6     1868   119     92     27
3 months    ki0047075b-MAL-ED          7     1868   159    110     49
3 months    ki0047075b-MAL-ED          8     1868   139    104     35
3 months    ki0047075b-MAL-ED          9     1868   164    124     40
3 months    ki0047075b-MAL-ED          10    1868   175    129     46
3 months    ki0047075b-MAL-ED          11    1868   174    120     54
3 months    ki0047075b-MAL-ED          12    1868   186    134     52
3 months    ki1000108-CMC-V-BCS-2002   1      362    33     16     17
3 months    ki1000108-CMC-V-BCS-2002   2      362    15     12      3
3 months    ki1000108-CMC-V-BCS-2002   3      362    30     25      5
3 months    ki1000108-CMC-V-BCS-2002   4      362    43     35      8
3 months    ki1000108-CMC-V-BCS-2002   5      362    35     24     11
3 months    ki1000108-CMC-V-BCS-2002   6      362    35     22     13
3 months    ki1000108-CMC-V-BCS-2002   7      362    38     25     13
3 months    ki1000108-CMC-V-BCS-2002   8      362    17     11      6
3 months    ki1000108-CMC-V-BCS-2002   9      362    21     13      8
3 months    ki1000108-CMC-V-BCS-2002   10     362    29     19     10
3 months    ki1000108-CMC-V-BCS-2002   11     362    41     26     15
3 months    ki1000108-CMC-V-BCS-2002   12     362    25      9     16
3 months    ki1000108-IRC              1      410    36     25     11
3 months    ki1000108-IRC              2      410    27     16     11
3 months    ki1000108-IRC              3      410    29     18     11
3 months    ki1000108-IRC              4      410    22     14      8
3 months    ki1000108-IRC              5      410    21     14      7
3 months    ki1000108-IRC              6      410    37     27     10
3 months    ki1000108-IRC              7      410    36     25     11
3 months    ki1000108-IRC              8      410    45     38      7
3 months    ki1000108-IRC              9      410    27     18      9
3 months    ki1000108-IRC              10     410    37     28      9
3 months    ki1000108-IRC              11     410    41     28     13
3 months    ki1000108-IRC              12     410    52     29     23
3 months    ki1000109-EE               1      379    95     26     69
3 months    ki1000109-EE               2      379    66     27     39
3 months    ki1000109-EE               3      379    43     22     21
3 months    ki1000109-EE               4      379    16      4     12
3 months    ki1000109-EE               5      379     0      0      0
3 months    ki1000109-EE               6      379     0      0      0
3 months    ki1000109-EE               7      379     0      0      0
3 months    ki1000109-EE               8      379     0      0      0
3 months    ki1000109-EE               9      379     0      0      0
3 months    ki1000109-EE               10     379     4      3      1
3 months    ki1000109-EE               11     379    70     21     49
3 months    ki1000109-EE               12     379    85     35     50
3 months    ki1000109-ResPak           1      276    10      6      4
3 months    ki1000109-ResPak           2      276    12      7      5
3 months    ki1000109-ResPak           3      276    17      7     10
3 months    ki1000109-ResPak           4      276    33     14     19
3 months    ki1000109-ResPak           5      276    35     18     17
3 months    ki1000109-ResPak           6      276    54     21     33
3 months    ki1000109-ResPak           7      276    37     12     25
3 months    ki1000109-ResPak           8      276    38     24     14
3 months    ki1000109-ResPak           9      276    26     17      9
3 months    ki1000109-ResPak           10     276     8      7      1
3 months    ki1000109-ResPak           11     276     4      0      4
3 months    ki1000109-ResPak           12     276     2      2      0
3 months    ki1000304b-SAS-FoodSuppl   1        0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   2        0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   3        0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   4        0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   5        0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   6        0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   7        0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   8        0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   9        0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   10       0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   11       0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   12       0     0      0      0
3 months    ki1017093-NIH-Birth        1      629    68     44     24
3 months    ki1017093-NIH-Birth        2      629    61     45     16
3 months    ki1017093-NIH-Birth        3      629    61     54      7
3 months    ki1017093-NIH-Birth        4      629    53     41     12
3 months    ki1017093-NIH-Birth        5      629    47     38      9
3 months    ki1017093-NIH-Birth        6      629    47     37     10
3 months    ki1017093-NIH-Birth        7      629    48     39      9
3 months    ki1017093-NIH-Birth        8      629    43     36      7
3 months    ki1017093-NIH-Birth        9      629    34     27      7
3 months    ki1017093-NIH-Birth        10     629    61     44     17
3 months    ki1017093-NIH-Birth        11     629    52     39     13
3 months    ki1017093-NIH-Birth        12     629    54     45      9
3 months    ki1066203-TanzaniaChild2   1      602    44     37      7
3 months    ki1066203-TanzaniaChild2   2      602    42     40      2
3 months    ki1066203-TanzaniaChild2   3      602    39     33      6
3 months    ki1066203-TanzaniaChild2   4      602    50     45      5
3 months    ki1066203-TanzaniaChild2   5      602    45     40      5
3 months    ki1066203-TanzaniaChild2   6      602    42     36      6
3 months    ki1066203-TanzaniaChild2   7      602    48     45      3
3 months    ki1066203-TanzaniaChild2   8      602    63     59      4
3 months    ki1066203-TanzaniaChild2   9      602    51     44      7
3 months    ki1066203-TanzaniaChild2   10     602    69     63      6
3 months    ki1066203-TanzaniaChild2   11     602    54     50      4
3 months    ki1066203-TanzaniaChild2   12     602    55     51      4
3 months    ki1112895-Guatemala BSC    1        0     0      0      0
3 months    ki1112895-Guatemala BSC    2        0     0      0      0
3 months    ki1112895-Guatemala BSC    3        0     0      0      0
3 months    ki1112895-Guatemala BSC    4        0     0      0      0
3 months    ki1112895-Guatemala BSC    5        0     0      0      0
3 months    ki1112895-Guatemala BSC    6        0     0      0      0
3 months    ki1112895-Guatemala BSC    7        0     0      0      0
3 months    ki1112895-Guatemala BSC    8        0     0      0      0
3 months    ki1112895-Guatemala BSC    9        0     0      0      0
3 months    ki1112895-Guatemala BSC    10       0     0      0      0
3 months    ki1112895-Guatemala BSC    11       0     0      0      0
3 months    ki1112895-Guatemala BSC    12       0     0      0      0
3 months    ki1113344-GMS-Nepal        1      593     0      0      0
3 months    ki1113344-GMS-Nepal        2      593     0      0      0
3 months    ki1113344-GMS-Nepal        3      593     0      0      0
3 months    ki1113344-GMS-Nepal        4      593     0      0      0
3 months    ki1113344-GMS-Nepal        5      593     0      0      0
3 months    ki1113344-GMS-Nepal        6      593   111     98     13
3 months    ki1113344-GMS-Nepal        7      593   227    189     38
3 months    ki1113344-GMS-Nepal        8      593   237    198     39
3 months    ki1113344-GMS-Nepal        9      593    16     12      4
3 months    ki1113344-GMS-Nepal        10     593     2      2      0
3 months    ki1113344-GMS-Nepal        11     593     0      0      0
3 months    ki1113344-GMS-Nepal        12     593     0      0      0
3 months    ki1114097-CMIN             1     1580   151    127     24
3 months    ki1114097-CMIN             2     1580   137    115     22
3 months    ki1114097-CMIN             3     1580   129    110     19
3 months    ki1114097-CMIN             4     1580   162    140     22
3 months    ki1114097-CMIN             5     1580   143    113     30
3 months    ki1114097-CMIN             6     1580   113     94     19
3 months    ki1114097-CMIN             7     1580   107     92     15
3 months    ki1114097-CMIN             8     1580   118     94     24
3 months    ki1114097-CMIN             9     1580   139    112     27
3 months    ki1114097-CMIN             10    1580   113     90     23
3 months    ki1114097-CMIN             11    1580   139    115     24
3 months    ki1114097-CMIN             12    1580   129    100     29
3 months    ki1114097-CONTENT          1      215     9      8      1
3 months    ki1114097-CONTENT          2      215    16     16      0
3 months    ki1114097-CONTENT          3      215    30     27      3
3 months    ki1114097-CONTENT          4      215    12     10      2
3 months    ki1114097-CONTENT          5      215    25     20      5
3 months    ki1114097-CONTENT          6      215    14     11      3
3 months    ki1114097-CONTENT          7      215    24     23      1
3 months    ki1114097-CONTENT          8      215    18     14      4
3 months    ki1114097-CONTENT          9      215    20     14      6
3 months    ki1114097-CONTENT          10     215    24     18      6
3 months    ki1114097-CONTENT          11     215    18     14      4
3 months    ki1114097-CONTENT          12     215     5      5      0
3 months    ki1126311-ZVITAMBO         1     3496   347    258     89
3 months    ki1126311-ZVITAMBO         2     3496   259    199     60
3 months    ki1126311-ZVITAMBO         3     3496   287    231     56
3 months    ki1126311-ZVITAMBO         4     3496   259    203     56
3 months    ki1126311-ZVITAMBO         5     3496   253    194     59
3 months    ki1126311-ZVITAMBO         6     3496   286    215     71
3 months    ki1126311-ZVITAMBO         7     3496   303    234     69
3 months    ki1126311-ZVITAMBO         8     3496   313    241     72
3 months    ki1126311-ZVITAMBO         9     3496   325    276     49
3 months    ki1126311-ZVITAMBO         10    3496   260    213     47
3 months    ki1126311-ZVITAMBO         11    3496   288    234     54
3 months    ki1126311-ZVITAMBO         12    3496   316    263     53
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
6 months    ki0047075b-MAL-ED          1     1748   168    110     58
6 months    ki0047075b-MAL-ED          2     1748   159    108     51
6 months    ki0047075b-MAL-ED          3     1748   137     85     52
6 months    ki0047075b-MAL-ED          4     1748   110     85     25
6 months    ki0047075b-MAL-ED          5     1748   129     89     40
6 months    ki0047075b-MAL-ED          6     1748   110     80     30
6 months    ki0047075b-MAL-ED          7     1748   151     92     59
6 months    ki0047075b-MAL-ED          8     1748   130     89     41
6 months    ki0047075b-MAL-ED          9     1748   154    108     46
6 months    ki0047075b-MAL-ED          10    1748   162    107     55
6 months    ki0047075b-MAL-ED          11    1748   169    102     67
6 months    ki0047075b-MAL-ED          12    1748   169    111     58
6 months    ki1000108-CMC-V-BCS-2002   1      367    34     14     20
6 months    ki1000108-CMC-V-BCS-2002   2      367    15      9      6
6 months    ki1000108-CMC-V-BCS-2002   3      367    31     19     12
6 months    ki1000108-CMC-V-BCS-2002   4      367    44     28     16
6 months    ki1000108-CMC-V-BCS-2002   5      367    35     18     17
6 months    ki1000108-CMC-V-BCS-2002   6      367    36     15     21
6 months    ki1000108-CMC-V-BCS-2002   7      367    39     16     23
6 months    ki1000108-CMC-V-BCS-2002   8      367    17      8      9
6 months    ki1000108-CMC-V-BCS-2002   9      367    21     11     10
6 months    ki1000108-CMC-V-BCS-2002   10     367    29     13     16
6 months    ki1000108-CMC-V-BCS-2002   11     367    41     20     21
6 months    ki1000108-CMC-V-BCS-2002   12     367    25      8     17
6 months    ki1000108-IRC              1      408    35     20     15
6 months    ki1000108-IRC              2      408    27     14     13
6 months    ki1000108-IRC              3      408    29     16     13
6 months    ki1000108-IRC              4      408    22     12     10
6 months    ki1000108-IRC              5      408    20     10     10
6 months    ki1000108-IRC              6      408    37     23     14
6 months    ki1000108-IRC              7      408    36     20     16
6 months    ki1000108-IRC              8      408    45     32     13
6 months    ki1000108-IRC              9      408    27     15     12
6 months    ki1000108-IRC              10     408    37     24     13
6 months    ki1000108-IRC              11     408    41     26     15
6 months    ki1000108-IRC              12     408    52     23     29
6 months    ki1000109-EE               1      373    93     18     75
6 months    ki1000109-EE               2      373    64     18     46
6 months    ki1000109-EE               3      373    43     18     25
6 months    ki1000109-EE               4      373    15      2     13
6 months    ki1000109-EE               5      373     0      0      0
6 months    ki1000109-EE               6      373     0      0      0
6 months    ki1000109-EE               7      373     0      0      0
6 months    ki1000109-EE               8      373     0      0      0
6 months    ki1000109-EE               9      373     0      0      0
6 months    ki1000109-EE               10     373     4      2      2
6 months    ki1000109-EE               11     373    70     18     52
6 months    ki1000109-EE               12     373    84     20     64
6 months    ki1000109-ResPak           1      255     9      3      6
6 months    ki1000109-ResPak           2      255    12      6      6
6 months    ki1000109-ResPak           3      255    17      5     12
6 months    ki1000109-ResPak           4      255    29     10     19
6 months    ki1000109-ResPak           5      255    36     16     20
6 months    ki1000109-ResPak           6      255    50     17     33
6 months    ki1000109-ResPak           7      255    32      9     23
6 months    ki1000109-ResPak           8      255    33     17     16
6 months    ki1000109-ResPak           9      255    24     14     10
6 months    ki1000109-ResPak           10     255     7      6      1
6 months    ki1000109-ResPak           11     255     4      0      4
6 months    ki1000109-ResPak           12     255     2      1      1
6 months    ki1000304b-SAS-FoodSuppl   1      105    16      9      7
6 months    ki1000304b-SAS-FoodSuppl   2      105     9      4      5
6 months    ki1000304b-SAS-FoodSuppl   3      105    10      4      6
6 months    ki1000304b-SAS-FoodSuppl   4      105     8      5      3
6 months    ki1000304b-SAS-FoodSuppl   5      105     8      5      3
6 months    ki1000304b-SAS-FoodSuppl   6      105     9      6      3
6 months    ki1000304b-SAS-FoodSuppl   7      105     5      4      1
6 months    ki1000304b-SAS-FoodSuppl   8      105     0      0      0
6 months    ki1000304b-SAS-FoodSuppl   9      105     4      3      1
6 months    ki1000304b-SAS-FoodSuppl   10     105     7      3      4
6 months    ki1000304b-SAS-FoodSuppl   11     105    12      8      4
6 months    ki1000304b-SAS-FoodSuppl   12     105    17     11      6
6 months    ki1017093-NIH-Birth        1      551    55     27     28
6 months    ki1017093-NIH-Birth        2      551    44     28     16
6 months    ki1017093-NIH-Birth        3      551    53     40     13
6 months    ki1017093-NIH-Birth        4      551    48     33     15
6 months    ki1017093-NIH-Birth        5      551    44     33     11
6 months    ki1017093-NIH-Birth        6      551    42     23     19
6 months    ki1017093-NIH-Birth        7      551    43     21     22
6 months    ki1017093-NIH-Birth        8      551    40     27     13
6 months    ki1017093-NIH-Birth        9      551    30     20     10
6 months    ki1017093-NIH-Birth        10     551    57     35     22
6 months    ki1017093-NIH-Birth        11     551    52     29     23
6 months    ki1017093-NIH-Birth        12     551    43     34      9
6 months    ki1066203-TanzaniaChild2   1      557    40     34      6
6 months    ki1066203-TanzaniaChild2   2      557    37     34      3
6 months    ki1066203-TanzaniaChild2   3      557    35     27      8
6 months    ki1066203-TanzaniaChild2   4      557    47     35     12
6 months    ki1066203-TanzaniaChild2   5      557    42     31     11
6 months    ki1066203-TanzaniaChild2   6      557    39     30      9
6 months    ki1066203-TanzaniaChild2   7      557    46     35     11
6 months    ki1066203-TanzaniaChild2   8      557    59     47     12
6 months    ki1066203-TanzaniaChild2   9      557    45     33     12
6 months    ki1066203-TanzaniaChild2   10     557    61     51     10
6 months    ki1066203-TanzaniaChild2   11     557    54     44     10
6 months    ki1066203-TanzaniaChild2   12     557    52     48      4
6 months    ki1112895-Guatemala BSC    1      115     9      7      2
6 months    ki1112895-Guatemala BSC    2      115     8      6      2
6 months    ki1112895-Guatemala BSC    3      115     6      4      2
6 months    ki1112895-Guatemala BSC    4      115    11      8      3
6 months    ki1112895-Guatemala BSC    5      115    11     10      1
6 months    ki1112895-Guatemala BSC    6      115    12      7      5
6 months    ki1112895-Guatemala BSC    7      115     8      5      3
6 months    ki1112895-Guatemala BSC    8      115     6      5      1
6 months    ki1112895-Guatemala BSC    9      115    11      7      4
6 months    ki1112895-Guatemala BSC    10     115    15      8      7
6 months    ki1112895-Guatemala BSC    11     115    16     12      4
6 months    ki1112895-Guatemala BSC    12     115     2      1      1
6 months    ki1113344-GMS-Nepal        1      567     0      0      0
6 months    ki1113344-GMS-Nepal        2      567     0      0      0
6 months    ki1113344-GMS-Nepal        3      567     0      0      0
6 months    ki1113344-GMS-Nepal        4      567     0      0      0
6 months    ki1113344-GMS-Nepal        5      567     0      0      0
6 months    ki1113344-GMS-Nepal        6      567   101     75     26
6 months    ki1113344-GMS-Nepal        7      567   219    157     62
6 months    ki1113344-GMS-Nepal        8      567   230    163     67
6 months    ki1113344-GMS-Nepal        9      567    15      9      6
6 months    ki1113344-GMS-Nepal        10     567     2      1      1
6 months    ki1113344-GMS-Nepal        11     567     0      0      0
6 months    ki1113344-GMS-Nepal        12     567     0      0      0
6 months    ki1114097-CMIN             1     1853   162    129     33
6 months    ki1114097-CMIN             2     1853   143    115     28
6 months    ki1114097-CMIN             3     1853   138    110     28
6 months    ki1114097-CMIN             4     1853   233    205     28
6 months    ki1114097-CMIN             5     1853   176    139     37
6 months    ki1114097-CMIN             6     1853   143    119     24
6 months    ki1114097-CMIN             7     1853   108     84     24
6 months    ki1114097-CMIN             8     1853   114     88     26
6 months    ki1114097-CMIN             9     1853   174    137     37
6 months    ki1114097-CMIN             10    1853   132     97     35
6 months    ki1114097-CMIN             11    1853   184    148     36
6 months    ki1114097-CMIN             12    1853   146    112     34
6 months    ki1114097-CONTENT          1      215     9      8      1
6 months    ki1114097-CONTENT          2      215    16     16      0
6 months    ki1114097-CONTENT          3      215    30     25      5
6 months    ki1114097-CONTENT          4      215    12      7      5
6 months    ki1114097-CONTENT          5      215    25     18      7
6 months    ki1114097-CONTENT          6      215    14     10      4
6 months    ki1114097-CONTENT          7      215    24     20      4
6 months    ki1114097-CONTENT          8      215    18     12      6
6 months    ki1114097-CONTENT          9      215    20     14      6
6 months    ki1114097-CONTENT          10     215    24     18      6
6 months    ki1114097-CONTENT          11     215    18     14      4
6 months    ki1114097-CONTENT          12     215     5      5      0
6 months    ki1126311-ZVITAMBO         1     2281   232    162     70
6 months    ki1126311-ZVITAMBO         2     2281   143     92     51
6 months    ki1126311-ZVITAMBO         3     2281   186    138     48
6 months    ki1126311-ZVITAMBO         4     2281   178    124     54
6 months    ki1126311-ZVITAMBO         5     2281   169    112     57
6 months    ki1126311-ZVITAMBO         6     2281   193    116     77
6 months    ki1126311-ZVITAMBO         7     2281   200    142     58
6 months    ki1126311-ZVITAMBO         8     2281   205    135     70
6 months    ki1126311-ZVITAMBO         9     2281   195    149     46
6 months    ki1126311-ZVITAMBO         10    2281   153    107     46
6 months    ki1126311-ZVITAMBO         11    2281   201    146     55
6 months    ki1126311-ZVITAMBO         12    2281   226    180     46
6 months    ki1148112-LCNI-5           1      133     3      3      0
6 months    ki1148112-LCNI-5           2      133    20     10     10
6 months    ki1148112-LCNI-5           3      133    30     17     13
6 months    ki1148112-LCNI-5           4      133    28     17     11
6 months    ki1148112-LCNI-5           5      133    10      6      4
6 months    ki1148112-LCNI-5           6      133    13      8      5
6 months    ki1148112-LCNI-5           7      133    16     10      6
6 months    ki1148112-LCNI-5           8      133     3      3      0
6 months    ki1148112-LCNI-5           9      133     2      1      1
6 months    ki1148112-LCNI-5           10     133     3      2      1
6 months    ki1148112-LCNI-5           11     133     3      3      0
6 months    ki1148112-LCNI-5           12     133     2      1      1
12 months   ki0047075b-MAL-ED          1     1690   161     93     68
12 months   ki0047075b-MAL-ED          2     1690   153     80     73
12 months   ki0047075b-MAL-ED          3     1690   135     78     57
12 months   ki0047075b-MAL-ED          4     1690   109     73     36
12 months   ki0047075b-MAL-ED          5     1690   122     71     51
12 months   ki0047075b-MAL-ED          6     1690   109     66     43
12 months   ki0047075b-MAL-ED          7     1690   147     80     67
12 months   ki0047075b-MAL-ED          8     1690   122     73     49
12 months   ki0047075b-MAL-ED          9     1690   147     86     61
12 months   ki0047075b-MAL-ED          10    1690   156     93     63
12 months   ki0047075b-MAL-ED          11    1690   166     82     84
12 months   ki0047075b-MAL-ED          12    1690   163     88     75
12 months   ki1000108-CMC-V-BCS-2002   1      372    34      9     25
12 months   ki1000108-CMC-V-BCS-2002   2      372    16      3     13
12 months   ki1000108-CMC-V-BCS-2002   3      372    31     11     20
12 months   ki1000108-CMC-V-BCS-2002   4      372    44     19     25
12 months   ki1000108-CMC-V-BCS-2002   5      372    36     11     25
12 months   ki1000108-CMC-V-BCS-2002   6      372    37      7     30
12 months   ki1000108-CMC-V-BCS-2002   7      372    39     12     27
12 months   ki1000108-CMC-V-BCS-2002   8      372    18      6     12
12 months   ki1000108-CMC-V-BCS-2002   9      372    20      6     14
12 months   ki1000108-CMC-V-BCS-2002   10     372    29      9     20
12 months   ki1000108-CMC-V-BCS-2002   11     372    43     15     28
12 months   ki1000108-CMC-V-BCS-2002   12     372    25      4     21
12 months   ki1000108-IRC              1      408    36     16     20
12 months   ki1000108-IRC              2      408    27     12     15
12 months   ki1000108-IRC              3      408    29     14     15
12 months   ki1000108-IRC              4      408    22      9     13
12 months   ki1000108-IRC              5      408    20      6     14
12 months   ki1000108-IRC              6      408    37     21     16
12 months   ki1000108-IRC              7      408    36     19     17
12 months   ki1000108-IRC              8      408    45     27     18
12 months   ki1000108-IRC              9      408    27     13     14
12 months   ki1000108-IRC              10     408    37     21     16
12 months   ki1000108-IRC              11     408    41     22     19
12 months   ki1000108-IRC              12     408    51     21     30
12 months   ki1000109-EE               1      373    91     13     78
12 months   ki1000109-EE               2      373    65     12     53
12 months   ki1000109-EE               3      373    42     10     32
12 months   ki1000109-EE               4      373    16      2     14
12 months   ki1000109-EE               5      373     0      0      0
12 months   ki1000109-EE               6      373     0      0      0
12 months   ki1000109-EE               7      373     0      0      0
12 months   ki1000109-EE               8      373     0      0      0
12 months   ki1000109-EE               9      373     0      0      0
12 months   ki1000109-EE               10     373     4      1      3
12 months   ki1000109-EE               11     373    70     14     56
12 months   ki1000109-EE               12     373    85     13     72
12 months   ki1000109-ResPak           1      230     9      2      7
12 months   ki1000109-ResPak           2      230    11      4      7
12 months   ki1000109-ResPak           3      230    17      5     12
12 months   ki1000109-ResPak           4      230    21      6     15
12 months   ki1000109-ResPak           5      230    34     16     18
12 months   ki1000109-ResPak           6      230    46     13     33
12 months   ki1000109-ResPak           7      230    26      6     20
12 months   ki1000109-ResPak           8      230    32     13     19
12 months   ki1000109-ResPak           9      230    23     13     10
12 months   ki1000109-ResPak           10     230     7      6      1
12 months   ki1000109-ResPak           11     230     2      0      2
12 months   ki1000109-ResPak           12     230     2      1      1
12 months   ki1000304b-SAS-FoodSuppl   1       99    15      0     15
12 months   ki1000304b-SAS-FoodSuppl   2       99     9      2      7
12 months   ki1000304b-SAS-FoodSuppl   3       99     8      1      7
12 months   ki1000304b-SAS-FoodSuppl   4       99     8      1      7
12 months   ki1000304b-SAS-FoodSuppl   5       99     7      1      6
12 months   ki1000304b-SAS-FoodSuppl   6       99     9      1      8
12 months   ki1000304b-SAS-FoodSuppl   7       99     5      1      4
12 months   ki1000304b-SAS-FoodSuppl   8       99     0      0      0
12 months   ki1000304b-SAS-FoodSuppl   9       99     4      0      4
12 months   ki1000304b-SAS-FoodSuppl   10      99     6      1      5
12 months   ki1000304b-SAS-FoodSuppl   11      99    11      2      9
12 months   ki1000304b-SAS-FoodSuppl   12      99    17      5     12
12 months   ki1017093-NIH-Birth        1      541    52     18     34
12 months   ki1017093-NIH-Birth        2      541    50     23     27
12 months   ki1017093-NIH-Birth        3      541    51     28     23
12 months   ki1017093-NIH-Birth        4      541    45     27     18
12 months   ki1017093-NIH-Birth        5      541    42     25     17
12 months   ki1017093-NIH-Birth        6      541    40     19     21
12 months   ki1017093-NIH-Birth        7      541    45     18     27
12 months   ki1017093-NIH-Birth        8      541    37     17     20
12 months   ki1017093-NIH-Birth        9      541    29     16     13
12 months   ki1017093-NIH-Birth        10     541    53     25     28
12 months   ki1017093-NIH-Birth        11     541    47     20     27
12 months   ki1017093-NIH-Birth        12     541    50     29     21
12 months   ki1066203-TanzaniaChild2   1      496    36     25     11
12 months   ki1066203-TanzaniaChild2   2      496    34     28      6
12 months   ki1066203-TanzaniaChild2   3      496    32     22     10
12 months   ki1066203-TanzaniaChild2   4      496    35     22     13
12 months   ki1066203-TanzaniaChild2   5      496    36     22     14
12 months   ki1066203-TanzaniaChild2   6      496    34     23     11
12 months   ki1066203-TanzaniaChild2   7      496    42     25     17
12 months   ki1066203-TanzaniaChild2   8      496    57     39     18
12 months   ki1066203-TanzaniaChild2   9      496    41     26     15
12 months   ki1066203-TanzaniaChild2   10     496    56     41     15
12 months   ki1066203-TanzaniaChild2   11     496    47     31     16
12 months   ki1066203-TanzaniaChild2   12     496    46     34     12
12 months   ki1112895-Guatemala BSC    1       85     6      2      4
12 months   ki1112895-Guatemala BSC    2       85     6      5      1
12 months   ki1112895-Guatemala BSC    3       85     3      1      2
12 months   ki1112895-Guatemala BSC    4       85     7      3      4
12 months   ki1112895-Guatemala BSC    5       85    11      7      4
12 months   ki1112895-Guatemala BSC    6       85    11      5      6
12 months   ki1112895-Guatemala BSC    7       85     7      3      4
12 months   ki1112895-Guatemala BSC    8       85     6      4      2
12 months   ki1112895-Guatemala BSC    9       85     9      7      2
12 months   ki1112895-Guatemala BSC    10      85     7      3      4
12 months   ki1112895-Guatemala BSC    11      85    11      8      3
12 months   ki1112895-Guatemala BSC    12      85     1      0      1
12 months   ki1113344-GMS-Nepal        1      582     0      0      0
12 months   ki1113344-GMS-Nepal        2      582     0      0      0
12 months   ki1113344-GMS-Nepal        3      582     0      0      0
12 months   ki1113344-GMS-Nepal        4      582     0      0      0
12 months   ki1113344-GMS-Nepal        5      582     0      0      0
12 months   ki1113344-GMS-Nepal        6      582   107     51     56
12 months   ki1113344-GMS-Nepal        7      582   226    121    105
12 months   ki1113344-GMS-Nepal        8      582   231    135     96
12 months   ki1113344-GMS-Nepal        9      582    16      9      7
12 months   ki1113344-GMS-Nepal        10     582     2      1      1
12 months   ki1113344-GMS-Nepal        11     582     0      0      0
12 months   ki1113344-GMS-Nepal        12     582     0      0      0
12 months   ki1114097-CMIN             1     2260   236    163     73
12 months   ki1114097-CMIN             2     2260   168    112     56
12 months   ki1114097-CMIN             3     2260   170    119     51
12 months   ki1114097-CMIN             4     2260   334    246     88
12 months   ki1114097-CMIN             5     2260   218    148     70
12 months   ki1114097-CMIN             6     2260   172    129     43
12 months   ki1114097-CMIN             7     2260   153    106     47
12 months   ki1114097-CMIN             8     2260   140     99     41
12 months   ki1114097-CMIN             9     2260   191    135     56
12 months   ki1114097-CMIN             10    2260   139     89     50
12 months   ki1114097-CMIN             11    2260   184    133     51
12 months   ki1114097-CMIN             12    2260   155    104     51
12 months   ki1114097-CONTENT          1      215     9      8      1
12 months   ki1114097-CONTENT          2      215    16     16      0
12 months   ki1114097-CONTENT          3      215    30     25      5
12 months   ki1114097-CONTENT          4      215    12      7      5
12 months   ki1114097-CONTENT          5      215    25     17      8
12 months   ki1114097-CONTENT          6      215    14      9      5
12 months   ki1114097-CONTENT          7      215    24     19      5
12 months   ki1114097-CONTENT          8      215    18     11      7
12 months   ki1114097-CONTENT          9      215    20     14      6
12 months   ki1114097-CONTENT          10     215    24     17      7
12 months   ki1114097-CONTENT          11     215    18     14      4
12 months   ki1114097-CONTENT          12     215     5      4      1
12 months   ki1126311-ZVITAMBO         1     2541   267    170     97
12 months   ki1126311-ZVITAMBO         2     2541   187    112     75
12 months   ki1126311-ZVITAMBO         3     2541   206    124     82
12 months   ki1126311-ZVITAMBO         4     2541   191    125     66
12 months   ki1126311-ZVITAMBO         5     2541   178     96     82
12 months   ki1126311-ZVITAMBO         6     2541   202    112     90
12 months   ki1126311-ZVITAMBO         7     2541   210    133     77
12 months   ki1126311-ZVITAMBO         8     2541   219    131     88
12 months   ki1126311-ZVITAMBO         9     2541   236    157     79
12 months   ki1126311-ZVITAMBO         10    2541   178    105     73
12 months   ki1126311-ZVITAMBO         11    2541   221    148     73
12 months   ki1126311-ZVITAMBO         12    2541   246    168     78
12 months   ki1148112-LCNI-5           1      403    26     15     11
12 months   ki1148112-LCNI-5           2      403    56     30     26
12 months   ki1148112-LCNI-5           3      403    46     22     24
12 months   ki1148112-LCNI-5           4      403    52     25     27
12 months   ki1148112-LCNI-5           5      403    51     29     22
12 months   ki1148112-LCNI-5           6      403    45     20     25
12 months   ki1148112-LCNI-5           7      403    37     18     19
12 months   ki1148112-LCNI-5           8      403    20     12      8
12 months   ki1148112-LCNI-5           9      403    13      6      7
12 months   ki1148112-LCNI-5           10     403    15      8      7
12 months   ki1148112-LCNI-5           11     403    24     13     11
12 months   ki1148112-LCNI-5           12     403    18     10      8
18 months   ki0047075b-MAL-ED          1     1615   156     74     82
18 months   ki0047075b-MAL-ED          2     1615   145     58     87
18 months   ki0047075b-MAL-ED          3     1615   127     59     68
18 months   ki0047075b-MAL-ED          4     1615   105     59     46
18 months   ki0047075b-MAL-ED          5     1615   116     53     63
18 months   ki0047075b-MAL-ED          6     1615   104     51     53
18 months   ki0047075b-MAL-ED          7     1615   145     64     81
18 months   ki0047075b-MAL-ED          8     1615   115     55     60
18 months   ki0047075b-MAL-ED          9     1615   140     66     74
18 months   ki0047075b-MAL-ED          10    1615   146     70     76
18 months   ki0047075b-MAL-ED          11    1615   156     66     90
18 months   ki0047075b-MAL-ED          12    1615   160     68     92
18 months   ki1000108-CMC-V-BCS-2002   1      373    34      4     30
18 months   ki1000108-CMC-V-BCS-2002   2      373    16      1     15
18 months   ki1000108-CMC-V-BCS-2002   3      373    31      2     29
18 months   ki1000108-CMC-V-BCS-2002   4      373    44     12     32
18 months   ki1000108-CMC-V-BCS-2002   5      373    36      5     31
18 months   ki1000108-CMC-V-BCS-2002   6      373    37      4     33
18 months   ki1000108-CMC-V-BCS-2002   7      373    39      8     31
18 months   ki1000108-CMC-V-BCS-2002   8      373    18      3     15
18 months   ki1000108-CMC-V-BCS-2002   9      373    21      4     17
18 months   ki1000108-CMC-V-BCS-2002   10     373    29      4     25
18 months   ki1000108-CMC-V-BCS-2002   11     373    43     10     33
18 months   ki1000108-CMC-V-BCS-2002   12     373    25      0     25
18 months   ki1000108-IRC              1      409    36     16     20
18 months   ki1000108-IRC              2      409    27     11     16
18 months   ki1000108-IRC              3      409    29     11     18
18 months   ki1000108-IRC              4      409    22      7     15
18 months   ki1000108-IRC              5      409    21      5     16
18 months   ki1000108-IRC              6      409    37     20     17
18 months   ki1000108-IRC              7      409    36     17     19
18 months   ki1000108-IRC              8      409    45     25     20
18 months   ki1000108-IRC              9      409    27     10     17
18 months   ki1000108-IRC              10     409    37     21     16
18 months   ki1000108-IRC              11     409    41     19     22
18 months   ki1000108-IRC              12     409    51     17     34
18 months   ki1000109-EE               1      363    90      6     84
18 months   ki1000109-EE               2      363    62      8     54
18 months   ki1000109-EE               3      363    41      4     37
18 months   ki1000109-EE               4      363    16      2     14
18 months   ki1000109-EE               5      363     0      0      0
18 months   ki1000109-EE               6      363     0      0      0
18 months   ki1000109-EE               7      363     0      0      0
18 months   ki1000109-EE               8      363     0      0      0
18 months   ki1000109-EE               9      363     0      0      0
18 months   ki1000109-EE               10     363     4      1      3
18 months   ki1000109-EE               11     363    67      7     60
18 months   ki1000109-EE               12     363    83      4     79
18 months   ki1000109-ResPak           1      184     6      1      5
18 months   ki1000109-ResPak           2      184     6      1      5
18 months   ki1000109-ResPak           3      184    12      4      8
18 months   ki1000109-ResPak           4      184    17      4     13
18 months   ki1000109-ResPak           5      184    31     14     17
18 months   ki1000109-ResPak           6      184    44     12     32
18 months   ki1000109-ResPak           7      184    21      4     17
18 months   ki1000109-ResPak           8      184    28     10     18
18 months   ki1000109-ResPak           9      184    17      9      8
18 months   ki1000109-ResPak           10     184     1      0      1
18 months   ki1000109-ResPak           11     184     0      0      0
18 months   ki1000109-ResPak           12     184     1      0      1
18 months   ki1000304b-SAS-FoodSuppl   1       93    16      0     16
18 months   ki1000304b-SAS-FoodSuppl   2       93     8      1      7
18 months   ki1000304b-SAS-FoodSuppl   3       93     7      1      6
18 months   ki1000304b-SAS-FoodSuppl   4       93     7      0      7
18 months   ki1000304b-SAS-FoodSuppl   5       93     8      2      6
18 months   ki1000304b-SAS-FoodSuppl   6       93     7      0      7
18 months   ki1000304b-SAS-FoodSuppl   7       93     5      1      4
18 months   ki1000304b-SAS-FoodSuppl   8       93     0      0      0
18 months   ki1000304b-SAS-FoodSuppl   9       93     4      0      4
18 months   ki1000304b-SAS-FoodSuppl   10      93     6      1      5
18 months   ki1000304b-SAS-FoodSuppl   11      93    10      2      8
18 months   ki1000304b-SAS-FoodSuppl   12      93    15      2     13
18 months   ki1017093-NIH-Birth        1      497    47     15     32
18 months   ki1017093-NIH-Birth        2      497    42     12     30
18 months   ki1017093-NIH-Birth        3      497    46     19     27
18 months   ki1017093-NIH-Birth        4      497    40     14     26
18 months   ki1017093-NIH-Birth        5      497    37     17     20
18 months   ki1017093-NIH-Birth        6      497    36     11     25
18 months   ki1017093-NIH-Birth        7      497    43     15     28
18 months   ki1017093-NIH-Birth        8      497    33      9     24
18 months   ki1017093-NIH-Birth        9      497    27     12     15
18 months   ki1017093-NIH-Birth        10     497    49     19     30
18 months   ki1017093-NIH-Birth        11     497    48     12     36
18 months   ki1017093-NIH-Birth        12     497    49     19     30
18 months   ki1066203-TanzaniaChild2   1      360    27     15     12
18 months   ki1066203-TanzaniaChild2   2      360    24     20      4
18 months   ki1066203-TanzaniaChild2   3      360    26     12     14
18 months   ki1066203-TanzaniaChild2   4      360    29     13     16
18 months   ki1066203-TanzaniaChild2   5      360    31     17     14
18 months   ki1066203-TanzaniaChild2   6      360    24     14     10
18 months   ki1066203-TanzaniaChild2   7      360    31     18     13
18 months   ki1066203-TanzaniaChild2   8      360    42     25     17
18 months   ki1066203-TanzaniaChild2   9      360    29     15     14
18 months   ki1066203-TanzaniaChild2   10     360    36     23     13
18 months   ki1066203-TanzaniaChild2   11     360    32     19     13
18 months   ki1066203-TanzaniaChild2   12     360    29     16     13
18 months   ki1112895-Guatemala BSC    1       49     4      1      3
18 months   ki1112895-Guatemala BSC    2       49     5      3      2
18 months   ki1112895-Guatemala BSC    3       49     2      1      1
18 months   ki1112895-Guatemala BSC    4       49     2      0      2
18 months   ki1112895-Guatemala BSC    5       49     6      2      4
18 months   ki1112895-Guatemala BSC    6       49     8      4      4
18 months   ki1112895-Guatemala BSC    7       49     4      2      2
18 months   ki1112895-Guatemala BSC    8       49     4      3      1
18 months   ki1112895-Guatemala BSC    9       49     4      2      2
18 months   ki1112895-Guatemala BSC    10      49     4      2      2
18 months   ki1112895-Guatemala BSC    11      49     5      3      2
18 months   ki1112895-Guatemala BSC    12      49     1      0      1
18 months   ki1113344-GMS-Nepal        1      574     0      0      0
18 months   ki1113344-GMS-Nepal        2      574     0      0      0
18 months   ki1113344-GMS-Nepal        3      574     0      0      0
18 months   ki1113344-GMS-Nepal        4      574     0      0      0
18 months   ki1113344-GMS-Nepal        5      574     0      0      0
18 months   ki1113344-GMS-Nepal        6      574   107     39     68
18 months   ki1113344-GMS-Nepal        7      574   223     81    142
18 months   ki1113344-GMS-Nepal        8      574   227     89    138
18 months   ki1113344-GMS-Nepal        9      574    15      6      9
18 months   ki1113344-GMS-Nepal        10     574     2      1      1
18 months   ki1113344-GMS-Nepal        11     574     0      0      0
18 months   ki1113344-GMS-Nepal        12     574     0      0      0
18 months   ki1114097-CMIN             1     2146   250    141    109
18 months   ki1114097-CMIN             2     2146   152     86     66
18 months   ki1114097-CMIN             3     2146   159     95     64
18 months   ki1114097-CMIN             4     2146   374    226    148
18 months   ki1114097-CMIN             5     2146   195    115     80
18 months   ki1114097-CMIN             6     2146   148     96     52
18 months   ki1114097-CMIN             7     2146   133     76     57
18 months   ki1114097-CMIN             8     2146   139     84     55
18 months   ki1114097-CMIN             9     2146   171    105     66
18 months   ki1114097-CMIN             10    2146   128     62     66
18 months   ki1114097-CMIN             11    2146   162     94     68
18 months   ki1114097-CMIN             12    2146   135     70     65
18 months   ki1114097-CONTENT          1      214     9      8      1
18 months   ki1114097-CONTENT          2      214    16     14      2
18 months   ki1114097-CONTENT          3      214    30     25      5
18 months   ki1114097-CONTENT          4      214    12      5      7
18 months   ki1114097-CONTENT          5      214    25     17      8
18 months   ki1114097-CONTENT          6      214    14      9      5
18 months   ki1114097-CONTENT          7      214    23     17      6
18 months   ki1114097-CONTENT          8      214    18     11      7
18 months   ki1114097-CONTENT          9      214    20     13      7
18 months   ki1114097-CONTENT          10     214    24     17      7
18 months   ki1114097-CONTENT          11     214    18     14      4
18 months   ki1114097-CONTENT          12     214     5      4      1
18 months   ki1126311-ZVITAMBO         1     1856   191    105     86
18 months   ki1126311-ZVITAMBO         2     1856   132     63     69
18 months   ki1126311-ZVITAMBO         3     1856   156     78     78
18 months   ki1126311-ZVITAMBO         4     1856   145     74     71
18 months   ki1126311-ZVITAMBO         5     1856   135     65     70
18 months   ki1126311-ZVITAMBO         6     1856   146     67     79
18 months   ki1126311-ZVITAMBO         7     1856   157     85     72
18 months   ki1126311-ZVITAMBO         8     1856   167     91     76
18 months   ki1126311-ZVITAMBO         9     1856   169     99     70
18 months   ki1126311-ZVITAMBO         10    1856   121     60     61
18 months   ki1126311-ZVITAMBO         11    1856   164     79     85
18 months   ki1126311-ZVITAMBO         12    1856   173     89     84
18 months   ki1148112-LCNI-5           1      328    22     13      9
18 months   ki1148112-LCNI-5           2      328    43     21     22
18 months   ki1148112-LCNI-5           3      328    42     18     24
18 months   ki1148112-LCNI-5           4      328    47     13     34
18 months   ki1148112-LCNI-5           5      328    38     15     23
18 months   ki1148112-LCNI-5           6      328    36     11     25
18 months   ki1148112-LCNI-5           7      328    27     11     16
18 months   ki1148112-LCNI-5           8      328    18     10      8
18 months   ki1148112-LCNI-5           9      328     9      3      6
18 months   ki1148112-LCNI-5           10     328    11      7      4
18 months   ki1148112-LCNI-5           11     328    21     11     10
18 months   ki1148112-LCNI-5           12     328    14      8      6
24 months   ki0047075b-MAL-ED          1     1540   152     60     92
24 months   ki0047075b-MAL-ED          2     1540   135     48     87
24 months   ki0047075b-MAL-ED          3     1540   120     50     70
24 months   ki0047075b-MAL-ED          4     1540   100     51     49
24 months   ki0047075b-MAL-ED          5     1540   108     44     64
24 months   ki0047075b-MAL-ED          6     1540   100     47     53
24 months   ki0047075b-MAL-ED          7     1540   137     54     83
24 months   ki0047075b-MAL-ED          8     1540   112     51     61
24 months   ki0047075b-MAL-ED          9     1540   136     62     74
24 months   ki0047075b-MAL-ED          10    1540   142     61     81
24 months   ki0047075b-MAL-ED          11    1540   144     52     92
24 months   ki0047075b-MAL-ED          12    1540   154     55     99
24 months   ki1000108-CMC-V-BCS-2002   1      373    34      3     31
24 months   ki1000108-CMC-V-BCS-2002   2      373    16      1     15
24 months   ki1000108-CMC-V-BCS-2002   3      373    31      0     31
24 months   ki1000108-CMC-V-BCS-2002   4      373    44      8     36
24 months   ki1000108-CMC-V-BCS-2002   5      373    36      1     35
24 months   ki1000108-CMC-V-BCS-2002   6      373    37      2     35
24 months   ki1000108-CMC-V-BCS-2002   7      373    39      4     35
24 months   ki1000108-CMC-V-BCS-2002   8      373    18      2     16
24 months   ki1000108-CMC-V-BCS-2002   9      373    21      0     21
24 months   ki1000108-CMC-V-BCS-2002   10     373    29      3     26
24 months   ki1000108-CMC-V-BCS-2002   11     373    43      4     39
24 months   ki1000108-CMC-V-BCS-2002   12     373    25      0     25
24 months   ki1000108-IRC              1      410    36     10     26
24 months   ki1000108-IRC              2      410    27      9     18
24 months   ki1000108-IRC              3      410    29      8     21
24 months   ki1000108-IRC              4      410    22      5     17
24 months   ki1000108-IRC              5      410    21      4     17
24 months   ki1000108-IRC              6      410    37     16     21
24 months   ki1000108-IRC              7      410    36     14     22
24 months   ki1000108-IRC              8      410    45     22     23
24 months   ki1000108-IRC              9      410    27      9     18
24 months   ki1000108-IRC              10     410    37     19     18
24 months   ki1000108-IRC              11     410    41     17     24
24 months   ki1000108-IRC              12     410    52     14     38
24 months   ki1000109-EE               1      338    85      6     79
24 months   ki1000109-EE               2      338    55      6     49
24 months   ki1000109-EE               3      338    38      3     35
24 months   ki1000109-EE               4      338    16      1     15
24 months   ki1000109-EE               5      338     0      0      0
24 months   ki1000109-EE               6      338     0      0      0
24 months   ki1000109-EE               7      338     0      0      0
24 months   ki1000109-EE               8      338     0      0      0
24 months   ki1000109-EE               9      338     0      0      0
24 months   ki1000109-EE               10     338     4      1      3
24 months   ki1000109-EE               11     338    60      6     54
24 months   ki1000109-EE               12     338    80      4     76
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
24 months   ki1000304b-SAS-FoodSuppl   1        9     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   2        9     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   3        9     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   4        9     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   5        9     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   6        9     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   7        9     1      1      0
24 months   ki1000304b-SAS-FoodSuppl   8        9     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   9        9     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   10       9     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   11       9     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   12       9     1      0      1
24 months   ki1017093-NIH-Birth        1      470    45     11     34
24 months   ki1017093-NIH-Birth        2      470    36      7     29
24 months   ki1017093-NIH-Birth        3      470    44     14     30
24 months   ki1017093-NIH-Birth        4      470    38      6     32
24 months   ki1017093-NIH-Birth        5      470    35      9     26
24 months   ki1017093-NIH-Birth        6      470    35      6     29
24 months   ki1017093-NIH-Birth        7      470    42     11     31
24 months   ki1017093-NIH-Birth        8      470    31      7     24
24 months   ki1017093-NIH-Birth        9      470    24      6     18
24 months   ki1017093-NIH-Birth        10     470    46     13     33
24 months   ki1017093-NIH-Birth        11     470    46     10     36
24 months   ki1017093-NIH-Birth        12     470    48     15     33
24 months   ki1066203-TanzaniaChild2   1      250    23     14      9
24 months   ki1066203-TanzaniaChild2   2      250    18     15      3
24 months   ki1066203-TanzaniaChild2   3      250    17      7     10
24 months   ki1066203-TanzaniaChild2   4      250    18      7     11
24 months   ki1066203-TanzaniaChild2   5      250    22     11     11
24 months   ki1066203-TanzaniaChild2   6      250    16      7      9
24 months   ki1066203-TanzaniaChild2   7      250    19     10      9
24 months   ki1066203-TanzaniaChild2   8      250    30     18     12
24 months   ki1066203-TanzaniaChild2   9      250    23     12     11
24 months   ki1066203-TanzaniaChild2   10     250    27     10     17
24 months   ki1066203-TanzaniaChild2   11     250    20     11      9
24 months   ki1066203-TanzaniaChild2   12     250    17      9      8
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
24 months   ki1113344-GMS-Nepal        1      568     0      0      0
24 months   ki1113344-GMS-Nepal        2      568     0      0      0
24 months   ki1113344-GMS-Nepal        3      568     0      0      0
24 months   ki1113344-GMS-Nepal        4      568     0      0      0
24 months   ki1113344-GMS-Nepal        5      568     0      0      0
24 months   ki1113344-GMS-Nepal        6      568   108     33     75
24 months   ki1113344-GMS-Nepal        7      568   219     63    156
24 months   ki1113344-GMS-Nepal        8      568   223     74    149
24 months   ki1113344-GMS-Nepal        9      568    16      5     11
24 months   ki1113344-GMS-Nepal        10     568     2      1      1
24 months   ki1113344-GMS-Nepal        11     568     0      0      0
24 months   ki1113344-GMS-Nepal        12     568     0      0      0
24 months   ki1114097-CMIN             1     2002   311    147    164
24 months   ki1114097-CMIN             2     2002   131     71     60
24 months   ki1114097-CMIN             3     2002   139     71     68
24 months   ki1114097-CMIN             4     2002   358    173    185
24 months   ki1114097-CMIN             5     2002   161     83     78
24 months   ki1114097-CMIN             6     2002   127     70     57
24 months   ki1114097-CMIN             7     2002   113     55     58
24 months   ki1114097-CMIN             8     2002   122     69     53
24 months   ki1114097-CMIN             9     2002   160     82     78
24 months   ki1114097-CMIN             10    2002   117     50     67
24 months   ki1114097-CMIN             11    2002   153     77     76
24 months   ki1114097-CMIN             12    2002   110     47     63
24 months   ki1114097-CONTENT          1      197     8      7      1
24 months   ki1114097-CONTENT          2      197    15     13      2
24 months   ki1114097-CONTENT          3      197    27     23      4
24 months   ki1114097-CONTENT          4      197    12      5      7
24 months   ki1114097-CONTENT          5      197    25     17      8
24 months   ki1114097-CONTENT          6      197    13      9      4
24 months   ki1114097-CONTENT          7      197    20     15      5
24 months   ki1114097-CONTENT          8      197    18     11      7
24 months   ki1114097-CONTENT          9      197    19     11      8
24 months   ki1114097-CONTENT          10     197    19     12      7
24 months   ki1114097-CONTENT          11     197    18     14      4
24 months   ki1114097-CONTENT          12     197     3      3      0
24 months   ki1126311-ZVITAMBO         1      470    60      8     52
24 months   ki1126311-ZVITAMBO         2      470    47      8     39
24 months   ki1126311-ZVITAMBO         3      470    46     19     27
24 months   ki1126311-ZVITAMBO         4      470    48     14     34
24 months   ki1126311-ZVITAMBO         5      470    31     10     21
24 months   ki1126311-ZVITAMBO         6      470    35     12     23
24 months   ki1126311-ZVITAMBO         7      470    35      9     26
24 months   ki1126311-ZVITAMBO         8      470    31     12     19
24 months   ki1126311-ZVITAMBO         9      470    24      8     16
24 months   ki1126311-ZVITAMBO         10     470    28      6     22
24 months   ki1126311-ZVITAMBO         11     470    36     10     26
24 months   ki1126311-ZVITAMBO         12     470    49     15     34
24 months   ki1148112-LCNI-5           1      355    25      9     16
24 months   ki1148112-LCNI-5           2      355    50     19     31
24 months   ki1148112-LCNI-5           3      355    41     14     27
24 months   ki1148112-LCNI-5           4      355    47     13     34
24 months   ki1148112-LCNI-5           5      355    39     14     25
24 months   ki1148112-LCNI-5           6      355    42     10     32
24 months   ki1148112-LCNI-5           7      355    29     12     17
24 months   ki1148112-LCNI-5           8      355    19      5     14
24 months   ki1148112-LCNI-5           9      355    11      4      7
24 months   ki1148112-LCNI-5           10     355    14      7      7
24 months   ki1148112-LCNI-5           11     355    22     11     11
24 months   ki1148112-LCNI-5           12     355    16      4     12

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          1                    NA                0.2584270   0.1940989   0.3227550
3 months    ki0047075b-MAL-ED          2                    NA                0.2126437   0.1518299   0.2734574
3 months    ki0047075b-MAL-ED          3                    NA                0.2885906   0.2158173   0.3613639
3 months    ki0047075b-MAL-ED          4                    NA                0.1810345   0.1109456   0.2511233
3 months    ki0047075b-MAL-ED          5                    NA                0.2740741   0.1988118   0.3493364
3 months    ki0047075b-MAL-ED          6                    NA                0.2268908   0.1516211   0.3021604
3 months    ki0047075b-MAL-ED          7                    NA                0.3081761   0.2363862   0.3799660
3 months    ki0047075b-MAL-ED          8                    NA                0.2517986   0.1796226   0.3239746
3 months    ki0047075b-MAL-ED          9                    NA                0.2439024   0.1781610   0.3096439
3 months    ki0047075b-MAL-ED          10                   NA                0.2628571   0.1976221   0.3280922
3 months    ki0047075b-MAL-ED          11                   NA                0.3103448   0.2415861   0.3791036
3 months    ki0047075b-MAL-ED          12                   NA                0.2795699   0.2150566   0.3440832
3 months    ki1000108-IRC              1                    NA                0.3055556   0.1548980   0.4562131
3 months    ki1000108-IRC              2                    NA                0.4074074   0.2218454   0.5929694
3 months    ki1000108-IRC              3                    NA                0.3793103   0.2024974   0.5561233
3 months    ki1000108-IRC              4                    NA                0.3636364   0.1623783   0.5648945
3 months    ki1000108-IRC              5                    NA                0.3333333   0.1314677   0.5351990
3 months    ki1000108-IRC              6                    NA                0.2702703   0.1269995   0.4135411
3 months    ki1000108-IRC              7                    NA                0.3055556   0.1548980   0.4562131
3 months    ki1000108-IRC              8                    NA                0.1555556   0.0495325   0.2615786
3 months    ki1000108-IRC              9                    NA                0.3333333   0.1553045   0.5113621
3 months    ki1000108-IRC              10                   NA                0.2432432   0.1048305   0.3816560
3 months    ki1000108-IRC              11                   NA                0.3170732   0.1744621   0.4596843
3 months    ki1000108-IRC              12                   NA                0.4423077   0.3071514   0.5774640
3 months    ki1017093-NIH-Birth        1                    NA                0.3529412   0.2392669   0.4666154
3 months    ki1017093-NIH-Birth        2                    NA                0.2622951   0.1518198   0.3727704
3 months    ki1017093-NIH-Birth        3                    NA                0.1147541   0.0347072   0.1948010
3 months    ki1017093-NIH-Birth        4                    NA                0.2264151   0.1136532   0.3391770
3 months    ki1017093-NIH-Birth        5                    NA                0.1914894   0.0789097   0.3040690
3 months    ki1017093-NIH-Birth        6                    NA                0.2127660   0.0956684   0.3298635
3 months    ki1017093-NIH-Birth        7                    NA                0.1875000   0.0769941   0.2980059
3 months    ki1017093-NIH-Birth        8                    NA                0.1627907   0.0523597   0.2732217
3 months    ki1017093-NIH-Birth        9                    NA                0.2058824   0.0698613   0.3419034
3 months    ki1017093-NIH-Birth        10                   NA                0.2786885   0.1660856   0.3912914
3 months    ki1017093-NIH-Birth        11                   NA                0.2500000   0.1322143   0.3677857
3 months    ki1017093-NIH-Birth        12                   NA                0.1666667   0.0671879   0.2661454
3 months    ki1114097-CMIN             1                    NA                0.1589404   0.1006056   0.2172752
3 months    ki1114097-CMIN             2                    NA                0.1605839   0.0990854   0.2220825
3 months    ki1114097-CMIN             3                    NA                0.1472868   0.0861118   0.2084618
3 months    ki1114097-CMIN             4                    NA                0.1358025   0.0830323   0.1885726
3 months    ki1114097-CMIN             5                    NA                0.2097902   0.1430356   0.2765448
3 months    ki1114097-CMIN             6                    NA                0.1681416   0.0991639   0.2371193
3 months    ki1114097-CMIN             7                    NA                0.1401869   0.0743833   0.2059905
3 months    ki1114097-CMIN             8                    NA                0.2033898   0.1307404   0.2760392
3 months    ki1114097-CMIN             9                    NA                0.1942446   0.1284555   0.2600338
3 months    ki1114097-CMIN             10                   NA                0.2035398   0.1292801   0.2777995
3 months    ki1114097-CMIN             11                   NA                0.1726619   0.1098100   0.2355137
3 months    ki1114097-CMIN             12                   NA                0.2248062   0.1527452   0.2968672
3 months    ki1126311-ZVITAMBO         1                    NA                0.2564841   0.2105304   0.3024379
3 months    ki1126311-ZVITAMBO         2                    NA                0.2316602   0.1802721   0.2830484
3 months    ki1126311-ZVITAMBO         3                    NA                0.1951220   0.1492669   0.2409770
3 months    ki1126311-ZVITAMBO         4                    NA                0.2162162   0.1660741   0.2663583
3 months    ki1126311-ZVITAMBO         5                    NA                0.2332016   0.1810874   0.2853158
3 months    ki1126311-ZVITAMBO         6                    NA                0.2482517   0.1981781   0.2983254
3 months    ki1126311-ZVITAMBO         7                    NA                0.2277228   0.1804970   0.2749485
3 months    ki1126311-ZVITAMBO         8                    NA                0.2300319   0.1834016   0.2766623
3 months    ki1126311-ZVITAMBO         9                    NA                0.1507692   0.1118613   0.1896771
3 months    ki1126311-ZVITAMBO         10                   NA                0.1807692   0.1339861   0.2275523
3 months    ki1126311-ZVITAMBO         11                   NA                0.1875000   0.1424156   0.2325844
3 months    ki1126311-ZVITAMBO         12                   NA                0.1677215   0.1265217   0.2089213
6 months    ki0047075b-MAL-ED          1                    NA                0.3452381   0.2733232   0.4171530
6 months    ki0047075b-MAL-ED          2                    NA                0.3207547   0.2481820   0.3933275
6 months    ki0047075b-MAL-ED          3                    NA                0.3795620   0.2982785   0.4608456
6 months    ki0047075b-MAL-ED          4                    NA                0.2272727   0.1489365   0.3056090
6 months    ki0047075b-MAL-ED          5                    NA                0.3100775   0.2302389   0.3899161
6 months    ki0047075b-MAL-ED          6                    NA                0.2727273   0.1894764   0.3559782
6 months    ki0047075b-MAL-ED          7                    NA                0.3907285   0.3128842   0.4685728
6 months    ki0047075b-MAL-ED          8                    NA                0.3153846   0.2354851   0.3952842
6 months    ki0047075b-MAL-ED          9                    NA                0.2987013   0.2263940   0.3710086
6 months    ki0047075b-MAL-ED          10                   NA                0.3395062   0.2665649   0.4124474
6 months    ki0047075b-MAL-ED          11                   NA                0.3964497   0.3226797   0.4702197
6 months    ki0047075b-MAL-ED          12                   NA                0.3431953   0.2715945   0.4147961
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.5882353   0.4225816   0.7538890
6 months    ki1000108-CMC-V-BCS-2002   2                    NA                0.4000000   0.1517435   0.6482565
6 months    ki1000108-CMC-V-BCS-2002   3                    NA                0.3870968   0.2153987   0.5587949
6 months    ki1000108-CMC-V-BCS-2002   4                    NA                0.3636364   0.2213050   0.5059677
6 months    ki1000108-CMC-V-BCS-2002   5                    NA                0.4857143   0.3199087   0.6515199
6 months    ki1000108-CMC-V-BCS-2002   6                    NA                0.5833333   0.4220676   0.7445991
6 months    ki1000108-CMC-V-BCS-2002   7                    NA                0.5897436   0.4351585   0.7443287
6 months    ki1000108-CMC-V-BCS-2002   8                    NA                0.5294118   0.2918189   0.7670047
6 months    ki1000108-CMC-V-BCS-2002   9                    NA                0.4761905   0.2622919   0.6900891
6 months    ki1000108-CMC-V-BCS-2002   10                   NA                0.5517241   0.3704753   0.7329730
6 months    ki1000108-CMC-V-BCS-2002   11                   NA                0.5121951   0.3589843   0.6654059
6 months    ki1000108-CMC-V-BCS-2002   12                   NA                0.6800000   0.4968951   0.8631049
6 months    ki1000108-IRC              1                    NA                0.4285714   0.2644219   0.5927209
6 months    ki1000108-IRC              2                    NA                0.4814815   0.2927819   0.6701811
6 months    ki1000108-IRC              3                    NA                0.4482759   0.2670519   0.6294998
6 months    ki1000108-IRC              4                    NA                0.4545455   0.2462223   0.6628686
6 months    ki1000108-IRC              5                    NA                0.5000000   0.2806003   0.7193997
6 months    ki1000108-IRC              6                    NA                0.3783784   0.2219173   0.5348395
6 months    ki1000108-IRC              7                    NA                0.4444444   0.2819262   0.6069627
6 months    ki1000108-IRC              8                    NA                0.2888889   0.1562995   0.4214783
6 months    ki1000108-IRC              9                    NA                0.4444444   0.2567845   0.6321044
6 months    ki1000108-IRC              10                   NA                0.3513514   0.1973390   0.5053637
6 months    ki1000108-IRC              11                   NA                0.3658537   0.2182363   0.5134710
6 months    ki1000108-IRC              12                   NA                0.5576923   0.4225352   0.6928494
6 months    ki1017093-NIH-Birth        1                    NA                0.5090909   0.3768520   0.6413299
6 months    ki1017093-NIH-Birth        2                    NA                0.3636364   0.2213699   0.5059028
6 months    ki1017093-NIH-Birth        3                    NA                0.2452830   0.1293438   0.3612222
6 months    ki1017093-NIH-Birth        4                    NA                0.3125000   0.1812548   0.4437452
6 months    ki1017093-NIH-Birth        5                    NA                0.2500000   0.1219390   0.3780610
6 months    ki1017093-NIH-Birth        6                    NA                0.4523810   0.3017170   0.6030449
6 months    ki1017093-NIH-Birth        7                    NA                0.5116279   0.3620867   0.6611691
6 months    ki1017093-NIH-Birth        8                    NA                0.3250000   0.1797199   0.4702801
6 months    ki1017093-NIH-Birth        9                    NA                0.3333333   0.1644932   0.5021735
6 months    ki1017093-NIH-Birth        10                   NA                0.3859649   0.2594693   0.5124606
6 months    ki1017093-NIH-Birth        11                   NA                0.4423077   0.3071937   0.5774217
6 months    ki1017093-NIH-Birth        12                   NA                0.2093023   0.0875995   0.3310051
6 months    ki1114097-CMIN             1                    NA                0.2037037   0.1416676   0.2657398
6 months    ki1114097-CMIN             2                    NA                0.1958042   0.1307479   0.2608605
6 months    ki1114097-CMIN             3                    NA                0.2028986   0.1357832   0.2700139
6 months    ki1114097-CMIN             4                    NA                0.1201717   0.0784091   0.1619343
6 months    ki1114097-CMIN             5                    NA                0.2102273   0.1500123   0.2704423
6 months    ki1114097-CMIN             6                    NA                0.1678322   0.1065632   0.2291011
6 months    ki1114097-CMIN             7                    NA                0.2222222   0.1437935   0.3006509
6 months    ki1114097-CMIN             8                    NA                0.2280702   0.1510267   0.3051137
6 months    ki1114097-CMIN             9                    NA                0.2126437   0.1518298   0.2734575
6 months    ki1114097-CMIN             10                   NA                0.2651515   0.1898291   0.3404739
6 months    ki1114097-CMIN             11                   NA                0.1956522   0.1383171   0.2529873
6 months    ki1114097-CMIN             12                   NA                0.2328767   0.1642988   0.3014547
6 months    ki1126311-ZVITAMBO         1                    NA                0.3017241   0.2426472   0.3608011
6 months    ki1126311-ZVITAMBO         2                    NA                0.3566434   0.2781165   0.4351702
6 months    ki1126311-ZVITAMBO         3                    NA                0.2580645   0.1951669   0.3209621
6 months    ki1126311-ZVITAMBO         4                    NA                0.3033708   0.2358215   0.3709201
6 months    ki1126311-ZVITAMBO         5                    NA                0.3372781   0.2659830   0.4085732
6 months    ki1126311-ZVITAMBO         6                    NA                0.3989637   0.3298631   0.4680643
6 months    ki1126311-ZVITAMBO         7                    NA                0.2900000   0.2270992   0.3529008
6 months    ki1126311-ZVITAMBO         8                    NA                0.3414634   0.2765360   0.4063909
6 months    ki1126311-ZVITAMBO         9                    NA                0.2358974   0.1762951   0.2954998
6 months    ki1126311-ZVITAMBO         10                   NA                0.3006536   0.2279799   0.3733272
6 months    ki1126311-ZVITAMBO         11                   NA                0.2736318   0.2119855   0.3352781
6 months    ki1126311-ZVITAMBO         12                   NA                0.2035398   0.1510354   0.2560442
12 months   ki0047075b-MAL-ED          1                    NA                0.4223602   0.3460411   0.4986794
12 months   ki0047075b-MAL-ED          2                    NA                0.4771242   0.3979569   0.5562915
12 months   ki0047075b-MAL-ED          3                    NA                0.4222222   0.3388808   0.5055636
12 months   ki0047075b-MAL-ED          4                    NA                0.3302752   0.2419572   0.4185933
12 months   ki0047075b-MAL-ED          5                    NA                0.4180328   0.3304838   0.5055818
12 months   ki0047075b-MAL-ED          6                    NA                0.3944954   0.3027165   0.4862744
12 months   ki0047075b-MAL-ED          7                    NA                0.4557823   0.3752476   0.5363170
12 months   ki0047075b-MAL-ED          8                    NA                0.4016393   0.3146239   0.4886548
12 months   ki0047075b-MAL-ED          9                    NA                0.4149660   0.3352923   0.4946396
12 months   ki0047075b-MAL-ED          10                   NA                0.4038462   0.3268265   0.4808658
12 months   ki0047075b-MAL-ED          11                   NA                0.5060241   0.4299458   0.5821024
12 months   ki0047075b-MAL-ED          12                   NA                0.4601227   0.3835864   0.5366589
12 months   ki1000108-IRC              1                    NA                0.5555556   0.3930373   0.7180738
12 months   ki1000108-IRC              2                    NA                0.5555556   0.3678956   0.7432155
12 months   ki1000108-IRC              3                    NA                0.5172414   0.3351482   0.6993345
12 months   ki1000108-IRC              4                    NA                0.5909091   0.3852064   0.7966117
12 months   ki1000108-IRC              5                    NA                0.7000000   0.4989169   0.9010831
12 months   ki1000108-IRC              6                    NA                0.4324324   0.2726062   0.5922586
12 months   ki1000108-IRC              7                    NA                0.4722222   0.3089439   0.6355005
12 months   ki1000108-IRC              8                    NA                0.4000000   0.2566887   0.5433113
12 months   ki1000108-IRC              9                    NA                0.5185185   0.3298189   0.7072181
12 months   ki1000108-IRC              10                   NA                0.4324324   0.2726062   0.5922586
12 months   ki1000108-IRC              11                   NA                0.4634146   0.3105900   0.6162393
12 months   ki1000108-IRC              12                   NA                0.5882353   0.4529982   0.7234724
12 months   ki1017093-NIH-Birth        1                    NA                0.6538462   0.5244204   0.7832719
12 months   ki1017093-NIH-Birth        2                    NA                0.5400000   0.4017260   0.6782740
12 months   ki1017093-NIH-Birth        3                    NA                0.4509804   0.3142901   0.5876706
12 months   ki1017093-NIH-Birth        4                    NA                0.4000000   0.2567320   0.5432680
12 months   ki1017093-NIH-Birth        5                    NA                0.4047619   0.2561785   0.5533453
12 months   ki1017093-NIH-Birth        6                    NA                0.5250000   0.3701018   0.6798982
12 months   ki1017093-NIH-Birth        7                    NA                0.6000000   0.4567320   0.7432680
12 months   ki1017093-NIH-Birth        8                    NA                0.5405405   0.3798143   0.7012668
12 months   ki1017093-NIH-Birth        9                    NA                0.4482759   0.2671066   0.6294451
12 months   ki1017093-NIH-Birth        10                   NA                0.5283019   0.3937824   0.6628213
12 months   ki1017093-NIH-Birth        11                   NA                0.5744681   0.4329865   0.7159497
12 months   ki1017093-NIH-Birth        12                   NA                0.4200000   0.2830685   0.5569315
12 months   ki1066203-TanzaniaChild2   1                    NA                0.3055556   0.1549299   0.4561812
12 months   ki1066203-TanzaniaChild2   2                    NA                0.1764706   0.0482013   0.3047398
12 months   ki1066203-TanzaniaChild2   3                    NA                0.3125000   0.1517420   0.4732580
12 months   ki1066203-TanzaniaChild2   4                    NA                0.3714286   0.2111899   0.5316672
12 months   ki1066203-TanzaniaChild2   5                    NA                0.3888889   0.2294817   0.5482961
12 months   ki1066203-TanzaniaChild2   6                    NA                0.3235294   0.1661209   0.4809379
12 months   ki1066203-TanzaniaChild2   7                    NA                0.4047619   0.2561660   0.5533578
12 months   ki1066203-TanzaniaChild2   8                    NA                0.3157895   0.1949962   0.4365827
12 months   ki1066203-TanzaniaChild2   9                    NA                0.3658537   0.2182684   0.5134389
12 months   ki1066203-TanzaniaChild2   10                   NA                0.2678571   0.1517546   0.3839597
12 months   ki1066203-TanzaniaChild2   11                   NA                0.3404255   0.2048191   0.4760320
12 months   ki1066203-TanzaniaChild2   12                   NA                0.2608696   0.1338474   0.3878918
12 months   ki1114097-CMIN             1                    NA                0.3093220   0.2503384   0.3683057
12 months   ki1114097-CMIN             2                    NA                0.3333333   0.2620344   0.4046323
12 months   ki1114097-CMIN             3                    NA                0.3000000   0.2310984   0.3689016
12 months   ki1114097-CMIN             4                    NA                0.2634731   0.2162196   0.3107265
12 months   ki1114097-CMIN             5                    NA                0.3211009   0.2591084   0.3830934
12 months   ki1114097-CMIN             6                    NA                0.2500000   0.1852737   0.3147263
12 months   ki1114097-CMIN             7                    NA                0.3071895   0.2340741   0.3803050
12 months   ki1114097-CMIN             8                    NA                0.2928571   0.2174588   0.3682555
12 months   ki1114097-CMIN             9                    NA                0.2931937   0.2286201   0.3577673
12 months   ki1114097-CMIN             10                   NA                0.3597122   0.2799124   0.4395121
12 months   ki1114097-CMIN             11                   NA                0.2771739   0.2124852   0.3418626
12 months   ki1114097-CMIN             12                   NA                0.3290323   0.2550465   0.4030181
12 months   ki1126311-ZVITAMBO         1                    NA                0.3632959   0.3055957   0.4209960
12 months   ki1126311-ZVITAMBO         2                    NA                0.4010695   0.3308091   0.4713299
12 months   ki1126311-ZVITAMBO         3                    NA                0.3980583   0.3312007   0.4649158
12 months   ki1126311-ZVITAMBO         4                    NA                0.3455497   0.2780953   0.4130042
12 months   ki1126311-ZVITAMBO         5                    NA                0.4606742   0.3874345   0.5339138
12 months   ki1126311-ZVITAMBO         6                    NA                0.4455446   0.3769899   0.5140992
12 months   ki1126311-ZVITAMBO         7                    NA                0.3666667   0.3014774   0.4318559
12 months   ki1126311-ZVITAMBO         8                    NA                0.4018265   0.3368817   0.4667713
12 months   ki1126311-ZVITAMBO         9                    NA                0.3347458   0.2745274   0.3949641
12 months   ki1126311-ZVITAMBO         10                   NA                0.4101124   0.3378421   0.4823826
12 months   ki1126311-ZVITAMBO         11                   NA                0.3303167   0.2682959   0.3923376
12 months   ki1126311-ZVITAMBO         12                   NA                0.3170732   0.2589120   0.3752343
12 months   ki1148112-LCNI-5           1                    NA                0.4230769   0.2329387   0.6132152
12 months   ki1148112-LCNI-5           2                    NA                0.4642857   0.3335022   0.5950692
12 months   ki1148112-LCNI-5           3                    NA                0.5217391   0.3772059   0.6662724
12 months   ki1148112-LCNI-5           4                    NA                0.5192308   0.3832635   0.6551981
12 months   ki1148112-LCNI-5           5                    NA                0.4313726   0.2952774   0.5674677
12 months   ki1148112-LCNI-5           6                    NA                0.5555556   0.4101926   0.7009185
12 months   ki1148112-LCNI-5           7                    NA                0.5135135   0.3522641   0.6747629
12 months   ki1148112-LCNI-5           8                    NA                0.4000000   0.1850298   0.6149702
12 months   ki1148112-LCNI-5           9                    NA                0.5384615   0.2671319   0.8097912
12 months   ki1148112-LCNI-5           10                   NA                0.4666667   0.2138855   0.7194478
12 months   ki1148112-LCNI-5           11                   NA                0.4583333   0.2587433   0.6579233
12 months   ki1148112-LCNI-5           12                   NA                0.4444444   0.2146054   0.6742835
18 months   ki0047075b-MAL-ED          1                    NA                0.5256410   0.4472586   0.6040234
18 months   ki0047075b-MAL-ED          2                    NA                0.6000000   0.5202365   0.6797635
18 months   ki0047075b-MAL-ED          3                    NA                0.5354331   0.4486655   0.6222006
18 months   ki0047075b-MAL-ED          4                    NA                0.4380952   0.3431652   0.5330253
18 months   ki0047075b-MAL-ED          5                    NA                0.5431034   0.4524251   0.6337818
18 months   ki0047075b-MAL-ED          6                    NA                0.5096154   0.4135083   0.6057225
18 months   ki0047075b-MAL-ED          7                    NA                0.5586207   0.4777738   0.6394675
18 months   ki0047075b-MAL-ED          8                    NA                0.5217391   0.4304135   0.6130648
18 months   ki0047075b-MAL-ED          9                    NA                0.5285714   0.4458576   0.6112853
18 months   ki0047075b-MAL-ED          10                   NA                0.5205479   0.4394875   0.6016084
18 months   ki0047075b-MAL-ED          11                   NA                0.5769231   0.4993718   0.6544743
18 months   ki0047075b-MAL-ED          12                   NA                0.5750000   0.4983784   0.6516216
18 months   ki1000108-IRC              1                    NA                0.5555556   0.3930378   0.7180733
18 months   ki1000108-IRC              2                    NA                0.5925926   0.4070300   0.7781552
18 months   ki1000108-IRC              3                    NA                0.6206897   0.4438762   0.7975031
18 months   ki1000108-IRC              4                    NA                0.6818182   0.4869503   0.8766861
18 months   ki1000108-IRC              5                    NA                0.7619048   0.5795170   0.9442925
18 months   ki1000108-IRC              6                    NA                0.4594595   0.2986852   0.6202337
18 months   ki1000108-IRC              7                    NA                0.5277778   0.3645000   0.6910556
18 months   ki1000108-IRC              8                    NA                0.4444444   0.2990841   0.5898048
18 months   ki1000108-IRC              9                    NA                0.6296296   0.4472575   0.8120018
18 months   ki1000108-IRC              10                   NA                0.4324324   0.2726067   0.5922582
18 months   ki1000108-IRC              11                   NA                0.5365854   0.3837612   0.6894095
18 months   ki1000108-IRC              12                   NA                0.6666667   0.5371313   0.7962020
18 months   ki1017093-NIH-Birth        1                    NA                0.6808511   0.5474500   0.8142521
18 months   ki1017093-NIH-Birth        2                    NA                0.7142857   0.5775246   0.8510469
18 months   ki1017093-NIH-Birth        3                    NA                0.5869565   0.4445246   0.7293885
18 months   ki1017093-NIH-Birth        4                    NA                0.6500000   0.5020394   0.7979606
18 months   ki1017093-NIH-Birth        5                    NA                0.5405405   0.3798011   0.7012799
18 months   ki1017093-NIH-Birth        6                    NA                0.6944444   0.5438191   0.8450698
18 months   ki1017093-NIH-Birth        7                    NA                0.6511628   0.5085668   0.7937588
18 months   ki1017093-NIH-Birth        8                    NA                0.7272727   0.5751685   0.8793770
18 months   ki1017093-NIH-Birth        9                    NA                0.5555556   0.3679369   0.7431742
18 months   ki1017093-NIH-Birth        10                   NA                0.6122449   0.4756832   0.7488065
18 months   ki1017093-NIH-Birth        11                   NA                0.7500000   0.6273788   0.8726212
18 months   ki1017093-NIH-Birth        12                   NA                0.6122449   0.4756832   0.7488065
18 months   ki1114097-CMIN             1                    NA                0.4360000   0.3745160   0.4974840
18 months   ki1114097-CMIN             2                    NA                0.4342105   0.3553962   0.5130248
18 months   ki1114097-CMIN             3                    NA                0.4025157   0.3262718   0.4787597
18 months   ki1114097-CMIN             4                    NA                0.3957219   0.3461510   0.4452928
18 months   ki1114097-CMIN             5                    NA                0.4102564   0.3412020   0.4793108
18 months   ki1114097-CMIN             6                    NA                0.3513514   0.2744217   0.4282810
18 months   ki1114097-CMIN             7                    NA                0.4285714   0.3444482   0.5126947
18 months   ki1114097-CMIN             8                    NA                0.3956835   0.3143727   0.4769942
18 months   ki1114097-CMIN             9                    NA                0.3859649   0.3129819   0.4589479
18 months   ki1114097-CMIN             10                   NA                0.5156250   0.4290281   0.6022219
18 months   ki1114097-CMIN             11                   NA                0.4197531   0.3437388   0.4957674
18 months   ki1114097-CMIN             12                   NA                0.4814815   0.3971763   0.5657867
18 months   ki1126311-ZVITAMBO         1                    NA                0.4502618   0.3796855   0.5208381
18 months   ki1126311-ZVITAMBO         2                    NA                0.5227273   0.4374960   0.6079586
18 months   ki1126311-ZVITAMBO         3                    NA                0.5000000   0.4215175   0.5784825
18 months   ki1126311-ZVITAMBO         4                    NA                0.4896552   0.4082676   0.5710428
18 months   ki1126311-ZVITAMBO         5                    NA                0.5185185   0.4342103   0.6028268
18 months   ki1126311-ZVITAMBO         6                    NA                0.5410959   0.4602446   0.6219471
18 months   ki1126311-ZVITAMBO         7                    NA                0.4585987   0.3806352   0.5365622
18 months   ki1126311-ZVITAMBO         8                    NA                0.4550898   0.3795427   0.5306369
18 months   ki1126311-ZVITAMBO         9                    NA                0.4142012   0.3399161   0.4884863
18 months   ki1126311-ZVITAMBO         10                   NA                0.5041322   0.4150220   0.5932425
18 months   ki1126311-ZVITAMBO         11                   NA                0.5182927   0.4417996   0.5947858
18 months   ki1126311-ZVITAMBO         12                   NA                0.4855491   0.4110535   0.5600447
24 months   ki0047075b-MAL-ED          1                    NA                0.6052632   0.5275323   0.6829940
24 months   ki0047075b-MAL-ED          2                    NA                0.6444444   0.5636710   0.7252179
24 months   ki0047075b-MAL-ED          3                    NA                0.5833333   0.4950962   0.6715704
24 months   ki0047075b-MAL-ED          4                    NA                0.4900000   0.3919896   0.5880104
24 months   ki0047075b-MAL-ED          5                    NA                0.5925926   0.4998947   0.6852905
24 months   ki0047075b-MAL-ED          6                    NA                0.5300000   0.4321466   0.6278534
24 months   ki0047075b-MAL-ED          7                    NA                0.6058394   0.5239846   0.6876942
24 months   ki0047075b-MAL-ED          8                    NA                0.5446429   0.4523831   0.6369026
24 months   ki0047075b-MAL-ED          9                    NA                0.5441176   0.4603855   0.6278498
24 months   ki0047075b-MAL-ED          10                   NA                0.5704225   0.4889776   0.6518675
24 months   ki0047075b-MAL-ED          11                   NA                0.6388889   0.5604121   0.7173656
24 months   ki0047075b-MAL-ED          12                   NA                0.6428571   0.5671552   0.7185591
24 months   ki1017093-NIH-Birth        1                    NA                0.7555556   0.6298578   0.8812533
24 months   ki1017093-NIH-Birth        2                    NA                0.8055556   0.6761345   0.9349766
24 months   ki1017093-NIH-Birth        3                    NA                0.6818182   0.5440477   0.8195887
24 months   ki1017093-NIH-Birth        4                    NA                0.8421053   0.7260444   0.9581661
24 months   ki1017093-NIH-Birth        5                    NA                0.7428571   0.5979077   0.8878066
24 months   ki1017093-NIH-Birth        6                    NA                0.8285714   0.7035792   0.9535637
24 months   ki1017093-NIH-Birth        7                    NA                0.7380952   0.6049843   0.8712062
24 months   ki1017093-NIH-Birth        8                    NA                0.7741935   0.6268529   0.9215342
24 months   ki1017093-NIH-Birth        9                    NA                0.7500000   0.5765774   0.9234226
24 months   ki1017093-NIH-Birth        10                   NA                0.7173913   0.5871339   0.8476487
24 months   ki1017093-NIH-Birth        11                   NA                0.7826087   0.6632854   0.9019320
24 months   ki1017093-NIH-Birth        12                   NA                0.6875000   0.5562343   0.8187657
24 months   ki1114097-CMIN             1                    NA                0.5273312   0.4718307   0.5828317
24 months   ki1114097-CMIN             2                    NA                0.4580153   0.3726749   0.5433556
24 months   ki1114097-CMIN             3                    NA                0.4892086   0.4060862   0.5723310
24 months   ki1114097-CMIN             4                    NA                0.5167598   0.4649823   0.5685373
24 months   ki1114097-CMIN             5                    NA                0.4844720   0.4072566   0.5616875
24 months   ki1114097-CMIN             6                    NA                0.4488189   0.3622947   0.5353431
24 months   ki1114097-CMIN             7                    NA                0.5132743   0.4210949   0.6054538
24 months   ki1114097-CMIN             8                    NA                0.4344262   0.3464472   0.5224053
24 months   ki1114097-CMIN             9                    NA                0.4875000   0.4100305   0.5649695
24 months   ki1114097-CMIN             10                   NA                0.5726496   0.4829893   0.6623099
24 months   ki1114097-CMIN             11                   NA                0.4967320   0.4174871   0.5759770
24 months   ki1114097-CMIN             12                   NA                0.5727273   0.4802603   0.6651943
24 months   ki1126311-ZVITAMBO         1                    NA                0.8666667   0.7805613   0.9527721
24 months   ki1126311-ZVITAMBO         2                    NA                0.8297872   0.7222296   0.9373448
24 months   ki1126311-ZVITAMBO         3                    NA                0.5869565   0.4445163   0.7293967
24 months   ki1126311-ZVITAMBO         4                    NA                0.7083333   0.5796115   0.8370552
24 months   ki1126311-ZVITAMBO         5                    NA                0.6774194   0.5126875   0.8421513
24 months   ki1126311-ZVITAMBO         6                    NA                0.6571429   0.4997217   0.8145640
24 months   ki1126311-ZVITAMBO         7                    NA                0.7428571   0.5979077   0.8878066
24 months   ki1126311-ZVITAMBO         8                    NA                0.6129032   0.4412565   0.7845499
24 months   ki1126311-ZVITAMBO         9                    NA                0.6666667   0.4778681   0.8554652
24 months   ki1126311-ZVITAMBO         10                   NA                0.7857143   0.6335683   0.9378603
24 months   ki1126311-ZVITAMBO         11                   NA                0.7222222   0.5757540   0.8686905
24 months   ki1126311-ZVITAMBO         12                   NA                0.6938776   0.5646957   0.8230594


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.2607066   0.2591058   0.2623075
3 months    ki1000108-IRC              NA                   NA                0.3170732   0.3092453   0.3249010
3 months    ki1017093-NIH-Birth        NA                   NA                0.2225755   0.2175144   0.2276367
3 months    ki1114097-CMIN             NA                   NA                0.1759494   0.1745447   0.1773540
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2102403   0.2091482   0.2113323
6 months    ki0047075b-MAL-ED          NA                   NA                0.3329519   0.3308619   0.3350420
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.5029000   0.5216231
6 months    ki1000108-IRC              NA                   NA                0.4240196   0.4165201   0.4315191
6 months    ki1017093-NIH-Birth        NA                   NA                0.3647913   0.3565691   0.3730135
6 months    ki1114097-CMIN             NA                   NA                0.1996762   0.1979869   0.2013655
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2972381   0.2950787   0.2993974
12 months   ki0047075b-MAL-ED          NA                   NA                0.4301775   0.4281551   0.4321999
12 months   ki1000108-IRC              NA                   NA                0.5073529   0.4998405   0.5148654
12 months   ki1017093-NIH-Birth        NA                   NA                0.5101664   0.5034360   0.5168967
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3185484   0.3133998   0.3236970
12 months   ki1114097-CMIN             NA                   NA                0.2995575   0.2983539   0.3007612
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3778040   0.3761188   0.3794892
12 months   ki1148112-LCNI-5           NA                   NA                0.4838710   0.4793020   0.4884399
18 months   ki0047075b-MAL-ED          NA                   NA                0.5399381   0.5380909   0.5417852
18 months   ki1000108-IRC              NA                   NA                0.5623472   0.5531625   0.5715319
18 months   ki1017093-NIH-Birth        NA                   NA                0.6498994   0.6443543   0.6554445
18 months   ki1114097-CMIN             NA                   NA                0.4175210   0.4159289   0.4191131
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4854526   0.4838164   0.4870888
24 months   ki0047075b-MAL-ED          NA                   NA                0.5876623   0.5853945   0.5899302
24 months   ki1017093-NIH-Birth        NA                   NA                0.7553191   0.7508358   0.7598025
24 months   ki1114097-CMIN             NA                   NA                0.5029970   0.5013868   0.5046073
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7212766   0.7135021   0.7290511


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          2                    1                 0.8228386   0.5631884   1.2021969
3 months    ki0047075b-MAL-ED          3                    1                 1.1167202   0.7835384   1.5915799
3 months    ki0047075b-MAL-ED          4                    1                 0.7005247   0.4421084   1.1099878
3 months    ki0047075b-MAL-ED          5                    1                 1.0605475   0.7320916   1.5363665
3 months    ki0047075b-MAL-ED          6                    1                 0.8779686   0.5799041   1.3292349
3 months    ki0047075b-MAL-ED          7                    1                 1.1925075   0.8480090   1.6769564
3 months    ki0047075b-MAL-ED          8                    1                 0.9743510   0.6665619   1.4242636
3 months    ki0047075b-MAL-ED          9                    1                 0.9437964   0.6539383   1.3621341
3 months    ki0047075b-MAL-ED          10                   1                 1.0171429   0.7156927   1.4455641
3 months    ki0047075b-MAL-ED          11                   1                 1.2008996   0.8605624   1.6758341
3 months    ki0047075b-MAL-ED          12                   1                 1.0818139   0.7704433   1.5190233
3 months    ki1000108-IRC              2                    1                 1.3333333   0.6814329   2.6088816
3 months    ki1000108-IRC              3                    1                 1.2413793   0.6298310   2.4467239
3 months    ki1000108-IRC              4                    1                 1.1900826   0.5671051   2.4974150
3 months    ki1000108-IRC              5                    1                 1.0909091   0.4996127   2.3820103
3 months    ki1000108-IRC              6                    1                 0.8845209   0.4288412   1.8243985
3 months    ki1000108-IRC              7                    1                 1.0000000   0.4979310   2.0083104
3 months    ki1000108-IRC              8                    1                 0.5090909   0.2195112   1.1806847
3 months    ki1000108-IRC              9                    1                 1.0909091   0.5273606   2.2566771
3 months    ki1000108-IRC              10                   1                 0.7960688   0.3749359   1.6902239
3 months    ki1000108-IRC              11                   1                 1.0376940   0.5323862   2.0226084
3 months    ki1000108-IRC              12                   1                 1.4475524   0.8104244   2.5855688
3 months    ki1017093-NIH-Birth        2                    1                 0.7431694   0.4373374   1.2628710
3 months    ki1017093-NIH-Birth        3                    1                 0.3251366   0.1507959   0.7010388
3 months    ki1017093-NIH-Birth        4                    1                 0.6415094   0.3545050   1.1608703
3 months    ki1017093-NIH-Birth        5                    1                 0.5425532   0.2775300   1.0606565
3 months    ki1017093-NIH-Birth        6                    1                 0.6028369   0.3186116   1.1406123
3 months    ki1017093-NIH-Birth        7                    1                 0.5312500   0.2714030   1.0398802
3 months    ki1017093-NIH-Birth        8                    1                 0.4612403   0.2176701   0.9773627
3 months    ki1017093-NIH-Birth        9                    1                 0.5833333   0.2797118   1.2165298
3 months    ki1017093-NIH-Birth        10                   1                 0.7896175   0.4709920   1.3237927
3 months    ki1017093-NIH-Birth        11                   1                 0.7083333   0.4002965   1.2534113
3 months    ki1017093-NIH-Birth        12                   1                 0.4722222   0.2396606   0.9304570
3 months    ki1114097-CMIN             2                    1                 1.0103406   0.5944276   1.7172624
3 months    ki1114097-CMIN             3                    1                 0.9266796   0.5323680   1.6130478
3 months    ki1114097-CMIN             4                    1                 0.8544239   0.5006553   1.4581693
3 months    ki1114097-CMIN             5                    1                 1.3199301   0.8120661   2.1454108
3 months    ki1114097-CMIN             6                    1                 1.0578909   0.6100731   1.8344246
3 months    ki1114097-CMIN             7                    1                 0.8820093   0.4860684   1.6004753
3 months    ki1114097-CMIN             8                    1                 1.2796610   0.7667841   2.1355846
3 months    ki1114097-CMIN             9                    1                 1.2221223   0.7416862   2.0137668
3 months    ki1114097-CMIN             10                   1                 1.2806047   0.7632452   2.1486522
3 months    ki1114097-CMIN             11                   1                 1.0863309   0.6478334   1.8216333
3 months    ki1114097-CMIN             12                   1                 1.4144057   0.8688494   2.3025203
3 months    ki1126311-ZVITAMBO         2                    1                 0.9032146   0.6791318   1.2012346
3 months    ki1126311-ZVITAMBO         3                    1                 0.7607564   0.5661151   1.0223191
3 months    ki1126311-ZVITAMBO         4                    1                 0.8430003   0.6288613   1.1300576
3 months    ki1126311-ZVITAMBO         5                    1                 0.9092241   0.6827735   1.2107801
3 months    ki1126311-ZVITAMBO         6                    1                 0.9679029   0.7390330   1.2676510
3 months    ki1126311-ZVITAMBO         7                    1                 0.8878629   0.6750304   1.1678001
3 months    ki1126311-ZVITAMBO         8                    1                 0.8968661   0.6842776   1.1755008
3 months    ki1126311-ZVITAMBO         9                    1                 0.5878306   0.4293521   0.8048052
3 months    ki1126311-ZVITAMBO         10                   1                 0.7047969   0.5144725   0.9655301
3 months    ki1126311-ZVITAMBO         11                   1                 0.7310393   0.5416418   0.9866640
3 months    ki1126311-ZVITAMBO         12                   1                 0.6539255   0.4824852   0.8862832
6 months    ki0047075b-MAL-ED          2                    1                 0.9290826   0.6831089   1.2636265
6 months    ki0047075b-MAL-ED          3                    1                 1.0994211   0.8154898   1.4822095
6 months    ki0047075b-MAL-ED          4                    1                 0.6583072   0.4400715   0.9847680
6 months    ki0047075b-MAL-ED          5                    1                 0.8981556   0.6449375   1.2507931
6 months    ki0047075b-MAL-ED          6                    1                 0.7899687   0.5459015   1.1431557
6 months    ki0047075b-MAL-ED          7                    1                 1.1317652   0.8483493   1.5098646
6 months    ki0047075b-MAL-ED          8                    1                 0.9135279   0.6580835   1.2681265
6 months    ki0047075b-MAL-ED          9                    1                 0.8652038   0.6286699   1.1907323
6 months    ki0047075b-MAL-ED          10                   1                 0.9833972   0.7290665   1.3264497
6 months    ki0047075b-MAL-ED          11                   1                 1.1483371   0.8684913   1.5183550
6 months    ki0047075b-MAL-ED          12                   1                 0.9940828   0.7402610   1.3349355
6 months    ki1000108-CMC-V-BCS-2002   2                    1                 0.6800000   0.3439685   1.3443091
6 months    ki1000108-CMC-V-BCS-2002   3                    1                 0.6580645   0.3891261   1.1128754
6 months    ki1000108-CMC-V-BCS-2002   4                    1                 0.6181818   0.3816836   1.0012186
6 months    ki1000108-CMC-V-BCS-2002   5                    1                 0.8257143   0.5304452   1.2853430
6 months    ki1000108-CMC-V-BCS-2002   6                    1                 0.9916667   0.6683135   1.4714694
6 months    ki1000108-CMC-V-BCS-2002   7                    1                 1.0025641   0.6823832   1.4729771
6 months    ki1000108-CMC-V-BCS-2002   8                    1                 0.9000000   0.5298373   1.5287712
6 months    ki1000108-CMC-V-BCS-2002   9                    1                 0.8095238   0.4764115   1.3755519
6 months    ki1000108-CMC-V-BCS-2002   10                   1                 0.9379310   0.6084898   1.4457344
6 months    ki1000108-CMC-V-BCS-2002   11                   1                 0.8707317   0.5773819   1.3131234
6 months    ki1000108-CMC-V-BCS-2002   12                   1                 1.1560000   0.7829666   1.7067599
6 months    ki1000108-IRC              2                    1                 1.1234568   0.6494795   1.9433335
6 months    ki1000108-IRC              3                    1                 1.0459770   0.5993284   1.8254897
6 months    ki1000108-IRC              4                    1                 1.0606061   0.5836552   1.9273112
6 months    ki1000108-IRC              5                    1                 1.1666667   0.6516176   2.0888188
6 months    ki1000108-IRC              6                    1                 0.8828829   0.5024799   1.5512705
6 months    ki1000108-IRC              7                    1                 1.0370370   0.6106860   1.7610454
6 months    ki1000108-IRC              8                    1                 0.6740741   0.3707596   1.2255268
6 months    ki1000108-IRC              9                    1                 1.0370370   0.5864281   1.8338921
6 months    ki1000108-IRC              10                   1                 0.8198198   0.4580509   1.4673141
6 months    ki1000108-IRC              11                   1                 0.8536585   0.4894104   1.4890018
6 months    ki1000108-IRC              12                   1                 1.3012821   0.8270426   2.0474580
6 months    ki1017093-NIH-Birth        2                    1                 0.7142857   0.4466033   1.1424101
6 months    ki1017093-NIH-Birth        3                    1                 0.4818059   0.2809551   0.8262422
6 months    ki1017093-NIH-Birth        4                    1                 0.6138393   0.3746198   1.0058162
6 months    ki1017093-NIH-Birth        5                    1                 0.4910714   0.2765107   0.8721223
6 months    ki1017093-NIH-Birth        6                    1                 0.8886054   0.5824758   1.3556265
6 months    ki1017093-NIH-Birth        7                    1                 1.0049834   0.6797315   1.4858686
6 months    ki1017093-NIH-Birth        8                    1                 0.6383929   0.3806755   1.0705848
6 months    ki1017093-NIH-Birth        9                    1                 0.6547619   0.3705656   1.1569158
6 months    ki1017093-NIH-Birth        10                   1                 0.7581454   0.4990379   1.1517850
6 months    ki1017093-NIH-Birth        11                   1                 0.8688187   0.5818141   1.2974006
6 months    ki1017093-NIH-Birth        12                   1                 0.4111296   0.2174693   0.7772477
6 months    ki1114097-CMIN             2                    1                 0.9612206   0.6124684   1.5085594
6 months    ki1114097-CMIN             3                    1                 0.9960474   0.6353462   1.5615275
6 months    ki1114097-CMIN             4                    1                 0.5899337   0.3716415   0.9364448
6 months    ki1114097-CMIN             5                    1                 1.0320248   0.6793956   1.5676804
6 months    ki1114097-CMIN             6                    1                 0.8239034   0.5121632   1.3253914
6 months    ki1114097-CMIN             7                    1                 1.0909091   0.6844446   1.7387566
6 months    ki1114097-CMIN             8                    1                 1.1196172   0.7104691   1.7643873
6 months    ki1114097-CMIN             9                    1                 1.0438871   0.6874111   1.5852236
6 months    ki1114097-CMIN             10                   1                 1.3016529   0.8582759   1.9740741
6 months    ki1114097-CMIN             11                   1                 0.9604743   0.6294152   1.4656634
6 months    ki1114097-CMIN             12                   1                 1.1432130   0.7484207   1.7462584
6 months    ki1126311-ZVITAMBO         2                    1                 1.1820180   0.8803596   1.5870407
6 months    ki1126311-ZVITAMBO         3                    1                 0.8552995   0.6256665   1.1692129
6 months    ki1126311-ZVITAMBO         4                    1                 1.0054575   0.7474688   1.3524908
6 months    ki1126311-ZVITAMBO         5                    1                 1.1178360   0.8380002   1.4911183
6 months    ki1126311-ZVITAMBO         6                    1                 1.3222798   1.0181096   1.7173238
6 months    ki1126311-ZVITAMBO         7                    1                 0.9611429   0.7176061   1.2873296
6 months    ki1126311-ZVITAMBO         8                    1                 1.1317073   0.8613930   1.4868492
6 months    ki1126311-ZVITAMBO         9                    1                 0.7818315   0.5679260   1.0763031
6 months    ki1126311-ZVITAMBO         10                   1                 0.9964519   0.7300627   1.3600426
6 months    ki1126311-ZVITAMBO         11                   1                 0.9068941   0.6728637   1.2223231
6 months    ki1126311-ZVITAMBO         12                   1                 0.6745891   0.4879703   0.9325782
12 months   ki0047075b-MAL-ED          2                    1                 1.1296617   0.8839068   1.4437444
12 months   ki0047075b-MAL-ED          3                    1                 0.9996732   0.7649588   1.3064056
12 months   ki0047075b-MAL-ED          4                    1                 0.7819752   0.5662794   1.0798294
12 months   ki0047075b-MAL-ED          5                    1                 0.9897541   0.7505808   1.3051402
12 months   ki0047075b-MAL-ED          6                    1                 0.9340259   0.6957045   1.2539870
12 months   ki0047075b-MAL-ED          7                    1                 1.0791317   0.8381370   1.3894210
12 months   ki0047075b-MAL-ED          8                    1                 0.9509402   0.7171867   1.2608813
12 months   ki0047075b-MAL-ED          9                    1                 0.9824930   0.7547867   1.2788944
12 months   ki0047075b-MAL-ED          10                   1                 0.9561652   0.7352474   1.2434615
12 months   ki0047075b-MAL-ED          11                   1                 1.1980865   0.9471116   1.5155670
12 months   ki0047075b-MAL-ED          12                   1                 1.0894082   0.8521722   1.3926881
12 months   ki1000108-IRC              2                    1                 1.0000000   0.6396390   1.5633819
12 months   ki1000108-IRC              3                    1                 0.9310345   0.5890853   1.4714765
12 months   ki1000108-IRC              4                    1                 1.0636364   0.6750203   1.6759826
12 months   ki1000108-IRC              5                    1                 1.2600000   0.8362047   1.8985782
12 months   ki1000108-IRC              6                    1                 0.7783784   0.4858281   1.2470932
12 months   ki1000108-IRC              7                    1                 0.8500000   0.5404078   1.3369532
12 months   ki1000108-IRC              8                    1                 0.7200000   0.4533734   1.1434283
12 months   ki1000108-IRC              9                    1                 0.9333333   0.5851352   1.4887347
12 months   ki1000108-IRC              10                   1                 0.7783784   0.4858281   1.2470932
12 months   ki1000108-IRC              11                   1                 0.8341463   0.5367756   1.2962589
12 months   ki1000108-IRC              12                   1                 1.0588235   0.7298584   1.5360613
12 months   ki1017093-NIH-Birth        2                    1                 0.8258824   0.5975276   1.1415066
12 months   ki1017093-NIH-Birth        3                    1                 0.6897347   0.4802466   0.9906036
12 months   ki1017093-NIH-Birth        4                    1                 0.6117647   0.4063111   0.9211071
12 months   ki1017093-NIH-Birth        5                    1                 0.6190476   0.4079422   0.9393976
12 months   ki1017093-NIH-Birth        6                    1                 0.8029412   0.5628359   1.1454751
12 months   ki1017093-NIH-Birth        7                    1                 0.9176471   0.6729389   1.2513412
12 months   ki1017093-NIH-Birth        8                    1                 0.8267091   0.5783896   1.1816392
12 months   ki1017093-NIH-Birth        9                    1                 0.6855984   0.4371486   1.0752525
12 months   ki1017093-NIH-Birth        10                   1                 0.8079911   0.5852475   1.1155104
12 months   ki1017093-NIH-Birth        11                   1                 0.8785982   0.6405691   1.2050767
12 months   ki1017093-NIH-Birth        12                   1                 0.6423529   0.4386599   0.9406314
12 months   ki1066203-TanzaniaChild2   2                    1                 0.5775401   0.2399723   1.3899626
12 months   ki1066203-TanzaniaChild2   3                    1                 1.0227273   0.5015681   2.0854018
12 months   ki1066203-TanzaniaChild2   4                    1                 1.2155844   0.6313787   2.3403472
12 months   ki1066203-TanzaniaChild2   5                    1                 1.2727273   0.6703520   2.4163944
12 months   ki1066203-TanzaniaChild2   6                    1                 1.0588235   0.5296907   2.1165317
12 months   ki1066203-TanzaniaChild2   7                    1                 1.3246753   0.7164312   2.4493136
12 months   ki1066203-TanzaniaChild2   8                    1                 1.0334928   0.5537664   1.9288049
12 months   ki1066203-TanzaniaChild2   9                    1                 1.1973392   0.6332605   2.2638730
12 months   ki1066203-TanzaniaChild2   10                   1                 0.8766234   0.4547097   1.6900200
12 months   ki1066203-TanzaniaChild2   11                   1                 1.1141199   0.5911291   2.0998174
12 months   ki1066203-TanzaniaChild2   12                   1                 0.8537549   0.4269875   1.7070700
12 months   ki1114097-CMIN             2                    1                 1.0776256   0.8091312   1.4352145
12 months   ki1114097-CMIN             3                    1                 0.9698630   0.7195606   1.3072343
12 months   ki1114097-CMIN             4                    1                 0.8517759   0.6555971   1.1066587
12 months   ki1114097-CMIN             5                    1                 1.0380797   0.7913742   1.3616939
12 months   ki1114097-CMIN             6                    1                 0.8082192   0.5859796   1.1147457
12 months   ki1114097-CMIN             7                    1                 0.9931059   0.7320571   1.3472438
12 months   ki1114097-CMIN             8                    1                 0.9467710   0.6872329   1.3043254
12 months   ki1114097-CMIN             9                    1                 0.9478591   0.7083120   1.2684197
12 months   ki1114097-CMIN             10                   1                 1.1629053   0.8679577   1.5580814
12 months   ki1114097-CMIN             11                   1                 0.8960691   0.6629079   1.2112389
12 months   ki1114097-CMIN             12                   1                 1.0637207   0.7921107   1.4284641
12 months   ki1126311-ZVITAMBO         2                    1                 1.1039749   0.8714957   1.3984700
12 months   ki1126311-ZVITAMBO         3                    1                 1.0956861   0.8695493   1.3806326
12 months   ki1126311-ZVITAMBO         4                    1                 0.9511524   0.7395312   1.2233302
12 months   ki1126311-ZVITAMBO         5                    1                 1.2680412   1.0128310   1.5875587
12 months   ki1126311-ZVITAMBO         6                    1                 1.2263958   0.9830904   1.5299170
12 months   ki1126311-ZVITAMBO         7                    1                 1.0092784   0.7951988   1.2809914
12 months   ki1126311-ZVITAMBO         8                    1                 1.1060585   0.8817939   1.3873597
12 months   ki1126311-ZVITAMBO         9                    1                 0.9214136   0.7248299   1.1713134
12 months   ki1126311-ZVITAMBO         10                   1                 1.1288660   0.8904592   1.4311025
12 months   ki1126311-ZVITAMBO         11                   1                 0.9092224   0.7109939   1.1627179
12 months   ki1126311-ZVITAMBO         12                   1                 0.8727684   0.6847367   1.1124344
12 months   ki1148112-LCNI-5           2                    1                 1.0974026   0.6456783   1.8651586
12 months   ki1148112-LCNI-5           3                    1                 1.2332016   0.7273676   2.0908083
12 months   ki1148112-LCNI-5           4                    1                 1.2272727   0.7295347   2.0646014
12 months   ki1148112-LCNI-5           5                    1                 1.0196078   0.5887914   1.7656510
12 months   ki1148112-LCNI-5           6                    1                 1.3131313   0.7806544   2.2088055
12 months   ki1148112-LCNI-5           7                    1                 1.2137592   0.7015036   2.1000768
12 months   ki1148112-LCNI-5           8                    1                 0.9454546   0.4692300   1.9050027
12 months   ki1148112-LCNI-5           9                    1                 1.2727273   0.6478904   2.5001678
12 months   ki1148112-LCNI-5           10                   1                 1.1030303   0.5456508   2.2297701
12 months   ki1148112-LCNI-5           11                   1                 1.0833333   0.5794103   2.0255269
12 months   ki1148112-LCNI-5           12                   1                 1.0505050   0.5294787   2.0842405
18 months   ki0047075b-MAL-ED          2                    1                 1.1414634   0.9347642   1.3938689
18 months   ki0047075b-MAL-ED          3                    1                 1.0186288   0.8172892   1.2695684
18 months   ki0047075b-MAL-ED          4                    1                 0.8334495   0.6406822   1.0842163
18 months   ki0047075b-MAL-ED          5                    1                 1.0332212   0.8259858   1.2924509
18 months   ki0047075b-MAL-ED          6                    1                 0.9695122   0.7623257   1.2330083
18 months   ki0047075b-MAL-ED          7                    1                 1.0627418   0.8633373   1.3082026
18 months   ki0047075b-MAL-ED          8                    1                 0.9925769   0.7886779   1.2491904
18 months   ki0047075b-MAL-ED          9                    1                 1.0055749   0.8101000   1.2482174
18 months   ki0047075b-MAL-ED          10                   1                 0.9903107   0.7982440   1.2285909
18 months   ki0047075b-MAL-ED          11                   1                 1.0975610   0.8979224   1.3415860
18 months   ki0047075b-MAL-ED          12                   1                 1.0939024   0.8956273   1.3360719
18 months   ki1000108-IRC              2                    1                 1.0666667   0.6949039   1.6373168
18 months   ki1000108-IRC              3                    1                 1.1172414   0.7427056   1.6806501
18 months   ki1000108-IRC              4                    1                 1.2272727   0.8153155   1.8473810
18 months   ki1000108-IRC              5                    1                 1.3714286   0.9397501   2.0014005
18 months   ki1000108-IRC              6                    1                 0.8270270   0.5241333   1.3049614
18 months   ki1000108-IRC              7                    1                 0.9500000   0.6206005   1.4542366
18 months   ki1000108-IRC              8                    1                 0.8000000   0.5158488   1.2406736
18 months   ki1000108-IRC              9                    1                 1.1333333   0.7508821   1.7105808
18 months   ki1000108-IRC              10                   1                 0.7783784   0.4858288   1.2470914
18 months   ki1000108-IRC              11                   1                 0.9658537   0.6420937   1.4528615
18 months   ki1000108-IRC              12                   1                 1.2000000   0.8446269   1.7048947
18 months   ki1017093-NIH-Birth        2                    1                 1.0491071   0.7977095   1.3797326
18 months   ki1017093-NIH-Birth        3                    1                 0.8620924   0.6311061   1.1776202
18 months   ki1017093-NIH-Birth        4                    1                 0.9546875   0.7070074   1.2891353
18 months   ki1017093-NIH-Birth        5                    1                 0.7939189   0.5560550   1.1335341
18 months   ki1017093-NIH-Birth        6                    1                 1.0199653   0.7614545   1.3662395
18 months   ki1017093-NIH-Birth        7                    1                 0.9563953   0.7128895   1.2830769
18 months   ki1017093-NIH-Birth        8                    1                 1.0681818   0.8020162   1.4226799
18 months   ki1017093-NIH-Birth        9                    1                 0.8159722   0.5522189   1.2057007
18 months   ki1017093-NIH-Birth        10                   1                 0.8992347   0.6682472   1.2100658
18 months   ki1017093-NIH-Birth        11                   1                 1.1015625   0.8534596   1.4217895
18 months   ki1017093-NIH-Birth        12                   1                 0.8992347   0.6682472   1.2100658
18 months   ki1114097-CMIN             2                    1                 0.9958957   0.7913884   1.2532509
18 months   ki1114097-CMIN             3                    1                 0.9232012   0.7290190   1.1691059
18 months   ki1114097-CMIN             4                    1                 0.9076191   0.7515994   1.0960259
18 months   ki1114097-CMIN             5                    1                 0.9409551   0.7554471   1.1720164
18 months   ki1114097-CMIN             6                    1                 0.8058517   0.6210824   1.0455891
18 months   ki1114097-CMIN             7                    1                 0.9829620   0.7719181   1.2517056
18 months   ki1114097-CMIN             8                    1                 0.9075309   0.7073322   1.1643924
18 months   ki1114097-CMIN             9                    1                 0.8852406   0.6992258   1.1207409
18 months   ki1114097-CMIN             10                   1                 1.1826261   0.9497457   1.4726096
18 months   ki1114097-CMIN             11                   1                 0.9627364   0.7652914   1.2111222
18 months   ki1114097-CMIN             12                   1                 1.1043153   0.8819714   1.3827119
18 months   ki1126311-ZVITAMBO         2                    1                 1.1609408   0.9259423   1.4555804
18 months   ki1126311-ZVITAMBO         3                    1                 1.1104651   0.8895428   1.3862545
18 months   ki1126311-ZVITAMBO         4                    1                 1.0874900   0.8653749   1.3666152
18 months   ki1126311-ZVITAMBO         5                    1                 1.1515935   0.9187893   1.4433859
18 months   ki1126311-ZVITAMBO         6                    1                 1.2017362   0.9677448   1.4923046
18 months   ki1126311-ZVITAMBO         7                    1                 1.0185158   0.8082450   1.2834899
18 months   ki1126311-ZVITAMBO         8                    1                 1.0107227   0.8044094   1.2699509
18 months   ki1126311-ZVITAMBO         9                    1                 0.9199119   0.7249403   1.1673209
18 months   ki1126311-ZVITAMBO         10                   1                 1.1196425   0.8840530   1.4180138
18 months   ki1126311-ZVITAMBO         11                   1                 1.1510919   0.9281318   1.4276125
18 months   ki1126311-ZVITAMBO         12                   1                 1.0783707   0.8659874   1.3428411
24 months   ki0047075b-MAL-ED          2                    1                 1.0647343   0.8898294   1.2740185
24 months   ki0047075b-MAL-ED          3                    1                 0.9637681   0.7903081   1.1752999
24 months   ki0047075b-MAL-ED          4                    1                 0.8095652   0.6382927   1.0267951
24 months   ki0047075b-MAL-ED          5                    1                 0.9790660   0.7996763   1.1986979
24 months   ki0047075b-MAL-ED          6                    1                 0.8756522   0.6992911   1.0964915
24 months   ki0047075b-MAL-ED          7                    1                 1.0009521   0.8307259   1.2060598
24 months   ki0047075b-MAL-ED          8                    1                 0.8998447   0.7275251   1.1129795
24 months   ki0047075b-MAL-ED          9                    1                 0.8989770   0.7357005   1.0984899
24 months   ki0047075b-MAL-ED          10                   1                 0.9424372   0.7777694   1.1419682
24 months   ki0047075b-MAL-ED          11                   1                 1.0555556   0.8836952   1.2608391
24 months   ki0047075b-MAL-ED          12                   1                 1.0621118   0.8922739   1.2642771
24 months   ki1017093-NIH-Birth        2                    1                 1.0661765   0.8460320   1.3436044
24 months   ki1017093-NIH-Birth        3                    1                 0.9024064   0.6945936   1.1723940
24 months   ki1017093-NIH-Birth        4                    1                 1.1145511   0.8979995   1.3833239
24 months   ki1017093-NIH-Birth        5                    1                 0.9831933   0.7608124   1.2705748
24 months   ki1017093-NIH-Birth        6                    1                 1.0966387   0.8760563   1.3727615
24 months   ki1017093-NIH-Birth        7                    1                 0.9768908   0.7643422   1.2485449
24 months   ki1017093-NIH-Birth        8                    1                 1.0246679   0.7957979   1.3193606
24 months   ki1017093-NIH-Birth        9                    1                 0.9926471   0.7465901   1.3197981
24 months   ki1017093-NIH-Birth        10                   1                 0.9494885   0.7422313   1.2146193
24 months   ki1017093-NIH-Birth        11                   1                 1.0358056   0.8265592   1.2980235
24 months   ki1017093-NIH-Birth        12                   1                 0.9099265   0.7063567   1.1721644
24 months   ki1114097-CMIN             2                    1                 0.8685533   0.7012274   1.0758064
24 months   ki1114097-CMIN             3                    1                 0.9277066   0.7596423   1.1329537
24 months   ki1114097-CMIN             4                    1                 0.9799530   0.8474143   1.1332213
24 months   ki1114097-CMIN             5                    1                 0.9187244   0.7589916   1.1120736
24 months   ki1114097-CMIN             6                    1                 0.8511139   0.6832804   1.0601721
24 months   ki1114097-CMIN             7                    1                 0.9733434   0.7904309   1.1985834
24 months   ki1114097-CMIN             8                    1                 0.8238205   0.6557103   1.0350306
24 months   ki1114097-CMIN             9                    1                 0.9244665   0.7640340   1.1185867
24 months   ki1114097-CMIN             10                   1                 1.0859391   0.8992339   1.3114094
24 months   ki1114097-CMIN             11                   1                 0.9419735   0.7780998   1.1403603
24 months   ki1114097-CMIN             12                   1                 1.0860865   0.8957041   1.3169347
24 months   ki1126311-ZVITAMBO         2                    1                 0.9574468   0.8131806   1.1273073
24 months   ki1126311-ZVITAMBO         3                    1                 0.6772575   0.5210394   0.8803131
24 months   ki1126311-ZVITAMBO         4                    1                 0.8173077   0.6644136   1.0053855
24 months   ki1126311-ZVITAMBO         5                    1                 0.7816377   0.6010648   1.0164586
24 months   ki1126311-ZVITAMBO         6                    1                 0.7582418   0.5850298   0.9827372
24 months   ki1126311-ZVITAMBO         7                    1                 0.8571429   0.6885876   1.0669577
24 months   ki1126311-ZVITAMBO         8                    1                 0.7071960   0.5253957   0.9519039
24 months   ki1126311-ZVITAMBO         9                    1                 0.7692308   0.5697919   1.0384774
24 months   ki1126311-ZVITAMBO         10                   1                 0.9065934   0.7292768   1.1270228
24 months   ki1126311-ZVITAMBO         11                   1                 0.8333333   0.6648775   1.0444698
24 months   ki1126311-ZVITAMBO         12                   1                 0.8006279   0.6483115   0.9887302


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          1                    NA                 0.0022797   -0.0620683    0.0666276
3 months    ki1000108-IRC              1                    NA                 0.0115176   -0.1393432    0.1623784
3 months    ki1017093-NIH-Birth        1                    NA                -0.1303657   -0.2441525   -0.0165788
3 months    ki1114097-CMIN             1                    NA                 0.0170090   -0.0413427    0.0753607
3 months    ki1126311-ZVITAMBO         1                    NA                -0.0462439   -0.0922106   -0.0002772
6 months    ki0047075b-MAL-ED          1                    NA                -0.0122862   -0.0842314    0.0596591
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                -0.0759737   -0.2418918    0.0899443
6 months    ki1000108-IRC              1                    NA                -0.0045518   -0.1688725    0.1597689
6 months    ki1017093-NIH-Birth        1                    NA                -0.1442996   -0.2767939   -0.0118053
6 months    ki1114097-CMIN             1                    NA                -0.0040275   -0.0660866    0.0580316
6 months    ki1126311-ZVITAMBO         1                    NA                -0.0044861   -0.0636025    0.0546303
12 months   ki0047075b-MAL-ED          1                    NA                 0.0078173   -0.0685287    0.0841632
12 months   ki1000108-IRC              1                    NA                -0.0482026   -0.2108944    0.1144892
12 months   ki1017093-NIH-Birth        1                    NA                -0.1436798   -0.2732804   -0.0140792
12 months   ki1066203-TanzaniaChild2   1                    NA                 0.0129928   -0.1377208    0.1637064
12 months   ki1114097-CMIN             1                    NA                -0.0097645   -0.0687604    0.0492314
12 months   ki1126311-ZVITAMBO         1                    NA                 0.0145081   -0.0432166    0.0722329
12 months   ki1148112-LCNI-5           1                    NA                 0.0607940   -0.1293991    0.2509872
18 months   ki0047075b-MAL-ED          1                    NA                 0.0142971   -0.0641071    0.0927012
18 months   ki1000108-IRC              1                    NA                 0.0067916   -0.1559855    0.1695688
18 months   ki1017093-NIH-Birth        1                    NA                -0.0309517   -0.1644679    0.1025646
18 months   ki1114097-CMIN             1                    NA                -0.0184790   -0.0799836    0.0430256
18 months   ki1126311-ZVITAMBO         1                    NA                 0.0351908   -0.0354045    0.1057861
24 months   ki0047075b-MAL-ED          1                    NA                -0.0176008   -0.0953647    0.0601631
24 months   ki1017093-NIH-Birth        1                    NA                -0.0002364   -0.1260141    0.1255413
24 months   ki1114097-CMIN             1                    NA                -0.0243342   -0.0798580    0.0311896
24 months   ki1126311-ZVITAMBO         1                    NA                -0.1453901   -0.2318457   -0.0589344


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          1                    NA                 0.0087442   -0.2715220    0.2272347
3 months    ki1000108-IRC              1                    NA                 0.0363248   -0.5788202    0.4117950
3 months    ki1017093-NIH-Birth        1                    NA                -0.5857143   -1.1900268   -0.1481548
3 months    ki1114097-CMIN             1                    NA                 0.0966697   -0.3040084    0.3742328
3 months    ki1126311-ZVITAMBO         1                    NA                -0.2199573   -0.4594491   -0.0197654
6 months    ki0047075b-MAL-ED          1                    NA                -0.0369007   -0.2771562    0.1581586
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                -0.1483104   -0.5227156    0.1340361
6 months    ki1000108-IRC              1                    NA                -0.0107349   -0.4830508    0.3111598
6 months    ki1017093-NIH-Birth        1                    NA                -0.3955676   -0.8112775   -0.0752682
6 months    ki1114097-CMIN             1                    NA                -0.0201702   -0.3835157    0.2477518
6 months    ki1126311-ZVITAMBO         1                    NA                -0.0150926   -0.2348041    0.1655252
12 months   ki0047075b-MAL-ED          1                    NA                 0.0181722   -0.1763527    0.1805299
12 months   ki1000108-IRC              1                    NA                -0.0950081   -0.4676597    0.1830241
12 months   ki1017093-NIH-Birth        1                    NA                -0.2816332   -0.5628632   -0.0510092
12 months   ki1066203-TanzaniaChild2   1                    NA                 0.0407876   -0.5707902    0.4142512
12 months   ki1114097-CMIN             1                    NA                -0.0325964   -0.2495776    0.1467073
12 months   ki1126311-ZVITAMBO         1                    NA                 0.0384012   -0.1271911    0.1796669
12 months   ki1148112-LCNI-5           1                    NA                 0.1256410   -0.3706056    0.4422147
18 months   ki0047075b-MAL-ED          1                    NA                 0.0264791   -0.1301168    0.1613761
18 months   ki1000108-IRC              1                    NA                 0.0120773   -0.3242375    0.2629787
18 months   ki1017093-NIH-Birth        1                    NA                -0.0476253   -0.2746154    0.1389412
18 months   ki1114097-CMIN             1                    NA                -0.0442589   -0.2024695    0.0931357
18 months   ki1126311-ZVITAMBO         1                    NA                 0.0724907   -0.0849445    0.2070807
24 months   ki0047075b-MAL-ED          1                    NA                -0.0299506   -0.1711587    0.0942319
24 months   ki1017093-NIH-Birth        1                    NA                -0.0003130   -0.1814985    0.1530873
24 months   ki1114097-CMIN             1                    NA                -0.0483784   -0.1647903    0.0563990
24 months   ki1126311-ZVITAMBO         1                    NA                -0.2015733   -0.3278580   -0.0872987


