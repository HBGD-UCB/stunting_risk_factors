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
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
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
![](/tmp/bbe83b6d-b012-4382-9929-755cf07c876d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bbe83b6d-b012-4382-9929-755cf07c876d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/bbe83b6d-b012-4382-9929-755cf07c876d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bbe83b6d-b012-4382-9929-755cf07c876d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n    nA   nAY0   nAY1
----------  -------------------------  ---  -----  ----  -----  -----
3 months    ki0047075b-MAL-ED          1     1868   180    133     47
3 months    ki0047075b-MAL-ED          2     1868   174    137     37
3 months    ki0047075b-MAL-ED          3     1868   145    105     40
3 months    ki0047075b-MAL-ED          4     1868   119     97     22
3 months    ki0047075b-MAL-ED          5     1868   139    101     38
3 months    ki0047075b-MAL-ED          6     1868   117     90     27
3 months    ki0047075b-MAL-ED          7     1868   156    107     49
3 months    ki0047075b-MAL-ED          8     1868   138    104     34
3 months    ki0047075b-MAL-ED          9     1868   165    126     39
3 months    ki0047075b-MAL-ED          10    1868   175    127     48
3 months    ki0047075b-MAL-ED          11    1868   179    127     52
3 months    ki0047075b-MAL-ED          12    1868   181    127     54
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
3 months    ki1000108-IRC              1      410    38     27     11
3 months    ki1000108-IRC              2      410    28     16     12
3 months    ki1000108-IRC              3      410    27     17     10
3 months    ki1000108-IRC              4      410    21     13      8
3 months    ki1000108-IRC              5      410    22     15      7
3 months    ki1000108-IRC              6      410    37     27     10
3 months    ki1000108-IRC              7      410    36     25     11
3 months    ki1000108-IRC              8      410    44     37      7
3 months    ki1000108-IRC              9      410    27     18      9
3 months    ki1000108-IRC              10     410    38     29      9
3 months    ki1000108-IRC              11     410    40     27     13
3 months    ki1000108-IRC              12     410    52     29     23
3 months    ki1000109-EE               1      379    95     26     69
3 months    ki1000109-EE               2      379    67     27     40
3 months    ki1000109-EE               3      379    42     22     20
3 months    ki1000109-EE               4      379    16      4     12
3 months    ki1000109-EE               5      379     0      0      0
3 months    ki1000109-EE               6      379     0      0      0
3 months    ki1000109-EE               7      379     0      0      0
3 months    ki1000109-EE               8      379     0      0      0
3 months    ki1000109-EE               9      379     0      0      0
3 months    ki1000109-EE               10     379     4      3      1
3 months    ki1000109-EE               11     379    70     21     49
3 months    ki1000109-EE               12     379    85     35     50
3 months    ki1000109-ResPak           1      276    11      6      5
3 months    ki1000109-ResPak           2      276    12      8      4
3 months    ki1000109-ResPak           3      276    20      9     11
3 months    ki1000109-ResPak           4      276    27      9     18
3 months    ki1000109-ResPak           5      276    52     25     27
3 months    ki1000109-ResPak           6      276    49     19     30
3 months    ki1000109-ResPak           7      276    34     11     23
3 months    ki1000109-ResPak           8      276    37     24     13
3 months    ki1000109-ResPak           9      276    20     16      4
3 months    ki1000109-ResPak           10     276     6      4      2
3 months    ki1000109-ResPak           11     276     3      0      3
3 months    ki1000109-ResPak           12     276     5      4      1
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
3 months    ki1017093-NIH-Birth        1      629    73     47     26
3 months    ki1017093-NIH-Birth        2      629    58     46     12
3 months    ki1017093-NIH-Birth        3      629    59     51      8
3 months    ki1017093-NIH-Birth        4      629    53     40     13
3 months    ki1017093-NIH-Birth        5      629    49     41      8
3 months    ki1017093-NIH-Birth        6      629    50     39     11
3 months    ki1017093-NIH-Birth        7      629    41     34      7
3 months    ki1017093-NIH-Birth        8      629    41     34      7
3 months    ki1017093-NIH-Birth        9      629    48     34     14
3 months    ki1017093-NIH-Birth        10     629    49     39     10
3 months    ki1017093-NIH-Birth        11     629    53     39     14
3 months    ki1017093-NIH-Birth        12     629    55     45     10
3 months    ki1066203-TanzaniaChild2   1      602    43     37      6
3 months    ki1066203-TanzaniaChild2   2      602    44     39      5
3 months    ki1066203-TanzaniaChild2   3      602    37     34      3
3 months    ki1066203-TanzaniaChild2   4      602    49     44      5
3 months    ki1066203-TanzaniaChild2   5      602    45     39      6
3 months    ki1066203-TanzaniaChild2   6      602    43     38      5
3 months    ki1066203-TanzaniaChild2   7      602    51     48      3
3 months    ki1066203-TanzaniaChild2   8      602    61     57      4
3 months    ki1066203-TanzaniaChild2   9      602    52     45      7
3 months    ki1066203-TanzaniaChild2   10     602    67     61      6
3 months    ki1066203-TanzaniaChild2   11     602    56     51      5
3 months    ki1066203-TanzaniaChild2   12     602    54     50      4
3 months    ki1101329-Keneba           1     2296   235    178     57
3 months    ki1101329-Keneba           2     2296   207    169     38
3 months    ki1101329-Keneba           3     2296   251    209     42
3 months    ki1101329-Keneba           4     2296   155    121     34
3 months    ki1101329-Keneba           5     2296   159    125     34
3 months    ki1101329-Keneba           6     2296   133     97     36
3 months    ki1101329-Keneba           7     2296   104     73     31
3 months    ki1101329-Keneba           8     2296   192    140     52
3 months    ki1101329-Keneba           9     2296   206    150     56
3 months    ki1101329-Keneba           10    2296   261    181     80
3 months    ki1101329-Keneba           11    2296   196    146     50
3 months    ki1101329-Keneba           12    2296   197    145     52
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
3 months    ki1113344-GMS-Nepal        6      593   128    111     17
3 months    ki1113344-GMS-Nepal        7      593   230    191     39
3 months    ki1113344-GMS-Nepal        8      593   235    197     38
3 months    ki1113344-GMS-Nepal        9      593     0      0      0
3 months    ki1113344-GMS-Nepal        10     593     0      0      0
3 months    ki1113344-GMS-Nepal        11     593     0      0      0
3 months    ki1113344-GMS-Nepal        12     593     0      0      0
3 months    ki1114097-CMIN             1     1580   148    122     26
3 months    ki1114097-CMIN             2     1580   154    127     27
3 months    ki1114097-CMIN             3     1580   150    131     19
3 months    ki1114097-CMIN             4     1580   126    103     23
3 months    ki1114097-CMIN             5     1580   122    100     22
3 months    ki1114097-CMIN             6     1580   106     89     17
3 months    ki1114097-CMIN             7     1580   114    100     14
3 months    ki1114097-CMIN             8     1580   137    111     26
3 months    ki1114097-CMIN             9     1580   129    101     28
3 months    ki1114097-CMIN             10    1580   145    120     25
3 months    ki1114097-CMIN             11    1580   113     92     21
3 months    ki1114097-CMIN             12    1580   136    106     30
3 months    ki1114097-CONTENT          1      215    10     10      0
3 months    ki1114097-CONTENT          2      215    18     16      2
3 months    ki1114097-CONTENT          3      215    30     28      2
3 months    ki1114097-CONTENT          4      215    19     14      5
3 months    ki1114097-CONTENT          5      215    14     11      3
3 months    ki1114097-CONTENT          6      215    13     11      2
3 months    ki1114097-CONTENT          7      215    28     25      3
3 months    ki1114097-CONTENT          8      215    23     17      6
3 months    ki1114097-CONTENT          9      215    26     22      4
3 months    ki1114097-CONTENT          10     215    14     10      4
3 months    ki1114097-CONTENT          11     215     9      5      4
3 months    ki1114097-CONTENT          12     215    11     11      0
3 months    ki1126311-ZVITAMBO         1     3502   346    256     90
3 months    ki1126311-ZVITAMBO         2     3502   262    201     61
3 months    ki1126311-ZVITAMBO         3     3502   289    234     55
3 months    ki1126311-ZVITAMBO         4     3502   257    200     57
3 months    ki1126311-ZVITAMBO         5     3502   257    199     58
3 months    ki1126311-ZVITAMBO         6     3502   285    213     72
3 months    ki1126311-ZVITAMBO         7     3502   303    234     69
3 months    ki1126311-ZVITAMBO         8     3502   318    247     71
3 months    ki1126311-ZVITAMBO         9     3502   322    273     49
3 months    ki1126311-ZVITAMBO         10    3502   260    211     49
3 months    ki1126311-ZVITAMBO         11    3502   299    242     57
3 months    ki1126311-ZVITAMBO         12    3502   304    257     47
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
6 months    ki0047075b-MAL-ED          1     1748   171    111     60
6 months    ki0047075b-MAL-ED          2     1748   159    107     52
6 months    ki0047075b-MAL-ED          3     1748   133     84     49
6 months    ki0047075b-MAL-ED          4     1748   112     87     25
6 months    ki0047075b-MAL-ED          5     1748   134     93     41
6 months    ki0047075b-MAL-ED          6     1748   108     78     30
6 months    ki0047075b-MAL-ED          7     1748   148     88     60
6 months    ki0047075b-MAL-ED          8     1748   129     89     40
6 months    ki0047075b-MAL-ED          9     1748   155    110     45
6 months    ki0047075b-MAL-ED          10    1748   162    105     57
6 months    ki0047075b-MAL-ED          11    1748   174    109     65
6 months    ki0047075b-MAL-ED          12    1748   163    105     58
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
6 months    ki1000108-IRC              1      408    37     22     15
6 months    ki1000108-IRC              2      408    28     13     15
6 months    ki1000108-IRC              3      408    27     16     11
6 months    ki1000108-IRC              4      408    21     11     10
6 months    ki1000108-IRC              5      408    21     11     10
6 months    ki1000108-IRC              6      408    37     23     14
6 months    ki1000108-IRC              7      408    36     20     16
6 months    ki1000108-IRC              8      408    44     31     13
6 months    ki1000108-IRC              9      408    27     15     12
6 months    ki1000108-IRC              10     408    38     25     13
6 months    ki1000108-IRC              11     408    40     25     15
6 months    ki1000108-IRC              12     408    52     23     29
6 months    ki1000109-EE               1      373    93     18     75
6 months    ki1000109-EE               2      373    65     18     47
6 months    ki1000109-EE               3      373    42     18     24
6 months    ki1000109-EE               4      373    15      2     13
6 months    ki1000109-EE               5      373     0      0      0
6 months    ki1000109-EE               6      373     0      0      0
6 months    ki1000109-EE               7      373     0      0      0
6 months    ki1000109-EE               8      373     0      0      0
6 months    ki1000109-EE               9      373     0      0      0
6 months    ki1000109-EE               10     373     4      2      2
6 months    ki1000109-EE               11     373    70     18     52
6 months    ki1000109-EE               12     373    84     20     64
6 months    ki1000109-ResPak           1      255    10      3      7
6 months    ki1000109-ResPak           2      255    12      6      6
6 months    ki1000109-ResPak           3      255    21      8     13
6 months    ki1000109-ResPak           4      255    23      6     17
6 months    ki1000109-ResPak           5      255    50     22     28
6 months    ki1000109-ResPak           6      255    45     15     30
6 months    ki1000109-ResPak           7      255    28      7     21
6 months    ki1000109-ResPak           8      255    33     19     14
6 months    ki1000109-ResPak           9      255    20     13      7
6 months    ki1000109-ResPak           10     255     5      3      2
6 months    ki1000109-ResPak           11     255     3      0      3
6 months    ki1000109-ResPak           12     255     5      2      3
6 months    ki1000304b-SAS-FoodSuppl   1      105     7      4      3
6 months    ki1000304b-SAS-FoodSuppl   2      105     9      6      3
6 months    ki1000304b-SAS-FoodSuppl   3      105     6      5      1
6 months    ki1000304b-SAS-FoodSuppl   4      105     1      1      0
6 months    ki1000304b-SAS-FoodSuppl   5      105     3      3      0
6 months    ki1000304b-SAS-FoodSuppl   6      105     6      2      4
6 months    ki1000304b-SAS-FoodSuppl   7      105    10      6      4
6 months    ki1000304b-SAS-FoodSuppl   8      105    17     10      7
6 months    ki1000304b-SAS-FoodSuppl   9      105    17     11      6
6 months    ki1000304b-SAS-FoodSuppl   10     105    13      7      6
6 months    ki1000304b-SAS-FoodSuppl   11     105     6      3      3
6 months    ki1000304b-SAS-FoodSuppl   12     105    10      4      6
6 months    ki1017093-NIH-Birth        1      551    57     26     31
6 months    ki1017093-NIH-Birth        2      551    43     29     14
6 months    ki1017093-NIH-Birth        3      551    53     40     13
6 months    ki1017093-NIH-Birth        4      551    46     31     15
6 months    ki1017093-NIH-Birth        5      551    46     33     13
6 months    ki1017093-NIH-Birth        6      551    45     24     21
6 months    ki1017093-NIH-Birth        7      551    38     22     16
6 months    ki1017093-NIH-Birth        8      551    37     24     13
6 months    ki1017093-NIH-Birth        9      551    43     25     18
6 months    ki1017093-NIH-Birth        10     551    47     32     15
6 months    ki1017093-NIH-Birth        11     551    52     28     24
6 months    ki1017093-NIH-Birth        12     551    44     36      8
6 months    ki1066203-TanzaniaChild2   1      557    39     34      5
6 months    ki1066203-TanzaniaChild2   2      557    39     32      7
6 months    ki1066203-TanzaniaChild2   3      557    33     28      5
6 months    ki1066203-TanzaniaChild2   4      557    46     35     11
6 months    ki1066203-TanzaniaChild2   5      557    42     30     12
6 months    ki1066203-TanzaniaChild2   6      557    40     32      8
6 months    ki1066203-TanzaniaChild2   7      557    49     37     12
6 months    ki1066203-TanzaniaChild2   8      557    57     46     11
6 months    ki1066203-TanzaniaChild2   9      557    46     33     13
6 months    ki1066203-TanzaniaChild2   10     557    59     49     10
6 months    ki1066203-TanzaniaChild2   11     557    56     46     10
6 months    ki1066203-TanzaniaChild2   12     557    51     47      4
6 months    ki1101329-Keneba           1     2264   228    159     69
6 months    ki1101329-Keneba           2     2264   199    143     56
6 months    ki1101329-Keneba           3     2264   233    168     65
6 months    ki1101329-Keneba           4     2264   159    110     49
6 months    ki1101329-Keneba           5     2264   161    107     54
6 months    ki1101329-Keneba           6     2264   130     88     42
6 months    ki1101329-Keneba           7     2264   100     61     39
6 months    ki1101329-Keneba           8     2264   186    124     62
6 months    ki1101329-Keneba           9     2264   194    129     65
6 months    ki1101329-Keneba           10    2264   271    171    100
6 months    ki1101329-Keneba           11    2264   193    130     63
6 months    ki1101329-Keneba           12    2264   210    143     67
6 months    ki1112895-Guatemala BSC    1      115     8      3      5
6 months    ki1112895-Guatemala BSC    2      115     8      7      1
6 months    ki1112895-Guatemala BSC    3      115     7      5      2
6 months    ki1112895-Guatemala BSC    4      115    10      5      5
6 months    ki1112895-Guatemala BSC    5      115    16     12      4
6 months    ki1112895-Guatemala BSC    6      115    11      6      5
6 months    ki1112895-Guatemala BSC    7      115     9      7      2
6 months    ki1112895-Guatemala BSC    8      115     5      2      3
6 months    ki1112895-Guatemala BSC    9      115     8      6      2
6 months    ki1112895-Guatemala BSC    10     115    12     10      2
6 months    ki1112895-Guatemala BSC    11     115     6      4      2
6 months    ki1112895-Guatemala BSC    12     115    15     13      2
6 months    ki1113344-GMS-Nepal        1      567     0      0      0
6 months    ki1113344-GMS-Nepal        2      567     0      0      0
6 months    ki1113344-GMS-Nepal        3      567     0      0      0
6 months    ki1113344-GMS-Nepal        4      567     1      0      1
6 months    ki1113344-GMS-Nepal        5      567     0      0      0
6 months    ki1113344-GMS-Nepal        6      567   118     87     31
6 months    ki1113344-GMS-Nepal        7      567   221    155     66
6 months    ki1113344-GMS-Nepal        8      567   227    163     64
6 months    ki1113344-GMS-Nepal        9      567     0      0      0
6 months    ki1113344-GMS-Nepal        10     567     0      0      0
6 months    ki1113344-GMS-Nepal        11     567     0      0      0
6 months    ki1113344-GMS-Nepal        12     567     0      0      0
6 months    ki1114097-CMIN             1     1853   175    142     33
6 months    ki1114097-CMIN             2     1853   157    123     34
6 months    ki1114097-CMIN             3     1853   152    126     26
6 months    ki1114097-CMIN             4     1853   139    114     25
6 months    ki1114097-CMIN             5     1853   145    117     28
6 months    ki1114097-CMIN             6     1853   121    100     21
6 months    ki1114097-CMIN             7     1853   119     98     21
6 months    ki1114097-CMIN             8     1853   155    123     32
6 months    ki1114097-CMIN             9     1853   177    133     44
6 months    ki1114097-CMIN             10    1853   182    142     40
6 months    ki1114097-CMIN             11    1853   158    130     28
6 months    ki1114097-CMIN             12    1853   173    135     38
6 months    ki1114097-CONTENT          1      215    10     10      0
6 months    ki1114097-CONTENT          2      215    18     15      3
6 months    ki1114097-CONTENT          3      215    30     26      4
6 months    ki1114097-CONTENT          4      215    19     10      9
6 months    ki1114097-CONTENT          5      215    14     11      3
6 months    ki1114097-CONTENT          6      215    13      8      5
6 months    ki1114097-CONTENT          7      215    28     23      5
6 months    ki1114097-CONTENT          8      215    23     16      7
6 months    ki1114097-CONTENT          9      215    26     22      4
6 months    ki1114097-CONTENT          10     215    14     10      4
6 months    ki1114097-CONTENT          11     215     9      5      4
6 months    ki1114097-CONTENT          12     215    11     11      0
6 months    ki1126311-ZVITAMBO         1     2286   229    159     70
6 months    ki1126311-ZVITAMBO         2     2286   145     94     51
6 months    ki1126311-ZVITAMBO         3     2286   192    142     50
6 months    ki1126311-ZVITAMBO         4     2286   176    123     53
6 months    ki1126311-ZVITAMBO         5     2286   172    115     57
6 months    ki1126311-ZVITAMBO         6     2286   193    115     78
6 months    ki1126311-ZVITAMBO         7     2286   198    140     58
6 months    ki1126311-ZVITAMBO         8     2286   208    139     69
6 months    ki1126311-ZVITAMBO         9     2286   194    148     46
6 months    ki1126311-ZVITAMBO         10    2286   152    104     48
6 months    ki1126311-ZVITAMBO         11    2286   209    153     56
6 months    ki1126311-ZVITAMBO         12    2286   218    176     42
6 months    ki1148112-LCNI-5           1      133    16     10      6
6 months    ki1148112-LCNI-5           2      133     3      3      0
6 months    ki1148112-LCNI-5           3      133     2      1      1
6 months    ki1148112-LCNI-5           4      133     3      2      1
6 months    ki1148112-LCNI-5           5      133     3      3      0
6 months    ki1148112-LCNI-5           6      133     2      1      1
6 months    ki1148112-LCNI-5           7      133     1      1      0
6 months    ki1148112-LCNI-5           8      133    15     10      5
6 months    ki1148112-LCNI-5           9      133    27     14     13
6 months    ki1148112-LCNI-5           10     133    35     20     15
6 months    ki1148112-LCNI-5           11     133    13      8      5
6 months    ki1148112-LCNI-5           12     133    13      8      5
12 months   ki0047075b-MAL-ED          1     1690   164     94     70
12 months   ki0047075b-MAL-ED          2     1690   152     78     74
12 months   ki0047075b-MAL-ED          3     1690   132     78     54
12 months   ki0047075b-MAL-ED          4     1690   110     74     36
12 months   ki0047075b-MAL-ED          5     1690   128     74     54
12 months   ki0047075b-MAL-ED          6     1690   107     66     41
12 months   ki0047075b-MAL-ED          7     1690   143     76     67
12 months   ki0047075b-MAL-ED          8     1690   122     72     50
12 months   ki0047075b-MAL-ED          9     1690   148     89     59
12 months   ki0047075b-MAL-ED          10    1690   156     91     65
12 months   ki0047075b-MAL-ED          11    1690   170     87     83
12 months   ki0047075b-MAL-ED          12    1690   158     84     74
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
12 months   ki1000108-IRC              1      408    38     18     20
12 months   ki1000108-IRC              2      408    28     11     17
12 months   ki1000108-IRC              3      408    27     14     13
12 months   ki1000108-IRC              4      408    21      8     13
12 months   ki1000108-IRC              5      408    21      7     14
12 months   ki1000108-IRC              6      408    37     21     16
12 months   ki1000108-IRC              7      408    36     19     17
12 months   ki1000108-IRC              8      408    44     26     18
12 months   ki1000108-IRC              9      408    27     13     14
12 months   ki1000108-IRC              10     408    38     22     16
12 months   ki1000108-IRC              11     408    40     21     19
12 months   ki1000108-IRC              12     408    51     21     30
12 months   ki1000109-EE               1      373    91     13     78
12 months   ki1000109-EE               2      373    66     12     54
12 months   ki1000109-EE               3      373    41     10     31
12 months   ki1000109-EE               4      373    16      2     14
12 months   ki1000109-EE               5      373     0      0      0
12 months   ki1000109-EE               6      373     0      0      0
12 months   ki1000109-EE               7      373     0      0      0
12 months   ki1000109-EE               8      373     0      0      0
12 months   ki1000109-EE               9      373     0      0      0
12 months   ki1000109-EE               10     373     4      1      3
12 months   ki1000109-EE               11     373    70     14     56
12 months   ki1000109-EE               12     373    85     13     72
12 months   ki1000109-ResPak           1      230    10      2      8
12 months   ki1000109-ResPak           2      230    11      4      7
12 months   ki1000109-ResPak           3      230    20      7     13
12 months   ki1000109-ResPak           4      230    16      3     13
12 months   ki1000109-ResPak           5      230    46     19     27
12 months   ki1000109-ResPak           6      230    40     13     27
12 months   ki1000109-ResPak           7      230    26      4     22
12 months   ki1000109-ResPak           8      230    30     16     14
12 months   ki1000109-ResPak           9      230    20     12      8
12 months   ki1000109-ResPak           10     230     5      3      2
12 months   ki1000109-ResPak           11     230     1      0      1
12 months   ki1000109-ResPak           12     230     5      2      3
12 months   ki1000304b-SAS-FoodSuppl   1       99     6      0      6
12 months   ki1000304b-SAS-FoodSuppl   2       99     9      2      7
12 months   ki1000304b-SAS-FoodSuppl   3       99     6      1      5
12 months   ki1000304b-SAS-FoodSuppl   4       99     1      0      1
12 months   ki1000304b-SAS-FoodSuppl   5       99     3      0      3
12 months   ki1000304b-SAS-FoodSuppl   6       99     5      1      4
12 months   ki1000304b-SAS-FoodSuppl   7       99    10      2      8
12 months   ki1000304b-SAS-FoodSuppl   8       99    16      4     12
12 months   ki1000304b-SAS-FoodSuppl   9       99    17      1     16
12 months   ki1000304b-SAS-FoodSuppl   10      99    11      2      9
12 months   ki1000304b-SAS-FoodSuppl   11      99     5      1      4
12 months   ki1000304b-SAS-FoodSuppl   12      99    10      1      9
12 months   ki1017093-NIH-Birth        1      541    54     19     35
12 months   ki1017093-NIH-Birth        2      541    49     22     27
12 months   ki1017093-NIH-Birth        3      541    51     29     22
12 months   ki1017093-NIH-Birth        4      541    43     26     17
12 months   ki1017093-NIH-Birth        5      541    44     25     19
12 months   ki1017093-NIH-Birth        6      541    44     18     26
12 months   ki1017093-NIH-Birth        7      541    39     19     20
12 months   ki1017093-NIH-Birth        8      541    34     16     18
12 months   ki1017093-NIH-Birth        9      541    41     17     24
12 months   ki1017093-NIH-Birth        10     541    43     24     19
12 months   ki1017093-NIH-Birth        11     541    48     21     27
12 months   ki1017093-NIH-Birth        12     541    51     29     22
12 months   ki1066203-TanzaniaChild2   1      496    35     24     11
12 months   ki1066203-TanzaniaChild2   2      496    36     27      9
12 months   ki1066203-TanzaniaChild2   3      496    29     22      7
12 months   ki1066203-TanzaniaChild2   4      496    35     22     13
12 months   ki1066203-TanzaniaChild2   5      496    36     22     14
12 months   ki1066203-TanzaniaChild2   6      496    35     24     11
12 months   ki1066203-TanzaniaChild2   7      496    45     28     17
12 months   ki1066203-TanzaniaChild2   8      496    55     38     17
12 months   ki1066203-TanzaniaChild2   9      496    42     25     17
12 months   ki1066203-TanzaniaChild2   10     496    54     40     14
12 months   ki1066203-TanzaniaChild2   11     496    48     32     16
12 months   ki1066203-TanzaniaChild2   12     496    46     34     12
12 months   ki1101329-Keneba           1     2384   231    135     96
12 months   ki1101329-Keneba           2     2384   217    135     82
12 months   ki1101329-Keneba           3     2384   245    153     92
12 months   ki1101329-Keneba           4     2384   156     94     62
12 months   ki1101329-Keneba           5     2384   173     99     74
12 months   ki1101329-Keneba           6     2384   140     80     60
12 months   ki1101329-Keneba           7     2384   112     64     48
12 months   ki1101329-Keneba           8     2384   204    127     77
12 months   ki1101329-Keneba           9     2384   205    116     89
12 months   ki1101329-Keneba           10    2384   279    157    122
12 months   ki1101329-Keneba           11    2384   209    129     80
12 months   ki1101329-Keneba           12    2384   213    124     89
12 months   ki1112895-Guatemala BSC    1       85     7      1      6
12 months   ki1112895-Guatemala BSC    2       85     7      5      2
12 months   ki1112895-Guatemala BSC    3       85     7      5      2
12 months   ki1112895-Guatemala BSC    4       85     9      4      5
12 months   ki1112895-Guatemala BSC    5       85     8      7      1
12 months   ki1112895-Guatemala BSC    6       85     6      2      4
12 months   ki1112895-Guatemala BSC    7       85     8      6      2
12 months   ki1112895-Guatemala BSC    8       85     2      0      2
12 months   ki1112895-Guatemala BSC    9       85     6      2      4
12 months   ki1112895-Guatemala BSC    10      85     9      7      2
12 months   ki1112895-Guatemala BSC    11      85     6      4      2
12 months   ki1112895-Guatemala BSC    12      85    10      5      5
12 months   ki1113344-GMS-Nepal        1      582     0      0      0
12 months   ki1113344-GMS-Nepal        2      582     0      0      0
12 months   ki1113344-GMS-Nepal        3      582     0      0      0
12 months   ki1113344-GMS-Nepal        4      582     1      0      1
12 months   ki1113344-GMS-Nepal        5      582     0      0      0
12 months   ki1113344-GMS-Nepal        6      582   124     56     68
12 months   ki1113344-GMS-Nepal        7      582   228    125    103
12 months   ki1113344-GMS-Nepal        8      582   229    136     93
12 months   ki1113344-GMS-Nepal        9      582     0      0      0
12 months   ki1113344-GMS-Nepal        10     582     0      0      0
12 months   ki1113344-GMS-Nepal        11     582     0      0      0
12 months   ki1113344-GMS-Nepal        12     582     0      0      0
12 months   ki1114097-CMIN             1     2260   202    137     65
12 months   ki1114097-CMIN             2     2260   175    115     60
12 months   ki1114097-CMIN             3     2260   197    142     55
12 months   ki1114097-CMIN             4     2260   171    122     49
12 months   ki1114097-CMIN             5     2260   177    120     57
12 months   ki1114097-CMIN             6     2260   147    104     43
12 months   ki1114097-CMIN             7     2260   166    121     45
12 months   ki1114097-CMIN             8     2260   200    148     52
12 months   ki1114097-CMIN             9     2260   212    150     62
12 months   ki1114097-CMIN             10    2260   214    145     69
12 months   ki1114097-CMIN             11    2260   189    139     50
12 months   ki1114097-CMIN             12    2260   210    140     70
12 months   ki1114097-CONTENT          1      215    10     10      0
12 months   ki1114097-CONTENT          2      215    18     15      3
12 months   ki1114097-CONTENT          3      215    30     25      5
12 months   ki1114097-CONTENT          4      215    19     10      9
12 months   ki1114097-CONTENT          5      215    14     11      3
12 months   ki1114097-CONTENT          6      215    13      6      7
12 months   ki1114097-CONTENT          7      215    28     22      6
12 months   ki1114097-CONTENT          8      215    23     16      7
12 months   ki1114097-CONTENT          9      215    26     21      5
12 months   ki1114097-CONTENT          10     215    14     10      4
12 months   ki1114097-CONTENT          11     215     9      4      5
12 months   ki1114097-CONTENT          12     215    11     11      0
12 months   ki1126311-ZVITAMBO         1     2546   265    167     98
12 months   ki1126311-ZVITAMBO         2     2546   192    114     78
12 months   ki1126311-ZVITAMBO         3     2546   207    127     80
12 months   ki1126311-ZVITAMBO         4     2546   188    122     66
12 months   ki1126311-ZVITAMBO         5     2546   182     99     83
12 months   ki1126311-ZVITAMBO         6     2546   200    110     90
12 months   ki1126311-ZVITAMBO         7     2546   212    134     78
12 months   ki1126311-ZVITAMBO         8     2546   219    134     85
12 months   ki1126311-ZVITAMBO         9     2546   238    158     80
12 months   ki1126311-ZVITAMBO         10    2546   176    102     74
12 months   ki1126311-ZVITAMBO         11    2546   232    154     78
12 months   ki1126311-ZVITAMBO         12    2546   235    165     70
12 months   ki1148112-LCNI-5           1      403    34     17     17
12 months   ki1148112-LCNI-5           2      403    21     13      8
12 months   ki1148112-LCNI-5           3      403    13      5      8
12 months   ki1148112-LCNI-5           4      403    18     10      8
12 months   ki1148112-LCNI-5           5      403    22     11     11
12 months   ki1148112-LCNI-5           6      403    18     10      8
12 months   ki1148112-LCNI-5           7      403    30     18     12
12 months   ki1148112-LCNI-5           8      403    47     25     22
12 months   ki1148112-LCNI-5           9      403    43     22     21
12 months   ki1148112-LCNI-5           10     403    60     28     32
12 months   ki1148112-LCNI-5           11     403    50     28     22
12 months   ki1148112-LCNI-5           12     403    47     21     26
18 months   ki0047075b-MAL-ED          1     1615   159     76     83
18 months   ki0047075b-MAL-ED          2     1615   144     57     87
18 months   ki0047075b-MAL-ED          3     1615   124     58     66
18 months   ki0047075b-MAL-ED          4     1615   106     61     45
18 months   ki0047075b-MAL-ED          5     1615   121     54     67
18 months   ki0047075b-MAL-ED          6     1615   103     52     51
18 months   ki0047075b-MAL-ED          7     1615   140     60     80
18 months   ki0047075b-MAL-ED          8     1615   115     55     60
18 months   ki0047075b-MAL-ED          9     1615   142     69     73
18 months   ki0047075b-MAL-ED          10    1615   144     68     76
18 months   ki0047075b-MAL-ED          11    1615   162     70     92
18 months   ki0047075b-MAL-ED          12    1615   155     63     92
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
18 months   ki1000108-IRC              1      409    38     18     20
18 months   ki1000108-IRC              2      409    28     10     18
18 months   ki1000108-IRC              3      409    27     11     16
18 months   ki1000108-IRC              4      409    21      6     15
18 months   ki1000108-IRC              5      409    22      6     16
18 months   ki1000108-IRC              6      409    37     20     17
18 months   ki1000108-IRC              7      409    36     17     19
18 months   ki1000108-IRC              8      409    44     24     20
18 months   ki1000108-IRC              9      409    27     10     17
18 months   ki1000108-IRC              10     409    38     22     16
18 months   ki1000108-IRC              11     409    40     18     22
18 months   ki1000108-IRC              12     409    51     17     34
18 months   ki1000109-EE               1      363    90      6     84
18 months   ki1000109-EE               2      363    63      8     55
18 months   ki1000109-EE               3      363    40      4     36
18 months   ki1000109-EE               4      363    16      2     14
18 months   ki1000109-EE               5      363     0      0      0
18 months   ki1000109-EE               6      363     0      0      0
18 months   ki1000109-EE               7      363     0      0      0
18 months   ki1000109-EE               8      363     0      0      0
18 months   ki1000109-EE               9      363     0      0      0
18 months   ki1000109-EE               10     363     4      1      3
18 months   ki1000109-EE               11     363    67      7     60
18 months   ki1000109-EE               12     363    83      4     79
18 months   ki1000109-ResPak           1      184     5      1      4
18 months   ki1000109-ResPak           2      184     9      2      7
18 months   ki1000109-ResPak           3      184    14      5      9
18 months   ki1000109-ResPak           4      184    13      2     11
18 months   ki1000109-ResPak           5      184    42     16     26
18 months   ki1000109-ResPak           6      184    37     12     25
18 months   ki1000109-ResPak           7      184    21      3     18
18 months   ki1000109-ResPak           8      184    26     11     15
18 months   ki1000109-ResPak           9      184    14      7      7
18 months   ki1000109-ResPak           10     184     0      0      0
18 months   ki1000109-ResPak           11     184     0      0      0
18 months   ki1000109-ResPak           12     184     3      0      3
18 months   ki1000304b-SAS-FoodSuppl   1       93     7      1      6
18 months   ki1000304b-SAS-FoodSuppl   2       93     7      1      6
18 months   ki1000304b-SAS-FoodSuppl   3       93     6      1      5
18 months   ki1000304b-SAS-FoodSuppl   4       93     1      0      1
18 months   ki1000304b-SAS-FoodSuppl   5       93     3      0      3
18 months   ki1000304b-SAS-FoodSuppl   6       93     6      1      5
18 months   ki1000304b-SAS-FoodSuppl   7       93     8      2      6
18 months   ki1000304b-SAS-FoodSuppl   8       93    14      1     13
18 months   ki1000304b-SAS-FoodSuppl   9       93    17      1     16
18 months   ki1000304b-SAS-FoodSuppl   10      93    11      1     10
18 months   ki1000304b-SAS-FoodSuppl   11      93     5      1      4
18 months   ki1000304b-SAS-FoodSuppl   12      93     8      0      8
18 months   ki1017093-NIH-Birth        1      497    47     13     34
18 months   ki1017093-NIH-Birth        2      497    43     13     30
18 months   ki1017093-NIH-Birth        3      497    45     19     26
18 months   ki1017093-NIH-Birth        4      497    38     14     24
18 months   ki1017093-NIH-Birth        5      497    39     17     22
18 months   ki1017093-NIH-Birth        6      497    40     11     29
18 months   ki1017093-NIH-Birth        7      497    38     15     23
18 months   ki1017093-NIH-Birth        8      497    30      9     21
18 months   ki1017093-NIH-Birth        9      497    37     13     24
18 months   ki1017093-NIH-Birth        10     497    41     17     24
18 months   ki1017093-NIH-Birth        11     497    49     14     35
18 months   ki1017093-NIH-Birth        12     497    50     19     31
18 months   ki1066203-TanzaniaChild2   1      360    26     14     12
18 months   ki1066203-TanzaniaChild2   2      360    26     19      7
18 months   ki1066203-TanzaniaChild2   3      360    24     12     12
18 months   ki1066203-TanzaniaChild2   4      360    29     13     16
18 months   ki1066203-TanzaniaChild2   5      360    31     17     14
18 months   ki1066203-TanzaniaChild2   6      360    25     15     10
18 months   ki1066203-TanzaniaChild2   7      360    33     21     12
18 months   ki1066203-TanzaniaChild2   8      360    41     24     17
18 months   ki1066203-TanzaniaChild2   9      360    29     13     16
18 months   ki1066203-TanzaniaChild2   10     360    35     23     12
18 months   ki1066203-TanzaniaChild2   11     360    32     20     12
18 months   ki1066203-TanzaniaChild2   12     360    29     16     13
18 months   ki1101329-Keneba           1     2284   228    115    113
18 months   ki1101329-Keneba           2     2284   215    115    100
18 months   ki1101329-Keneba           3     2284   237    126    111
18 months   ki1101329-Keneba           4     2284   161     87     74
18 months   ki1101329-Keneba           5     2284   160     78     82
18 months   ki1101329-Keneba           6     2284   134     59     75
18 months   ki1101329-Keneba           7     2284   111     52     59
18 months   ki1101329-Keneba           8     2284   190     95     95
18 months   ki1101329-Keneba           9     2284   189     81    108
18 months   ki1101329-Keneba           10    2284   261    129    132
18 months   ki1101329-Keneba           11    2284   199    104     95
18 months   ki1101329-Keneba           12    2284   199    102     97
18 months   ki1112895-Guatemala BSC    1       49     4      0      4
18 months   ki1112895-Guatemala BSC    2       49     6      4      2
18 months   ki1112895-Guatemala BSC    3       49     3      3      0
18 months   ki1112895-Guatemala BSC    4       49     6      2      4
18 months   ki1112895-Guatemala BSC    5       49     3      2      1
18 months   ki1112895-Guatemala BSC    6       49     3      2      1
18 months   ki1112895-Guatemala BSC    7       49     4      2      2
18 months   ki1112895-Guatemala BSC    8       49     1      0      1
18 months   ki1112895-Guatemala BSC    9       49     4      1      3
18 months   ki1112895-Guatemala BSC    10      49     6      4      2
18 months   ki1112895-Guatemala BSC    11      49     3      1      2
18 months   ki1112895-Guatemala BSC    12      49     6      2      4
18 months   ki1113344-GMS-Nepal        1      574     0      0      0
18 months   ki1113344-GMS-Nepal        2      574     0      0      0
18 months   ki1113344-GMS-Nepal        3      574     0      0      0
18 months   ki1113344-GMS-Nepal        4      574     1      0      1
18 months   ki1113344-GMS-Nepal        5      574     0      0      0
18 months   ki1113344-GMS-Nepal        6      574   124     43     81
18 months   ki1113344-GMS-Nepal        7      574   223     83    140
18 months   ki1113344-GMS-Nepal        8      574   226     90    136
18 months   ki1113344-GMS-Nepal        9      574     0      0      0
18 months   ki1113344-GMS-Nepal        10     574     0      0      0
18 months   ki1113344-GMS-Nepal        11     574     0      0      0
18 months   ki1113344-GMS-Nepal        12     574     0      0      0
18 months   ki1114097-CMIN             1     2146   196    119     77
18 months   ki1114097-CMIN             2     2146   183    101     82
18 months   ki1114097-CMIN             3     2146   190    119     71
18 months   ki1114097-CMIN             4     2146   163     97     66
18 months   ki1114097-CMIN             5     2146   155     80     75
18 months   ki1114097-CMIN             6     2146   135     77     58
18 months   ki1114097-CMIN             7     2146   149     94     55
18 months   ki1114097-CMIN             8     2146   187    112     75
18 months   ki1114097-CMIN             9     2146   195    108     87
18 months   ki1114097-CMIN             10    2146   212    126     86
18 months   ki1114097-CMIN             11    2146   183    106     77
18 months   ki1114097-CMIN             12    2146   198    111     87
18 months   ki1114097-CONTENT          1      214    10     10      0
18 months   ki1114097-CONTENT          2      214    18     14      4
18 months   ki1114097-CONTENT          3      214    30     23      7
18 months   ki1114097-CONTENT          4      214    19     10      9
18 months   ki1114097-CONTENT          5      214    14     11      3
18 months   ki1114097-CONTENT          6      214    13      6      7
18 months   ki1114097-CONTENT          7      214    27     20      7
18 months   ki1114097-CONTENT          8      214    23     16      7
18 months   ki1114097-CONTENT          9      214    26     20      6
18 months   ki1114097-CONTENT          10     214    14     10      4
18 months   ki1114097-CONTENT          11     214     9      4      5
18 months   ki1114097-CONTENT          12     214    11     10      1
18 months   ki1126311-ZVITAMBO         1     1857   191    105     86
18 months   ki1126311-ZVITAMBO         2     1857   134     64     70
18 months   ki1126311-ZVITAMBO         3     1857   158     79     79
18 months   ki1126311-ZVITAMBO         4     1857   143     73     70
18 months   ki1126311-ZVITAMBO         5     1857   135     64     71
18 months   ki1126311-ZVITAMBO         6     1857   148     68     80
18 months   ki1126311-ZVITAMBO         7     1857   157     84     73
18 months   ki1126311-ZVITAMBO         8     1857   167     93     74
18 months   ki1126311-ZVITAMBO         9     1857   167     99     68
18 months   ki1126311-ZVITAMBO         10    1857   123     59     64
18 months   ki1126311-ZVITAMBO         11    1857   173     83     90
18 months   ki1126311-ZVITAMBO         12    1857   161     84     77
18 months   ki1148112-LCNI-5           1      328    25     10     15
18 months   ki1148112-LCNI-5           2      328    18     11      7
18 months   ki1148112-LCNI-5           3      328    10      2      8
18 months   ki1148112-LCNI-5           4      328    13      8      5
18 months   ki1148112-LCNI-5           5      328    19     10      9
18 months   ki1148112-LCNI-5           6      328    14      8      6
18 months   ki1148112-LCNI-5           7      328    22     14      8
18 months   ki1148112-LCNI-5           8      328    40     18     22
18 months   ki1148112-LCNI-5           9      328    37     18     19
18 months   ki1148112-LCNI-5           10     328    54     15     39
18 months   ki1148112-LCNI-5           11     328    39     15     24
18 months   ki1148112-LCNI-5           12     328    37     12     25
24 months   ki0047075b-MAL-ED          1     1540   155     62     93
24 months   ki0047075b-MAL-ED          2     1540   133     47     86
24 months   ki0047075b-MAL-ED          3     1540   118     49     69
24 months   ki0047075b-MAL-ED          4     1540   100     53     47
24 months   ki0047075b-MAL-ED          5     1540   113     45     68
24 months   ki0047075b-MAL-ED          6     1540   100     48     52
24 months   ki0047075b-MAL-ED          7     1540   132     50     82
24 months   ki0047075b-MAL-ED          8     1540   112     51     61
24 months   ki0047075b-MAL-ED          9     1540   138     65     73
24 months   ki0047075b-MAL-ED          10    1540   140     59     81
24 months   ki0047075b-MAL-ED          11    1540   150     56     94
24 months   ki0047075b-MAL-ED          12    1540   149     50     99
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
24 months   ki1000108-IRC              1      410    38     11     27
24 months   ki1000108-IRC              2      410    28      8     20
24 months   ki1000108-IRC              3      410    27      9     18
24 months   ki1000108-IRC              4      410    21      4     17
24 months   ki1000108-IRC              5      410    22      5     17
24 months   ki1000108-IRC              6      410    37     16     21
24 months   ki1000108-IRC              7      410    36     14     22
24 months   ki1000108-IRC              8      410    44     21     23
24 months   ki1000108-IRC              9      410    27      9     18
24 months   ki1000108-IRC              10     410    38     20     18
24 months   ki1000108-IRC              11     410    40     16     24
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
24 months   ki1000304b-SAS-FoodSuppl   1        9     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   2        9     2      0      2
24 months   ki1000304b-SAS-FoodSuppl   3        9     1      1      0
24 months   ki1000304b-SAS-FoodSuppl   4        9     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   5        9     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   6        9     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   7        9     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   8        9     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   9        9     2      0      2
24 months   ki1000304b-SAS-FoodSuppl   10       9     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   11       9     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   12       9     2      0      2
24 months   ki1017093-NIH-Birth        1      470    45      9     36
24 months   ki1017093-NIH-Birth        2      470    36      7     29
24 months   ki1017093-NIH-Birth        3      470    44     14     30
24 months   ki1017093-NIH-Birth        4      470    36      6     30
24 months   ki1017093-NIH-Birth        5      470    37      9     28
24 months   ki1017093-NIH-Birth        6      470    39      7     32
24 months   ki1017093-NIH-Birth        7      470    37     11     26
24 months   ki1017093-NIH-Birth        8      470    28      7     21
24 months   ki1017093-NIH-Birth        9      470    34      6     28
24 months   ki1017093-NIH-Birth        10     470    38     12     26
24 months   ki1017093-NIH-Birth        11     470    47     11     36
24 months   ki1017093-NIH-Birth        12     470    49     16     33
24 months   ki1066203-TanzaniaChild2   1      250    22     13      9
24 months   ki1066203-TanzaniaChild2   2      250    18     14      4
24 months   ki1066203-TanzaniaChild2   3      250    16      7      9
24 months   ki1066203-TanzaniaChild2   4      250    19      7     12
24 months   ki1066203-TanzaniaChild2   5      250    22     11     11
24 months   ki1066203-TanzaniaChild2   6      250    17      8      9
24 months   ki1066203-TanzaniaChild2   7      250    18     10      8
24 months   ki1066203-TanzaniaChild2   8      250    30     18     12
24 months   ki1066203-TanzaniaChild2   9      250    23     11     12
24 months   ki1066203-TanzaniaChild2   10     250    27     11     16
24 months   ki1066203-TanzaniaChild2   11     250    21     12      9
24 months   ki1066203-TanzaniaChild2   12     250    17      9      8
24 months   ki1101329-Keneba           1     2207   222    103    119
24 months   ki1101329-Keneba           2     2207   203     92    111
24 months   ki1101329-Keneba           3     2207   219     87    132
24 months   ki1101329-Keneba           4     2207   148     65     83
24 months   ki1101329-Keneba           5     2207   161     66     95
24 months   ki1101329-Keneba           6     2207   129     49     80
24 months   ki1101329-Keneba           7     2207   113     47     66
24 months   ki1101329-Keneba           8     2207   190     89    101
24 months   ki1101329-Keneba           9     2207   187     69    118
24 months   ki1101329-Keneba           10    2207   251    104    147
24 months   ki1101329-Keneba           11    2207   191     88    103
24 months   ki1101329-Keneba           12    2207   193     86    107
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
24 months   ki1113344-GMS-Nepal        6      568   124     36     88
24 months   ki1113344-GMS-Nepal        7      568   223     65    158
24 months   ki1113344-GMS-Nepal        8      568   221     75    146
24 months   ki1113344-GMS-Nepal        9      568     0      0      0
24 months   ki1113344-GMS-Nepal        10     568     0      0      0
24 months   ki1113344-GMS-Nepal        11     568     0      0      0
24 months   ki1113344-GMS-Nepal        12     568     0      0      0
24 months   ki1114097-CMIN             1     2002   166     83     83
24 months   ki1114097-CMIN             2     2002   153     71     82
24 months   ki1114097-CMIN             3     2002   182    103     79
24 months   ki1114097-CMIN             4     2002   169     77     92
24 months   ki1114097-CMIN             5     2002   152     66     86
24 months   ki1114097-CMIN             6     2002   127     64     63
24 months   ki1114097-CMIN             7     2002   146     75     71
24 months   ki1114097-CMIN             8     2002   185    103     82
24 months   ki1114097-CMIN             9     2002   197     88    109
24 months   ki1114097-CMIN             10    2002   194    100     94
24 months   ki1114097-CMIN             11    2002   170     89     81
24 months   ki1114097-CMIN             12    2002   161     76     85
24 months   ki1114097-CONTENT          1      197     9      9      0
24 months   ki1114097-CONTENT          2      197    17     13      4
24 months   ki1114097-CONTENT          3      197    28     22      6
24 months   ki1114097-CONTENT          4      197    19     10      9
24 months   ki1114097-CONTENT          5      197    14     11      3
24 months   ki1114097-CONTENT          6      197    12      6      6
24 months   ki1114097-CONTENT          7      197    24     18      6
24 months   ki1114097-CONTENT          8      197    22     14      8
24 months   ki1114097-CONTENT          9      197    23     16      7
24 months   ki1114097-CONTENT          10     197    12      9      3
24 months   ki1114097-CONTENT          11     197     7      3      4
24 months   ki1114097-CONTENT          12     197    10      9      1
24 months   ki1126311-ZVITAMBO         1      471    60      8     52
24 months   ki1126311-ZVITAMBO         2      471    49      8     41
24 months   ki1126311-ZVITAMBO         3      471    47     22     25
24 months   ki1126311-ZVITAMBO         4      471    46     12     34
24 months   ki1126311-ZVITAMBO         5      471    32     10     22
24 months   ki1126311-ZVITAMBO         6      471    35     12     23
24 months   ki1126311-ZVITAMBO         7      471    33      9     24
24 months   ki1126311-ZVITAMBO         8      471    32     13     19
24 months   ki1126311-ZVITAMBO         9      471    24      7     17
24 months   ki1126311-ZVITAMBO         10     471    27      6     21
24 months   ki1126311-ZVITAMBO         11     471    39     10     29
24 months   ki1126311-ZVITAMBO         12     471    47     15     32
24 months   ki1148112-LCNI-5           1      355    27     11     16
24 months   ki1148112-LCNI-5           2      355    19      6     13
24 months   ki1148112-LCNI-5           3      355    12      3      9
24 months   ki1148112-LCNI-5           4      355    17      8      9
24 months   ki1148112-LCNI-5           5      355    19     10      9
24 months   ki1148112-LCNI-5           6      355    17      4     13
24 months   ki1148112-LCNI-5           7      355    29     11     18
24 months   ki1148112-LCNI-5           8      355    41     15     26
24 months   ki1148112-LCNI-5           9      355    37     15     22
24 months   ki1148112-LCNI-5           10     355    55     14     41
24 months   ki1148112-LCNI-5           11     355    39     14     25
24 months   ki1148112-LCNI-5           12     355    43     11     32

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          1                    NA                0.2611111   0.1969266   0.3252956
3 months    ki0047075b-MAL-ED          2                    NA                0.2126437   0.1518299   0.2734574
3 months    ki0047075b-MAL-ED          3                    NA                0.2758621   0.2030946   0.3486295
3 months    ki0047075b-MAL-ED          4                    NA                0.1848739   0.1151084   0.2546395
3 months    ki0047075b-MAL-ED          5                    NA                0.2733813   0.1992683   0.3474943
3 months    ki0047075b-MAL-ED          6                    NA                0.2307692   0.1544052   0.3071332
3 months    ki0047075b-MAL-ED          7                    NA                0.3141026   0.2412462   0.3869589
3 months    ki0047075b-MAL-ED          8                    NA                0.2463768   0.1744647   0.3182889
3 months    ki0047075b-MAL-ED          9                    NA                0.2363636   0.1715217   0.3012056
3 months    ki0047075b-MAL-ED          10                   NA                0.2742857   0.2081662   0.3404052
3 months    ki0047075b-MAL-ED          11                   NA                0.2905028   0.2239773   0.3570283
3 months    ki0047075b-MAL-ED          12                   NA                0.2983425   0.2316703   0.3650148
3 months    ki1000108-IRC              1                    NA                0.2894737   0.1451023   0.4338451
3 months    ki1000108-IRC              2                    NA                0.4285714   0.2450478   0.6120950
3 months    ki1000108-IRC              3                    NA                0.3703704   0.1879988   0.5527420
3 months    ki1000108-IRC              4                    NA                0.3809524   0.1729989   0.5889058
3 months    ki1000108-IRC              5                    NA                0.3181818   0.1233145   0.5130491
3 months    ki1000108-IRC              6                    NA                0.2702703   0.1269995   0.4135411
3 months    ki1000108-IRC              7                    NA                0.3055556   0.1548980   0.4562131
3 months    ki1000108-IRC              8                    NA                0.1590909   0.0508854   0.2672964
3 months    ki1000108-IRC              9                    NA                0.3333333   0.1553045   0.5113621
3 months    ki1000108-IRC              10                   NA                0.2368421   0.1015030   0.3721812
3 months    ki1000108-IRC              11                   NA                0.3250000   0.1796745   0.4703255
3 months    ki1000108-IRC              12                   NA                0.4423077   0.3071514   0.5774640
3 months    ki1017093-NIH-Birth        1                    NA                0.3561644   0.2462271   0.4661016
3 months    ki1017093-NIH-Birth        2                    NA                0.2068966   0.1025637   0.3112294
3 months    ki1017093-NIH-Birth        3                    NA                0.1355932   0.0481662   0.2230202
3 months    ki1017093-NIH-Birth        4                    NA                0.2452830   0.1293569   0.3612092
3 months    ki1017093-NIH-Birth        5                    NA                0.1632653   0.0596947   0.2668359
3 months    ki1017093-NIH-Birth        6                    NA                0.2200000   0.1050875   0.3349125
3 months    ki1017093-NIH-Birth        7                    NA                0.1707317   0.0554644   0.2859991
3 months    ki1017093-NIH-Birth        8                    NA                0.1707317   0.0554644   0.2859991
3 months    ki1017093-NIH-Birth        9                    NA                0.2916667   0.1629795   0.4203538
3 months    ki1017093-NIH-Birth        10                   NA                0.2040816   0.0911458   0.3170175
3 months    ki1017093-NIH-Birth        11                   NA                0.2641509   0.1453620   0.3829399
3 months    ki1017093-NIH-Birth        12                   NA                0.1818182   0.0798051   0.2838313
3 months    ki1101329-Keneba           1                    NA                0.2425532   0.1877396   0.2973668
3 months    ki1101329-Keneba           2                    NA                0.1835749   0.1308249   0.2363249
3 months    ki1101329-Keneba           3                    NA                0.1673307   0.1211426   0.2135188
3 months    ki1101329-Keneba           4                    NA                0.2193548   0.1541954   0.2845143
3 months    ki1101329-Keneba           5                    NA                0.2138365   0.1500922   0.2775808
3 months    ki1101329-Keneba           6                    NA                0.2706767   0.1951497   0.3462037
3 months    ki1101329-Keneba           7                    NA                0.2980769   0.2101474   0.3860065
3 months    ki1101329-Keneba           8                    NA                0.2708333   0.2079614   0.3337052
3 months    ki1101329-Keneba           9                    NA                0.2718447   0.2110757   0.3326136
3 months    ki1101329-Keneba           10                   NA                0.3065134   0.2505678   0.3624590
3 months    ki1101329-Keneba           11                   NA                0.2551020   0.1940613   0.3161428
3 months    ki1101329-Keneba           12                   NA                0.2639594   0.2023951   0.3255237
3 months    ki1114097-CMIN             1                    NA                0.1756757   0.1143476   0.2370038
3 months    ki1114097-CMIN             2                    NA                0.1753247   0.1152504   0.2353989
3 months    ki1114097-CMIN             3                    NA                0.1266667   0.0734238   0.1799095
3 months    ki1114097-CMIN             4                    NA                0.1825397   0.1150694   0.2500099
3 months    ki1114097-CMIN             5                    NA                0.1803279   0.1120850   0.2485707
3 months    ki1114097-CMIN             6                    NA                0.1603774   0.0904984   0.2302563
3 months    ki1114097-CMIN             7                    NA                0.1228070   0.0625383   0.1830758
3 months    ki1114097-CMIN             8                    NA                0.1897810   0.1240980   0.2554640
3 months    ki1114097-CMIN             9                    NA                0.2170543   0.1458935   0.2882150
3 months    ki1114097-CMIN             10                   NA                0.1724138   0.1109111   0.2339165
3 months    ki1114097-CMIN             11                   NA                0.1858407   0.1140990   0.2575824
3 months    ki1114097-CMIN             12                   NA                0.2205882   0.1508789   0.2902975
3 months    ki1126311-ZVITAMBO         1                    NA                0.2601156   0.2138842   0.3063470
3 months    ki1126311-ZVITAMBO         2                    NA                0.2328244   0.1816420   0.2840069
3 months    ki1126311-ZVITAMBO         3                    NA                0.1903114   0.1450475   0.2355754
3 months    ki1126311-ZVITAMBO         4                    NA                0.2217899   0.1709900   0.2725898
3 months    ki1126311-ZVITAMBO         5                    NA                0.2256809   0.1745656   0.2767962
3 months    ki1126311-ZVITAMBO         6                    NA                0.2526316   0.2021772   0.3030860
3 months    ki1126311-ZVITAMBO         7                    NA                0.2277228   0.1804970   0.2749485
3 months    ki1126311-ZVITAMBO         8                    NA                0.2232704   0.1774935   0.2690474
3 months    ki1126311-ZVITAMBO         9                    NA                0.1521739   0.1129360   0.1914118
3 months    ki1126311-ZVITAMBO         10                   NA                0.1884615   0.1409182   0.2360048
3 months    ki1126311-ZVITAMBO         11                   NA                0.1906355   0.1461059   0.2351650
3 months    ki1126311-ZVITAMBO         12                   NA                0.1546053   0.1139595   0.1952510
6 months    ki0047075b-MAL-ED          1                    NA                0.3508772   0.2793263   0.4224281
6 months    ki0047075b-MAL-ED          2                    NA                0.3270440   0.2541033   0.3999848
6 months    ki0047075b-MAL-ED          3                    NA                0.3684211   0.2864175   0.4504246
6 months    ki0047075b-MAL-ED          4                    NA                0.2232143   0.1460751   0.3003535
6 months    ki0047075b-MAL-ED          5                    NA                0.3059701   0.2279245   0.3840158
6 months    ki0047075b-MAL-ED          6                    NA                0.2777778   0.1932801   0.3622754
6 months    ki0047075b-MAL-ED          7                    NA                0.4054054   0.3262835   0.4845273
6 months    ki0047075b-MAL-ED          8                    NA                0.3100775   0.2302389   0.3899161
6 months    ki0047075b-MAL-ED          9                    NA                0.2903226   0.2188438   0.3618014
6 months    ki0047075b-MAL-ED          10                   NA                0.3518519   0.2782935   0.4254102
6 months    ki0047075b-MAL-ED          11                   NA                0.3735632   0.3016650   0.4454615
6 months    ki0047075b-MAL-ED          12                   NA                0.3558282   0.2823092   0.4293472
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
6 months    ki1000108-IRC              1                    NA                0.4054054   0.2470126   0.5637982
6 months    ki1000108-IRC              2                    NA                0.5357143   0.3507614   0.7206672
6 months    ki1000108-IRC              3                    NA                0.4074074   0.2218443   0.5929705
6 months    ki1000108-IRC              4                    NA                0.4761905   0.2623212   0.6900597
6 months    ki1000108-IRC              5                    NA                0.4761905   0.2623212   0.6900597
6 months    ki1000108-IRC              6                    NA                0.3783784   0.2219173   0.5348395
6 months    ki1000108-IRC              7                    NA                0.4444444   0.2819262   0.6069627
6 months    ki1000108-IRC              8                    NA                0.2954545   0.1604792   0.4304299
6 months    ki1000108-IRC              9                    NA                0.4444444   0.2567845   0.6321044
6 months    ki1000108-IRC              10                   NA                0.3421053   0.1910808   0.4931297
6 months    ki1000108-IRC              11                   NA                0.3750000   0.2247873   0.5252127
6 months    ki1000108-IRC              12                   NA                0.5576923   0.4225352   0.6928494
6 months    ki1017093-NIH-Birth        1                    NA                0.5438596   0.4144407   0.6732786
6 months    ki1017093-NIH-Birth        2                    NA                0.3255814   0.1853960   0.4657668
6 months    ki1017093-NIH-Birth        3                    NA                0.2452830   0.1293438   0.3612222
6 months    ki1017093-NIH-Birth        4                    NA                0.3260870   0.1904955   0.4616784
6 months    ki1017093-NIH-Birth        5                    NA                0.2826087   0.1523717   0.4128457
6 months    ki1017093-NIH-Birth        6                    NA                0.4666667   0.3207721   0.6125612
6 months    ki1017093-NIH-Birth        7                    NA                0.4210526   0.2639301   0.5781752
6 months    ki1017093-NIH-Birth        8                    NA                0.3513514   0.1973880   0.5053147
6 months    ki1017093-NIH-Birth        9                    NA                0.4186047   0.2710183   0.5661910
6 months    ki1017093-NIH-Birth        10                   NA                0.3191489   0.1857611   0.4525368
6 months    ki1017093-NIH-Birth        11                   NA                0.4615385   0.3259190   0.5971580
6 months    ki1017093-NIH-Birth        12                   NA                0.1818182   0.0677512   0.2958851
6 months    ki1101329-Keneba           1                    NA                0.3026316   0.2429878   0.3622753
6 months    ki1101329-Keneba           2                    NA                0.2814070   0.2189147   0.3438993
6 months    ki1101329-Keneba           3                    NA                0.2789700   0.2213701   0.3365698
6 months    ki1101329-Keneba           4                    NA                0.3081761   0.2363896   0.3799626
6 months    ki1101329-Keneba           5                    NA                0.3354037   0.2624590   0.4083485
6 months    ki1101329-Keneba           6                    NA                0.3230769   0.2426697   0.4034841
6 months    ki1101329-Keneba           7                    NA                0.3900000   0.2943816   0.4856184
6 months    ki1101329-Keneba           8                    NA                0.3333333   0.2655721   0.4010946
6 months    ki1101329-Keneba           9                    NA                0.3350515   0.2686172   0.4014859
6 months    ki1101329-Keneba           10                   NA                0.3690037   0.3115407   0.4264667
6 months    ki1101329-Keneba           11                   NA                0.3264249   0.2602566   0.3925932
6 months    ki1101329-Keneba           12                   NA                0.3190476   0.2559925   0.3821028
6 months    ki1114097-CMIN             1                    NA                0.1885714   0.1306006   0.2465422
6 months    ki1114097-CMIN             2                    NA                0.2165605   0.1521127   0.2810083
6 months    ki1114097-CMIN             3                    NA                0.1710526   0.1111740   0.2309313
6 months    ki1114097-CMIN             4                    NA                0.1798561   0.1159907   0.2437215
6 months    ki1114097-CMIN             5                    NA                0.1931034   0.1288369   0.2573700
6 months    ki1114097-CMIN             6                    NA                0.1735537   0.1060548   0.2410527
6 months    ki1114097-CMIN             7                    NA                0.1764706   0.1079584   0.2449827
6 months    ki1114097-CMIN             8                    NA                0.2064516   0.1427141   0.2701892
6 months    ki1114097-CMIN             9                    NA                0.2485876   0.1848996   0.3122756
6 months    ki1114097-CMIN             10                   NA                0.2197802   0.1596030   0.2799575
6 months    ki1114097-CMIN             11                   NA                0.1772152   0.1176585   0.2367719
6 months    ki1114097-CMIN             12                   NA                0.2196532   0.1579433   0.2813631
6 months    ki1126311-ZVITAMBO         1                    NA                0.3056769   0.2459957   0.3653580
6 months    ki1126311-ZVITAMBO         2                    NA                0.3517241   0.2739849   0.4294633
6 months    ki1126311-ZVITAMBO         3                    NA                0.2604167   0.1983268   0.3225065
6 months    ki1126311-ZVITAMBO         4                    NA                0.3011364   0.2333465   0.3689262
6 months    ki1126311-ZVITAMBO         5                    NA                0.3313953   0.2610336   0.4017571
6 months    ki1126311-ZVITAMBO         6                    NA                0.4041451   0.3348977   0.4733925
6 months    ki1126311-ZVITAMBO         7                    NA                0.2929293   0.2295243   0.3563343
6 months    ki1126311-ZVITAMBO         8                    NA                0.3317308   0.2677308   0.3957308
6 months    ki1126311-ZVITAMBO         9                    NA                0.2371134   0.1772515   0.2969753
6 months    ki1126311-ZVITAMBO         10                   NA                0.3157895   0.2418775   0.3897015
6 months    ki1126311-ZVITAMBO         11                   NA                0.2679426   0.2078856   0.3279996
6 months    ki1126311-ZVITAMBO         12                   NA                0.1926606   0.1402958   0.2450253
12 months   ki0047075b-MAL-ED          1                    NA                0.4268293   0.3511070   0.5025516
12 months   ki0047075b-MAL-ED          2                    NA                0.4868421   0.4073591   0.5663251
12 months   ki0047075b-MAL-ED          3                    NA                0.4090909   0.3251913   0.4929905
12 months   ki0047075b-MAL-ED          4                    NA                0.3272727   0.2395616   0.4149839
12 months   ki0047075b-MAL-ED          5                    NA                0.4218750   0.3362946   0.5074554
12 months   ki0047075b-MAL-ED          6                    NA                0.3831776   0.2910340   0.4753211
12 months   ki0047075b-MAL-ED          7                    NA                0.4685315   0.3867195   0.5503434
12 months   ki0047075b-MAL-ED          8                    NA                0.4098361   0.3225413   0.4971308
12 months   ki0047075b-MAL-ED          9                    NA                0.3986486   0.3197436   0.4775537
12 months   ki0047075b-MAL-ED          10                   NA                0.4166667   0.3392798   0.4940535
12 months   ki0047075b-MAL-ED          11                   NA                0.4882353   0.4130727   0.5633979
12 months   ki0047075b-MAL-ED          12                   NA                0.4683544   0.3905245   0.5461843
12 months   ki1000108-IRC              1                    NA                0.5263158   0.3673671   0.6852644
12 months   ki1000108-IRC              2                    NA                0.6071429   0.4260236   0.7882622
12 months   ki1000108-IRC              3                    NA                0.4814815   0.2927819   0.6701811
12 months   ki1000108-IRC              4                    NA                0.6190476   0.4110929   0.8270023
12 months   ki1000108-IRC              5                    NA                0.6666667   0.4647998   0.8685335
12 months   ki1000108-IRC              6                    NA                0.4324324   0.2726062   0.5922586
12 months   ki1000108-IRC              7                    NA                0.4722222   0.3089439   0.6355005
12 months   ki1000108-IRC              8                    NA                0.4090909   0.2636372   0.5545446
12 months   ki1000108-IRC              9                    NA                0.5185185   0.3298189   0.7072181
12 months   ki1000108-IRC              10                   NA                0.4210526   0.2638800   0.5782253
12 months   ki1000108-IRC              11                   NA                0.4750000   0.3200550   0.6299450
12 months   ki1000108-IRC              12                   NA                0.5882353   0.4529982   0.7234724
12 months   ki1017093-NIH-Birth        1                    NA                0.6481481   0.5206599   0.7756364
12 months   ki1017093-NIH-Birth        2                    NA                0.5510204   0.4116248   0.6904160
12 months   ki1017093-NIH-Birth        3                    NA                0.4313725   0.2953206   0.5674245
12 months   ki1017093-NIH-Birth        4                    NA                0.3953488   0.2490778   0.5416199
12 months   ki1017093-NIH-Birth        5                    NA                0.4318182   0.2853249   0.5783114
12 months   ki1017093-NIH-Birth        6                    NA                0.5909091   0.4454993   0.7363189
12 months   ki1017093-NIH-Birth        7                    NA                0.5128205   0.3558042   0.6698368
12 months   ki1017093-NIH-Birth        8                    NA                0.5294118   0.3614820   0.6973415
12 months   ki1017093-NIH-Birth        9                    NA                0.5853659   0.4344259   0.7363058
12 months   ki1017093-NIH-Birth        10                   NA                0.4418605   0.2932910   0.5904299
12 months   ki1017093-NIH-Birth        11                   NA                0.5625000   0.4220313   0.7029687
12 months   ki1017093-NIH-Birth        12                   NA                0.4313725   0.2953206   0.5674245
12 months   ki1066203-TanzaniaChild2   1                    NA                0.3142857   0.1603334   0.4682380
12 months   ki1066203-TanzaniaChild2   2                    NA                0.2500000   0.1084090   0.3915910
12 months   ki1066203-TanzaniaChild2   3                    NA                0.2413793   0.0854780   0.3972806
12 months   ki1066203-TanzaniaChild2   4                    NA                0.3714286   0.2111899   0.5316672
12 months   ki1066203-TanzaniaChild2   5                    NA                0.3888889   0.2294817   0.5482961
12 months   ki1066203-TanzaniaChild2   6                    NA                0.3142857   0.1603334   0.4682380
12 months   ki1066203-TanzaniaChild2   7                    NA                0.3777778   0.2359795   0.5195761
12 months   ki1066203-TanzaniaChild2   8                    NA                0.3090909   0.1868382   0.4313436
12 months   ki1066203-TanzaniaChild2   9                    NA                0.4047619   0.2561660   0.5533578
12 months   ki1066203-TanzaniaChild2   10                   NA                0.2592593   0.1422582   0.3762603
12 months   ki1066203-TanzaniaChild2   11                   NA                0.3333333   0.1998400   0.4668266
12 months   ki1066203-TanzaniaChild2   12                   NA                0.2608696   0.1338474   0.3878918
12 months   ki1101329-Keneba           1                    NA                0.4155844   0.3520186   0.4791502
12 months   ki1101329-Keneba           2                    NA                0.3778802   0.3133559   0.4424045
12 months   ki1101329-Keneba           3                    NA                0.3755102   0.3148604   0.4361600
12 months   ki1101329-Keneba           4                    NA                0.3974359   0.3206269   0.4742449
12 months   ki1101329-Keneba           5                    NA                0.4277457   0.3540056   0.5014857
12 months   ki1101329-Keneba           6                    NA                0.4285714   0.3465801   0.5105627
12 months   ki1101329-Keneba           7                    NA                0.4285714   0.3369024   0.5202405
12 months   ki1101329-Keneba           8                    NA                0.3774510   0.3109174   0.4439846
12 months   ki1101329-Keneba           9                    NA                0.4341463   0.3662834   0.5020092
12 months   ki1101329-Keneba           10                   NA                0.4372760   0.3790573   0.4954947
12 months   ki1101329-Keneba           11                   NA                0.3827751   0.3168639   0.4486864
12 months   ki1101329-Keneba           12                   NA                0.4178404   0.3515919   0.4840888
12 months   ki1114097-CMIN             1                    NA                0.3217822   0.2573454   0.3862190
12 months   ki1114097-CMIN             2                    NA                0.3428571   0.2725156   0.4131986
12 months   ki1114097-CMIN             3                    NA                0.2791878   0.2165307   0.3418449
12 months   ki1114097-CMIN             4                    NA                0.2865497   0.2187656   0.3543338
12 months   ki1114097-CMIN             5                    NA                0.3220339   0.2531826   0.3908852
12 months   ki1114097-CMIN             6                    NA                0.2925170   0.2189608   0.3660732
12 months   ki1114097-CMIN             7                    NA                0.2710843   0.2034479   0.3387208
12 months   ki1114097-CMIN             8                    NA                0.2600000   0.1991961   0.3208039
12 months   ki1114097-CMIN             9                    NA                0.2924528   0.2312062   0.3536994
12 months   ki1114097-CMIN             10                   NA                0.3224299   0.2597927   0.3850671
12 months   ki1114097-CMIN             11                   NA                0.2645503   0.2016512   0.3274493
12 months   ki1114097-CMIN             12                   NA                0.3333333   0.2695616   0.3971051
12 months   ki1126311-ZVITAMBO         1                    NA                0.3698113   0.3116766   0.4279461
12 months   ki1126311-ZVITAMBO         2                    NA                0.4062500   0.3367666   0.4757334
12 months   ki1126311-ZVITAMBO         3                    NA                0.3864734   0.3201259   0.4528210
12 months   ki1126311-ZVITAMBO         4                    NA                0.3510638   0.2828223   0.4193053
12 months   ki1126311-ZVITAMBO         5                    NA                0.4560440   0.3836699   0.5284180
12 months   ki1126311-ZVITAMBO         6                    NA                0.4500000   0.3810386   0.5189614
12 months   ki1126311-ZVITAMBO         7                    NA                0.3679245   0.3029969   0.4328521
12 months   ki1126311-ZVITAMBO         8                    NA                0.3881279   0.3235730   0.4526827
12 months   ki1126311-ZVITAMBO         9                    NA                0.3361345   0.2761082   0.3961607
12 months   ki1126311-ZVITAMBO         10                   NA                0.4204545   0.3475121   0.4933970
12 months   ki1126311-ZVITAMBO         11                   NA                0.3362069   0.2754061   0.3970077
12 months   ki1126311-ZVITAMBO         12                   NA                0.2978723   0.2393903   0.3563544
12 months   ki1148112-LCNI-5           1                    NA                0.5000000   0.3317256   0.6682744
12 months   ki1148112-LCNI-5           2                    NA                0.3809524   0.1729945   0.5889102
12 months   ki1148112-LCNI-5           3                    NA                0.6153846   0.3505940   0.8801752
12 months   ki1148112-LCNI-5           4                    NA                0.4444444   0.2146054   0.6742835
12 months   ki1148112-LCNI-5           5                    NA                0.5000000   0.2908074   0.7091926
12 months   ki1148112-LCNI-5           6                    NA                0.4444444   0.2146054   0.6742835
12 months   ki1148112-LCNI-5           7                    NA                0.4000000   0.2244776   0.5755224
12 months   ki1148112-LCNI-5           8                    NA                0.4680851   0.3252542   0.6109160
12 months   ki1148112-LCNI-5           9                    NA                0.4883721   0.3387809   0.6379632
12 months   ki1148112-LCNI-5           10                   NA                0.5333333   0.4069428   0.6597239
12 months   ki1148112-LCNI-5           11                   NA                0.4400000   0.3022401   0.5777599
12 months   ki1148112-LCNI-5           12                   NA                0.5531915   0.4108809   0.6955020
18 months   ki0047075b-MAL-ED          1                    NA                0.5220126   0.4443463   0.5996789
18 months   ki0047075b-MAL-ED          2                    NA                0.6041667   0.5242687   0.6840647
18 months   ki0047075b-MAL-ED          3                    NA                0.5322581   0.4444092   0.6201069
18 months   ki0047075b-MAL-ED          4                    NA                0.4245283   0.3304055   0.5186511
18 months   ki0047075b-MAL-ED          5                    NA                0.5537190   0.4651180   0.6423200
18 months   ki0047075b-MAL-ED          6                    NA                0.4951456   0.3985598   0.5917315
18 months   ki0047075b-MAL-ED          7                    NA                0.5714286   0.4894291   0.6534281
18 months   ki0047075b-MAL-ED          8                    NA                0.5217391   0.4304135   0.6130648
18 months   ki0047075b-MAL-ED          9                    NA                0.5140845   0.4318534   0.5963156
18 months   ki0047075b-MAL-ED          10                   NA                0.5277778   0.4462135   0.6093421
18 months   ki0047075b-MAL-ED          11                   NA                0.5679012   0.4915962   0.6442062
18 months   ki0047075b-MAL-ED          12                   NA                0.5935484   0.5162004   0.6708964
18 months   ki1000108-IRC              1                    NA                0.5263158   0.3673676   0.6852640
18 months   ki1000108-IRC              2                    NA                0.6428571   0.4651606   0.8205536
18 months   ki1000108-IRC              3                    NA                0.5925926   0.4070300   0.7781552
18 months   ki1000108-IRC              4                    NA                0.7142857   0.5208343   0.9077372
18 months   ki1000108-IRC              5                    NA                0.7272727   0.5409434   0.9136021
18 months   ki1000108-IRC              6                    NA                0.4594595   0.2986852   0.6202337
18 months   ki1000108-IRC              7                    NA                0.5277778   0.3645000   0.6910556
18 months   ki1000108-IRC              8                    NA                0.4545455   0.3072392   0.6018517
18 months   ki1000108-IRC              9                    NA                0.6296296   0.4472575   0.8120018
18 months   ki1000108-IRC              10                   NA                0.4210526   0.2638805   0.5782248
18 months   ki1000108-IRC              11                   NA                0.5500000   0.3956391   0.7043609
18 months   ki1000108-IRC              12                   NA                0.6666667   0.5371313   0.7962020
18 months   ki1017093-NIH-Birth        1                    NA                0.7234043   0.5953925   0.8514160
18 months   ki1017093-NIH-Birth        2                    NA                0.6976744   0.5602655   0.8350834
18 months   ki1017093-NIH-Birth        3                    NA                0.5777778   0.4333236   0.7222320
18 months   ki1017093-NIH-Birth        4                    NA                0.6315789   0.4780537   0.7851042
18 months   ki1017093-NIH-Birth        5                    NA                0.5641026   0.4083180   0.7198871
18 months   ki1017093-NIH-Birth        6                    NA                0.7250000   0.5864869   0.8635131
18 months   ki1017093-NIH-Birth        7                    NA                0.6052632   0.4496954   0.7608309
18 months   ki1017093-NIH-Birth        8                    NA                0.7000000   0.5358524   0.8641476
18 months   ki1017093-NIH-Birth        9                    NA                0.6486486   0.4946701   0.8026272
18 months   ki1017093-NIH-Birth        10                   NA                0.5853659   0.4344136   0.7363182
18 months   ki1017093-NIH-Birth        11                   NA                0.7142857   0.5876695   0.8409019
18 months   ki1017093-NIH-Birth        12                   NA                0.6200000   0.4853247   0.7546753
18 months   ki1066203-TanzaniaChild2   1                    NA                0.4615385   0.2696509   0.6534260
18 months   ki1066203-TanzaniaChild2   2                    NA                0.2692308   0.0984976   0.4399639
18 months   ki1066203-TanzaniaChild2   3                    NA                0.5000000   0.2996836   0.7003164
18 months   ki1066203-TanzaniaChild2   4                    NA                0.5517241   0.3704705   0.7329778
18 months   ki1066203-TanzaniaChild2   5                    NA                0.4516129   0.2761852   0.6270406
18 months   ki1066203-TanzaniaChild2   6                    NA                0.4000000   0.2076963   0.5923037
18 months   ki1066203-TanzaniaChild2   7                    NA                0.3636364   0.1992819   0.5279908
18 months   ki1066203-TanzaniaChild2   8                    NA                0.4146341   0.2636239   0.5656444
18 months   ki1066203-TanzaniaChild2   9                    NA                0.5517241   0.3704705   0.7329778
18 months   ki1066203-TanzaniaChild2   10                   NA                0.3428571   0.1853847   0.5003296
18 months   ki1066203-TanzaniaChild2   11                   NA                0.3750000   0.2070296   0.5429704
18 months   ki1066203-TanzaniaChild2   12                   NA                0.4482759   0.2670222   0.6295295
18 months   ki1101329-Keneba           1                    NA                0.4956140   0.4307014   0.5605266
18 months   ki1101329-Keneba           2                    NA                0.4651163   0.3984303   0.5318022
18 months   ki1101329-Keneba           3                    NA                0.4683544   0.4048115   0.5318974
18 months   ki1101329-Keneba           4                    NA                0.4596273   0.3826293   0.5366254
18 months   ki1101329-Keneba           5                    NA                0.5125000   0.4350329   0.5899671
18 months   ki1101329-Keneba           6                    NA                0.5597015   0.4756312   0.6437718
18 months   ki1101329-Keneba           7                    NA                0.5315315   0.4386806   0.6243825
18 months   ki1101329-Keneba           8                    NA                0.5000000   0.4288891   0.5711109
18 months   ki1101329-Keneba           9                    NA                0.5714286   0.5008610   0.6419961
18 months   ki1101329-Keneba           10                   NA                0.5057471   0.4450785   0.5664158
18 months   ki1101329-Keneba           11                   NA                0.4773869   0.4079737   0.5468001
18 months   ki1101329-Keneba           12                   NA                0.4874372   0.4179748   0.5568995
18 months   ki1114097-CMIN             1                    NA                0.3928571   0.3244685   0.4612458
18 months   ki1114097-CMIN             2                    NA                0.4480874   0.3760198   0.5201551
18 months   ki1114097-CMIN             3                    NA                0.3736842   0.3048790   0.4424895
18 months   ki1114097-CMIN             4                    NA                0.4049080   0.3295333   0.4802827
18 months   ki1114097-CMIN             5                    NA                0.4838710   0.4051795   0.5625624
18 months   ki1114097-CMIN             6                    NA                0.4296296   0.3461063   0.5131530
18 months   ki1114097-CMIN             7                    NA                0.3691275   0.2916251   0.4466299
18 months   ki1114097-CMIN             8                    NA                0.4010695   0.3308065   0.4713325
18 months   ki1114097-CMIN             9                    NA                0.4461538   0.3763678   0.5159399
18 months   ki1114097-CMIN             10                   NA                0.4056604   0.3395484   0.4717723
18 months   ki1114097-CMIN             11                   NA                0.4207650   0.3492214   0.4923087
18 months   ki1114097-CMIN             12                   NA                0.4393939   0.3702471   0.5085408
18 months   ki1126311-ZVITAMBO         1                    NA                0.4502618   0.3796855   0.5208381
18 months   ki1126311-ZVITAMBO         2                    NA                0.5223881   0.4377926   0.6069835
18 months   ki1126311-ZVITAMBO         3                    NA                0.5000000   0.4220158   0.5779842
18 months   ki1126311-ZVITAMBO         4                    NA                0.4895105   0.4075562   0.5714647
18 months   ki1126311-ZVITAMBO         5                    NA                0.5259259   0.4416733   0.6101786
18 months   ki1126311-ZVITAMBO         6                    NA                0.5405405   0.4602301   0.6208510
18 months   ki1126311-ZVITAMBO         7                    NA                0.4649682   0.3869283   0.5430080
18 months   ki1126311-ZVITAMBO         8                    NA                0.4431138   0.3677526   0.5184750
18 months   ki1126311-ZVITAMBO         9                    NA                0.4071856   0.3326503   0.4817210
18 months   ki1126311-ZVITAMBO         10                   NA                0.5203252   0.4320125   0.6086379
18 months   ki1126311-ZVITAMBO         11                   NA                0.5202312   0.4457655   0.5946969
18 months   ki1126311-ZVITAMBO         12                   NA                0.4782609   0.4010797   0.5554420
24 months   ki0047075b-MAL-ED          1                    NA                0.6000000   0.5228512   0.6771488
24 months   ki0047075b-MAL-ED          2                    NA                0.6466165   0.5653504   0.7278827
24 months   ki0047075b-MAL-ED          3                    NA                0.5847458   0.4958075   0.6736840
24 months   ki0047075b-MAL-ED          4                    NA                0.4700000   0.3721466   0.5678534
24 months   ki0047075b-MAL-ED          5                    NA                0.6017699   0.5114815   0.6920584
24 months   ki0047075b-MAL-ED          6                    NA                0.5200000   0.4220484   0.6179516
24 months   ki0047075b-MAL-ED          7                    NA                0.6212121   0.5384331   0.7039911
24 months   ki0047075b-MAL-ED          8                    NA                0.5446429   0.4523831   0.6369026
24 months   ki0047075b-MAL-ED          9                    NA                0.5289855   0.4456771   0.6122939
24 months   ki0047075b-MAL-ED          10                   NA                0.5785714   0.4967503   0.6603926
24 months   ki0047075b-MAL-ED          11                   NA                0.6266667   0.5492365   0.7040968
24 months   ki0047075b-MAL-ED          12                   NA                0.6644295   0.5885871   0.7402720
24 months   ki1017093-NIH-Birth        1                    NA                0.8000000   0.6830058   0.9169942
24 months   ki1017093-NIH-Birth        2                    NA                0.8055556   0.6761345   0.9349766
24 months   ki1017093-NIH-Birth        3                    NA                0.6818182   0.5440477   0.8195887
24 months   ki1017093-NIH-Birth        4                    NA                0.8333333   0.7114644   0.9552023
24 months   ki1017093-NIH-Birth        5                    NA                0.7567568   0.6183656   0.8951479
24 months   ki1017093-NIH-Birth        6                    NA                0.8205128   0.6999433   0.9410824
24 months   ki1017093-NIH-Birth        7                    NA                0.7027027   0.5552709   0.8501345
24 months   ki1017093-NIH-Birth        8                    NA                0.7500000   0.5894419   0.9105581
24 months   ki1017093-NIH-Birth        9                    NA                0.8235294   0.6952530   0.9518058
24 months   ki1017093-NIH-Birth        10                   NA                0.6842105   0.5362614   0.8321597
24 months   ki1017093-NIH-Birth        11                   NA                0.7659574   0.6447829   0.8871320
24 months   ki1017093-NIH-Birth        12                   NA                0.6734694   0.5420276   0.8049112
24 months   ki1101329-Keneba           1                    NA                0.5360360   0.4704201   0.6016519
24 months   ki1101329-Keneba           2                    NA                0.5467980   0.4783032   0.6152929
24 months   ki1101329-Keneba           3                    NA                0.6027397   0.5379171   0.6675624
24 months   ki1101329-Keneba           4                    NA                0.5608108   0.4808367   0.6407850
24 months   ki1101329-Keneba           5                    NA                0.5900621   0.5140747   0.6660495
24 months   ki1101329-Keneba           6                    NA                0.6201550   0.5363819   0.7039282
24 months   ki1101329-Keneba           7                    NA                0.5840708   0.4931738   0.6749678
24 months   ki1101329-Keneba           8                    NA                0.5315789   0.4606094   0.6025485
24 months   ki1101329-Keneba           9                    NA                0.6310160   0.5618410   0.7001911
24 months   ki1101329-Keneba           10                   NA                0.5856574   0.5247021   0.6466126
24 months   ki1101329-Keneba           11                   NA                0.5392670   0.4685610   0.6099730
24 months   ki1101329-Keneba           12                   NA                0.5544041   0.4842664   0.6245419
24 months   ki1114097-CMIN             1                    NA                0.5000000   0.4239196   0.5760804
24 months   ki1114097-CMIN             2                    NA                0.5359477   0.4569061   0.6149893
24 months   ki1114097-CMIN             3                    NA                0.4340659   0.3620412   0.5060907
24 months   ki1114097-CMIN             4                    NA                0.5443787   0.4692742   0.6194832
24 months   ki1114097-CMIN             5                    NA                0.5657895   0.4869738   0.6446051
24 months   ki1114097-CMIN             6                    NA                0.4960630   0.4090846   0.5830414
24 months   ki1114097-CMIN             7                    NA                0.4863014   0.4052077   0.5673951
24 months   ki1114097-CMIN             8                    NA                0.4432432   0.3716413   0.5148451
24 months   ki1114097-CMIN             9                    NA                0.5532995   0.4838592   0.6227398
24 months   ki1114097-CMIN             10                   NA                0.4845361   0.4141936   0.5548786
24 months   ki1114097-CMIN             11                   NA                0.4764706   0.4013739   0.5515673
24 months   ki1114097-CMIN             12                   NA                0.5279503   0.4508184   0.6050822
24 months   ki1126311-ZVITAMBO         1                    NA                0.8666667   0.7805615   0.9527719
24 months   ki1126311-ZVITAMBO         2                    NA                0.8367347   0.7331364   0.9403329
24 months   ki1126311-ZVITAMBO         3                    NA                0.5319149   0.3891096   0.6747201
24 months   ki1126311-ZVITAMBO         4                    NA                0.7391304   0.6121014   0.8661595
24 months   ki1126311-ZVITAMBO         5                    NA                0.6875000   0.5267333   0.8482667
24 months   ki1126311-ZVITAMBO         6                    NA                0.6571429   0.4997221   0.8145636
24 months   ki1126311-ZVITAMBO         7                    NA                0.7272727   0.5751600   0.8793855
24 months   ki1126311-ZVITAMBO         8                    NA                0.5937500   0.4234035   0.7640965
24 months   ki1126311-ZVITAMBO         9                    NA                0.7083333   0.5262936   0.8903731
24 months   ki1126311-ZVITAMBO         10                   NA                0.7777778   0.6207960   0.9347596
24 months   ki1126311-ZVITAMBO         11                   NA                0.7435897   0.6064031   0.8807763
24 months   ki1126311-ZVITAMBO         12                   NA                0.6808511   0.5474426   0.8142595


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.2607066   0.2591270   0.2622862
3 months    ki1000108-IRC              NA                   NA                0.3170732   0.3090739   0.3250724
3 months    ki1017093-NIH-Birth        NA                   NA                0.2225755   0.2175349   0.2276162
3 months    ki1101329-Keneba           NA                   NA                0.2447735   0.2430054   0.2465417
3 months    ki1114097-CMIN             NA                   NA                0.1759494   0.1745632   0.1773355
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2098801   0.2087428   0.2110173
6 months    ki0047075b-MAL-ED          NA                   NA                0.3329519   0.3308360   0.3350679
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.5029000   0.5216231
6 months    ki1000108-IRC              NA                   NA                0.4240196   0.4162719   0.4317673
6 months    ki1017093-NIH-Birth        NA                   NA                0.3647913   0.3562120   0.3733706
6 months    ki1101329-Keneba           NA                   NA                0.3228799   0.3216473   0.3241124
6 months    ki1114097-CMIN             NA                   NA                0.1996762   0.1985914   0.2007610
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2965879   0.2943709   0.2988050
12 months   ki0047075b-MAL-ED          NA                   NA                0.4301775   0.4281028   0.4322522
12 months   ki1000108-IRC              NA                   NA                0.5073529   0.4998331   0.5148727
12 months   ki1017093-NIH-Birth        NA                   NA                0.5101664   0.5034371   0.5168957
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3185484   0.3137895   0.3233073
12 months   ki1101329-Keneba           NA                   NA                0.4072987   0.4063318   0.4082655
12 months   ki1114097-CMIN             NA                   NA                0.2995575   0.2984343   0.3006807
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3770621   0.3753134   0.3788107
12 months   ki1148112-LCNI-5           NA                   NA                0.4838710   0.4785139   0.4892281
18 months   ki0047075b-MAL-ED          NA                   NA                0.5399381   0.5377803   0.5420958
18 months   ki1000108-IRC              NA                   NA                0.5623472   0.5530849   0.5716095
18 months   ki1017093-NIH-Birth        NA                   NA                0.6498994   0.6447809   0.6550179
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4250000   0.4168583   0.4331417
18 months   ki1101329-Keneba           NA                   NA                0.4995622   0.4982093   0.5009150
18 months   ki1114097-CMIN             NA                   NA                0.4175210   0.4162069   0.4188351
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4857297   0.4839378   0.4875215
24 months   ki0047075b-MAL-ED          NA                   NA                0.5876623   0.5850222   0.5903025
24 months   ki1017093-NIH-Birth        NA                   NA                0.7553191   0.7500544   0.7605839
24 months   ki1101329-Keneba           NA                   NA                0.5718169   0.5704749   0.5731590
24 months   ki1114097-CMIN             NA                   NA                0.5029970   0.5011879   0.5048061
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7197452   0.7108997   0.7285907


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          2                    1                 0.8143800   0.5585336   1.1874216
3 months    ki0047075b-MAL-ED          3                    1                 1.0564930   0.7366760   1.5151539
3 months    ki0047075b-MAL-ED          4                    1                 0.7080279   0.4512926   1.1108169
3 months    ki0047075b-MAL-ED          5                    1                 1.0469922   0.7261297   1.5096376
3 months    ki0047075b-MAL-ED          6                    1                 0.8837971   0.5852310   1.3346819
3 months    ki0047075b-MAL-ED          7                    1                 1.2029460   0.8579592   1.6866525
3 months    ki0047075b-MAL-ED          8                    1                 0.9435708   0.6442413   1.3819758
3 months    ki0047075b-MAL-ED          9                    1                 0.9052224   0.6263007   1.3083613
3 months    ki0047075b-MAL-ED          10                   1                 1.0504559   0.7444840   1.4821778
3 months    ki0047075b-MAL-ED          11                   1                 1.1125639   0.7950997   1.5567839
3 months    ki0047075b-MAL-ED          12                   1                 1.1425885   0.8196182   1.5928250
3 months    ki1000108-IRC              2                    1                 1.4805195   0.7672366   2.8569256
3 months    ki1000108-IRC              3                    1                 1.2794613   0.6348176   2.5787270
3 months    ki1000108-IRC              4                    1                 1.3160173   0.6282630   2.7566504
3 months    ki1000108-IRC              5                    1                 1.0991736   0.4989420   2.4214891
3 months    ki1000108-IRC              6                    1                 0.9336609   0.4509137   1.9332363
3 months    ki1000108-IRC              7                    1                 1.0555556   0.5234824   2.1284336
3 months    ki1000108-IRC              8                    1                 0.5495868   0.2364546   1.2773939
3 months    ki1000108-IRC              9                    1                 1.1515152   0.5545126   2.3912662
3 months    ki1000108-IRC              10                   1                 0.8181818   0.3832229   1.7468201
3 months    ki1000108-IRC              11                   1                 1.1227273   0.5746004   2.1937271
3 months    ki1000108-IRC              12                   1                 1.5279720   0.8513239   2.7424327
3 months    ki1017093-NIH-Birth        2                    1                 0.5809019   0.3216090   1.0492460
3 months    ki1017093-NIH-Birth        3                    1                 0.3807040   0.1862653   0.7781137
3 months    ki1017093-NIH-Birth        4                    1                 0.6886792   0.3916176   1.2110772
3 months    ki1017093-NIH-Birth        5                    1                 0.4583987   0.2263900   0.9281743
3 months    ki1017093-NIH-Birth        6                    1                 0.6176923   0.3367274   1.1330940
3 months    ki1017093-NIH-Birth        7                    1                 0.4793621   0.2281729   1.0070786
3 months    ki1017093-NIH-Birth        8                    1                 0.4793621   0.2281729   1.0070786
3 months    ki1017093-NIH-Birth        9                    1                 0.8189103   0.4779509   1.4031023
3 months    ki1017093-NIH-Birth        10                   1                 0.5729984   0.3040623   1.0798024
3 months    ki1017093-NIH-Birth        11                   1                 0.7416546   0.4298518   1.2796306
3 months    ki1017093-NIH-Birth        12                   1                 0.5104895   0.2690766   0.9684957
3 months    ki1101329-Keneba           2                    1                 0.7568438   0.5251009   1.0908618
3 months    ki1101329-Keneba           3                    1                 0.6898721   0.4828804   0.9855930
3 months    ki1101329-Keneba           4                    1                 0.9043577   0.6226499   1.3135196
3 months    ki1101329-Keneba           5                    1                 0.8816065   0.6064793   1.2815443
3 months    ki1101329-Keneba           6                    1                 1.1159478   0.7792987   1.5980257
3 months    ki1101329-Keneba           7                    1                 1.2289136   0.8474936   1.7819942
3 months    ki1101329-Keneba           8                    1                 1.1165936   0.8075969   1.5438163
3 months    ki1101329-Keneba           9                    1                 1.1207631   0.8155768   1.5401491
3 months    ki1101329-Keneba           10                   1                 1.2636956   0.9451147   1.6896644
3 months    ki1101329-Keneba           11                   1                 1.0517365   0.7567788   1.4616551
3 months    ki1101329-Keneba           12                   1                 1.0882536   0.7864834   1.5058119
3 months    ki1114097-CMIN             2                    1                 0.9980020   0.6119172   1.6276841
3 months    ki1114097-CMIN             3                    1                 0.7210256   0.4174955   1.2452300
3 months    ki1114097-CMIN             4                    1                 1.0390720   0.6249463   1.7276215
3 months    ki1114097-CMIN             5                    1                 1.0264817   0.6134069   1.7177254
3 months    ki1114097-CMIN             6                    1                 0.9129173   0.5223450   1.5955316
3 months    ki1114097-CMIN             7                    1                 0.6990553   0.3827843   1.2766417
3 months    ki1114097-CMIN             8                    1                 1.0802920   0.6607684   1.7661723
3 months    ki1114097-CMIN             9                    1                 1.2355397   0.7653659   1.9945471
3 months    ki1114097-CMIN             10                   1                 0.9814324   0.5957958   1.6166771
3 months    ki1114097-CMIN             11                   1                 1.0578625   0.6286216   1.7802015
3 months    ki1114097-CMIN             12                   1                 1.2556561   0.7840913   2.0108274
3 months    ki1126311-ZVITAMBO         2                    1                 0.8950806   0.6746673   1.1875026
3 months    ki1126311-ZVITAMBO         3                    1                 0.7316417   0.5436886   0.9845701
3 months    ki1126311-ZVITAMBO         4                    1                 0.8526589   0.6380674   1.1394207
3 months    ki1126311-ZVITAMBO         5                    1                 0.8676178   0.6505689   1.1570807
3 months    ki1126311-ZVITAMBO         6                    1                 0.9712281   0.7433835   1.2689062
3 months    ki1126311-ZVITAMBO         7                    1                 0.8754675   0.6662292   1.1504201
3 months    ki1126311-ZVITAMBO         8                    1                 0.8583508   0.6543687   1.1259189
3 months    ki1126311-ZVITAMBO         9                    1                 0.5850242   0.4277261   0.8001692
3 months    ki1126311-ZVITAMBO         10                   1                 0.7245299   0.5321523   0.9864537
3 months    ki1126311-ZVITAMBO         11                   1                 0.7328874   0.5464685   0.9829001
3 months    ki1126311-ZVITAMBO         12                   1                 0.5943713   0.4327509   0.8163525
6 months    ki0047075b-MAL-ED          2                    1                 0.9320755   0.6889798   1.2609437
6 months    ki0047075b-MAL-ED          3                    1                 1.0500000   0.7764056   1.4200053
6 months    ki0047075b-MAL-ED          4                    1                 0.6361607   0.4258934   0.9502389
6 months    ki0047075b-MAL-ED          5                    1                 0.8720149   0.6290670   1.2087902
6 months    ki0047075b-MAL-ED          6                    1                 0.7916667   0.5489031   1.1417973
6 months    ki0047075b-MAL-ED          7                    1                 1.1554054   0.8712607   1.5322184
6 months    ki0047075b-MAL-ED          8                    1                 0.8837209   0.6363138   1.2273232
6 months    ki0047075b-MAL-ED          9                    1                 0.8274194   0.6010174   1.1391064
6 months    ki0047075b-MAL-ED          10                   1                 1.0027778   0.7488099   1.3428819
6 months    ki0047075b-MAL-ED          11                   1                 1.0646552   0.8043237   1.4092468
6 months    ki0047075b-MAL-ED          12                   1                 1.0141104   0.7585961   1.3556884
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
6 months    ki1000108-IRC              2                    1                 1.3214286   0.7845289   2.2257606
6 months    ki1000108-IRC              3                    1                 1.0049383   0.5514741   1.8312755
6 months    ki1000108-IRC              4                    1                 1.1746032   0.6476838   2.1301947
6 months    ki1000108-IRC              5                    1                 1.1746032   0.6476838   2.1301947
6 months    ki1000108-IRC              6                    1                 0.9333333   0.5284108   1.6485490
6 months    ki1000108-IRC              7                    1                 1.0962963   0.6419861   1.8721052
6 months    ki1000108-IRC              8                    1                 0.7287879   0.3995178   1.3294322
6 months    ki1000108-IRC              9                    1                 1.0962963   0.6167275   1.9487791
6 months    ki1000108-IRC              10                   1                 0.8438596   0.4679999   1.5215797
6 months    ki1000108-IRC              11                   1                 0.9250000   0.5286034   1.6186522
6 months    ki1000108-IRC              12                   1                 1.3756410   0.8686255   2.1786008
6 months    ki1017093-NIH-Birth        2                    1                 0.5986497   0.3660333   0.9790950
6 months    ki1017093-NIH-Birth        3                    1                 0.4510043   0.2656768   0.7656102
6 months    ki1017093-NIH-Birth        4                    1                 0.5995792   0.3713472   0.9680839
6 months    ki1017093-NIH-Birth        5                    1                 0.5196353   0.3093509   0.8728629
6 months    ki1017093-NIH-Birth        6                    1                 0.8580645   0.5792801   1.2710167
6 months    ki1017093-NIH-Birth        7                    1                 0.7741935   0.4973226   1.2052049
6 months    ki1017093-NIH-Birth        8                    1                 0.6460331   0.3923694   1.0636885
6 months    ki1017093-NIH-Birth        9                    1                 0.7696924   0.5030209   1.1777372
6 months    ki1017093-NIH-Birth        10                   1                 0.5868222   0.3627729   0.9492448
6 months    ki1017093-NIH-Birth        11                   1                 0.8486352   0.5814446   1.2386078
6 months    ki1017093-NIH-Birth        12                   1                 0.3343109   0.1709017   0.6539650
6 months    ki1101329-Keneba           2                    1                 0.9298667   0.6909919   1.2513202
6 months    ki1101329-Keneba           3                    1                 0.9218138   0.6929155   1.2263265
6 months    ki1101329-Keneba           4                    1                 1.0183210   0.7505324   1.3816562
6 months    ki1101329-Keneba           5                    1                 1.1082906   0.8263978   1.4863399
6 months    ki1101329-Keneba           6                    1                 1.0675585   0.7771756   1.4664399
6 months    ki1101329-Keneba           7                    1                 1.2886957   0.9408823   1.7650841
6 months    ki1101329-Keneba           8                    1                 1.1014493   0.8298506   1.4619384
6 months    ki1101329-Keneba           9                    1                 1.1071268   0.8371114   1.4642375
6 months    ki1101329-Keneba           10                   1                 1.2193165   0.9484834   1.5674843
6 months    ki1101329-Keneba           11                   1                 1.0786213   0.8129885   1.4310460
6 months    ki1101329-Keneba           12                   1                 1.0542443   0.7974911   1.3936596
6 months    ki1114097-CMIN             2                    1                 1.1484269   0.7486561   1.7616693
6 months    ki1114097-CMIN             3                    1                 0.9070973   0.5692752   1.4453913
6 months    ki1114097-CMIN             4                    1                 0.9537824   0.5963080   1.5255554
6 months    ki1114097-CMIN             5                    1                 1.0240334   0.6509531   1.6109370
6 months    ki1114097-CMIN             6                    1                 0.9203606   0.5606043   1.5109832
6 months    ki1114097-CMIN             7                    1                 0.9358289   0.5703334   1.5355504
6 months    ki1114097-CMIN             8                    1                 1.0948192   0.7081528   1.6926135
6 months    ki1114097-CMIN             9                    1                 1.3182674   0.8835001   1.9669823
6 months    ki1114097-CMIN             10                   1                 1.1655012   0.7721894   1.7591449
6 months    ki1114097-CMIN             11                   1                 0.9397775   0.5959613   1.4819448
6 months    ki1114097-CMIN             12                   1                 1.1648275   0.7680627   1.7665524
6 months    ki1126311-ZVITAMBO         2                    1                 1.1506404   0.8567665   1.5453140
6 months    ki1126311-ZVITAMBO         3                    1                 0.8519345   0.6259959   1.1594204
6 months    ki1126311-ZVITAMBO         4                    1                 0.9851461   0.7312854   1.3271329
6 months    ki1126311-ZVITAMBO         5                    1                 1.0841362   0.8124836   1.4466154
6 months    ki1126311-ZVITAMBO         6                    1                 1.3221318   1.0196709   1.7143104
6 months    ki1126311-ZVITAMBO         7                    1                 0.9582973   0.7159857   1.2826145
6 months    ki1126311-ZVITAMBO         8                    1                 1.0852335   0.8247396   1.4280044
6 months    ki1126311-ZVITAMBO         9                    1                 0.7756996   0.5637529   1.0673290
6 months    ki1126311-ZVITAMBO         10                   1                 1.0330827   0.7616639   1.4012216
6 months    ki1126311-ZVITAMBO         11                   1                 0.8765550   0.6511546   1.1799790
6 months    ki1126311-ZVITAMBO         12                   1                 0.6302752   0.4510154   0.8807833
12 months   ki0047075b-MAL-ED          2                    1                 1.1406015   0.8962453   1.4515800
12 months   ki0047075b-MAL-ED          3                    1                 0.9584416   0.7307978   1.2569964
12 months   ki0047075b-MAL-ED          4                    1                 0.7667532   0.5559961   1.0574005
12 months   ki0047075b-MAL-ED          5                    1                 0.9883929   0.7549047   1.2940977
12 months   ki0047075b-MAL-ED          6                    1                 0.8977303   0.6658329   1.2103933
12 months   ki0047075b-MAL-ED          7                    1                 1.0977023   0.8558121   1.4079614
12 months   ki0047075b-MAL-ED          8                    1                 0.9601874   0.7277263   1.2669045
12 months   ki0047075b-MAL-ED          9                    1                 0.9339768   0.7159792   1.2183493
12 months   ki0047075b-MAL-ED          10                   1                 0.9761905   0.7550735   1.2620597
12 months   ki0047075b-MAL-ED          11                   1                 1.1438655   0.9044070   1.4467252
12 months   ki0047075b-MAL-ED          12                   1                 1.0972875   0.8605023   1.3992291
12 months   ki1000108-IRC              2                    1                 1.1535714   0.7545504   1.7636026
12 months   ki1000108-IRC              3                    1                 0.9148148   0.5577699   1.5004148
12 months   ki1000108-IRC              4                    1                 1.1761905   0.7486822   1.8478120
12 months   ki1000108-IRC              5                    1                 1.2666667   0.8259082   1.9426427
12 months   ki1000108-IRC              6                    1                 0.8216216   0.5097841   1.3242117
12 months   ki1000108-IRC              7                    1                 0.8972222   0.5669199   1.4199672
12 months   ki1000108-IRC              8                    1                 0.7772727   0.4874997   1.2392888
12 months   ki1000108-IRC              9                    1                 0.9851852   0.6139539   1.5808840
12 months   ki1000108-IRC              10                   1                 0.8000000   0.4949509   1.2930577
12 months   ki1000108-IRC              11                   1                 0.9025000   0.5786126   1.4076884
12 months   ki1000108-IRC              12                   1                 1.1176471   0.7646570   1.6335886
12 months   ki1017093-NIH-Birth        2                    1                 0.8501458   0.6170562   1.1712837
12 months   ki1017093-NIH-Birth        3                    1                 0.6655462   0.4589339   0.9651755
12 months   ki1017093-NIH-Birth        4                    1                 0.6099668   0.4011713   0.9274328
12 months   ki1017093-NIH-Birth        5                    1                 0.6662338   0.4501113   0.9861281
12 months   ki1017093-NIH-Birth        6                    1                 0.9116883   0.6653201   1.2492867
12 months   ki1017093-NIH-Birth        7                    1                 0.7912088   0.5498489   1.1385153
12 months   ki1017093-NIH-Birth        8                    1                 0.8168067   0.5623733   1.1863530
12 months   ki1017093-NIH-Birth        9                    1                 0.9031359   0.6529888   1.2491093
12 months   ki1017093-NIH-Birth        10                   1                 0.6817276   0.4617791   1.0064390
12 months   ki1017093-NIH-Birth        11                   1                 0.8678571   0.6315283   1.1926244
12 months   ki1017093-NIH-Birth        12                   1                 0.6655462   0.4589339   0.9651755
12 months   ki1066203-TanzaniaChild2   2                    1                 0.7954545   0.3761927   1.6819781
12 months   ki1066203-TanzaniaChild2   3                    1                 0.7680251   0.3414497   1.7275240
12 months   ki1066203-TanzaniaChild2   4                    1                 1.1818182   0.6152760   2.2700288
12 months   ki1066203-TanzaniaChild2   5                    1                 1.2373737   0.6532886   2.3436714
12 months   ki1066203-TanzaniaChild2   6                    1                 1.0000000   0.5001986   1.9992060
12 months   ki1066203-TanzaniaChild2   7                    1                 1.2020202   0.6484847   2.2280443
12 months   ki1066203-TanzaniaChild2   8                    1                 0.9834711   0.5240007   1.8458285
12 months   ki1066203-TanzaniaChild2   9                    1                 1.2878788   0.6982670   2.3753547
12 months   ki1066203-TanzaniaChild2   10                   1                 0.8249158   0.4237900   1.6057154
12 months   ki1066203-TanzaniaChild2   11                   1                 1.0606061   0.5633353   1.9968305
12 months   ki1066203-TanzaniaChild2   12                   1                 0.8300395   0.4160443   1.6559909
12 months   ki1101329-Keneba           2                    1                 0.9092742   0.7229965   1.1435457
12 months   ki1101329-Keneba           3                    1                 0.9035714   0.7233622   1.1286757
12 months   ki1101329-Keneba           4                    1                 0.9563301   0.7474277   1.2236197
12 months   ki1101329-Keneba           5                    1                 1.0292630   0.8174033   1.2960338
12 months   ki1101329-Keneba           6                    1                 1.0312500   0.8072118   1.3174690
12 months   ki1101329-Keneba           7                    1                 1.0312500   0.7927995   1.3414193
12 months   ki1101329-Keneba           8                    1                 0.9082414   0.7191925   1.1469842
12 months   ki1101329-Keneba           9                    1                 1.0446646   0.8394545   1.3000397
12 months   ki1101329-Keneba           10                   1                 1.0521953   0.8590695   1.2887375
12 months   ki1101329-Keneba           11                   1                 0.9210526   0.7315755   1.1596041
12 months   ki1101329-Keneba           12                   1                 1.0054284   0.8066309   1.2532203
12 months   ki1114097-CMIN             2                    1                 1.0654945   0.7999133   1.4192521
12 months   ki1114097-CMIN             3                    1                 0.8676298   0.6422564   1.1720889
12 months   ki1114097-CMIN             4                    1                 0.8905083   0.6531857   1.2140576
12 months   ki1114097-CMIN             5                    1                 1.0007823   0.7466541   1.3414045
12 months   ki1114097-CMIN             6                    1                 0.9090529   0.6591496   1.2537019
12 months   ki1114097-CMIN             7                    1                 0.8424467   0.6117878   1.1600697
12 months   ki1114097-CMIN             8                    1                 0.8080000   0.5938819   1.0993163
12 months   ki1114097-CMIN             9                    1                 0.9088534   0.6802281   1.2143199
12 months   ki1114097-CMIN             10                   1                 1.0020129   0.7580651   1.3244639
12 months   ki1114097-CMIN             11                   1                 0.8221408   0.6024831   1.1218829
12 months   ki1114097-CMIN             12                   1                 1.0358974   0.7853057   1.3664532
12 months   ki1126311-ZVITAMBO         2                    1                 1.0985332   0.8708121   1.3858043
12 months   ki1126311-ZVITAMBO         3                    1                 1.0450557   0.8280308   1.3189623
12 months   ki1126311-ZVITAMBO         4                    1                 0.9493053   0.7393231   1.2189264
12 months   ki1126311-ZVITAMBO         5                    1                 1.2331801   0.9863126   1.5418368
12 months   ki1126311-ZVITAMBO         6                    1                 1.2168367   0.9769855   1.5155718
12 months   ki1126311-ZVITAMBO         7                    1                 0.9948980   0.7854887   1.2601352
12 months   ki1126311-ZVITAMBO         8                    1                 1.0495294   0.8348396   1.3194295
12 months   ki1126311-ZVITAMBO         9                    1                 0.9089350   0.7164877   1.1530733
12 months   ki1126311-ZVITAMBO         10                   1                 1.1369434   0.8996315   1.4368554
12 months   ki1126311-ZVITAMBO         11                   1                 0.9091309   0.7154214   1.1552898
12 months   ki1126311-ZVITAMBO         12                   1                 0.8054711   0.6263533   1.0358112
12 months   ki1148112-LCNI-5           2                    1                 0.7619048   0.4012264   1.4468114
12 months   ki1148112-LCNI-5           3                    1                 1.2307692   0.7127462   2.1252907
12 months   ki1148112-LCNI-5           4                    1                 0.8888889   0.4796065   1.6474411
12 months   ki1148112-LCNI-5           5                    1                 1.0000000   0.5845305   1.7107746
12 months   ki1148112-LCNI-5           6                    1                 0.8888889   0.4796065   1.6474411
12 months   ki1148112-LCNI-5           7                    1                 0.8000000   0.4601744   1.3907771
12 months   ki1148112-LCNI-5           8                    1                 0.9361702   0.5943762   1.4745118
12 months   ki1148112-LCNI-5           9                    1                 0.9767442   0.6196503   1.5396253
12 months   ki1148112-LCNI-5           10                   1                 1.0666667   0.7067523   1.6098679
12 months   ki1148112-LCNI-5           11                   1                 0.8800000   0.5557163   1.3935168
12 months   ki1148112-LCNI-5           12                   1                 1.1063830   0.7243266   1.6899605
18 months   ki0047075b-MAL-ED          2                    1                 1.1573795   0.9484732   1.4122986
18 months   ki0047075b-MAL-ED          3                    1                 1.0196269   0.8164630   1.2733450
18 months   ki0047075b-MAL-ED          4                    1                 0.8132530   0.6226822   1.0621478
18 months   ki0047075b-MAL-ED          5                    1                 1.0607388   0.8525457   1.3197731
18 months   ki0047075b-MAL-ED          6                    1                 0.9485320   0.7421754   1.2122646
18 months   ki0047075b-MAL-ED          7                    1                 1.0946644   0.8902435   1.3460251
18 months   ki0047075b-MAL-ED          8                    1                 0.9994762   0.7943324   1.2576001
18 months   ki0047075b-MAL-ED          9                    1                 0.9848125   0.7915531   1.2252565
18 months   ki0047075b-MAL-ED          10                   1                 1.0110442   0.8158388   1.2529562
18 months   ki0047075b-MAL-ED          11                   1                 1.0879072   0.8902813   1.3294023
18 months   ki0047075b-MAL-ED          12                   1                 1.1370385   0.9329945   1.3857064
18 months   ki1000108-IRC              2                    1                 1.2214286   0.8110851   1.8393726
18 months   ki1000108-IRC              3                    1                 1.1259259   0.7287431   1.7395831
18 months   ki1000108-IRC              4                    1                 1.3571429   0.9045913   2.0360982
18 months   ki1000108-IRC              5                    1                 1.3818182   0.9299391   2.0532759
18 months   ki1000108-IRC              6                    1                 0.8729730   0.5498704   1.3859300
18 months   ki1000108-IRC              7                    1                 1.0027778   0.6507945   1.5451318
18 months   ki1000108-IRC              8                    1                 0.8636364   0.5545598   1.3449726
18 months   ki1000108-IRC              9                    1                 1.1962963   0.7872405   1.8179004
18 months   ki1000108-IRC              10                   1                 0.8000000   0.4949516   1.2930558
18 months   ki1000108-IRC              11                   1                 1.0450000   0.6919368   1.5782150
18 months   ki1000108-IRC              12                   1                 1.2666667   0.8845119   1.8139319
18 months   ki1017093-NIH-Birth        2                    1                 0.9644323   0.7400867   1.2567847
18 months   ki1017093-NIH-Birth        3                    1                 0.7986928   0.5879677   1.0849409
18 months   ki1017093-NIH-Birth        4                    1                 0.8730650   0.6463491   1.1793046
18 months   ki1017093-NIH-Birth        5                    1                 0.7797888   0.5617343   1.0824880
18 months   ki1017093-NIH-Birth        6                    1                 1.0022059   0.7724333   1.3003280
18 months   ki1017093-NIH-Birth        7                    1                 0.8366873   0.6124085   1.1431025
18 months   ki1017093-NIH-Birth        8                    1                 0.9676471   0.7213284   1.2980785
18 months   ki1017093-NIH-Birth        9                    1                 0.8966614   0.6668704   1.2056340
18 months   ki1017093-NIH-Birth        10                   1                 0.8091822   0.5918606   1.1063007
18 months   ki1017093-NIH-Birth        11                   1                 0.9873950   0.7686214   1.2684382
18 months   ki1017093-NIH-Birth        12                   1                 0.8570588   0.6476381   1.1341979
18 months   ki1066203-TanzaniaChild2   2                    1                 0.5833333   0.2732727   1.2451951
18 months   ki1066203-TanzaniaChild2   3                    1                 1.0833333   0.6081519   1.9297993
18 months   ki1066203-TanzaniaChild2   4                    1                 1.1954023   0.7036993   2.0306780
18 months   ki1066203-TanzaniaChild2   5                    1                 0.9784946   0.5539254   1.7284851
18 months   ki1066203-TanzaniaChild2   6                    1                 0.8666667   0.4590036   1.6363949
18 months   ki1066203-TanzaniaChild2   7                    1                 0.7878788   0.4263376   1.4560128
18 months   ki1066203-TanzaniaChild2   8                    1                 0.8983740   0.5169105   1.5613454
18 months   ki1066203-TanzaniaChild2   9                    1                 1.1954023   0.7036993   2.0306780
18 months   ki1066203-TanzaniaChild2   10                   1                 0.7428571   0.3998078   1.3802551
18 months   ki1066203-TanzaniaChild2   11                   1                 0.8125000   0.4409716   1.4970494
18 months   ki1066203-TanzaniaChild2   12                   1                 0.9712644   0.5438374   1.7346260
18 months   ki1101329-Keneba           2                    1                 0.9384647   0.7728254   1.1396054
18 months   ki1101329-Keneba           3                    1                 0.9449983   0.7825877   1.1411140
18 months   ki1101329-Keneba           4                    1                 0.9273897   0.7497414   1.1471310
18 months   ki1101329-Keneba           5                    1                 1.0340708   0.8466210   1.2630238
18 months   ki1101329-Keneba           6                    1                 1.1293092   0.9252582   1.3783605
18 months   ki1101329-Keneba           7                    1                 1.0724707   0.8621138   1.3341549
18 months   ki1101329-Keneba           8                    1                 1.0088496   0.8314935   1.2240353
18 months   ki1101329-Keneba           9                    1                 1.1529709   0.9630295   1.3803751
18 months   ki1101329-Keneba           10                   1                 1.0204455   0.8543899   1.2187751
18 months   ki1101329-Keneba           11                   1                 0.9632232   0.7920237   1.1714282
18 months   ki1101329-Keneba           12                   1                 0.9835016   0.8104327   1.1935295
18 months   ki1114097-CMIN             2                    1                 1.1405862   0.8999079   1.4456333
18 months   ki1114097-CMIN             3                    1                 0.9511962   0.7382852   1.2255077
18 months   ki1114097-CMIN             4                    1                 1.0306748   0.7987939   1.3298683
18 months   ki1114097-CMIN             5                    1                 1.2316716   0.9705865   1.5629877
18 months   ki1114097-CMIN             6                    1                 1.0936027   0.8424179   1.4196836
18 months   ki1114097-CMIN             7                    1                 0.9395973   0.7153061   1.2342172
18 months   ki1114097-CMIN             8                    1                 1.0209042   0.7974923   1.3069035
18 months   ki1114097-CMIN             9                    1                 1.1356643   0.8986941   1.4351196
18 months   ki1114097-CMIN             10                   1                 1.0325901   0.8135140   1.3106624
18 months   ki1114097-CMIN             11                   1                 1.0710383   0.8396983   1.3661132
18 months   ki1114097-CMIN             12                   1                 1.1184573   0.8845138   1.4142762
18 months   ki1126311-ZVITAMBO         2                    1                 1.1601874   0.9260819   1.4534728
18 months   ki1126311-ZVITAMBO         3                    1                 1.1104651   0.8901694   1.3852788
18 months   ki1126311-ZVITAMBO         4                    1                 1.0871686   0.8643587   1.3674133
18 months   ki1126311-ZVITAMBO         5                    1                 1.1680448   0.9335179   1.4614917
18 months   ki1126311-ZVITAMBO         6                    1                 1.2005028   0.9673159   1.4899032
18 months   ki1126311-ZVITAMBO         7                    1                 1.0326618   0.8207719   1.2992530
18 months   ki1126311-ZVITAMBO         8                    1                 0.9841248   0.7809149   1.2402139
18 months   ki1126311-ZVITAMBO         9                    1                 0.9043309   0.7106677   1.1507690
18 months   ki1126311-ZVITAMBO         10                   1                 1.1556060   0.9172204   1.4559479
18 months   ki1126311-ZVITAMBO         11                   1                 1.1553972   0.9344246   1.4286255
18 months   ki1126311-ZVITAMBO         12                   1                 1.0621840   0.8481955   1.3301591
24 months   ki0047075b-MAL-ED          2                    1                 1.0776942   0.9003451   1.2899774
24 months   ki0047075b-MAL-ED          3                    1                 0.9745763   0.7985820   1.1893568
24 months   ki0047075b-MAL-ED          4                    1                 0.7833333   0.6133003   1.0005068
24 months   ki0047075b-MAL-ED          5                    1                 1.0029499   0.8231214   1.2220656
24 months   ki0047075b-MAL-ED          6                    1                 0.8666667   0.6899263   1.0886832
24 months   ki0047075b-MAL-ED          7                    1                 1.0353535   0.8603362   1.2459744
24 months   ki0047075b-MAL-ED          8                    1                 0.9077381   0.7338376   1.1228486
24 months   ki0047075b-MAL-ED          9                    1                 0.8816425   0.7194419   1.0804118
24 months   ki0047075b-MAL-ED          10                   1                 0.9642857   0.7965204   1.1673862
24 months   ki0047075b-MAL-ED          11                   1                 1.0444444   0.8738556   1.2483347
24 months   ki0047075b-MAL-ED          12                   1                 1.1073826   0.9324510   1.3151319
24 months   ki1017093-NIH-Birth        2                    1                 1.0069444   0.8103149   1.2512877
24 months   ki1017093-NIH-Birth        3                    1                 0.8522727   0.6641275   1.0937190
24 months   ki1017093-NIH-Birth        4                    1                 1.0416667   0.8470492   1.2809993
24 months   ki1017093-NIH-Birth        5                    1                 0.9459459   0.7484674   1.1955279
24 months   ki1017093-NIH-Birth        6                    1                 1.0256410   0.8336036   1.2619181
24 months   ki1017093-NIH-Birth        7                    1                 0.8783784   0.6801626   1.1343590
24 months   ki1017093-NIH-Birth        8                    1                 0.9375000   0.7233955   1.2149734
24 months   ki1017093-NIH-Birth        9                    1                 1.0294118   0.8313788   1.2746158
24 months   ki1017093-NIH-Birth        10                   1                 0.8552632   0.6587641   1.1103748
24 months   ki1017093-NIH-Birth        11                   1                 0.9574468   0.7718811   1.1876238
24 months   ki1017093-NIH-Birth        12                   1                 0.8418367   0.6596461   1.0743474
24 months   ki1101329-Keneba           2                    1                 1.0200770   0.8561873   1.2153381
24 months   ki1101329-Keneba           3                    1                 1.1244388   0.9553679   1.3234301
24 months   ki1101329-Keneba           4                    1                 1.0462185   0.8669671   1.2625314
24 months   ki1101329-Keneba           5                    1                 1.1007881   0.9215968   1.3148207
24 months   ki1101329-Keneba           6                    1                 1.1569279   0.9641312   1.3882780
24 months   ki1101329-Keneba           7                    1                 1.0896111   0.8938846   1.3281941
24 months   ki1101329-Keneba           8                    1                 0.9916851   0.8273892   1.1886054
24 months   ki1101329-Keneba           9                    1                 1.1771896   0.9988086   1.3874283
24 months   ki1101329-Keneba           10                   1                 1.0925709   0.9303984   1.2830107
24 months   ki1101329-Keneba           11                   1                 1.0060275   0.8408305   1.2036806
24 months   ki1101329-Keneba           12                   1                 1.0342666   0.8673228   1.2333440
24 months   ki1114097-CMIN             2                    1                 1.0718954   0.8672090   1.3248938
24 months   ki1114097-CMIN             3                    1                 0.8681319   0.6931238   1.0873281
24 months   ki1114097-CMIN             4                    1                 1.0887574   0.8866036   1.3370042
24 months   ki1114097-CMIN             5                    1                 1.1315789   0.9206440   1.3908426
24 months   ki1114097-CMIN             6                    1                 0.9921260   0.7865803   1.2513839
24 months   ki1114097-CMIN             7                    1                 0.9726027   0.7760613   1.2189193
24 months   ki1114097-CMIN             8                    1                 0.8864865   0.7100577   1.1067527
24 months   ki1114097-CMIN             9                    1                 1.1065990   0.9085105   1.3478781
24 months   ki1114097-CMIN             10                   1                 0.9690722   0.7852742   1.1958891
24 months   ki1114097-CMIN             11                   1                 0.9529412   0.7654609   1.1863401
24 months   ki1114097-CMIN             12                   1                 1.0559006   0.8550892   1.3038711
24 months   ki1126311-ZVITAMBO         2                    1                 0.9654631   0.8237454   1.1315620
24 months   ki1126311-ZVITAMBO         3                    1                 0.6137480   0.4609626   0.8171738
24 months   ki1126311-ZVITAMBO         4                    1                 0.8528428   0.6992872   1.0401174
24 months   ki1126311-ZVITAMBO         5                    1                 0.7932692   0.6152875   1.0227351
24 months   ki1126311-ZVITAMBO         6                    1                 0.7582418   0.5850301   0.9827367
24 months   ki1126311-ZVITAMBO         7                    1                 0.8391608   0.6657070   1.0578091
24 months   ki1126311-ZVITAMBO         8                    1                 0.6850962   0.5057003   0.9281322
24 months   ki1126311-ZVITAMBO         9                    1                 0.8173077   0.6204733   1.0765844
24 months   ki1126311-ZVITAMBO         10                   1                 0.8974359   0.7166447   1.1238362
24 months   ki1126311-ZVITAMBO         11                   1                 0.8579882   0.6957896   1.0579976
24 months   ki1126311-ZVITAMBO         12                   1                 0.7855974   0.6306506   0.9786136


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          1                    NA                -0.0004045   -0.0646084    0.0637995
3 months    ki1000108-IRC              1                    NA                 0.0275995   -0.1169934    0.1721923
3 months    ki1017093-NIH-Birth        1                    NA                -0.1335889   -0.2436416   -0.0235361
3 months    ki1101329-Keneba           1                    NA                 0.0022203   -0.0526218    0.0570624
3 months    ki1114097-CMIN             1                    NA                 0.0002737   -0.0610701    0.0616175
3 months    ki1126311-ZVITAMBO         1                    NA                -0.0502355   -0.0964809   -0.0039901
6 months    ki0047075b-MAL-ED          1                    NA                -0.0179252   -0.0895075    0.0536570
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                -0.0759737   -0.2418918    0.0899443
6 months    ki1000108-IRC              1                    NA                 0.0186142   -0.1399679    0.1771963
6 months    ki1017093-NIH-Birth        1                    NA                -0.1790684   -0.3087713   -0.0493654
6 months    ki1101329-Keneba           1                    NA                 0.0202483   -0.0394082    0.0799048
6 months    ki1114097-CMIN             1                    NA                 0.0111048   -0.0468762    0.0690857
6 months    ki1126311-ZVITAMBO         1                    NA                -0.0090889   -0.0688113    0.0506334
12 months   ki0047075b-MAL-ED          1                    NA                 0.0033482   -0.0724025    0.0790990
12 months   ki1000108-IRC              1                    NA                -0.0189628   -0.1780893    0.1401636
12 months   ki1017093-NIH-Birth        1                    NA                -0.1379818   -0.2656475   -0.0103161
12 months   ki1066203-TanzaniaChild2   1                    NA                 0.0042627   -0.1497632    0.1582885
12 months   ki1101329-Keneba           1                    NA                -0.0082858   -0.0718589    0.0552874
12 months   ki1114097-CMIN             1                    NA                -0.0222247   -0.0866713    0.0422220
12 months   ki1126311-ZVITAMBO         1                    NA                 0.0072507   -0.0509103    0.0654118
12 months   ki1148112-LCNI-5           1                    NA                -0.0161290   -0.1844887    0.1522307
18 months   ki0047075b-MAL-ED          1                    NA                 0.0179255   -0.0597708    0.0956218
18 months   ki1000108-IRC              1                    NA                 0.0360314   -0.1231864    0.1952492
18 months   ki1017093-NIH-Birth        1                    NA                -0.0735049   -0.2016189    0.0546092
18 months   ki1066203-TanzaniaChild2   1                    NA                -0.0365385   -0.2285986    0.1555217
18 months   ki1101329-Keneba           1                    NA                 0.0039481   -0.0609786    0.0688748
18 months   ki1114097-CMIN             1                    NA                 0.0246638   -0.0437374    0.0930651
18 months   ki1126311-ZVITAMBO         1                    NA                 0.0354679   -0.0351311    0.1060669
24 months   ki0047075b-MAL-ED          1                    NA                -0.0123377   -0.0895316    0.0648563
24 months   ki1017093-NIH-Birth        1                    NA                -0.0446809   -0.1617934    0.0724317
24 months   ki1101329-Keneba           1                    NA                 0.0357809   -0.0298487    0.1014105
24 months   ki1114097-CMIN             1                    NA                 0.0029970   -0.0731049    0.0790989
24 months   ki1126311-ZVITAMBO         1                    NA                -0.1469214   -0.2334798   -0.0603631


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          1                    NA                -0.0015514   -0.2807399    0.2167768
3 months    ki1000108-IRC              1                    NA                 0.0870445   -0.5042690    0.4459185
3 months    ki1017093-NIH-Birth        1                    NA                -0.6001957   -1.1806557   -0.1742460
3 months    ki1101329-Keneba           1                    NA                 0.0090709   -0.2423304    0.2095980
3 months    ki1114097-CMIN             1                    NA                 0.0015555   -0.4157092    0.2958361
3 months    ki1126311-ZVITAMBO         1                    NA                -0.2393535   -0.4805396   -0.0374577
6 months    ki0047075b-MAL-ED          1                    NA                -0.0538373   -0.2923436    0.1406518
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                -0.1483104   -0.5227156    0.1340361
6 months    ki1000108-IRC              1                    NA                 0.0438994   -0.4137377    0.3533961
6 months    ki1017093-NIH-Birth        1                    NA                -0.4908789   -0.8936175   -0.1737957
6 months    ki1101329-Keneba           1                    NA                 0.0627115   -0.1415152    0.2304003
6 months    ki1114097-CMIN             1                    NA                 0.0556139   -0.2843449    0.3055875
6 months    ki1126311-ZVITAMBO         1                    NA                -0.0306450   -0.2530375    0.1522767
12 months   ki0047075b-MAL-ED          1                    NA                 0.0077834   -0.1848998    0.1691333
12 months   ki1000108-IRC              1                    NA                -0.0373760   -0.4036281    0.2333090
12 months   ki1017093-NIH-Birth        1                    NA                -0.2704643   -0.5473137   -0.0431496
12 months   ki1066203-TanzaniaChild2   1                    NA                 0.0133816   -0.6105957    0.3956175
12 months   ki1101329-Keneba           1                    NA                -0.0203432   -0.1890001    0.1243901
12 months   ki1114097-CMIN             1                    NA                -0.0741916   -0.3123945    0.1207768
12 months   ki1126311-ZVITAMBO         1                    NA                 0.0192296   -0.1478064    0.1619574
12 months   ki1148112-LCNI-5           1                    NA                -0.0333333   -0.4470409    0.2620957
18 months   ki0047075b-MAL-ED          1                    NA                 0.0331992   -0.1219557    0.1668978
18 months   ki1000108-IRC              1                    NA                 0.0640732   -0.2664685    0.3083453
18 months   ki1017093-NIH-Birth        1                    NA                -0.1131019   -0.3288092    0.0675894
18 months   ki1066203-TanzaniaChild2   1                    NA                -0.0859729   -0.6465359    0.2837465
18 months   ki1101329-Keneba           1                    NA                 0.0079032   -0.1309608    0.1297169
18 months   ki1114097-CMIN             1                    NA                 0.0590721   -0.1198782    0.2094271
18 months   ki1126311-ZVITAMBO         1                    NA                 0.0730198   -0.0843333    0.2075386
24 months   ki0047075b-MAL-ED          1                    NA                -0.0209945   -0.1611801    0.1022670
24 months   ki1017093-NIH-Birth        1                    NA                -0.0591549   -0.2261512    0.0850972
24 months   ki1101329-Keneba           1                    NA                 0.0625741   -0.0595184    0.1705973
24 months   ki1114097-CMIN             1                    NA                 0.0059583   -0.1574590    0.1463033
24 months   ki1126311-ZVITAMBO         1                    NA                -0.2041298   -0.3309148   -0.0894225


