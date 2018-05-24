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
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1148112-LCNI-5
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
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000109-ResPak
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1000109-ResPak
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1114097-CMIN
* agecat: Birth, studyid: ki1114097-CONTENT

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/ca9efb13-acaa-48cd-a9ee-59b65ec4d4f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ca9efb13-acaa-48cd-a9ee-59b65ec4d4f5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/ca9efb13-acaa-48cd-a9ee-59b65ec4d4f5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ca9efb13-acaa-48cd-a9ee-59b65ec4d4f5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                      A      n    nA   nAY0   nAY1
----------  -------------------------  ---  -----  ----  -----  -----
12 months   ki0047075b-MAL-ED            1   1616   155    113     42
12 months   ki0047075b-MAL-ED            2   1616   144     92     52
12 months   ki0047075b-MAL-ED            3   1616   128     92     36
12 months   ki0047075b-MAL-ED            4   1616   104     80     24
12 months   ki0047075b-MAL-ED            5   1616   116     91     25
12 months   ki0047075b-MAL-ED            6   1616   104     75     29
12 months   ki0047075b-MAL-ED            7   1616   145    102     43
12 months   ki0047075b-MAL-ED            8   1616   113     85     28
12 months   ki0047075b-MAL-ED            9   1616   141    111     30
12 months   ki0047075b-MAL-ED           10   1616   146    107     39
12 months   ki0047075b-MAL-ED           11   1616   159    113     46
12 months   ki0047075b-MAL-ED           12   1616   161    119     42
12 months   ki1000108-CMC-V-BCS-2002     1    368    34     17     17
12 months   ki1000108-CMC-V-BCS-2002     2    368    16      4     12
12 months   ki1000108-CMC-V-BCS-2002     3    368    31     16     15
12 months   ki1000108-CMC-V-BCS-2002     4    368    43     22     21
12 months   ki1000108-CMC-V-BCS-2002     5    368    36     16     20
12 months   ki1000108-CMC-V-BCS-2002     6    368    37     17     20
12 months   ki1000108-CMC-V-BCS-2002     7    368    38     20     18
12 months   ki1000108-CMC-V-BCS-2002     8    368    18     12      6
12 months   ki1000108-CMC-V-BCS-2002     9    368    20     14      6
12 months   ki1000108-CMC-V-BCS-2002    10    368    29     16     13
12 months   ki1000108-CMC-V-BCS-2002    11    368    43     27     16
12 months   ki1000108-CMC-V-BCS-2002    12    368    23      4     19
12 months   ki1000108-IRC                1    406    35     20     15
12 months   ki1000108-IRC                2    406    27     14     13
12 months   ki1000108-IRC                3    406    29     21      8
12 months   ki1000108-IRC                4    406    21     10     11
12 months   ki1000108-IRC                5    406    20      9     11
12 months   ki1000108-IRC                6    406    37     32      5
12 months   ki1000108-IRC                7    406    36     30      6
12 months   ki1000108-IRC                8    406    45     37      8
12 months   ki1000108-IRC                9    406    27     18      9
12 months   ki1000108-IRC               10    406    37     32      5
12 months   ki1000108-IRC               11    406    41     30     11
12 months   ki1000108-IRC               12    406    51     34     17
12 months   ki1000109-EE                 1    357    89     19     70
12 months   ki1000109-EE                 2    357    61     15     46
12 months   ki1000109-EE                 3    357    41     12     29
12 months   ki1000109-EE                 4    357    16      3     13
12 months   ki1000109-EE                 5    357     0      0      0
12 months   ki1000109-EE                 6    357     0      0      0
12 months   ki1000109-EE                 7    357     0      0      0
12 months   ki1000109-EE                 8    357     0      0      0
12 months   ki1000109-EE                 9    357     0      0      0
12 months   ki1000109-EE                10    357     3      0      3
12 months   ki1000109-EE                11    357    65     26     39
12 months   ki1000109-EE                12    357    82     27     55
12 months   ki1000109-ResPak             1    194     6      3      3
12 months   ki1000109-ResPak             2    194     6      4      2
12 months   ki1000109-ResPak             3    194    12      9      3
12 months   ki1000109-ResPak             4    194    17     13      4
12 months   ki1000109-ResPak             5    194    31     21     10
12 months   ki1000109-ResPak             6    194    45     24     21
12 months   ki1000109-ResPak             7    194    19     16      3
12 months   ki1000109-ResPak             8    194    29     19     10
12 months   ki1000109-ResPak             9    194    20     15      5
12 months   ki1000109-ResPak            10    194     7      6      1
12 months   ki1000109-ResPak            11    194     1      0      1
12 months   ki1000109-ResPak            12    194     1      0      1
12 months   ki1000304b-SAS-FoodSuppl     1     92    13      0     13
12 months   ki1000304b-SAS-FoodSuppl     2     92     8      2      6
12 months   ki1000304b-SAS-FoodSuppl     3     92     7      2      5
12 months   ki1000304b-SAS-FoodSuppl     4     92     8      2      6
12 months   ki1000304b-SAS-FoodSuppl     5     92     8      2      6
12 months   ki1000304b-SAS-FoodSuppl     6     92     8      1      7
12 months   ki1000304b-SAS-FoodSuppl     7     92     5      1      4
12 months   ki1000304b-SAS-FoodSuppl     8     92     0      0      0
12 months   ki1000304b-SAS-FoodSuppl     9     92     4      1      3
12 months   ki1000304b-SAS-FoodSuppl    10     92     5      1      4
12 months   ki1000304b-SAS-FoodSuppl    11     92    10      2      8
12 months   ki1000304b-SAS-FoodSuppl    12     92    16      5     11
12 months   ki1017093-NIH-Birth          1    491    47     26     21
12 months   ki1017093-NIH-Birth          2    491    41     27     14
12 months   ki1017093-NIH-Birth          3    491    46     32     14
12 months   ki1017093-NIH-Birth          4    491    40     26     14
12 months   ki1017093-NIH-Birth          5    491    37     25     12
12 months   ki1017093-NIH-Birth          6    491    36     25     11
12 months   ki1017093-NIH-Birth          7    491    41     23     18
12 months   ki1017093-NIH-Birth          8    491    33     19     14
12 months   ki1017093-NIH-Birth          9    491    24     15      9
12 months   ki1017093-NIH-Birth         10    491    49     32     17
12 months   ki1017093-NIH-Birth         11    491    48     26     22
12 months   ki1017093-NIH-Birth         12    491    49     31     18
12 months   ki1066203-TanzaniaChild2     1    357    28     23      5
12 months   ki1066203-TanzaniaChild2     2    357    24     24      0
12 months   ki1066203-TanzaniaChild2     3    357    22     17      5
12 months   ki1066203-TanzaniaChild2     4    357    28     20      8
12 months   ki1066203-TanzaniaChild2     5    357    29     24      5
12 months   ki1066203-TanzaniaChild2     6    357    23     21      2
12 months   ki1066203-TanzaniaChild2     7    357    31     26      5
12 months   ki1066203-TanzaniaChild2     8    357    45     38      7
12 months   ki1066203-TanzaniaChild2     9    357    30     28      2
12 months   ki1066203-TanzaniaChild2    10    357    33     30      3
12 months   ki1066203-TanzaniaChild2    11    357    34     30      4
12 months   ki1066203-TanzaniaChild2    12    357    30     24      6
12 months   ki1112895-Guatemala BSC      1     53     4      2      2
12 months   ki1112895-Guatemala BSC      2     53     5      4      1
12 months   ki1112895-Guatemala BSC      3     53     2      1      1
12 months   ki1112895-Guatemala BSC      4     53     3      0      3
12 months   ki1112895-Guatemala BSC      5     53     7      4      3
12 months   ki1112895-Guatemala BSC      6     53     8      5      3
12 months   ki1112895-Guatemala BSC      7     53     4      2      2
12 months   ki1112895-Guatemala BSC      8     53     5      4      1
12 months   ki1112895-Guatemala BSC      9     53     4      2      2
12 months   ki1112895-Guatemala BSC     10     53     5      3      2
12 months   ki1112895-Guatemala BSC     11     53     5      3      2
12 months   ki1112895-Guatemala BSC     12     53     1      0      1
12 months   ki1113344-GMS-Nepal          1    558     0      0      0
12 months   ki1113344-GMS-Nepal          2    558     0      0      0
12 months   ki1113344-GMS-Nepal          3    558     0      0      0
12 months   ki1113344-GMS-Nepal          4    558     0      0      0
12 months   ki1113344-GMS-Nepal          5    558     0      0      0
12 months   ki1113344-GMS-Nepal          6    558   106     67     39
12 months   ki1113344-GMS-Nepal          7    558   214    137     77
12 months   ki1113344-GMS-Nepal          8    558   221    151     70
12 months   ki1113344-GMS-Nepal          9    558    15     11      4
12 months   ki1113344-GMS-Nepal         10    558     2      1      1
12 months   ki1113344-GMS-Nepal         11    558     0      0      0
12 months   ki1113344-GMS-Nepal         12    558     0      0      0
12 months   ki1114097-CMIN               1   1578   171    120     51
12 months   ki1114097-CMIN               2   1578   111     82     29
12 months   ki1114097-CMIN               3   1578   124     94     30
12 months   ki1114097-CMIN               4   1578   236    187     49
12 months   ki1114097-CMIN               5   1578   156    133     23
12 months   ki1114097-CMIN               6   1578   115     90     25
12 months   ki1114097-CMIN               7   1578   103     77     26
12 months   ki1114097-CMIN               8   1578   109     81     28
12 months   ki1114097-CMIN               9   1578   122     94     28
12 months   ki1114097-CMIN              10   1578   106     70     36
12 months   ki1114097-CMIN              11   1578   130     95     35
12 months   ki1114097-CMIN              12   1578    95     63     32
12 months   ki1114097-CONTENT            1    215     9      9      0
12 months   ki1114097-CONTENT            2    215    16     16      0
12 months   ki1114097-CONTENT            3    215    30     28      2
12 months   ki1114097-CONTENT            4    215    12      8      4
12 months   ki1114097-CONTENT            5    215    25     20      5
12 months   ki1114097-CONTENT            6    215    14      9      5
12 months   ki1114097-CONTENT            7    215    24     22      2
12 months   ki1114097-CONTENT            8    215    18     16      2
12 months   ki1114097-CONTENT            9    215    20     18      2
12 months   ki1114097-CONTENT           10    215    24     21      3
12 months   ki1114097-CONTENT           11    215    18     18      0
12 months   ki1114097-CONTENT           12    215     5      4      1
12 months   ki1126311-ZVITAMBO           1   1699   173    137     36
12 months   ki1126311-ZVITAMBO           2   1699   116     79     37
12 months   ki1126311-ZVITAMBO           3   1699   141    109     32
12 months   ki1126311-ZVITAMBO           4   1699   137    105     32
12 months   ki1126311-ZVITAMBO           5   1699   124     93     31
12 months   ki1126311-ZVITAMBO           6   1699   142    107     35
12 months   ki1126311-ZVITAMBO           7   1699   149    114     35
12 months   ki1126311-ZVITAMBO           8   1699   154    119     35
12 months   ki1126311-ZVITAMBO           9   1699   153    122     31
12 months   ki1126311-ZVITAMBO          10   1699   110     77     33
12 months   ki1126311-ZVITAMBO          11   1699   139    102     37
12 months   ki1126311-ZVITAMBO          12   1699   161    131     30
12 months   ki1148112-LCNI-5             1    310    22     15      7
12 months   ki1148112-LCNI-5             2    310    45     32     13
12 months   ki1148112-LCNI-5             3    310    34     19     15
12 months   ki1148112-LCNI-5             4    310    41     24     17
12 months   ki1148112-LCNI-5             5    310    35     22     13
12 months   ki1148112-LCNI-5             6    310    34     15     19
12 months   ki1148112-LCNI-5             7    310    32     16     16
12 months   ki1148112-LCNI-5             8    310    16     11      5
12 months   ki1148112-LCNI-5             9    310     9      3      6
12 months   ki1148112-LCNI-5            10    310     8      6      2
12 months   ki1148112-LCNI-5            11    310    21     12      9
12 months   ki1148112-LCNI-5            12    310    13      8      5
18 months   ki0047075b-MAL-ED            1   1546   151     88     63
18 months   ki0047075b-MAL-ED            2   1546   134     70     64
18 months   ki0047075b-MAL-ED            3   1546   120     74     46
18 months   ki0047075b-MAL-ED            4   1546   100     63     37
18 months   ki0047075b-MAL-ED            5   1546   108     68     40
18 months   ki0047075b-MAL-ED            6   1546   101     62     39
18 months   ki0047075b-MAL-ED            7   1546   142     81     61
18 months   ki0047075b-MAL-ED            8   1546   113     75     38
18 months   ki0047075b-MAL-ED            9   1546   137     98     39
18 months   ki0047075b-MAL-ED           10   1546   141     90     51
18 months   ki0047075b-MAL-ED           11   1546   146     84     62
18 months   ki0047075b-MAL-ED           12   1546   153     95     58
18 months   ki1000108-CMC-V-BCS-2002     1    369    34     15     19
18 months   ki1000108-CMC-V-BCS-2002     2    369    16      2     14
18 months   ki1000108-CMC-V-BCS-2002     3    369    30      7     23
18 months   ki1000108-CMC-V-BCS-2002     4    369    43     19     24
18 months   ki1000108-CMC-V-BCS-2002     5    369    35      7     28
18 months   ki1000108-CMC-V-BCS-2002     6    369    36     11     25
18 months   ki1000108-CMC-V-BCS-2002     7    369    39     12     27
18 months   ki1000108-CMC-V-BCS-2002     8    369    18      7     11
18 months   ki1000108-CMC-V-BCS-2002     9    369    21      7     14
18 months   ki1000108-CMC-V-BCS-2002    10    369    29     12     17
18 months   ki1000108-CMC-V-BCS-2002    11    369    43     15     28
18 months   ki1000108-CMC-V-BCS-2002    12    369    25      1     24
18 months   ki1000108-IRC                1    405    36     21     15
18 months   ki1000108-IRC                2    405    27     16     11
18 months   ki1000108-IRC                3    405    29     18     11
18 months   ki1000108-IRC                4    405    22     12     10
18 months   ki1000108-IRC                5    405    21      9     12
18 months   ki1000108-IRC                6    405    37     32      5
18 months   ki1000108-IRC                7    405    36     26     10
18 months   ki1000108-IRC                8    405    44     31     13
18 months   ki1000108-IRC                9    405    27     12     15
18 months   ki1000108-IRC               10    405    34     28      6
18 months   ki1000108-IRC               11    405    41     25     16
18 months   ki1000108-IRC               12    405    51     31     20
18 months   ki1000109-EE                 1    350    87     12     75
18 months   ki1000109-EE                 2    350    56     10     46
18 months   ki1000109-EE                 3    350    40      5     35
18 months   ki1000109-EE                 4    350    16      1     15
18 months   ki1000109-EE                 5    350     0      0      0
18 months   ki1000109-EE                 6    350     0      0      0
18 months   ki1000109-EE                 7    350     0      0      0
18 months   ki1000109-EE                 8    350     0      0      0
18 months   ki1000109-EE                 9    350     0      0      0
18 months   ki1000109-EE                10    350     4      1      3
18 months   ki1000109-EE                11    350    65     10     55
18 months   ki1000109-EE                12    350    82     14     68
18 months   ki1000109-ResPak             1      9     1      1      0
18 months   ki1000109-ResPak             2      9     2      1      1
18 months   ki1000109-ResPak             3      9     2      2      0
18 months   ki1000109-ResPak             4      9     2      2      0
18 months   ki1000109-ResPak             5      9     2      1      1
18 months   ki1000109-ResPak             6      9     0      0      0
18 months   ki1000109-ResPak             7      9     0      0      0
18 months   ki1000109-ResPak             8      9     0      0      0
18 months   ki1000109-ResPak             9      9     0      0      0
18 months   ki1000109-ResPak            10      9     0      0      0
18 months   ki1000109-ResPak            11      9     0      0      0
18 months   ki1000109-ResPak            12      9     0      0      0
18 months   ki1000304b-SAS-FoodSuppl     1     84    13      1     12
18 months   ki1000304b-SAS-FoodSuppl     2     84     6      0      6
18 months   ki1000304b-SAS-FoodSuppl     3     84     7      1      6
18 months   ki1000304b-SAS-FoodSuppl     4     84     7      0      7
18 months   ki1000304b-SAS-FoodSuppl     5     84     6      0      6
18 months   ki1000304b-SAS-FoodSuppl     6     84     7      1      6
18 months   ki1000304b-SAS-FoodSuppl     7     84     5      2      3
18 months   ki1000304b-SAS-FoodSuppl     8     84     0      0      0
18 months   ki1000304b-SAS-FoodSuppl     9     84     4      0      4
18 months   ki1000304b-SAS-FoodSuppl    10     84     5      1      4
18 months   ki1000304b-SAS-FoodSuppl    11     84    11      2      9
18 months   ki1000304b-SAS-FoodSuppl    12     84    13      2     11
18 months   ki1017093-NIH-Birth          1    463    45     18     27
18 months   ki1017093-NIH-Birth          2    463    35     13     22
18 months   ki1017093-NIH-Birth          3    463    44     21     23
18 months   ki1017093-NIH-Birth          4    463    38     13     25
18 months   ki1017093-NIH-Birth          5    463    35     13     22
18 months   ki1017093-NIH-Birth          6    463    35     12     23
18 months   ki1017093-NIH-Birth          7    463    41     14     27
18 months   ki1017093-NIH-Birth          8    463    31     15     16
18 months   ki1017093-NIH-Birth          9    463    25     11     14
18 months   ki1017093-NIH-Birth         10    463    45     18     27
18 months   ki1017093-NIH-Birth         11    463    44     18     26
18 months   ki1017093-NIH-Birth         12    463    45     25     20
18 months   ki1066203-TanzaniaChild2     1    258    24     18      6
18 months   ki1066203-TanzaniaChild2     2    258    19     19      0
18 months   ki1066203-TanzaniaChild2     3    258    19     10      9
18 months   ki1066203-TanzaniaChild2     4    258    20     10     10
18 months   ki1066203-TanzaniaChild2     5    258    23     17      6
18 months   ki1066203-TanzaniaChild2     6    258    18     14      4
18 months   ki1066203-TanzaniaChild2     7    258    20     16      4
18 months   ki1066203-TanzaniaChild2     8    258    29     23      6
18 months   ki1066203-TanzaniaChild2     9    258    21     16      5
18 months   ki1066203-TanzaniaChild2    10    258    27     19      8
18 months   ki1066203-TanzaniaChild2    11    258    20     15      5
18 months   ki1066203-TanzaniaChild2    12    258    18     13      5
18 months   ki1112895-Guatemala BSC      1      0     0      0      0
18 months   ki1112895-Guatemala BSC      2      0     0      0      0
18 months   ki1112895-Guatemala BSC      3      0     0      0      0
18 months   ki1112895-Guatemala BSC      4      0     0      0      0
18 months   ki1112895-Guatemala BSC      5      0     0      0      0
18 months   ki1112895-Guatemala BSC      6      0     0      0      0
18 months   ki1112895-Guatemala BSC      7      0     0      0      0
18 months   ki1112895-Guatemala BSC      8      0     0      0      0
18 months   ki1112895-Guatemala BSC      9      0     0      0      0
18 months   ki1112895-Guatemala BSC     10      0     0      0      0
18 months   ki1112895-Guatemala BSC     11      0     0      0      0
18 months   ki1112895-Guatemala BSC     12      0     0      0      0
18 months   ki1113344-GMS-Nepal          1    550     0      0      0
18 months   ki1113344-GMS-Nepal          2    550     0      0      0
18 months   ki1113344-GMS-Nepal          3    550     0      0      0
18 months   ki1113344-GMS-Nepal          4    550     0      0      0
18 months   ki1113344-GMS-Nepal          5    550     0      0      0
18 months   ki1113344-GMS-Nepal          6    550   104     52     52
18 months   ki1113344-GMS-Nepal          7    550   216     95    121
18 months   ki1113344-GMS-Nepal          8    550   213     99    114
18 months   ki1113344-GMS-Nepal          9    550    15     11      4
18 months   ki1113344-GMS-Nepal         10    550     2      1      1
18 months   ki1113344-GMS-Nepal         11    550     0      0      0
18 months   ki1113344-GMS-Nepal         12    550     0      0      0
18 months   ki1114097-CMIN               1   1595   215    126     89
18 months   ki1114097-CMIN               2   1595   114     74     40
18 months   ki1114097-CMIN               3   1595   125     90     35
18 months   ki1114097-CMIN               4   1595   239    153     86
18 months   ki1114097-CMIN               5   1595   139     99     40
18 months   ki1114097-CMIN               6   1595   108     80     28
18 months   ki1114097-CMIN               7   1595    85     56     29
18 months   ki1114097-CMIN               8   1595    94     62     32
18 months   ki1114097-CMIN               9   1595   126     80     46
18 months   ki1114097-CMIN              10   1595   102     58     44
18 months   ki1114097-CMIN              11   1595   139     87     52
18 months   ki1114097-CMIN              12   1595   109     65     44
18 months   ki1114097-CONTENT            1    200     9      9      0
18 months   ki1114097-CONTENT            2    200    15     13      2
18 months   ki1114097-CONTENT            3    200    27     24      3
18 months   ki1114097-CONTENT            4    200    12      6      6
18 months   ki1114097-CONTENT            5    200    25     20      5
18 months   ki1114097-CONTENT            6    200    13      9      4
18 months   ki1114097-CONTENT            7    200    20     19      1
18 months   ki1114097-CONTENT            8    200    18     16      2
18 months   ki1114097-CONTENT            9    200    19     16      3
18 months   ki1114097-CONTENT           10    200    21     20      1
18 months   ki1114097-CONTENT           11    200    18     18      0
18 months   ki1114097-CONTENT           12    200     3      3      0
18 months   ki1126311-ZVITAMBO           1    424    56     26     30
18 months   ki1126311-ZVITAMBO           2    424    41     20     21
18 months   ki1126311-ZVITAMBO           3    424    37     21     16
18 months   ki1126311-ZVITAMBO           4    424    47     23     24
18 months   ki1126311-ZVITAMBO           5    424    27     14     13
18 months   ki1126311-ZVITAMBO           6    424    27     20      7
18 months   ki1126311-ZVITAMBO           7    424    34     20     14
18 months   ki1126311-ZVITAMBO           8    424    29     21      8
18 months   ki1126311-ZVITAMBO           9    424    25     11     14
18 months   ki1126311-ZVITAMBO          10    424    23     10     13
18 months   ki1126311-ZVITAMBO          11    424    31     13     18
18 months   ki1126311-ZVITAMBO          12    424    47     23     24
18 months   ki1148112-LCNI-5             1    357    25     12     13
18 months   ki1148112-LCNI-5             2    357    50     31     19
18 months   ki1148112-LCNI-5             3    357    42     25     17
18 months   ki1148112-LCNI-5             4    357    48     21     27
18 months   ki1148112-LCNI-5             5    357    39     20     19
18 months   ki1148112-LCNI-5             6    357    42     16     26
18 months   ki1148112-LCNI-5             7    357    30     15     15
18 months   ki1148112-LCNI-5             8    357    20     10     10
18 months   ki1148112-LCNI-5             9    357    10      4      6
18 months   ki1148112-LCNI-5            10    357    12      8      4
18 months   ki1148112-LCNI-5            11    357    22     13      9
18 months   ki1148112-LCNI-5            12    357    17      6     11
24 months   ki0047075b-MAL-ED            1   1489   144     81     63
24 months   ki0047075b-MAL-ED            2   1489   130     74     56
24 months   ki0047075b-MAL-ED            3   1489   118     65     53
24 months   ki0047075b-MAL-ED            4   1489    95     66     29
24 months   ki0047075b-MAL-ED            5   1489   106     66     40
24 months   ki0047075b-MAL-ED            6   1489    93     61     32
24 months   ki0047075b-MAL-ED            7   1489   133     83     50
24 months   ki0047075b-MAL-ED            8   1489   111     76     35
24 months   ki0047075b-MAL-ED            9   1489   134     97     37
24 months   ki0047075b-MAL-ED           10   1489   136     91     45
24 months   ki0047075b-MAL-ED           11   1489   139     78     61
24 months   ki0047075b-MAL-ED           12   1489   150     92     58
24 months   ki1000108-CMC-V-BCS-2002     1    372    34     15     19
24 months   ki1000108-CMC-V-BCS-2002     2    372    16      4     12
24 months   ki1000108-CMC-V-BCS-2002     3    372    31      6     25
24 months   ki1000108-CMC-V-BCS-2002     4    372    44     15     29
24 months   ki1000108-CMC-V-BCS-2002     5    372    36      8     28
24 months   ki1000108-CMC-V-BCS-2002     6    372    37     10     27
24 months   ki1000108-CMC-V-BCS-2002     7    372    39     11     28
24 months   ki1000108-CMC-V-BCS-2002     8    372    17      5     12
24 months   ki1000108-CMC-V-BCS-2002     9    372    21      7     14
24 months   ki1000108-CMC-V-BCS-2002    10    372    29      9     20
24 months   ki1000108-CMC-V-BCS-2002    11    372    43     12     31
24 months   ki1000108-CMC-V-BCS-2002    12    372    25      4     21
24 months   ki1000108-IRC                1    409    36     17     19
24 months   ki1000108-IRC                2    409    27     13     14
24 months   ki1000108-IRC                3    409    29     14     15
24 months   ki1000108-IRC                4    409    22      9     13
24 months   ki1000108-IRC                5    409    21      4     17
24 months   ki1000108-IRC                6    409    37     29      8
24 months   ki1000108-IRC                7    409    36     21     15
24 months   ki1000108-IRC                8    409    45     34     11
24 months   ki1000108-IRC                9    409    27     13     14
24 months   ki1000108-IRC               10    409    36     27      9
24 months   ki1000108-IRC               11    409    41     27     14
24 months   ki1000108-IRC               12    409    52     31     21
24 months   ki1000109-EE                 1      0     0      0      0
24 months   ki1000109-EE                 2      0     0      0      0
24 months   ki1000109-EE                 3      0     0      0      0
24 months   ki1000109-EE                 4      0     0      0      0
24 months   ki1000109-EE                 5      0     0      0      0
24 months   ki1000109-EE                 6      0     0      0      0
24 months   ki1000109-EE                 7      0     0      0      0
24 months   ki1000109-EE                 8      0     0      0      0
24 months   ki1000109-EE                 9      0     0      0      0
24 months   ki1000109-EE                10      0     0      0      0
24 months   ki1000109-EE                11      0     0      0      0
24 months   ki1000109-EE                12      0     0      0      0
24 months   ki1000109-ResPak             1      0     0      0      0
24 months   ki1000109-ResPak             2      0     0      0      0
24 months   ki1000109-ResPak             3      0     0      0      0
24 months   ki1000109-ResPak             4      0     0      0      0
24 months   ki1000109-ResPak             5      0     0      0      0
24 months   ki1000109-ResPak             6      0     0      0      0
24 months   ki1000109-ResPak             7      0     0      0      0
24 months   ki1000109-ResPak             8      0     0      0      0
24 months   ki1000109-ResPak             9      0     0      0      0
24 months   ki1000109-ResPak            10      0     0      0      0
24 months   ki1000109-ResPak            11      0     0      0      0
24 months   ki1000109-ResPak            12      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl     1      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl     2      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl     3      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl     4      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl     5      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl     6      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl     7      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl     8      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl     9      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl    10      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl    11      0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl    12      0     0      0      0
24 months   ki1017093-NIH-Birth          1    429    42     15     27
24 months   ki1017093-NIH-Birth          2    429    36     13     23
24 months   ki1017093-NIH-Birth          3    429    41     23     18
24 months   ki1017093-NIH-Birth          4    429    34     12     22
24 months   ki1017093-NIH-Birth          5    429    34     13     21
24 months   ki1017093-NIH-Birth          6    429    30     13     17
24 months   ki1017093-NIH-Birth          7    429    37     17     20
24 months   ki1017093-NIH-Birth          8    429    30     14     16
24 months   ki1017093-NIH-Birth          9    429    19     11      8
24 months   ki1017093-NIH-Birth         10    429    40     19     21
24 months   ki1017093-NIH-Birth         11    429    41     20     21
24 months   ki1017093-NIH-Birth         12    429    45     21     24
24 months   ki1066203-TanzaniaChild2     1      2     0      0      0
24 months   ki1066203-TanzaniaChild2     2      2     0      0      0
24 months   ki1066203-TanzaniaChild2     3      2     0      0      0
24 months   ki1066203-TanzaniaChild2     4      2     0      0      0
24 months   ki1066203-TanzaniaChild2     5      2     1      1      0
24 months   ki1066203-TanzaniaChild2     6      2     0      0      0
24 months   ki1066203-TanzaniaChild2     7      2     1      1      0
24 months   ki1066203-TanzaniaChild2     8      2     0      0      0
24 months   ki1066203-TanzaniaChild2     9      2     0      0      0
24 months   ki1066203-TanzaniaChild2    10      2     0      0      0
24 months   ki1066203-TanzaniaChild2    11      2     0      0      0
24 months   ki1066203-TanzaniaChild2    12      2     0      0      0
24 months   ki1112895-Guatemala BSC      1      0     0      0      0
24 months   ki1112895-Guatemala BSC      2      0     0      0      0
24 months   ki1112895-Guatemala BSC      3      0     0      0      0
24 months   ki1112895-Guatemala BSC      4      0     0      0      0
24 months   ki1112895-Guatemala BSC      5      0     0      0      0
24 months   ki1112895-Guatemala BSC      6      0     0      0      0
24 months   ki1112895-Guatemala BSC      7      0     0      0      0
24 months   ki1112895-Guatemala BSC      8      0     0      0      0
24 months   ki1112895-Guatemala BSC      9      0     0      0      0
24 months   ki1112895-Guatemala BSC     10      0     0      0      0
24 months   ki1112895-Guatemala BSC     11      0     0      0      0
24 months   ki1112895-Guatemala BSC     12      0     0      0      0
24 months   ki1113344-GMS-Nepal          1    499     0      0      0
24 months   ki1113344-GMS-Nepal          2    499     0      0      0
24 months   ki1113344-GMS-Nepal          3    499     0      0      0
24 months   ki1113344-GMS-Nepal          4    499     0      0      0
24 months   ki1113344-GMS-Nepal          5    499     0      0      0
24 months   ki1113344-GMS-Nepal          6    499    79     44     35
24 months   ki1113344-GMS-Nepal          7    499   201    106     95
24 months   ki1113344-GMS-Nepal          8    499   201    115     86
24 months   ki1113344-GMS-Nepal          9    499    16      9      7
24 months   ki1113344-GMS-Nepal         10    499     2      2      0
24 months   ki1113344-GMS-Nepal         11    499     0      0      0
24 months   ki1113344-GMS-Nepal         12    499     0      0      0
24 months   ki1114097-CMIN               1   1222   241    143     98
24 months   ki1114097-CMIN               2   1222    86     56     30
24 months   ki1114097-CMIN               3   1222    90     57     33
24 months   ki1114097-CMIN               4   1222   201    115     86
24 months   ki1114097-CMIN               5   1222    90     54     36
24 months   ki1114097-CMIN               6   1222    66     43     23
24 months   ki1114097-CMIN               7   1222    59     37     22
24 months   ki1114097-CMIN               8   1222    66     38     28
24 months   ki1114097-CMIN               9   1222    88     56     32
24 months   ki1114097-CMIN              10   1222    75     40     35
24 months   ki1114097-CMIN              11   1222    94     59     35
24 months   ki1114097-CMIN              12   1222    66     35     31
24 months   ki1114097-CONTENT            1    164     8      8      0
24 months   ki1114097-CONTENT            2    164    13     12      1
24 months   ki1114097-CONTENT            3    164    20     19      1
24 months   ki1114097-CONTENT            4    164    10      6      4
24 months   ki1114097-CONTENT            5    164    22     19      3
24 months   ki1114097-CONTENT            6    164    11      8      3
24 months   ki1114097-CONTENT            7    164    19     19      0
24 months   ki1114097-CONTENT            8    164    17     15      2
24 months   ki1114097-CONTENT            9    164    12      9      3
24 months   ki1114097-CONTENT           10    164    13     10      3
24 months   ki1114097-CONTENT           11    164    16     15      1
24 months   ki1114097-CONTENT           12    164     3      3      0
24 months   ki1126311-ZVITAMBO           1    116    14      5      9
24 months   ki1126311-ZVITAMBO           2    116    17      6     11
24 months   ki1126311-ZVITAMBO           3    116    18     10      8
24 months   ki1126311-ZVITAMBO           4    116    13      6      7
24 months   ki1126311-ZVITAMBO           5    116    11      5      6
24 months   ki1126311-ZVITAMBO           6    116     8      4      4
24 months   ki1126311-ZVITAMBO           7    116     7      2      5
24 months   ki1126311-ZVITAMBO           8    116     7      3      4
24 months   ki1126311-ZVITAMBO           9    116     1      0      1
24 months   ki1126311-ZVITAMBO          10    116     3      3      0
24 months   ki1126311-ZVITAMBO          11    116     9      1      8
24 months   ki1126311-ZVITAMBO          12    116     8      3      5
24 months   ki1148112-LCNI-5             1    297    21     13      8
24 months   ki1148112-LCNI-5             2    297    45     28     17
24 months   ki1148112-LCNI-5             3    297    36     21     15
24 months   ki1148112-LCNI-5             4    297    41     21     20
24 months   ki1148112-LCNI-5             5    297    32     18     14
24 months   ki1148112-LCNI-5             6    297    34     10     24
24 months   ki1148112-LCNI-5             7    297    21     16      5
24 months   ki1148112-LCNI-5             8    297    13      9      4
24 months   ki1148112-LCNI-5             9    297     9      4      5
24 months   ki1148112-LCNI-5            10    297    11      8      3
24 months   ki1148112-LCNI-5            11    297    20     12      8
24 months   ki1148112-LCNI-5            12    297    14      6      8
3 months    ki0047075b-MAL-ED            1   1778   173    142     31
3 months    ki0047075b-MAL-ED            2   1778   161    135     26
3 months    ki0047075b-MAL-ED            3   1778   139    118     21
3 months    ki0047075b-MAL-ED            4   1778   110    102      8
3 months    ki0047075b-MAL-ED            5   1778   131    109     22
3 months    ki0047075b-MAL-ED            6   1778   111     96     15
3 months    ki0047075b-MAL-ED            7   1778   153    124     29
3 months    ki0047075b-MAL-ED            8   1778   133    114     19
3 months    ki0047075b-MAL-ED            9   1778   156    136     20
3 months    ki0047075b-MAL-ED           10   1778   168    141     27
3 months    ki0047075b-MAL-ED           11   1778   168    137     31
3 months    ki0047075b-MAL-ED           12   1778   175    148     27
3 months    ki1000108-CMC-V-BCS-2002     1    362    33     23     10
3 months    ki1000108-CMC-V-BCS-2002     2    362    15     12      3
3 months    ki1000108-CMC-V-BCS-2002     3    362    31     29      2
3 months    ki1000108-CMC-V-BCS-2002     4    362    42     35      7
3 months    ki1000108-CMC-V-BCS-2002     5    362    36     26     10
3 months    ki1000108-CMC-V-BCS-2002     6    362    36     27      9
3 months    ki1000108-CMC-V-BCS-2002     7    362    37     26     11
3 months    ki1000108-CMC-V-BCS-2002     8    362    16     12      4
3 months    ki1000108-CMC-V-BCS-2002     9    362    21     16      5
3 months    ki1000108-CMC-V-BCS-2002    10    362    29     22      7
3 months    ki1000108-CMC-V-BCS-2002    11    362    41     31     10
3 months    ki1000108-CMC-V-BCS-2002    12    362    25     13     12
3 months    ki1000108-IRC                1    407    34     25      9
3 months    ki1000108-IRC                2    407    27     17     10
3 months    ki1000108-IRC                3    407    29     20      9
3 months    ki1000108-IRC                4    407    22     17      5
3 months    ki1000108-IRC                5    407    21     14      7
3 months    ki1000108-IRC                6    407    37     32      5
3 months    ki1000108-IRC                7    407    36     32      4
3 months    ki1000108-IRC                8    407    44     42      2
3 months    ki1000108-IRC                9    407    27     20      7
3 months    ki1000108-IRC               10    407    37     31      6
3 months    ki1000108-IRC               11    407    41     32      9
3 months    ki1000108-IRC               12    407    52     34     18
3 months    ki1000109-EE                 1    376    94     31     63
3 months    ki1000109-EE                 2    376    65     33     32
3 months    ki1000109-EE                 3    376    42     24     18
3 months    ki1000109-EE                 4    376    16      5     11
3 months    ki1000109-EE                 5    376     0      0      0
3 months    ki1000109-EE                 6    376     0      0      0
3 months    ki1000109-EE                 7    376     0      0      0
3 months    ki1000109-EE                 8    376     0      0      0
3 months    ki1000109-EE                 9    376     0      0      0
3 months    ki1000109-EE                10    376     4      2      2
3 months    ki1000109-EE                11    376    70     25     45
3 months    ki1000109-EE                12    376    85     39     46
3 months    ki1000109-ResPak             1    260     9      6      3
3 months    ki1000109-ResPak             2    260    11      8      3
3 months    ki1000109-ResPak             3    260    17      7     10
3 months    ki1000109-ResPak             4    260    31     20     11
3 months    ki1000109-ResPak             5    260    35     20     15
3 months    ki1000109-ResPak             6    260    49     26     23
3 months    ki1000109-ResPak             7    260    35     23     12
3 months    ki1000109-ResPak             8    260    35     20     15
3 months    ki1000109-ResPak             9    260    24     15      9
3 months    ki1000109-ResPak            10    260     8      7      1
3 months    ki1000109-ResPak            11    260     4      1      3
3 months    ki1000109-ResPak            12    260     2      1      1
3 months    ki1000304b-SAS-FoodSuppl     1     97    14      8      6
3 months    ki1000304b-SAS-FoodSuppl     2     97     9      4      5
3 months    ki1000304b-SAS-FoodSuppl     3     97     9      3      6
3 months    ki1000304b-SAS-FoodSuppl     4     97     7      5      2
3 months    ki1000304b-SAS-FoodSuppl     5     97     8      5      3
3 months    ki1000304b-SAS-FoodSuppl     6     97     8      7      1
3 months    ki1000304b-SAS-FoodSuppl     7     97     5      4      1
3 months    ki1000304b-SAS-FoodSuppl     8     97     0      0      0
3 months    ki1000304b-SAS-FoodSuppl     9     97     3      2      1
3 months    ki1000304b-SAS-FoodSuppl    10     97     6      3      3
3 months    ki1000304b-SAS-FoodSuppl    11     97    12      8      4
3 months    ki1000304b-SAS-FoodSuppl    12     97    16     10      6
3 months    ki1017093-NIH-Birth          1    570    60     43     17
3 months    ki1017093-NIH-Birth          2    570    52     41     11
3 months    ki1017093-NIH-Birth          3    570    52     45      7
3 months    ki1017093-NIH-Birth          4    570    48     41      7
3 months    ki1017093-NIH-Birth          5    570    44     35      9
3 months    ki1017093-NIH-Birth          6    570    41     31     10
3 months    ki1017093-NIH-Birth          7    570    43     30     13
3 months    ki1017093-NIH-Birth          8    570    40     30     10
3 months    ki1017093-NIH-Birth          9    570    30     24      6
3 months    ki1017093-NIH-Birth         10    570    56     38     18
3 months    ki1017093-NIH-Birth         11    570    52     38     14
3 months    ki1017093-NIH-Birth         12    570    52     44      8
3 months    ki1066203-TanzaniaChild2     1    575    43     37      6
3 months    ki1066203-TanzaniaChild2     2    575    39     37      2
3 months    ki1066203-TanzaniaChild2     3    575    39     37      2
3 months    ki1066203-TanzaniaChild2     4    575    49     47      2
3 months    ki1066203-TanzaniaChild2     5    575    43     40      3
3 months    ki1066203-TanzaniaChild2     6    575    40     37      3
3 months    ki1066203-TanzaniaChild2     7    575    46     44      2
3 months    ki1066203-TanzaniaChild2     8    575    61     58      3
3 months    ki1066203-TanzaniaChild2     9    575    46     40      6
3 months    ki1066203-TanzaniaChild2    10    575    63     59      4
3 months    ki1066203-TanzaniaChild2    11    575    54     51      3
3 months    ki1066203-TanzaniaChild2    12    575    52     49      3
3 months    ki1112895-Guatemala BSC      1      6     0      0      0
3 months    ki1112895-Guatemala BSC      2      6     0      0      0
3 months    ki1112895-Guatemala BSC      3      6     1      0      1
3 months    ki1112895-Guatemala BSC      4      6     1      1      0
3 months    ki1112895-Guatemala BSC      5      6     1      1      0
3 months    ki1112895-Guatemala BSC      6      6     0      0      0
3 months    ki1112895-Guatemala BSC      7      6     0      0      0
3 months    ki1112895-Guatemala BSC      8      6     1      1      0
3 months    ki1112895-Guatemala BSC      9      6     0      0      0
3 months    ki1112895-Guatemala BSC     10      6     1      1      0
3 months    ki1112895-Guatemala BSC     11      6     0      0      0
3 months    ki1112895-Guatemala BSC     12      6     1      0      1
3 months    ki1113344-GMS-Nepal          1    571     0      0      0
3 months    ki1113344-GMS-Nepal          2    571     0      0      0
3 months    ki1113344-GMS-Nepal          3    571     0      0      0
3 months    ki1113344-GMS-Nepal          4    571     0      0      0
3 months    ki1113344-GMS-Nepal          5    571     0      0      0
3 months    ki1113344-GMS-Nepal          6    571   103     91     12
3 months    ki1113344-GMS-Nepal          7    571   220    181     39
3 months    ki1113344-GMS-Nepal          8    571   231    200     31
3 months    ki1113344-GMS-Nepal          9    571    15     13      2
3 months    ki1113344-GMS-Nepal         10    571     2      2      0
3 months    ki1113344-GMS-Nepal         11    571     0      0      0
3 months    ki1113344-GMS-Nepal         12    571     0      0      0
3 months    ki1114097-CMIN               1   1485   134    115     19
3 months    ki1114097-CMIN               2   1485   126    108     18
3 months    ki1114097-CMIN               3   1485   116    102     14
3 months    ki1114097-CMIN               4   1485   169    150     19
3 months    ki1114097-CMIN               5   1485   128    111     17
3 months    ki1114097-CMIN               6   1485   111    101     10
3 months    ki1114097-CMIN               7   1485    90     78     12
3 months    ki1114097-CMIN               8   1485    95     81     14
3 months    ki1114097-CMIN               9   1485   135    118     17
3 months    ki1114097-CMIN              10   1485    94     77     17
3 months    ki1114097-CMIN              11   1485   156    133     23
3 months    ki1114097-CMIN              12   1485   131    109     22
3 months    ki1114097-CONTENT            1    215     9      9      0
3 months    ki1114097-CONTENT            2    215    16     16      0
3 months    ki1114097-CONTENT            3    215    30     27      3
3 months    ki1114097-CONTENT            4    215    12     10      2
3 months    ki1114097-CONTENT            5    215    25     23      2
3 months    ki1114097-CONTENT            6    215    14     12      2
3 months    ki1114097-CONTENT            7    215    24     23      1
3 months    ki1114097-CONTENT            8    215    18     15      3
3 months    ki1114097-CONTENT            9    215    20     17      3
3 months    ki1114097-CONTENT           10    215    24     22      2
3 months    ki1114097-CONTENT           11    215    18     16      2
3 months    ki1114097-CONTENT           12    215     5      5      0
3 months    ki1126311-ZVITAMBO           1   2266   235    198     37
3 months    ki1126311-ZVITAMBO           2   2266   155    121     34
3 months    ki1126311-ZVITAMBO           3   2266   197    160     37
3 months    ki1126311-ZVITAMBO           4   2266   182    152     30
3 months    ki1126311-ZVITAMBO           5   2266   163    132     31
3 months    ki1126311-ZVITAMBO           6   2266   190    138     52
3 months    ki1126311-ZVITAMBO           7   2266   208    177     31
3 months    ki1126311-ZVITAMBO           8   2266   214    173     41
3 months    ki1126311-ZVITAMBO           9   2266   196    171     25
3 months    ki1126311-ZVITAMBO          10   2266   138    113     25
3 months    ki1126311-ZVITAMBO          11   2266   170    146     24
3 months    ki1126311-ZVITAMBO          12   2266   218    194     24
3 months    ki1148112-LCNI-5             1      0     0      0      0
3 months    ki1148112-LCNI-5             2      0     0      0      0
3 months    ki1148112-LCNI-5             3      0     0      0      0
3 months    ki1148112-LCNI-5             4      0     0      0      0
3 months    ki1148112-LCNI-5             5      0     0      0      0
3 months    ki1148112-LCNI-5             6      0     0      0      0
3 months    ki1148112-LCNI-5             7      0     0      0      0
3 months    ki1148112-LCNI-5             8      0     0      0      0
3 months    ki1148112-LCNI-5             9      0     0      0      0
3 months    ki1148112-LCNI-5            10      0     0      0      0
3 months    ki1148112-LCNI-5            11      0     0      0      0
3 months    ki1148112-LCNI-5            12      0     0      0      0
6 months    ki0047075b-MAL-ED            1   1696   164    133     31
6 months    ki0047075b-MAL-ED            2   1696   153    128     25
6 months    ki0047075b-MAL-ED            3   1696   136    110     26
6 months    ki0047075b-MAL-ED            4   1696   110     94     16
6 months    ki0047075b-MAL-ED            5   1696   121    105     16
6 months    ki0047075b-MAL-ED            6   1696   109    102      7
6 months    ki0047075b-MAL-ED            7   1696   147    117     30
6 months    ki0047075b-MAL-ED            8   1696   121    105     16
6 months    ki0047075b-MAL-ED            9   1696   149    130     19
6 months    ki0047075b-MAL-ED           10   1696   157    131     26
6 months    ki0047075b-MAL-ED           11   1696   165    130     35
6 months    ki0047075b-MAL-ED           12   1696   164    134     30
6 months    ki1000108-CMC-V-BCS-2002     1    369    34     24     10
6 months    ki1000108-CMC-V-BCS-2002     2    369    16     11      5
6 months    ki1000108-CMC-V-BCS-2002     3    369    31     25      6
6 months    ki1000108-CMC-V-BCS-2002     4    369    44     36      8
6 months    ki1000108-CMC-V-BCS-2002     5    369    35     23     12
6 months    ki1000108-CMC-V-BCS-2002     6    369    37     21     16
6 months    ki1000108-CMC-V-BCS-2002     7    369    39     19     20
6 months    ki1000108-CMC-V-BCS-2002     8    369    17     11      6
6 months    ki1000108-CMC-V-BCS-2002     9    369    20     14      6
6 months    ki1000108-CMC-V-BCS-2002    10    369    29     21      8
6 months    ki1000108-CMC-V-BCS-2002    11    369    42     35      7
6 months    ki1000108-CMC-V-BCS-2002    12    369    25     18      7
6 months    ki1000108-IRC                1    407    36     25     11
6 months    ki1000108-IRC                2    407    27     16     11
6 months    ki1000108-IRC                3    407    29     19     10
6 months    ki1000108-IRC                4    407    22     16      6
6 months    ki1000108-IRC                5    407    20     13      7
6 months    ki1000108-IRC                6    407    37     32      5
6 months    ki1000108-IRC                7    407    36     25     11
6 months    ki1000108-IRC                8    407    45     39      6
6 months    ki1000108-IRC                9    407    27     20      7
6 months    ki1000108-IRC               10    407    36     31      5
6 months    ki1000108-IRC               11    407    41     34      7
6 months    ki1000108-IRC               12    407    51     37     14
6 months    ki1000109-EE                 1    372    90     39     51
6 months    ki1000109-EE                 2    372    66     36     30
6 months    ki1000109-EE                 3    372    43     24     19
6 months    ki1000109-EE                 4    372    16      5     11
6 months    ki1000109-EE                 5    372     0      0      0
6 months    ki1000109-EE                 6    372     0      0      0
6 months    ki1000109-EE                 7    372     0      0      0
6 months    ki1000109-EE                 8    372     0      0      0
6 months    ki1000109-EE                 9    372     0      0      0
6 months    ki1000109-EE                10    372     4      3      1
6 months    ki1000109-EE                11    372    70     28     42
6 months    ki1000109-EE                12    372    83     44     39
6 months    ki1000109-ResPak             1    235     8      4      4
6 months    ki1000109-ResPak             2    235    12      8      4
6 months    ki1000109-ResPak             3    235    16      6     10
6 months    ki1000109-ResPak             4    235    26     16     10
6 months    ki1000109-ResPak             5    235    32     20     12
6 months    ki1000109-ResPak             6    235    48     30     18
6 months    ki1000109-ResPak             7    235    28     22      6
6 months    ki1000109-ResPak             8    235    33     21     12
6 months    ki1000109-ResPak             9    235    22     16      6
6 months    ki1000109-ResPak            10    235     7      7      0
6 months    ki1000109-ResPak            11    235     1      1      0
6 months    ki1000109-ResPak            12    235     2      1      1
6 months    ki1000304b-SAS-FoodSuppl     1     96    15      8      7
6 months    ki1000304b-SAS-FoodSuppl     2     96     9      5      4
6 months    ki1000304b-SAS-FoodSuppl     3     96     9      4      5
6 months    ki1000304b-SAS-FoodSuppl     4     96     7      3      4
6 months    ki1000304b-SAS-FoodSuppl     5     96     7      2      5
6 months    ki1000304b-SAS-FoodSuppl     6     96     9      3      6
6 months    ki1000304b-SAS-FoodSuppl     7     96     5      2      3
6 months    ki1000304b-SAS-FoodSuppl     8     96     0      0      0
6 months    ki1000304b-SAS-FoodSuppl     9     96     4      2      2
6 months    ki1000304b-SAS-FoodSuppl    10     96     6      2      4
6 months    ki1000304b-SAS-FoodSuppl    11     96    10      7      3
6 months    ki1000304b-SAS-FoodSuppl    12     96    15     10      5
6 months    ki1017093-NIH-Birth          1    537    50     35     15
6 months    ki1017093-NIH-Birth          2    537    50     36     14
6 months    ki1017093-NIH-Birth          3    537    50     36     14
6 months    ki1017093-NIH-Birth          4    537    44     34     10
6 months    ki1017093-NIH-Birth          5    537    40     32      8
6 months    ki1017093-NIH-Birth          6    537    39     28     11
6 months    ki1017093-NIH-Birth          7    537    45     27     18
6 months    ki1017093-NIH-Birth          8    537    38     31      7
6 months    ki1017093-NIH-Birth          9    537    30     23      7
6 months    ki1017093-NIH-Birth         10    537    52     37     15
6 months    ki1017093-NIH-Birth         11    537    49     31     18
6 months    ki1017093-NIH-Birth         12    537    50     43      7
6 months    ki1066203-TanzaniaChild2     1    504    36     29      7
6 months    ki1066203-TanzaniaChild2     2    504    31     31      0
6 months    ki1066203-TanzaniaChild2     3    504    32     31      1
6 months    ki1066203-TanzaniaChild2     4    504    40     34      6
6 months    ki1066203-TanzaniaChild2     5    504    38     35      3
6 months    ki1066203-TanzaniaChild2     6    504    36     30      6
6 months    ki1066203-TanzaniaChild2     7    504    43     37      6
6 months    ki1066203-TanzaniaChild2     8    504    57     54      3
6 months    ki1066203-TanzaniaChild2     9    504    40     38      2
6 months    ki1066203-TanzaniaChild2    10    504    55     47      8
6 months    ki1066203-TanzaniaChild2    11    504    49     47      2
6 months    ki1066203-TanzaniaChild2    12    504    47     46      1
6 months    ki1112895-Guatemala BSC      1    106     9      8      1
6 months    ki1112895-Guatemala BSC      2    106     7      6      1
6 months    ki1112895-Guatemala BSC      3    106     5      3      2
6 months    ki1112895-Guatemala BSC      4    106    11      8      3
6 months    ki1112895-Guatemala BSC      5    106    12     11      1
6 months    ki1112895-Guatemala BSC      6    106    12      7      5
6 months    ki1112895-Guatemala BSC      7    106     7      4      3
6 months    ki1112895-Guatemala BSC      8    106     6      5      1
6 months    ki1112895-Guatemala BSC      9    106    11      9      2
6 months    ki1112895-Guatemala BSC     10    106    11      5      6
6 months    ki1112895-Guatemala BSC     11    106    13      9      4
6 months    ki1112895-Guatemala BSC     12    106     2      1      1
6 months    ki1113344-GMS-Nepal          1    563     0      0      0
6 months    ki1113344-GMS-Nepal          2    563     0      0      0
6 months    ki1113344-GMS-Nepal          3    563     0      0      0
6 months    ki1113344-GMS-Nepal          4    563     0      0      0
6 months    ki1113344-GMS-Nepal          5    563     0      0      0
6 months    ki1113344-GMS-Nepal          6    563   104     83     21
6 months    ki1113344-GMS-Nepal          7    563   216    166     50
6 months    ki1113344-GMS-Nepal          8    563   226    181     45
6 months    ki1113344-GMS-Nepal          9    563    15     13      2
6 months    ki1113344-GMS-Nepal         10    563     2      1      1
6 months    ki1113344-GMS-Nepal         11    563     0      0      0
6 months    ki1113344-GMS-Nepal         12    563     0      0      0
6 months    ki1114097-CMIN               1   1836   158    132     26
6 months    ki1114097-CMIN               2   1836   142    123     19
6 months    ki1114097-CMIN               3   1836   155    135     20
6 months    ki1114097-CMIN               4   1836   243    226     17
6 months    ki1114097-CMIN               5   1836   175    160     15
6 months    ki1114097-CMIN               6   1836   147    136     11
6 months    ki1114097-CMIN               7   1836   111     97     14
6 months    ki1114097-CMIN               8   1836   113    100     13
6 months    ki1114097-CMIN               9   1836   162    140     22
6 months    ki1114097-CMIN              10   1836   127    109     18
6 months    ki1114097-CMIN              11   1836   166    145     21
6 months    ki1114097-CMIN              12   1836   137    111     26
6 months    ki1114097-CONTENT            1    215     9      9      0
6 months    ki1114097-CONTENT            2    215    16     16      0
6 months    ki1114097-CONTENT            3    215    30     26      4
6 months    ki1114097-CONTENT            4    215    12     10      2
6 months    ki1114097-CONTENT            5    215    25     22      3
6 months    ki1114097-CONTENT            6    215    14     11      3
6 months    ki1114097-CONTENT            7    215    24     23      1
6 months    ki1114097-CONTENT            8    215    18     16      2
6 months    ki1114097-CONTENT            9    215    20     17      3
6 months    ki1114097-CONTENT           10    215    24     24      0
6 months    ki1114097-CONTENT           11    215    18     17      1
6 months    ki1114097-CONTENT           12    215     5      5      0
6 months    ki1126311-ZVITAMBO           1   2048   220    180     40
6 months    ki1126311-ZVITAMBO           2   2048   133    106     27
6 months    ki1126311-ZVITAMBO           3   2048   179    140     39
6 months    ki1126311-ZVITAMBO           4   2048   165    133     32
6 months    ki1126311-ZVITAMBO           5   2048   142    116     26
6 months    ki1126311-ZVITAMBO           6   2048   155    129     26
6 months    ki1126311-ZVITAMBO           7   2048   165    135     30
6 months    ki1126311-ZVITAMBO           8   2048   169    150     19
6 months    ki1126311-ZVITAMBO           9   2048   187    170     17
6 months    ki1126311-ZVITAMBO          10   2048   138    116     22
6 months    ki1126311-ZVITAMBO          11   2048   187    160     27
6 months    ki1126311-ZVITAMBO          12   2048   208    178     30
6 months    ki1148112-LCNI-5             1    417    27     23      4
6 months    ki1148112-LCNI-5             2    417    56     35     21
6 months    ki1148112-LCNI-5             3    417    49     27     22
6 months    ki1148112-LCNI-5             4    417    55     34     21
6 months    ki1148112-LCNI-5             5    417    52     34     18
6 months    ki1148112-LCNI-5             6    417    48     29     19
6 months    ki1148112-LCNI-5             7    417    38     25     13
6 months    ki1148112-LCNI-5             8    417    20     14      6
6 months    ki1148112-LCNI-5             9    417    13      7      6
6 months    ki1148112-LCNI-5            10    417    16      9      7
6 months    ki1148112-LCNI-5            11    417    25     15     10
6 months    ki1148112-LCNI-5            12    417    18     10      8
9 months    ki0047075b-MAL-ED            1   1640   158    122     36
9 months    ki0047075b-MAL-ED            2   1640   147    110     37
9 months    ki0047075b-MAL-ED            3   1640   132    103     29
9 months    ki0047075b-MAL-ED            4   1640   105     88     17
9 months    ki0047075b-MAL-ED            5   1640   117     96     21
9 months    ki0047075b-MAL-ED            6   1640   104     85     19
9 months    ki0047075b-MAL-ED            7   1640   143    106     37
9 months    ki0047075b-MAL-ED            8   1640   117     96     21
9 months    ki0047075b-MAL-ED            9   1640   145    130     15
9 months    ki0047075b-MAL-ED           10   1640   151    118     33
9 months    ki0047075b-MAL-ED           11   1640   160    119     41
9 months    ki0047075b-MAL-ED           12   1640   161    128     33
9 months    ki1000108-CMC-V-BCS-2002     1    366    34     20     14
9 months    ki1000108-CMC-V-BCS-2002     2    366    15      7      8
9 months    ki1000108-CMC-V-BCS-2002     3    366    30     18     12
9 months    ki1000108-CMC-V-BCS-2002     4    366    44     30     14
9 months    ki1000108-CMC-V-BCS-2002     5    366    35     18     17
9 months    ki1000108-CMC-V-BCS-2002     6    366    37     20     17
9 months    ki1000108-CMC-V-BCS-2002     7    366    38     21     17
9 months    ki1000108-CMC-V-BCS-2002     8    366    17     12      5
9 months    ki1000108-CMC-V-BCS-2002     9    366    20     17      3
9 months    ki1000108-CMC-V-BCS-2002    10    366    29     23      6
9 months    ki1000108-CMC-V-BCS-2002    11    366    42     33      9
9 months    ki1000108-CMC-V-BCS-2002    12    366    25     12     13
9 months    ki1000108-IRC                1    407    36     22     14
9 months    ki1000108-IRC                2    407    27     18      9
9 months    ki1000108-IRC                3    407    29     22      7
9 months    ki1000108-IRC                4    407    22     12     10
9 months    ki1000108-IRC                5    407    20     10     10
9 months    ki1000108-IRC                6    407    37     32      5
9 months    ki1000108-IRC                7    407    36     27      9
9 months    ki1000108-IRC                8    407    45     37      8
9 months    ki1000108-IRC                9    407    27     19      8
9 months    ki1000108-IRC               10    407    36     30      6
9 months    ki1000108-IRC               11    407    41     32      9
9 months    ki1000108-IRC               12    407    51     35     16
9 months    ki1000109-EE                 1    366    90     35     55
9 months    ki1000109-EE                 2    366    65     24     41
9 months    ki1000109-EE                 3    366    42     17     25
9 months    ki1000109-EE                 4    366    16      4     12
9 months    ki1000109-EE                 5    366     0      0      0
9 months    ki1000109-EE                 6    366     0      0      0
9 months    ki1000109-EE                 7    366     0      0      0
9 months    ki1000109-EE                 8    366     0      0      0
9 months    ki1000109-EE                 9    366     0      0      0
9 months    ki1000109-EE                10    366     4      2      2
9 months    ki1000109-EE                11    366    68     30     38
9 months    ki1000109-EE                12    366    81     37     44
9 months    ki1000109-ResPak             1    211     8      4      4
9 months    ki1000109-ResPak             2    211     9      5      4
9 months    ki1000109-ResPak             3    211    13      9      4
9 months    ki1000109-ResPak             4    211    20     15      5
9 months    ki1000109-ResPak             5    211    33     24      9
9 months    ki1000109-ResPak             6    211    46     28     18
9 months    ki1000109-ResPak             7    211    19     15      4
9 months    ki1000109-ResPak             8    211    30     19     11
9 months    ki1000109-ResPak             9    211    22     14      8
9 months    ki1000109-ResPak            10    211     7      6      1
9 months    ki1000109-ResPak            11    211     2      1      1
9 months    ki1000109-ResPak            12    211     2      1      1
9 months    ki1000304b-SAS-FoodSuppl     1     85    12      4      8
9 months    ki1000304b-SAS-FoodSuppl     2     85     7      1      6
9 months    ki1000304b-SAS-FoodSuppl     3     85     7      2      5
9 months    ki1000304b-SAS-FoodSuppl     4     85     8      3      5
9 months    ki1000304b-SAS-FoodSuppl     5     85     7      1      6
9 months    ki1000304b-SAS-FoodSuppl     6     85     7      4      3
9 months    ki1000304b-SAS-FoodSuppl     7     85     5      1      4
9 months    ki1000304b-SAS-FoodSuppl     8     85     0      0      0
9 months    ki1000304b-SAS-FoodSuppl     9     85     4      0      4
9 months    ki1000304b-SAS-FoodSuppl    10     85     4      2      2
9 months    ki1000304b-SAS-FoodSuppl    11     85    10      3      7
9 months    ki1000304b-SAS-FoodSuppl    12     85    14      7      7
9 months    ki1017093-NIH-Birth          1    507    49     26     23
9 months    ki1017093-NIH-Birth          2    507    44     29     15
9 months    ki1017093-NIH-Birth          3    507    47     31     16
9 months    ki1017093-NIH-Birth          4    507    42     32     10
9 months    ki1017093-NIH-Birth          5    507    39     25     14
9 months    ki1017093-NIH-Birth          6    507    39     30      9
9 months    ki1017093-NIH-Birth          7    507    45     27     18
9 months    ki1017093-NIH-Birth          8    507    31     17     14
9 months    ki1017093-NIH-Birth          9    507    25     17      8
9 months    ki1017093-NIH-Birth         10    507    49     31     18
9 months    ki1017093-NIH-Birth         11    507    47     25     22
9 months    ki1017093-NIH-Birth         12    507    50     36     14
9 months    ki1066203-TanzaniaChild2     1    434    33     26      7
9 months    ki1066203-TanzaniaChild2     2    434    27     27      0
9 months    ki1066203-TanzaniaChild2     3    434    30     24      6
9 months    ki1066203-TanzaniaChild2     4    434    32     23      9
9 months    ki1066203-TanzaniaChild2     5    434    33     27      6
9 months    ki1066203-TanzaniaChild2     6    434    30     24      6
9 months    ki1066203-TanzaniaChild2     7    434    38     31      7
9 months    ki1066203-TanzaniaChild2     8    434    50     45      5
9 months    ki1066203-TanzaniaChild2     9    434    38     34      4
9 months    ki1066203-TanzaniaChild2    10    434    45     38      7
9 months    ki1066203-TanzaniaChild2    11    434    39     37      2
9 months    ki1066203-TanzaniaChild2    12    434    39     35      4
9 months    ki1112895-Guatemala BSC      1     60     4      3      1
9 months    ki1112895-Guatemala BSC      2     60     5      4      1
9 months    ki1112895-Guatemala BSC      3     60     2      1      1
9 months    ki1112895-Guatemala BSC      4     60     5      1      4
9 months    ki1112895-Guatemala BSC      5     60     7      5      2
9 months    ki1112895-Guatemala BSC      6     60     9      7      2
9 months    ki1112895-Guatemala BSC      7     60     5      2      3
9 months    ki1112895-Guatemala BSC      8     60     5      4      1
9 months    ki1112895-Guatemala BSC      9     60     5      4      1
9 months    ki1112895-Guatemala BSC     10     60     6      3      3
9 months    ki1112895-Guatemala BSC     11     60     6      4      2
9 months    ki1112895-Guatemala BSC     12     60     1      0      1
9 months    ki1113344-GMS-Nepal          1    551     0      0      0
9 months    ki1113344-GMS-Nepal          2    551     0      0      0
9 months    ki1113344-GMS-Nepal          3    551     0      0      0
9 months    ki1113344-GMS-Nepal          4    551     0      0      0
9 months    ki1113344-GMS-Nepal          5    551     0      0      0
9 months    ki1113344-GMS-Nepal          6    551   102     72     30
9 months    ki1113344-GMS-Nepal          7    551   212    153     59
9 months    ki1113344-GMS-Nepal          8    551   220    159     61
9 months    ki1113344-GMS-Nepal          9    551    15     11      4
9 months    ki1113344-GMS-Nepal         10    551     2      1      1
9 months    ki1113344-GMS-Nepal         11    551     0      0      0
9 months    ki1113344-GMS-Nepal         12    551     0      0      0
9 months    ki1114097-CMIN               1   1846   184    151     33
9 months    ki1114097-CMIN               2   1846   132    104     28
9 months    ki1114097-CMIN               3   1846   143    123     20
9 months    ki1114097-CMIN               4   1846   254    214     40
9 months    ki1114097-CMIN               5   1846   186    157     29
9 months    ki1114097-CMIN               6   1846   148    129     19
9 months    ki1114097-CMIN               7   1846   128    109     19
9 months    ki1114097-CMIN               8   1846   113     90     23
9 months    ki1114097-CMIN               9   1846   149    125     24
9 months    ki1114097-CMIN              10   1846   112     82     30
9 months    ki1114097-CMIN              11   1846   161    134     27
9 months    ki1114097-CMIN              12   1846   136    105     31
9 months    ki1114097-CONTENT            1    214     9      9      0
9 months    ki1114097-CONTENT            2    214    16     16      0
9 months    ki1114097-CONTENT            3    214    30     28      2
9 months    ki1114097-CONTENT            4    214    12     10      2
9 months    ki1114097-CONTENT            5    214    24     20      4
9 months    ki1114097-CONTENT            6    214    14     11      3
9 months    ki1114097-CONTENT            7    214    24     22      2
9 months    ki1114097-CONTENT            8    214    18     16      2
9 months    ki1114097-CONTENT            9    214    20     17      3
9 months    ki1114097-CONTENT           10    214    24     22      2
9 months    ki1114097-CONTENT           11    214    18     17      1
9 months    ki1114097-CONTENT           12    214     5      4      1
9 months    ki1126311-ZVITAMBO           1   1959   213    168     45
9 months    ki1126311-ZVITAMBO           2   1959   144    114     30
9 months    ki1126311-ZVITAMBO           3   1959   154    124     30
9 months    ki1126311-ZVITAMBO           4   1959   140    121     19
9 months    ki1126311-ZVITAMBO           5   1959   139    112     27
9 months    ki1126311-ZVITAMBO           6   1959   152    120     32
9 months    ki1126311-ZVITAMBO           7   1959   145    117     28
9 months    ki1126311-ZVITAMBO           8   1959   174    147     27
9 months    ki1126311-ZVITAMBO           9   1959   180    146     34
9 months    ki1126311-ZVITAMBO          10   1959   144    107     37
9 months    ki1126311-ZVITAMBO          11   1959   176    144     32
9 months    ki1126311-ZVITAMBO          12   1959   198    157     41
9 months    ki1148112-LCNI-5             1    322    18     13      5
9 months    ki1148112-LCNI-5             2    322    47     39      8
9 months    ki1148112-LCNI-5             3    322    41     21     20
9 months    ki1148112-LCNI-5             4    322    46     32     14
9 months    ki1148112-LCNI-5             5    322    43     31     12
9 months    ki1148112-LCNI-5             6    322    37     20     17
9 months    ki1148112-LCNI-5             7    322    24     16      8
9 months    ki1148112-LCNI-5             8    322    12     11      1
9 months    ki1148112-LCNI-5             9    322    12      6      6
9 months    ki1148112-LCNI-5            10    322     9      8      1
9 months    ki1148112-LCNI-5            11    322    20     15      5
9 months    ki1148112-LCNI-5            12    322    13      8      5
Birth       ki0047075b-MAL-ED            1   1499   136    120     16
Birth       ki0047075b-MAL-ED            2   1499   130    113     17
Birth       ki0047075b-MAL-ED            3   1499   125    107     18
Birth       ki0047075b-MAL-ED            4   1499    97     89      8
Birth       ki0047075b-MAL-ED            5   1499   111     98     13
Birth       ki0047075b-MAL-ED            6   1499    94     81     13
Birth       ki0047075b-MAL-ED            7   1499   136    115     21
Birth       ki0047075b-MAL-ED            8   1499   110     95     15
Birth       ki0047075b-MAL-ED            9   1499   137    118     19
Birth       ki0047075b-MAL-ED           10   1499   143    125     18
Birth       ki0047075b-MAL-ED           11   1499   139    115     24
Birth       ki0047075b-MAL-ED           12   1499   141    124     17
Birth       ki1000108-CMC-V-BCS-2002     1     90     9      7      2
Birth       ki1000108-CMC-V-BCS-2002     2     90     1      0      1
Birth       ki1000108-CMC-V-BCS-2002     3     90     8      7      1
Birth       ki1000108-CMC-V-BCS-2002     4     90     9      7      2
Birth       ki1000108-CMC-V-BCS-2002     5     90    11     10      1
Birth       ki1000108-CMC-V-BCS-2002     6     90     9      8      1
Birth       ki1000108-CMC-V-BCS-2002     7     90     7      7      0
Birth       ki1000108-CMC-V-BCS-2002     8     90     4      3      1
Birth       ki1000108-CMC-V-BCS-2002     9     90     7      5      2
Birth       ki1000108-CMC-V-BCS-2002    10     90    10      8      2
Birth       ki1000108-CMC-V-BCS-2002    11     90    11     10      1
Birth       ki1000108-CMC-V-BCS-2002    12     90     4      2      2
Birth       ki1000108-IRC                1    388    34     27      7
Birth       ki1000108-IRC                2    388    25     23      2
Birth       ki1000108-IRC                3    388    27     23      4
Birth       ki1000108-IRC                4    388    22     20      2
Birth       ki1000108-IRC                5    388    21     20      1
Birth       ki1000108-IRC                6    388    34     30      4
Birth       ki1000108-IRC                7    388    35     31      4
Birth       ki1000108-IRC                8    388    39     36      3
Birth       ki1000108-IRC                9    388    25     23      2
Birth       ki1000108-IRC               10    388    37     33      4
Birth       ki1000108-IRC               11    388    40     34      6
Birth       ki1000108-IRC               12    388    49     43      6
Birth       ki1000109-EE                 1      2     0      0      0
Birth       ki1000109-EE                 2      2     0      0      0
Birth       ki1000109-EE                 3      2     0      0      0
Birth       ki1000109-EE                 4      2     0      0      0
Birth       ki1000109-EE                 5      2     0      0      0
Birth       ki1000109-EE                 6      2     0      0      0
Birth       ki1000109-EE                 7      2     0      0      0
Birth       ki1000109-EE                 8      2     0      0      0
Birth       ki1000109-EE                 9      2     0      0      0
Birth       ki1000109-EE                10      2     0      0      0
Birth       ki1000109-EE                11      2     0      0      0
Birth       ki1000109-EE                12      2     2      1      1
Birth       ki1000109-ResPak             1      7     1      1      0
Birth       ki1000109-ResPak             2      7     0      0      0
Birth       ki1000109-ResPak             3      7     0      0      0
Birth       ki1000109-ResPak             4      7     2      0      2
Birth       ki1000109-ResPak             5      7     1      1      0
Birth       ki1000109-ResPak             6      7     2      2      0
Birth       ki1000109-ResPak             7      7     1      1      0
Birth       ki1000109-ResPak             8      7     0      0      0
Birth       ki1000109-ResPak             9      7     0      0      0
Birth       ki1000109-ResPak            10      7     0      0      0
Birth       ki1000109-ResPak            11      7     0      0      0
Birth       ki1000109-ResPak            12      7     0      0      0
Birth       ki1000304b-SAS-FoodSuppl     1      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl     2      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl     3      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl     4      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl     5      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl     6      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl     7      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl     8      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl     9      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl    10      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl    11      0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl    12      0     0      0      0
Birth       ki1017093-NIH-Birth          1     28    10      9      1
Birth       ki1017093-NIH-Birth          2     28     4      4      0
Birth       ki1017093-NIH-Birth          3     28     6      6      0
Birth       ki1017093-NIH-Birth          4     28     2      2      0
Birth       ki1017093-NIH-Birth          5     28     0      0      0
Birth       ki1017093-NIH-Birth          6     28     2      2      0
Birth       ki1017093-NIH-Birth          7     28     1      1      0
Birth       ki1017093-NIH-Birth          8     28     0      0      0
Birth       ki1017093-NIH-Birth          9     28     0      0      0
Birth       ki1017093-NIH-Birth         10     28     1      1      0
Birth       ki1017093-NIH-Birth         11     28     2      2      0
Birth       ki1017093-NIH-Birth         12     28     0      0      0
Birth       ki1066203-TanzaniaChild2     1      0     0      0      0
Birth       ki1066203-TanzaniaChild2     2      0     0      0      0
Birth       ki1066203-TanzaniaChild2     3      0     0      0      0
Birth       ki1066203-TanzaniaChild2     4      0     0      0      0
Birth       ki1066203-TanzaniaChild2     5      0     0      0      0
Birth       ki1066203-TanzaniaChild2     6      0     0      0      0
Birth       ki1066203-TanzaniaChild2     7      0     0      0      0
Birth       ki1066203-TanzaniaChild2     8      0     0      0      0
Birth       ki1066203-TanzaniaChild2     9      0     0      0      0
Birth       ki1066203-TanzaniaChild2    10      0     0      0      0
Birth       ki1066203-TanzaniaChild2    11      0     0      0      0
Birth       ki1066203-TanzaniaChild2    12      0     0      0      0
Birth       ki1112895-Guatemala BSC      1      0     0      0      0
Birth       ki1112895-Guatemala BSC      2      0     0      0      0
Birth       ki1112895-Guatemala BSC      3      0     0      0      0
Birth       ki1112895-Guatemala BSC      4      0     0      0      0
Birth       ki1112895-Guatemala BSC      5      0     0      0      0
Birth       ki1112895-Guatemala BSC      6      0     0      0      0
Birth       ki1112895-Guatemala BSC      7      0     0      0      0
Birth       ki1112895-Guatemala BSC      8      0     0      0      0
Birth       ki1112895-Guatemala BSC      9      0     0      0      0
Birth       ki1112895-Guatemala BSC     10      0     0      0      0
Birth       ki1112895-Guatemala BSC     11      0     0      0      0
Birth       ki1112895-Guatemala BSC     12      0     0      0      0
Birth       ki1113344-GMS-Nepal          1      0     0      0      0
Birth       ki1113344-GMS-Nepal          2      0     0      0      0
Birth       ki1113344-GMS-Nepal          3      0     0      0      0
Birth       ki1113344-GMS-Nepal          4      0     0      0      0
Birth       ki1113344-GMS-Nepal          5      0     0      0      0
Birth       ki1113344-GMS-Nepal          6      0     0      0      0
Birth       ki1113344-GMS-Nepal          7      0     0      0      0
Birth       ki1113344-GMS-Nepal          8      0     0      0      0
Birth       ki1113344-GMS-Nepal          9      0     0      0      0
Birth       ki1113344-GMS-Nepal         10      0     0      0      0
Birth       ki1113344-GMS-Nepal         11      0     0      0      0
Birth       ki1113344-GMS-Nepal         12      0     0      0      0
Birth       ki1114097-CMIN               1    138    15     14      1
Birth       ki1114097-CMIN               2    138    10     10      0
Birth       ki1114097-CMIN               3    138    15     14      1
Birth       ki1114097-CMIN               4    138    13     12      1
Birth       ki1114097-CMIN               5    138     6      6      0
Birth       ki1114097-CMIN               6    138     6      6      0
Birth       ki1114097-CMIN               7    138     4      4      0
Birth       ki1114097-CMIN               8    138    17     13      4
Birth       ki1114097-CMIN               9    138    11     11      0
Birth       ki1114097-CMIN              10    138    17     15      2
Birth       ki1114097-CMIN              11    138    14     13      1
Birth       ki1114097-CMIN              12    138    10      9      1
Birth       ki1114097-CONTENT            1      2     0      0      0
Birth       ki1114097-CONTENT            2      2     0      0      0
Birth       ki1114097-CONTENT            3      2     0      0      0
Birth       ki1114097-CONTENT            4      2     0      0      0
Birth       ki1114097-CONTENT            5      2     2      2      0
Birth       ki1114097-CONTENT            6      2     0      0      0
Birth       ki1114097-CONTENT            7      2     0      0      0
Birth       ki1114097-CONTENT            8      2     0      0      0
Birth       ki1114097-CONTENT            9      2     0      0      0
Birth       ki1114097-CONTENT           10      2     0      0      0
Birth       ki1114097-CONTENT           11      2     0      0      0
Birth       ki1114097-CONTENT           12      2     0      0      0
Birth       ki1126311-ZVITAMBO           1   3443   342    287     55
Birth       ki1126311-ZVITAMBO           2   3443   255    222     33
Birth       ki1126311-ZVITAMBO           3   3443   277    245     32
Birth       ki1126311-ZVITAMBO           4   3443   257    231     26
Birth       ki1126311-ZVITAMBO           5   3443   246    216     30
Birth       ki1126311-ZVITAMBO           6   3443   281    247     34
Birth       ki1126311-ZVITAMBO           7   3443   303    272     31
Birth       ki1126311-ZVITAMBO           8   3443   311    284     27
Birth       ki1126311-ZVITAMBO           9   3443   322    300     22
Birth       ki1126311-ZVITAMBO          10   3443   257    238     19
Birth       ki1126311-ZVITAMBO          11   3443   282    258     24
Birth       ki1126311-ZVITAMBO          12   3443   310    283     27
Birth       ki1148112-LCNI-5             1      0     0      0      0
Birth       ki1148112-LCNI-5             2      0     0      0      0
Birth       ki1148112-LCNI-5             3      0     0      0      0
Birth       ki1148112-LCNI-5             4      0     0      0      0
Birth       ki1148112-LCNI-5             5      0     0      0      0
Birth       ki1148112-LCNI-5             6      0     0      0      0
Birth       ki1148112-LCNI-5             7      0     0      0      0
Birth       ki1148112-LCNI-5             8      0     0      0      0
Birth       ki1148112-LCNI-5             9      0     0      0      0
Birth       ki1148112-LCNI-5            10      0     0      0      0
Birth       ki1148112-LCNI-5            11      0     0      0      0
Birth       ki1148112-LCNI-5            12      0     0      0      0

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          1                    NA                0.2709677   0.2009757   0.3409598
12 months   ki0047075b-MAL-ED          2                    NA                0.3611111   0.2826356   0.4395867
12 months   ki0047075b-MAL-ED          3                    NA                0.2812500   0.2033365   0.3591635
12 months   ki0047075b-MAL-ED          4                    NA                0.2307692   0.1497696   0.3117689
12 months   ki0047075b-MAL-ED          5                    NA                0.2155172   0.1406682   0.2903663
12 months   ki0047075b-MAL-ED          6                    NA                0.2788462   0.1926353   0.3650570
12 months   ki0047075b-MAL-ED          7                    NA                0.2965517   0.2221874   0.3709161
12 months   ki0047075b-MAL-ED          8                    NA                0.2477876   0.1681619   0.3274133
12 months   ki0047075b-MAL-ED          9                    NA                0.2127660   0.1451925   0.2803394
12 months   ki0047075b-MAL-ED          10                   NA                0.2671233   0.1953311   0.3389155
12 months   ki0047075b-MAL-ED          11                   NA                0.2893082   0.2188056   0.3598107
12 months   ki0047075b-MAL-ED          12                   NA                0.2608696   0.1930208   0.3287183
12 months   ki1000108-IRC              1                    NA                0.4285714   0.2644209   0.5927219
12 months   ki1000108-IRC              2                    NA                0.4814815   0.2927807   0.6701822
12 months   ki1000108-IRC              3                    NA                0.2758621   0.1129920   0.4387321
12 months   ki1000108-IRC              4                    NA                0.5238095   0.3099390   0.7376801
12 months   ki1000108-IRC              5                    NA                0.5500000   0.3316988   0.7683012
12 months   ki1000108-IRC              6                    NA                0.1351351   0.0248439   0.2454264
12 months   ki1000108-IRC              7                    NA                0.1666667   0.0447772   0.2885561
12 months   ki1000108-IRC              8                    NA                0.1777778   0.0659343   0.2896213
12 months   ki1000108-IRC              9                    NA                0.3333333   0.1553024   0.5113643
12 months   ki1000108-IRC              10                   NA                0.1351351   0.0248439   0.2454264
12 months   ki1000108-IRC              11                   NA                0.2682927   0.1325036   0.4040817
12 months   ki1000108-IRC              12                   NA                0.3333333   0.2037968   0.4628699
12 months   ki1017093-NIH-Birth        1                    NA                0.4468085   0.3045297   0.5890874
12 months   ki1017093-NIH-Birth        2                    NA                0.3414634   0.1961650   0.4867618
12 months   ki1017093-NIH-Birth        3                    NA                0.3043478   0.1712432   0.4374524
12 months   ki1017093-NIH-Birth        4                    NA                0.3500000   0.2020376   0.4979624
12 months   ki1017093-NIH-Birth        5                    NA                0.3243243   0.1733341   0.4753146
12 months   ki1017093-NIH-Birth        6                    NA                0.3055556   0.1549284   0.4561828
12 months   ki1017093-NIH-Birth        7                    NA                0.4390244   0.2869643   0.5910845
12 months   ki1017093-NIH-Birth        8                    NA                0.4242424   0.2554470   0.5930379
12 months   ki1017093-NIH-Birth        9                    NA                0.3750000   0.1811165   0.5688835
12 months   ki1017093-NIH-Birth        10                   NA                0.3469388   0.2135264   0.4803512
12 months   ki1017093-NIH-Birth        11                   NA                0.4583333   0.3172334   0.5994333
12 months   ki1017093-NIH-Birth        12                   NA                0.3673469   0.2322288   0.5024651
12 months   ki1114097-CMIN             1                    NA                0.2982456   0.2296546   0.3668366
12 months   ki1114097-CMIN             2                    NA                0.2612613   0.1795076   0.3430149
12 months   ki1114097-CMIN             3                    NA                0.2419355   0.1665344   0.3173366
12 months   ki1114097-CMIN             4                    NA                0.2076271   0.1558621   0.2593922
12 months   ki1114097-CMIN             5                    NA                0.1474359   0.0917829   0.2030889
12 months   ki1114097-CMIN             6                    NA                0.2173913   0.1419811   0.2928015
12 months   ki1114097-CMIN             7                    NA                0.2524272   0.1685079   0.3363465
12 months   ki1114097-CMIN             8                    NA                0.2568807   0.1748328   0.3389286
12 months   ki1114097-CMIN             9                    NA                0.2295082   0.1548652   0.3041512
12 months   ki1114097-CMIN             10                   NA                0.3396226   0.2494391   0.4298062
12 months   ki1114097-CMIN             11                   NA                0.2692308   0.1929585   0.3455030
12 months   ki1114097-CMIN             12                   NA                0.3368421   0.2417716   0.4319126
12 months   ki1126311-ZVITAMBO         1                    NA                0.2080925   0.1475837   0.2686013
12 months   ki1126311-ZVITAMBO         2                    NA                0.3189655   0.2341250   0.4038060
12 months   ki1126311-ZVITAMBO         3                    NA                0.2269504   0.1577935   0.2961073
12 months   ki1126311-ZVITAMBO         4                    NA                0.2335766   0.1627063   0.3044470
12 months   ki1126311-ZVITAMBO         5                    NA                0.2500000   0.1737630   0.3262370
12 months   ki1126311-ZVITAMBO         6                    NA                0.2464789   0.1755751   0.3173826
12 months   ki1126311-ZVITAMBO         7                    NA                0.2348993   0.1668094   0.3029893
12 months   ki1126311-ZVITAMBO         8                    NA                0.2272727   0.1610660   0.2934795
12 months   ki1126311-ZVITAMBO         9                    NA                0.2026144   0.1389056   0.2663232
12 months   ki1126311-ZVITAMBO         10                   NA                0.3000000   0.2143378   0.3856622
12 months   ki1126311-ZVITAMBO         11                   NA                0.2661871   0.1926926   0.3396815
12 months   ki1126311-ZVITAMBO         12                   NA                0.1863354   0.1261719   0.2464989
18 months   ki0047075b-MAL-ED          1                    NA                0.4172185   0.3385439   0.4958932
18 months   ki0047075b-MAL-ED          2                    NA                0.4776119   0.3930119   0.5622119
18 months   ki0047075b-MAL-ED          3                    NA                0.3833333   0.2963149   0.4703518
18 months   ki0047075b-MAL-ED          4                    NA                0.3700000   0.2753415   0.4646585
18 months   ki0047075b-MAL-ED          5                    NA                0.3703704   0.2792664   0.4614744
18 months   ki0047075b-MAL-ED          6                    NA                0.3861386   0.2911581   0.4811192
18 months   ki0047075b-MAL-ED          7                    NA                0.4295775   0.3481326   0.5110223
18 months   ki0047075b-MAL-ED          8                    NA                0.3362832   0.2491480   0.4234183
18 months   ki0047075b-MAL-ED          9                    NA                0.2846715   0.2090835   0.3602596
18 months   ki0047075b-MAL-ED          10                   NA                0.3617021   0.2823669   0.4410374
18 months   ki0047075b-MAL-ED          11                   NA                0.4246575   0.3444538   0.5048613
18 months   ki0047075b-MAL-ED          12                   NA                0.3790850   0.3021848   0.4559851
18 months   ki1000108-IRC              1                    NA                0.4166667   0.2554216   0.5779117
18 months   ki1000108-IRC              2                    NA                0.4074074   0.2218426   0.5929722
18 months   ki1000108-IRC              3                    NA                0.3793103   0.2024948   0.5561259
18 months   ki1000108-IRC              4                    NA                0.4545455   0.2462204   0.6628705
18 months   ki1000108-IRC              5                    NA                0.5714286   0.3595106   0.7833466
18 months   ki1000108-IRC              6                    NA                0.1351351   0.0248436   0.2454267
18 months   ki1000108-IRC              7                    NA                0.2777778   0.1312845   0.4242711
18 months   ki1000108-IRC              8                    NA                0.2954545   0.1604780   0.4304311
18 months   ki1000108-IRC              9                    NA                0.5555556   0.3678939   0.7432172
18 months   ki1000108-IRC              10                   NA                0.1764706   0.0481722   0.3047690
18 months   ki1000108-IRC              11                   NA                0.3902439   0.2407446   0.5397432
18 months   ki1000108-IRC              12                   NA                0.3921569   0.2579961   0.5263176
18 months   ki1017093-NIH-Birth        1                    NA                0.6000000   0.4567096   0.7432904
18 months   ki1017093-NIH-Birth        2                    NA                0.6285714   0.4683212   0.7888216
18 months   ki1017093-NIH-Birth        3                    NA                0.5227273   0.3749825   0.6704721
18 months   ki1017093-NIH-Birth        4                    NA                0.6578947   0.5068923   0.8088971
18 months   ki1017093-NIH-Birth        5                    NA                0.6285714   0.4683212   0.7888216
18 months   ki1017093-NIH-Birth        6                    NA                0.6571429   0.4997192   0.8145665
18 months   ki1017093-NIH-Birth        7                    NA                0.6585366   0.5132292   0.8038440
18 months   ki1017093-NIH-Birth        8                    NA                0.5161290   0.3400204   0.6922377
18 months   ki1017093-NIH-Birth        9                    NA                0.5600000   0.3652094   0.7547906
18 months   ki1017093-NIH-Birth        10                   NA                0.6000000   0.4567096   0.7432904
18 months   ki1017093-NIH-Birth        11                   NA                0.5909091   0.4454766   0.7363416
18 months   ki1017093-NIH-Birth        12                   NA                0.4444444   0.2991049   0.5897840
18 months   ki1114097-CMIN             1                    NA                0.4139535   0.3480957   0.4798112
18 months   ki1114097-CMIN             2                    NA                0.3508772   0.2632431   0.4385112
18 months   ki1114097-CMIN             3                    NA                0.2800000   0.2012638   0.3587362
18 months   ki1114097-CMIN             4                    NA                0.3598326   0.2989656   0.4206997
18 months   ki1114097-CMIN             5                    NA                0.2877698   0.2124846   0.3630550
18 months   ki1114097-CMIN             6                    NA                0.2592593   0.1765846   0.3419340
18 months   ki1114097-CMIN             7                    NA                0.3411765   0.2403560   0.4419970
18 months   ki1114097-CMIN             8                    NA                0.3404255   0.2446040   0.4362471
18 months   ki1114097-CMIN             9                    NA                0.3650794   0.2809878   0.4491709
18 months   ki1114097-CMIN             10                   NA                0.4313725   0.3352281   0.5275170
18 months   ki1114097-CMIN             11                   NA                0.3741007   0.2936327   0.4545688
18 months   ki1114097-CMIN             12                   NA                0.4036697   0.3115341   0.4958053
18 months   ki1126311-ZVITAMBO         1                    NA                0.5357143   0.4049389   0.6664897
18 months   ki1126311-ZVITAMBO         2                    NA                0.5121951   0.3590124   0.6653778
18 months   ki1126311-ZVITAMBO         3                    NA                0.4324324   0.2726136   0.5922512
18 months   ki1126311-ZVITAMBO         4                    NA                0.5106383   0.3675568   0.6537198
18 months   ki1126311-ZVITAMBO         5                    NA                0.4814815   0.2927906   0.6701723
18 months   ki1126311-ZVITAMBO         6                    NA                0.2592593   0.0937664   0.4247521
18 months   ki1126311-ZVITAMBO         7                    NA                0.4117647   0.2461414   0.5773880
18 months   ki1126311-ZVITAMBO         8                    NA                0.2758621   0.1130006   0.4387236
18 months   ki1126311-ZVITAMBO         9                    NA                0.5600000   0.3651900   0.7548100
18 months   ki1126311-ZVITAMBO         10                   NA                0.5652174   0.3623834   0.7680514
18 months   ki1126311-ZVITAMBO         11                   NA                0.5806452   0.4067345   0.7545558
18 months   ki1126311-ZVITAMBO         12                   NA                0.5106383   0.3675568   0.6537198
24 months   ki0047075b-MAL-ED          1                    NA                0.4375000   0.3564481   0.5185519
24 months   ki0047075b-MAL-ED          2                    NA                0.4307692   0.3456184   0.5159200
24 months   ki0047075b-MAL-ED          3                    NA                0.4491525   0.3593754   0.5389296
24 months   ki0047075b-MAL-ED          4                    NA                0.3052632   0.2126272   0.3978991
24 months   ki0047075b-MAL-ED          5                    NA                0.3773585   0.2850510   0.4696660
24 months   ki0047075b-MAL-ED          6                    NA                0.3440860   0.2475011   0.4406710
24 months   ki0047075b-MAL-ED          7                    NA                0.3759398   0.2935942   0.4582855
24 months   ki0047075b-MAL-ED          8                    NA                0.3153153   0.2288483   0.4017823
24 months   ki0047075b-MAL-ED          9                    NA                0.2761194   0.2003972   0.3518417
24 months   ki0047075b-MAL-ED          10                   NA                0.3308824   0.2517758   0.4099889
24 months   ki0047075b-MAL-ED          11                   NA                0.4388489   0.3563242   0.5213736
24 months   ki0047075b-MAL-ED          12                   NA                0.3866667   0.3087079   0.4646254
24 months   ki1017093-NIH-Birth        1                    NA                0.6428571   0.4977768   0.7879374
24 months   ki1017093-NIH-Birth        2                    NA                0.6388889   0.4818032   0.7959746
24 months   ki1017093-NIH-Birth        3                    NA                0.4390244   0.2869419   0.5911069
24 months   ki1017093-NIH-Birth        4                    NA                0.6470588   0.4862394   0.8078782
24 months   ki1017093-NIH-Birth        5                    NA                0.6176471   0.4541094   0.7811847
24 months   ki1017093-NIH-Birth        6                    NA                0.5666667   0.3891377   0.7441956
24 months   ki1017093-NIH-Birth        7                    NA                0.5405405   0.3797755   0.7013056
24 months   ki1017093-NIH-Birth        8                    NA                0.5333333   0.3546035   0.7120631
24 months   ki1017093-NIH-Birth        9                    NA                0.4210526   0.1987903   0.6433149
24 months   ki1017093-NIH-Birth        10                   NA                0.5250000   0.3700644   0.6799356
24 months   ki1017093-NIH-Birth        11                   NA                0.5121951   0.3590145   0.6653757
24 months   ki1017093-NIH-Birth        12                   NA                0.5333333   0.3874011   0.6792656
24 months   ki1114097-CMIN             1                    NA                0.4066390   0.3445976   0.4686804
24 months   ki1114097-CMIN             2                    NA                0.3488372   0.2480668   0.4496076
24 months   ki1114097-CMIN             3                    NA                0.3666667   0.2670673   0.4662660
24 months   ki1114097-CMIN             4                    NA                0.4278607   0.3594333   0.4962881
24 months   ki1114097-CMIN             5                    NA                0.4000000   0.2987465   0.5012535
24 months   ki1114097-CMIN             6                    NA                0.3484848   0.2334821   0.4634876
24 months   ki1114097-CMIN             7                    NA                0.3728814   0.2494402   0.4963225
24 months   ki1114097-CMIN             8                    NA                0.4242424   0.3049588   0.5435260
24 months   ki1114097-CMIN             9                    NA                0.3636364   0.2630890   0.4641838
24 months   ki1114097-CMIN             10                   NA                0.4666667   0.3537136   0.5796197
24 months   ki1114097-CMIN             11                   NA                0.3723404   0.2745730   0.4701078
24 months   ki1114097-CMIN             12                   NA                0.4696970   0.3492420   0.5901520
3 months    ki0047075b-MAL-ED          1                    NA                0.1791908   0.1220263   0.2363552
3 months    ki0047075b-MAL-ED          2                    NA                0.1614907   0.1046335   0.2183478
3 months    ki0047075b-MAL-ED          3                    NA                0.1510791   0.0915268   0.2106315
3 months    ki0047075b-MAL-ED          4                    NA                0.0727273   0.0241843   0.1212702
3 months    ki0047075b-MAL-ED          5                    NA                0.1679389   0.1039083   0.2319696
3 months    ki0047075b-MAL-ED          6                    NA                0.1351351   0.0715190   0.1987512
3 months    ki0047075b-MAL-ED          7                    NA                0.1895425   0.1274208   0.2516641
3 months    ki0047075b-MAL-ED          8                    NA                0.1428571   0.0833701   0.2023441
3 months    ki0047075b-MAL-ED          9                    NA                0.1282051   0.0757283   0.1806820
3 months    ki0047075b-MAL-ED          10                   NA                0.1607143   0.1051625   0.2162660
3 months    ki0047075b-MAL-ED          11                   NA                0.1845238   0.1258496   0.2431980
3 months    ki0047075b-MAL-ED          12                   NA                0.1542857   0.1007522   0.2078192
3 months    ki1017093-NIH-Birth        1                    NA                0.2833333   0.1692135   0.3974532
3 months    ki1017093-NIH-Birth        2                    NA                0.2115385   0.1004388   0.3226381
3 months    ki1017093-NIH-Birth        3                    NA                0.1346154   0.0417659   0.2274649
3 months    ki1017093-NIH-Birth        4                    NA                0.1458333   0.0459004   0.2457662
3 months    ki1017093-NIH-Birth        5                    NA                0.2045455   0.0852550   0.3238359
3 months    ki1017093-NIH-Birth        6                    NA                0.2439024   0.1123392   0.3754656
3 months    ki1017093-NIH-Birth        7                    NA                0.3023256   0.1649344   0.4397168
3 months    ki1017093-NIH-Birth        8                    NA                0.2500000   0.1156926   0.3843074
3 months    ki1017093-NIH-Birth        9                    NA                0.2000000   0.0567387   0.3432613
3 months    ki1017093-NIH-Birth        10                   NA                0.3214286   0.1990021   0.4438551
3 months    ki1017093-NIH-Birth        11                   NA                0.2692308   0.1485661   0.3898955
3 months    ki1017093-NIH-Birth        12                   NA                0.1538462   0.0556949   0.2519974
3 months    ki1114097-CMIN             1                    NA                0.1417910   0.0827080   0.2008741
3 months    ki1114097-CMIN             2                    NA                0.1428571   0.0817367   0.2039776
3 months    ki1114097-CMIN             3                    NA                0.1206897   0.0613874   0.1799919
3 months    ki1114097-CMIN             4                    NA                0.1124260   0.0647844   0.1600677
3 months    ki1114097-CMIN             5                    NA                0.1328125   0.0740006   0.1916244
3 months    ki1114097-CMIN             6                    NA                0.0900901   0.0368093   0.1433709
3 months    ki1114097-CMIN             7                    NA                0.1333333   0.0630797   0.2035869
3 months    ki1114097-CMIN             8                    NA                0.1473684   0.0760642   0.2186727
3 months    ki1114097-CMIN             9                    NA                0.1259259   0.0699425   0.1819093
3 months    ki1114097-CMIN             10                   NA                0.1808511   0.1030165   0.2586856
3 months    ki1114097-CMIN             11                   NA                0.1474359   0.0917818   0.2030900
3 months    ki1114097-CMIN             12                   NA                0.1679389   0.1039047   0.2319731
3 months    ki1126311-ZVITAMBO         1                    NA                0.1574468   0.1108694   0.2040242
3 months    ki1126311-ZVITAMBO         2                    NA                0.2193548   0.1541952   0.2845145
3 months    ki1126311-ZVITAMBO         3                    NA                0.1878173   0.1332659   0.2423686
3 months    ki1126311-ZVITAMBO         4                    NA                0.1648352   0.1109190   0.2187514
3 months    ki1126311-ZVITAMBO         5                    NA                0.1901840   0.1299239   0.2504442
3 months    ki1126311-ZVITAMBO         6                    NA                0.2736842   0.2102746   0.3370938
3 months    ki1126311-ZVITAMBO         7                    NA                0.1490385   0.1006305   0.1974464
3 months    ki1126311-ZVITAMBO         8                    NA                0.1915888   0.1388490   0.2443286
3 months    ki1126311-ZVITAMBO         9                    NA                0.1275510   0.0808391   0.1742630
3 months    ki1126311-ZVITAMBO         10                   NA                0.1811594   0.1168855   0.2454333
3 months    ki1126311-ZVITAMBO         11                   NA                0.1411765   0.0888221   0.1935308
3 months    ki1126311-ZVITAMBO         12                   NA                0.1100917   0.0685327   0.1516508
6 months    ki0047075b-MAL-ED          1                    NA                0.1890244   0.1290843   0.2489644
6 months    ki0047075b-MAL-ED          2                    NA                0.1633987   0.1047965   0.2220009
6 months    ki0047075b-MAL-ED          3                    NA                0.1911765   0.1250690   0.2572840
6 months    ki0047075b-MAL-ED          4                    NA                0.1454545   0.0795507   0.2113584
6 months    ki0047075b-MAL-ED          5                    NA                0.1322314   0.0718570   0.1926058
6 months    ki0047075b-MAL-ED          6                    NA                0.0642202   0.0181855   0.1102549
6 months    ki0047075b-MAL-ED          7                    NA                0.2040816   0.1389107   0.2692525
6 months    ki0047075b-MAL-ED          8                    NA                0.1322314   0.0718570   0.1926058
6 months    ki0047075b-MAL-ED          9                    NA                0.1275168   0.0739439   0.1810897
6 months    ki0047075b-MAL-ED          10                   NA                0.1656051   0.1074418   0.2237684
6 months    ki0047075b-MAL-ED          11                   NA                0.2121212   0.1497253   0.2745171
6 months    ki0047075b-MAL-ED          12                   NA                0.1829268   0.1237402   0.2421134
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
6 months    ki1000108-IRC              1                    NA                0.3055556   0.1548966   0.4562145
6 months    ki1000108-IRC              2                    NA                0.4074074   0.2218437   0.5929711
6 months    ki1000108-IRC              3                    NA                0.3448276   0.1716219   0.5180332
6 months    ki1000108-IRC              4                    NA                0.2727273   0.0863968   0.4590577
6 months    ki1000108-IRC              5                    NA                0.3500000   0.1407054   0.5592946
6 months    ki1000108-IRC              6                    NA                0.1351351   0.0248442   0.2454260
6 months    ki1000108-IRC              7                    NA                0.3055556   0.1548966   0.4562145
6 months    ki1000108-IRC              8                    NA                0.1333333   0.0338910   0.2327757
6 months    ki1000108-IRC              9                    NA                0.2592593   0.0937582   0.4247603
6 months    ki1000108-IRC              10                   NA                0.1388889   0.0257806   0.2519972
6 months    ki1000108-IRC              11                   NA                0.1707317   0.0554143   0.2860491
6 months    ki1000108-IRC              12                   NA                0.2745098   0.1518812   0.3971384
6 months    ki1017093-NIH-Birth        1                    NA                0.3000000   0.1728614   0.4271386
6 months    ki1017093-NIH-Birth        2                    NA                0.2800000   0.1554301   0.4045699
6 months    ki1017093-NIH-Birth        3                    NA                0.2800000   0.1554301   0.4045699
6 months    ki1017093-NIH-Birth        4                    NA                0.2272727   0.1033322   0.3512132
6 months    ki1017093-NIH-Birth        5                    NA                0.2000000   0.0759254   0.3240746
6 months    ki1017093-NIH-Birth        6                    NA                0.2820513   0.1406897   0.4234128
6 months    ki1017093-NIH-Birth        7                    NA                0.4000000   0.2567310   0.5432690
6 months    ki1017093-NIH-Birth        8                    NA                0.1842105   0.0608412   0.3075799
6 months    ki1017093-NIH-Birth        9                    NA                0.2333333   0.0818434   0.3848233
6 months    ki1017093-NIH-Birth        10                   NA                0.2884615   0.1652094   0.4117136
6 months    ki1017093-NIH-Birth        11                   NA                0.3673469   0.2322406   0.5024533
6 months    ki1017093-NIH-Birth        12                   NA                0.1400000   0.0437322   0.2362678
6 months    ki1114097-CMIN             1                    NA                0.1645570   0.1067268   0.2223871
6 months    ki1114097-CMIN             2                    NA                0.1338028   0.0777931   0.1898125
6 months    ki1114097-CMIN             3                    NA                0.1290323   0.0762424   0.1818221
6 months    ki1114097-CMIN             4                    NA                0.0699588   0.0378788   0.1020389
6 months    ki1114097-CMIN             5                    NA                0.0857143   0.0442270   0.1272016
6 months    ki1114097-CMIN             6                    NA                0.0748299   0.0322842   0.1173757
6 months    ki1114097-CMIN             7                    NA                0.1261261   0.0643484   0.1879038
6 months    ki1114097-CMIN             8                    NA                0.1150442   0.0561978   0.1738907
6 months    ki1114097-CMIN             9                    NA                0.1358025   0.0830346   0.1885703
6 months    ki1114097-CMIN             10                   NA                0.1417323   0.0810572   0.2024074
6 months    ki1114097-CMIN             11                   NA                0.1265060   0.0759238   0.1770882
6 months    ki1114097-CMIN             12                   NA                0.1897810   0.1241009   0.2554611
6 months    ki1126311-ZVITAMBO         1                    NA                0.1818182   0.1308398   0.2327966
6 months    ki1126311-ZVITAMBO         2                    NA                0.2030075   0.1346303   0.2713847
6 months    ki1126311-ZVITAMBO         3                    NA                0.2178771   0.1573889   0.2783653
6 months    ki1126311-ZVITAMBO         4                    NA                0.1939394   0.1335961   0.2542827
6 months    ki1126311-ZVITAMBO         5                    NA                0.1830986   0.1194722   0.2467250
6 months    ki1126311-ZVITAMBO         6                    NA                0.1677419   0.1089066   0.2265773
6 months    ki1126311-ZVITAMBO         7                    NA                0.1818182   0.1229534   0.2406830
6 months    ki1126311-ZVITAMBO         8                    NA                0.1124260   0.0647888   0.1600633
6 months    ki1126311-ZVITAMBO         9                    NA                0.0909091   0.0496955   0.1321227
6 months    ki1126311-ZVITAMBO         10                   NA                0.1594203   0.0983295   0.2205111
6 months    ki1126311-ZVITAMBO         11                   NA                0.1443850   0.0939963   0.1947738
6 months    ki1126311-ZVITAMBO         12                   NA                0.1442308   0.0964746   0.1919870
9 months    ki0047075b-MAL-ED          1                    NA                0.2278481   0.1624258   0.2932704
9 months    ki0047075b-MAL-ED          2                    NA                0.2517007   0.1815226   0.3218788
9 months    ki0047075b-MAL-ED          3                    NA                0.2196970   0.1490429   0.2903511
9 months    ki0047075b-MAL-ED          4                    NA                0.1619048   0.0914253   0.2323842
9 months    ki0047075b-MAL-ED          5                    NA                0.1794872   0.1099292   0.2490452
9 months    ki0047075b-MAL-ED          6                    NA                0.1826923   0.1084046   0.2569800
9 months    ki0047075b-MAL-ED          7                    NA                0.2587413   0.1869403   0.3305422
9 months    ki0047075b-MAL-ED          8                    NA                0.1794872   0.1099292   0.2490452
9 months    ki0047075b-MAL-ED          9                    NA                0.1034483   0.0538638   0.1530328
9 months    ki0047075b-MAL-ED          10                   NA                0.2185430   0.1526085   0.2844776
9 months    ki0047075b-MAL-ED          11                   NA                0.2562500   0.1885847   0.3239153
9 months    ki0047075b-MAL-ED          12                   NA                0.2049689   0.1425949   0.2673430
9 months    ki1000108-IRC              1                    NA                0.3888889   0.2294465   0.5483313
9 months    ki1000108-IRC              2                    NA                0.3333333   0.1553029   0.5113637
9 months    ki1000108-IRC              3                    NA                0.2413793   0.0854436   0.3973150
9 months    ki1000108-IRC              4                    NA                0.4545455   0.2462217   0.6628693
9 months    ki1000108-IRC              5                    NA                0.5000000   0.2805997   0.7194003
9 months    ki1000108-IRC              6                    NA                0.1351351   0.0248442   0.2454260
9 months    ki1000108-IRC              7                    NA                0.2500000   0.1083777   0.3916223
9 months    ki1000108-IRC              8                    NA                0.1777778   0.0659346   0.2896209
9 months    ki1000108-IRC              9                    NA                0.2962963   0.1238482   0.4687444
9 months    ki1000108-IRC              10                   NA                0.1666667   0.0447776   0.2885557
9 months    ki1000108-IRC              11                   NA                0.2195122   0.0926586   0.3463658
9 months    ki1000108-IRC              12                   NA                0.3137255   0.1862223   0.4412287
9 months    ki1017093-NIH-Birth        1                    NA                0.4693878   0.3295150   0.6092606
9 months    ki1017093-NIH-Birth        2                    NA                0.3409091   0.2007109   0.4811073
9 months    ki1017093-NIH-Birth        3                    NA                0.3404255   0.2048220   0.4760290
9 months    ki1017093-NIH-Birth        4                    NA                0.2380952   0.1091581   0.3670323
9 months    ki1017093-NIH-Birth        5                    NA                0.3589744   0.2082741   0.5096746
9 months    ki1017093-NIH-Birth        6                    NA                0.2307692   0.0984077   0.3631308
9 months    ki1017093-NIH-Birth        7                    NA                0.4000000   0.2567231   0.5432769
9 months    ki1017093-NIH-Birth        8                    NA                0.4516129   0.2762560   0.6269698
9 months    ki1017093-NIH-Birth        9                    NA                0.3200000   0.1369641   0.5030359
9 months    ki1017093-NIH-Birth        10                   NA                0.3673469   0.2322331   0.5024608
9 months    ki1017093-NIH-Birth        11                   NA                0.4680851   0.3252906   0.6108796
9 months    ki1017093-NIH-Birth        12                   NA                0.2800000   0.1554232   0.4045768
9 months    ki1114097-CMIN             1                    NA                0.1793478   0.1239000   0.2347956
9 months    ki1114097-CMIN             2                    NA                0.2121212   0.1423622   0.2818803
9 months    ki1114097-CMIN             3                    NA                0.1398601   0.0829972   0.1967231
9 months    ki1114097-CMIN             4                    NA                0.1574803   0.1126727   0.2022880
9 months    ki1114097-CMIN             5                    NA                0.1559140   0.1037651   0.2080629
9 months    ki1114097-CMIN             6                    NA                0.1283784   0.0744714   0.1822853
9 months    ki1114097-CMIN             7                    NA                0.1484375   0.0868290   0.2100460
9 months    ki1114097-CMIN             8                    NA                0.2035398   0.1292835   0.2777961
9 months    ki1114097-CMIN             9                    NA                0.1610738   0.1020337   0.2201139
9 months    ki1114097-CMIN             10                   NA                0.2678571   0.1858208   0.3498935
9 months    ki1114097-CMIN             11                   NA                0.1677019   0.1099772   0.2254265
9 months    ki1114097-CMIN             12                   NA                0.2279412   0.1574178   0.2984645
9 months    ki1126311-ZVITAMBO         1                    NA                0.2112676   0.1564335   0.2661017
9 months    ki1126311-ZVITAMBO         2                    NA                0.2083333   0.1419853   0.2746814
9 months    ki1126311-ZVITAMBO         3                    NA                0.1948052   0.1322376   0.2573728
9 months    ki1126311-ZVITAMBO         4                    NA                0.1357143   0.0789681   0.1924604
9 months    ki1126311-ZVITAMBO         5                    NA                0.1942446   0.1284595   0.2600297
9 months    ki1126311-ZVITAMBO         6                    NA                0.2105263   0.1456988   0.2753538
9 months    ki1126311-ZVITAMBO         7                    NA                0.1931034   0.1288378   0.2573691
9 months    ki1126311-ZVITAMBO         8                    NA                0.1551724   0.1013608   0.2089840
9 months    ki1126311-ZVITAMBO         9                    NA                0.1888889   0.1316928   0.2460849
9 months    ki1126311-ZVITAMBO         10                   NA                0.2569444   0.1855593   0.3283296
9 months    ki1126311-ZVITAMBO         11                   NA                0.1818182   0.1248219   0.2388144
9 months    ki1126311-ZVITAMBO         12                   NA                0.2070707   0.1506156   0.2635258
Birth       ki0047075b-MAL-ED          1                    NA                0.1176471   0.0634800   0.1718141
Birth       ki0047075b-MAL-ED          2                    NA                0.1307692   0.0727941   0.1887444
Birth       ki0047075b-MAL-ED          3                    NA                0.1440000   0.0824318   0.2055682
Birth       ki0047075b-MAL-ED          4                    NA                0.0824743   0.0277128   0.1372358
Birth       ki0047075b-MAL-ED          5                    NA                0.1171171   0.0572769   0.1769573
Birth       ki0047075b-MAL-ED          6                    NA                0.1382979   0.0684882   0.2081075
Birth       ki0047075b-MAL-ED          7                    NA                0.1544118   0.0936622   0.2151613
Birth       ki0047075b-MAL-ED          8                    NA                0.1363636   0.0722115   0.2005158
Birth       ki0047075b-MAL-ED          9                    NA                0.1386861   0.0807926   0.1965797
Birth       ki0047075b-MAL-ED          10                   NA                0.1258741   0.0714890   0.1802593
Birth       ki0047075b-MAL-ED          11                   NA                0.1726619   0.1098090   0.2355148
Birth       ki0047075b-MAL-ED          12                   NA                0.1205674   0.0668024   0.1743324
Birth       ki1126311-ZVITAMBO         1                    NA                0.1608187   0.1218789   0.1997586
Birth       ki1126311-ZVITAMBO         2                    NA                0.1294118   0.0882082   0.1706153
Birth       ki1126311-ZVITAMBO         3                    NA                0.1155235   0.0778748   0.1531721
Birth       ki1126311-ZVITAMBO         4                    NA                0.1011673   0.0642947   0.1380399
Birth       ki1126311-ZVITAMBO         5                    NA                0.1219512   0.0810538   0.1628486
Birth       ki1126311-ZVITAMBO         6                    NA                0.1209964   0.0828600   0.1591328
Birth       ki1126311-ZVITAMBO         7                    NA                0.1023102   0.0681821   0.1364384
Birth       ki1126311-ZVITAMBO         8                    NA                0.0868167   0.0555191   0.1181144
Birth       ki1126311-ZVITAMBO         9                    NA                0.0683230   0.0407617   0.0958843
Birth       ki1126311-ZVITAMBO         10                   NA                0.0739300   0.0419354   0.1059246
Birth       ki1126311-ZVITAMBO         11                   NA                0.0851064   0.0525337   0.1176790
Birth       ki1126311-ZVITAMBO         12                   NA                0.0870968   0.0557030   0.1184906


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          NA                   NA                0.2698020   0.2679154   0.2716885
12 months   ki1000108-IRC              NA                   NA                0.2931034   0.2801170   0.3060899
12 months   ki1017093-NIH-Birth        NA                   NA                0.3747454   0.3699595   0.3795314
12 months   ki1114097-CMIN             NA                   NA                0.2484157   0.2458465   0.2509850
12 months   ki1126311-ZVITAMBO         NA                   NA                0.2377869   0.2361001   0.2394737
18 months   ki0047075b-MAL-ED          NA                   NA                0.3868047   0.3844025   0.3892068
18 months   ki1000108-IRC              NA                   NA                0.3555556   0.3438060   0.3673051
18 months   ki1017093-NIH-Birth        NA                   NA                0.5874730   0.5815100   0.5934360
18 months   ki1114097-CMIN             NA                   NA                0.3542320   0.3517650   0.3566990
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4764151   0.4675053   0.4853249
24 months   ki0047075b-MAL-ED          NA                   NA                0.3754197   0.3725577   0.3782817
24 months   ki1017093-NIH-Birth        NA                   NA                0.5547786   0.5482302   0.5613269
24 months   ki1114097-CMIN             NA                   NA                0.4001637   0.3981396   0.4021877
3 months    ki0047075b-MAL-ED          NA                   NA                0.1552306   0.1539322   0.1565290
3 months    ki1017093-NIH-Birth        NA                   NA                0.2280702   0.2230198   0.2331206
3 months    ki1114097-CMIN             NA                   NA                0.1360269   0.1348939   0.1371600
3 months    ki1126311-ZVITAMBO         NA                   NA                0.1725508   0.1708073   0.1742942
6 months    ki0047075b-MAL-ED          NA                   NA                0.1633255   0.1615178   0.1651332
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3008130   0.2898222   0.3118038
6 months    ki1000108-IRC              NA                   NA                0.2457002   0.2370866   0.2543139
6 months    ki1017093-NIH-Birth        NA                   NA                0.2681564   0.2621062   0.2742066
6 months    ki1114097-CMIN             NA                   NA                0.1209150   0.1193142   0.1225159
6 months    ki1126311-ZVITAMBO         NA                   NA                0.1635742   0.1620158   0.1651326
9 months    ki0047075b-MAL-ED          NA                   NA                0.2067073   0.2045748   0.2088399
9 months    ki1000108-IRC              NA                   NA                0.2727273   0.2629402   0.2825143
9 months    ki1017093-NIH-Birth        NA                   NA                0.3570020   0.3501502   0.3638537
9 months    ki1114097-CMIN             NA                   NA                0.1749729   0.1733290   0.1766168
9 months    ki1126311-ZVITAMBO         NA                   NA                0.1949974   0.1937693   0.1962256
Birth       ki0047075b-MAL-ED          NA                   NA                0.1327552   0.1317074   0.1338030
Birth       ki1126311-ZVITAMBO         NA                   NA                0.1045600   0.1036796   0.1054404


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          2                    1                 1.3326720   0.9508724   1.8677737
12 months   ki0047075b-MAL-ED          3                    1                 1.0379464   0.7106874   1.5159025
12 months   ki0047075b-MAL-ED          4                    1                 0.8516484   0.5508015   1.3168172
12 months   ki0047075b-MAL-ED          5                    1                 0.7953612   0.5159299   1.2261347
12 months   ki0047075b-MAL-ED          6                    1                 1.0290751   0.6878303   1.5396175
12 months   ki0047075b-MAL-ED          7                    1                 1.0944171   0.7635454   1.5686674
12 months   ki0047075b-MAL-ED          8                    1                 0.9144543   0.6054885   1.3810777
12 months   ki0047075b-MAL-ED          9                    1                 0.7852077   0.5214292   1.1824253
12 months   ki0047075b-MAL-ED          10                   1                 0.9858121   0.6790545   1.4311451
12 months   ki0047075b-MAL-ED          11                   1                 1.0676849   0.7485453   1.5228887
12 months   ki0047075b-MAL-ED          12                   1                 0.9627329   0.6672843   1.3889953
12 months   ki1000108-IRC              2                    1                 1.1234568   0.6494773   1.9433399
12 months   ki1000108-IRC              3                    1                 0.6436782   0.3184412   1.3010928
12 months   ki1000108-IRC              4                    1                 1.2222222   0.6982628   2.1393481
12 months   ki1000108-IRC              5                    1                 1.2833333   0.7392495   2.2278601
12 months   ki1000108-IRC              6                    1                 0.3153153   0.1279977   0.7767619
12 months   ki1000108-IRC              7                    1                 0.3888889   0.1703286   0.8878987
12 months   ki1000108-IRC              8                    1                 0.4148148   0.1985995   0.8664238
12 months   ki1000108-IRC              9                    1                 0.7777778   0.4031086   1.5006832
12 months   ki1000108-IRC              10                   1                 0.3153153   0.1279977   0.7767619
12 months   ki1000108-IRC              11                   1                 0.6260163   0.3318428   1.1809698
12 months   ki1000108-IRC              12                   1                 0.7777778   0.4507007   1.3422172
12 months   ki1017093-NIH-Birth        2                    1                 0.7642276   0.4491657   1.3002861
12 months   ki1017093-NIH-Birth        3                    1                 0.6811594   0.3965519   1.1700312
12 months   ki1017093-NIH-Birth        4                    1                 0.7833333   0.4614147   1.3298474
12 months   ki1017093-NIH-Birth        5                    1                 0.7258687   0.4129516   1.2759011
12 months   ki1017093-NIH-Birth        6                    1                 0.6838624   0.3802737   1.2298191
12 months   ki1017093-NIH-Birth        7                    1                 0.9825784   0.6138105   1.5728965
12 months   ki1017093-NIH-Birth        8                    1                 0.9494949   0.5703888   1.5805723
12 months   ki1017093-NIH-Birth        9                    1                 0.8392857   0.4572976   1.5403548
12 months   ki1017093-NIH-Birth        10                   1                 0.7764820   0.4713033   1.2792703
12 months   ki1017093-NIH-Birth        11                   1                 1.0257937   0.6587250   1.5974081
12 months   ki1017093-NIH-Birth        12                   1                 0.8221574   0.5054358   1.3373465
12 months   ki1114097-CMIN             2                    1                 0.8759936   0.5940813   1.2916832
12 months   ki1114097-CMIN             3                    1                 0.8111954   0.5506955   1.1949219
12 months   ki1114097-CMIN             4                    1                 0.6961615   0.4959080   0.9772798
12 months   ki1114097-CMIN             5                    1                 0.4943439   0.3177347   0.7691194
12 months   ki1114097-CMIN             6                    1                 0.7289003   0.4807451   1.1051503
12 months   ki1114097-CMIN             7                    1                 0.8463735   0.5649377   1.2680126
12 months   ki1114097-CMIN             8                    1                 0.8613060   0.5810668   1.2767000
12 months   ki1114097-CMIN             9                    1                 0.7695275   0.5166922   1.1460837
12 months   ki1114097-CMIN             10                   1                 1.1387347   0.8014199   1.6180242
12 months   ki1114097-CMIN             11                   1                 0.9027149   0.6267272   1.3002376
12 months   ki1114097-CMIN             12                   1                 1.1294118   0.7847588   1.6254306
12 months   ki1126311-ZVITAMBO         2                    1                 1.5328065   1.0335693   2.2731866
12 months   ki1126311-ZVITAMBO         3                    1                 1.0906225   0.7157320   1.6618755
12 months   ki1126311-ZVITAMBO         4                    1                 1.1224655   0.7373264   1.7087803
12 months   ki1126311-ZVITAMBO         5                    1                 1.2013889   0.7882950   1.8309583
12 months   ki1126311-ZVITAMBO         6                    1                 1.1844679   0.7868366   1.7830439
12 months   ki1126311-ZVITAMBO         7                    1                 1.1288218   0.7487086   1.7019153
12 months   ki1126311-ZVITAMBO         8                    1                 1.0921717   0.7236623   1.6483366
12 months   ki1126311-ZVITAMBO         9                    1                 0.9736747   0.6344769   1.4942110
12 months   ki1126311-ZVITAMBO         10                   1                 1.4416667   0.9591230   2.1669826
12 months   ki1126311-ZVITAMBO         11                   1                 1.2791767   0.8566192   1.9101753
12 months   ki1126311-ZVITAMBO         12                   1                 0.8954451   0.5798720   1.3827568
18 months   ki0047075b-MAL-ED          2                    1                 1.1447524   0.8837974   1.4827586
18 months   ki0047075b-MAL-ED          3                    1                 0.9187831   0.6839882   1.2341768
18 months   ki0047075b-MAL-ED          4                    1                 0.8868254   0.6453730   1.2186121
18 months   ki0047075b-MAL-ED          5                    1                 0.8877131   0.6511273   1.2102619
18 months   ki0047075b-MAL-ED          6                    1                 0.9255068   0.6788515   1.2617824
18 months   ki0047075b-MAL-ED          7                    1                 1.0296222   0.7880371   1.3452690
18 months   ki0047075b-MAL-ED          8                    1                 0.8060121   0.5850130   1.1104976
18 months   ki0047075b-MAL-ED          9                    1                 0.6823080   0.4926543   0.9449712
18 months   ki0047075b-MAL-ED          10                   1                 0.8669368   0.6491814   1.1577342
18 months   ki0047075b-MAL-ED          11                   1                 1.0178300   0.7794124   1.3291781
18 months   ki0047075b-MAL-ED          12                   1                 0.9086005   0.6887929   1.1985530
18 months   ki1000108-IRC              2                    1                 0.9777778   0.5378631   1.7774957
18 months   ki1000108-IRC              3                    1                 0.9103448   0.4966930   1.6684908
18 months   ki1000108-IRC              4                    1                 1.0909091   0.5987971   1.9874555
18 months   ki1000108-IRC              5                    1                 1.3714286   0.8024020   2.3439826
18 months   ki1000108-IRC              6                    1                 0.3243243   0.1314317   0.8003115
18 months   ki1000108-IRC              7                    1                 0.6666667   0.3465963   1.2823115
18 months   ki1000108-IRC              8                    1                 0.7090909   0.3896556   1.2903956
18 months   ki1000108-IRC              9                    1                 1.3333333   0.7977233   2.2285644
18 months   ki1000108-IRC              10                   1                 0.4235294   0.1858646   0.9650957
18 months   ki1000108-IRC              11                   1                 0.9365854   0.5433235   1.6144934
18 months   ki1000108-IRC              12                   1                 0.9411765   0.5614960   1.5775947
18 months   ki1017093-NIH-Birth        2                    1                 1.0476190   0.7387411   1.4856431
18 months   ki1017093-NIH-Birth        3                    1                 0.8712121   0.6017596   1.2613185
18 months   ki1017093-NIH-Birth        4                    1                 1.0964912   0.7873228   1.5270649
18 months   ki1017093-NIH-Birth        5                    1                 1.0476190   0.7387411   1.4856431
18 months   ki1017093-NIH-Birth        6                    1                 1.0952381   0.7809135   1.5360811
18 months   ki1017093-NIH-Birth        7                    1                 1.0975610   0.7929008   1.5192823
18 months   ki1017093-NIH-Birth        8                    1                 0.8602151   0.5671927   1.3046181
18 months   ki1017093-NIH-Birth        9                    1                 0.9333333   0.6120601   1.4232444
18 months   ki1017093-NIH-Birth        10                   1                 1.0000000   0.7133817   1.4017740
18 months   ki1017093-NIH-Birth        11                   1                 0.9848485   0.6989289   1.3877328
18 months   ki1017093-NIH-Birth        12                   1                 0.7407407   0.4940893   1.1105216
18 months   ki1114097-CMIN             2                    1                 0.8476247   0.6303742   1.1397478
18 months   ki1114097-CMIN             3                    1                 0.6764045   0.4896568   0.9343750
18 months   ki1114097-CMIN             4                    1                 0.8692586   0.6891266   1.0964756
18 months   ki1114097-CMIN             5                    1                 0.6951742   0.5118183   0.9442163
18 months   ki1114097-CMIN             6                    1                 0.6263005   0.4385433   0.8944436
18 months   ki1114097-CMIN             7                    1                 0.8241904   0.5892133   1.1528758
18 months   ki1114097-CMIN             8                    1                 0.8223763   0.5951848   1.1362903
18 months   ki1114097-CMIN             9                    1                 0.8819333   0.6665907   1.1668425
18 months   ki1114097-CMIN             10                   1                 1.0420798   0.7924558   1.3703354
18 months   ki1114097-CMIN             11                   1                 0.9037265   0.6915851   1.1809414
18 months   ki1114097-CMIN             12                   1                 0.9751572   0.7383203   1.2879661
18 months   ki1126311-ZVITAMBO         2                    1                 0.9560976   0.6498940   1.4065718
18 months   ki1126311-ZVITAMBO         3                    1                 0.8072072   0.5183529   1.2570268
18 months   ki1126311-ZVITAMBO         4                    1                 0.9531915   0.6573336   1.3822114
18 months   ki1126311-ZVITAMBO         5                    1                 0.8987654   0.5664075   1.4261451
18 months   ki1126311-ZVITAMBO         6                    1                 0.4839506   0.2443417   0.9585273
18 months   ki1126311-ZVITAMBO         7                    1                 0.7686275   0.4801492   1.2304261
18 months   ki1126311-ZVITAMBO         8                    1                 0.5149425   0.2718372   0.9754583
18 months   ki1126311-ZVITAMBO         9                    1                 1.0453333   0.6834205   1.5989011
18 months   ki1126311-ZVITAMBO         10                   1                 1.0550725   0.6835815   1.6284493
18 months   ki1126311-ZVITAMBO         11                   1                 1.0838710   0.7364940   1.5950929
18 months   ki1126311-ZVITAMBO         12                   1                 0.9531915   0.6573336   1.3822114
24 months   ki0047075b-MAL-ED          2                    1                 0.9846154   0.7509465   1.2909940
24 months   ki0047075b-MAL-ED          3                    1                 1.0266344   0.7817290   1.3482654
24 months   ki0047075b-MAL-ED          4                    1                 0.6977444   0.4889739   0.9956507
24 months   ki0047075b-MAL-ED          5                    1                 0.8625337   0.6346172   1.1723041
24 months   ki0047075b-MAL-ED          6                    1                 0.7864823   0.5618560   1.1009128
24 months   ki0047075b-MAL-ED          7                    1                 0.8592911   0.6449855   1.1448027
24 months   ki0047075b-MAL-ED          8                    1                 0.7207207   0.5176570   1.0034412
24 months   ki0047075b-MAL-ED          9                    1                 0.6311301   0.4533035   0.8787162
24 months   ki0047075b-MAL-ED          10                   1                 0.7563025   0.5589081   1.0234125
24 months   ki0047075b-MAL-ED          11                   1                 1.0030832   0.7703591   1.3061130
24 months   ki0047075b-MAL-ED          12                   1                 0.8838095   0.6721170   1.1621775
24 months   ki1017093-NIH-Birth        2                    1                 0.9938272   0.7118156   1.3875678
24 months   ki1017093-NIH-Birth        3                    1                 0.6829268   0.4516687   1.0325911
24 months   ki1017093-NIH-Birth        4                    1                 1.0065359   0.7195002   1.4080811
24 months   ki1017093-NIH-Birth        5                    1                 0.9607843   0.6784734   1.3605639
24 months   ki1017093-NIH-Birth        6                    1                 0.8814815   0.5991400   1.2968750
24 months   ki1017093-NIH-Birth        7                    1                 0.8408408   0.5788573   1.2213949
24 months   ki1017093-NIH-Birth        8                    1                 0.8296296   0.5538836   1.2426533
24 months   ki1017093-NIH-Birth        9                    1                 0.6549708   0.3688901   1.1629120
24 months   ki1017093-NIH-Birth        10                   1                 0.8166667   0.5632447   1.1841114
24 months   ki1017093-NIH-Birth        11                   1                 0.7967480   0.5477807   1.1588713
24 months   ki1017093-NIH-Birth        12                   1                 0.8296296   0.5818977   1.1828287
24 months   ki1114097-CMIN             2                    1                 0.8578548   0.6187766   1.1893062
24 months   ki1114097-CMIN             3                    1                 0.9017007   0.6603254   1.2313082
24 months   ki1114097-CMIN             4                    1                 1.0521880   0.8435295   1.3124612
24 months   ki1114097-CMIN             5                    1                 0.9836735   0.7319672   1.3219356
24 months   ki1114097-CMIN             6                    1                 0.8569882   0.5957698   1.2327394
24 months   ki1114097-CMIN             7                    1                 0.9169837   0.6368770   1.3202851
24 months   ki1114097-CMIN             8                    1                 1.0432900   0.7576626   1.4365948
24 months   ki1114097-CMIN             9                    1                 0.8942486   0.6520872   1.2263400
24 months   ki1114097-CMIN             10                   1                 1.1476190   0.8620632   1.5277644
24 months   ki1114097-CMIN             11                   1                 0.9156535   0.6758387   1.2405643
24 months   ki1114097-CMIN             12                   1                 1.1550711   0.8570632   1.5566989
3 months    ki0047075b-MAL-ED          2                    1                 0.9012222   0.5603956   1.4493359
3 months    ki0047075b-MAL-ED          3                    1                 0.8431191   0.5077609   1.3999695
3 months    ki0047075b-MAL-ED          4                    1                 0.4058651   0.1936857   0.8504836
3 months    ki0047075b-MAL-ED          5                    1                 0.9372076   0.5700781   1.5407680
3 months    ki0047075b-MAL-ED          6                    1                 0.7541412   0.4270541   1.3317494
3 months    ki0047075b-MAL-ED          7                    1                 1.0577693   0.6695110   1.6711838
3 months    ki0047075b-MAL-ED          8                    1                 0.7972350   0.4718146   1.3471047
3 months    ki0047075b-MAL-ED          9                    1                 0.7154673   0.4258054   1.2021771
3 months    ki0047075b-MAL-ED          10                   1                 0.8968894   0.5603505   1.4355489
3 months    ki0047075b-MAL-ED          11                   1                 1.0297619   0.6563286   1.6156687
3 months    ki0047075b-MAL-ED          12                   1                 0.8610138   0.5374140   1.3794668
3 months    ki1017093-NIH-Birth        2                    1                 0.7466063   0.3851665   1.4472209
3 months    ki1017093-NIH-Birth        3                    1                 0.4751131   0.2137535   1.0560411
3 months    ki1017093-NIH-Birth        4                    1                 0.5147059   0.2324642   1.1396257
3 months    ki1017093-NIH-Birth        5                    1                 0.7219251   0.3553689   1.4665773
3 months    ki1017093-NIH-Birth        6                    1                 0.8608321   0.4390903   1.6876527
3 months    ki1017093-NIH-Birth        7                    1                 1.0670315   0.5813696   1.9584033
3 months    ki1017093-NIH-Birth        8                    1                 0.8823529   0.4508537   1.7268280
3 months    ki1017093-NIH-Birth        9                    1                 0.7058824   0.3103399   1.6055619
3 months    ki1017093-NIH-Birth        10                   1                 1.1344538   0.6516843   1.9748602
3 months    ki1017093-NIH-Birth        11                   1                 0.9502262   0.5201541   1.7358892
3 months    ki1017093-NIH-Birth        12                   1                 0.5429864   0.2553403   1.1546717
3 months    ki1114097-CMIN             2                    1                 1.0075188   0.5544729   1.8307370
3 months    ki1114097-CMIN             3                    1                 0.8511797   0.4469138   1.6211334
3 months    ki1114097-CMIN             4                    1                 0.7928994   0.4376357   1.4365589
3 months    ki1114097-CMIN             5                    1                 0.9366776   0.5099400   1.7205261
3 months    ki1114097-CMIN             6                    1                 0.6353723   0.3081984   1.3098638
3 months    ki1114097-CMIN             7                    1                 0.9403509   0.4803411   1.8408998
3 months    ki1114097-CMIN             8                    1                 1.0393352   0.5488303   1.9682178
3 months    ki1114097-CMIN             9                    1                 0.8881092   0.4828806   1.6334016
3 months    ki1114097-CMIN             10                   1                 1.2754759   0.7006632   2.3218556
3 months    ki1114097-CMIN             11                   1                 1.0398111   0.5926160   1.8244650
3 months    ki1114097-CMIN             12                   1                 1.1844114   0.6732962   2.0835263
3 months    ki1126311-ZVITAMBO         2                    1                 1.3931997   0.9161016   2.1187663
3 months    ki1126311-ZVITAMBO         3                    1                 1.1928934   0.7880472   1.8057227
3 months    ki1126311-ZVITAMBO         4                    1                 1.0469260   0.6735669   1.6272387
3 months    ki1126311-ZVITAMBO         5                    1                 1.2079257   0.7830321   1.8633777
3 months    ki1126311-ZVITAMBO         6                    1                 1.7382646   1.1937841   2.5310806
3 months    ki1126311-ZVITAMBO         7                    1                 0.9465956   0.6100504   1.4688021
3 months    ki1126311-ZVITAMBO         8                    1                 1.2168477   0.8123448   1.8227707
3 months    ki1126311-ZVITAMBO         9                    1                 0.8101213   0.5059331   1.2972004
3 months    ki1126311-ZVITAMBO         10                   1                 1.1506071   0.7249486   1.8261939
3 months    ki1126311-ZVITAMBO         11                   1                 0.8966614   0.5579641   1.4409558
3 months    ki1126311-ZVITAMBO         12                   1                 0.6992313   0.4328452   1.1295595
6 months    ki0047075b-MAL-ED          2                    1                 0.8644318   0.5355769   1.3952101
6 months    ki0047075b-MAL-ED          3                    1                 1.0113852   0.6326387   1.6168786
6 months    ki0047075b-MAL-ED          4                    1                 0.7695015   0.4426200   1.3377899
6 months    ki0047075b-MAL-ED          5                    1                 0.6995468   0.4012308   1.2196615
6 months    ki0047075b-MAL-ED          6                    1                 0.3397455   0.1551456   0.7439915
6 months    ki0047075b-MAL-ED          7                    1                 1.0796577   0.6883970   1.6932970
6 months    ki0047075b-MAL-ED          8                    1                 0.6995468   0.4012308   1.2196615
6 months    ki0047075b-MAL-ED          9                    1                 0.6746049   0.3985225   1.1419475
6 months    ki0047075b-MAL-ED          10                   1                 0.8761044   0.5458243   1.4062381
6 months    ki0047075b-MAL-ED          11                   1                 1.1221896   0.7281525   1.7294585
6 months    ki0047075b-MAL-ED          12                   1                 0.9677419   0.6151896   1.5223346
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
6 months    ki1000108-IRC              2                    1                 1.3333333   0.6814288   2.6088974
6 months    ki1000108-IRC              3                    1                 1.1285266   0.5582521   2.2813569
6 months    ki1000108-IRC              4                    1                 0.8925620   0.3843467   2.0727817
6 months    ki1000108-IRC              5                    1                 1.1454545   0.5276900   2.4864336
6 months    ki1000108-IRC              6                    1                 0.4422604   0.1704376   1.1476006
6 months    ki1000108-IRC              7                    1                 1.0000000   0.4979279   2.0083230
6 months    ki1000108-IRC              8                    1                 0.4363636   0.1784677   1.0669336
6 months    ki1000108-IRC              9                    1                 0.8484848   0.3787374   1.9008596
6 months    ki1000108-IRC              10                   1                 0.4545455   0.1754380   1.1776903
6 months    ki1000108-IRC              11                   1                 0.5587583   0.2421272   1.2894496
6 months    ki1000108-IRC              12                   1                 0.8983957   0.4618662   1.7475080
6 months    ki1017093-NIH-Birth        2                    1                 0.9333333   0.5048827   1.7253731
6 months    ki1017093-NIH-Birth        3                    1                 0.9333333   0.5048827   1.7253731
6 months    ki1017093-NIH-Birth        4                    1                 0.7575758   0.3797353   1.5113714
6 months    ki1017093-NIH-Birth        5                    1                 0.6666667   0.3144991   1.4131819
6 months    ki1017093-NIH-Birth        6                    1                 0.9401709   0.4877056   1.8124076
6 months    ki1017093-NIH-Birth        7                    1                 1.3333333   0.7655228   2.3223056
6 months    ki1017093-NIH-Birth        8                    1                 0.6140351   0.2779685   1.3564095
6 months    ki1017093-NIH-Birth        9                    1                 0.7777778   0.3582111   1.6887760
6 months    ki1017093-NIH-Birth        10                   1                 0.9615385   0.5267535   1.7551972
6 months    ki1017093-NIH-Birth        11                   1                 1.2244898   0.6986468   2.1461135
6 months    ki1017093-NIH-Birth        12                   1                 0.4666667   0.2080715   1.0466490
6 months    ki1114097-CMIN             2                    1                 0.8131094   0.4707400   1.4044843
6 months    ki1114097-CMIN             3                    1                 0.7841191   0.4572476   1.3446604
6 months    ki1114097-CMIN             4                    1                 0.4251345   0.2385721   0.7575882
6 months    ki1114097-CMIN             5                    1                 0.5208791   0.2863956   0.9473438
6 months    ki1114097-CMIN             6                    1                 0.4547357   0.2330628   0.8872483
6 months    ki1114097-CMIN             7                    1                 0.7664588   0.4194488   1.4005502
6 months    ki1114097-CMIN             8                    1                 0.6991150   0.3758587   1.3003871
6 months    ki1114097-CMIN             9                    1                 0.8252612   0.4887190   1.3935532
6 months    ki1114097-CMIN             10                   1                 0.8612962   0.4950066   1.4986289
6 months    ki1114097-CMIN             11                   1                 0.7687674   0.4514473   1.3091302
6 months    ki1114097-CMIN             12                   1                 1.1532847   0.7042538   1.8886169
6 months    ki1126311-ZVITAMBO         2                    1                 1.1165414   0.7203535   1.7306288
6 months    ki1126311-ZVITAMBO         3                    1                 1.1983240   0.8076300   1.7780178
6 months    ki1126311-ZVITAMBO         4                    1                 1.0666667   0.7016651   1.6215398
6 months    ki1126311-ZVITAMBO         5                    1                 1.0070423   0.6443653   1.5738496
6 months    ki1126311-ZVITAMBO         6                    1                 0.9225806   0.5888273   1.4455088
6 months    ki1126311-ZVITAMBO         7                    1                 1.0000000   0.6516227   1.5346303
6 months    ki1126311-ZVITAMBO         8                    1                 0.6183432   0.3720232   1.0277540
6 months    ki1126311-ZVITAMBO         9                    1                 0.5000000   0.2934070   0.8520589
6 months    ki1126311-ZVITAMBO         10                   1                 0.8768116   0.5453705   1.4096813
6 months    ki1126311-ZVITAMBO         11                   1                 0.7941176   0.5075338   1.2425237
6 months    ki1126311-ZVITAMBO         12                   1                 0.7932692   0.5140332   1.2241933
9 months    ki0047075b-MAL-ED          2                    1                 1.1046863   0.7403244   1.6483746
9 months    ki0047075b-MAL-ED          3                    1                 0.9642256   0.6265316   1.4839330
9 months    ki0047075b-MAL-ED          4                    1                 0.7105820   0.4218303   1.1969905
9 months    ki0047075b-MAL-ED          5                    1                 0.7877493   0.4863181   1.2760145
9 months    ki0047075b-MAL-ED          6                    1                 0.8018162   0.4874044   1.3190469
9 months    ki0047075b-MAL-ED          7                    1                 1.1355866   0.7617293   1.6929335
9 months    ki0047075b-MAL-ED          8                    1                 0.7877493   0.4863181   1.2760145
9 months    ki0047075b-MAL-ED          9                    1                 0.4540230   0.2596694   0.7938437
9 months    ki0047075b-MAL-ED          10                   1                 0.9591611   0.6324269   1.4546980
9 months    ki0047075b-MAL-ED          11                   1                 1.1246528   0.7613837   1.6612438
9 months    ki0047075b-MAL-ED          12                   1                 0.8995859   0.5920235   1.3669303
9 months    ki1000108-IRC              2                    1                 0.8571429   0.4371571   1.6806176
9 months    ki1000108-IRC              3                    1                 0.6206897   0.2887880   1.3340433
9 months    ki1000108-IRC              4                    1                 1.1688312   0.6319585   2.1617973
9 months    ki1000108-IRC              5                    1                 1.2857143   0.7052379   2.3439768
9 months    ki1000108-IRC              6                    1                 0.3474903   0.1394060   0.8661715
9 months    ki1000108-IRC              7                    1                 0.6428571   0.3194603   1.2936358
9 months    ki1000108-IRC              8                    1                 0.4571429   0.2157399   0.9686647
9 months    ki1000108-IRC              9                    1                 0.7619048   0.3738665   1.5526903
9 months    ki1000108-IRC              10                   1                 0.4285714   0.1853116   0.9911601
9 months    ki1000108-IRC              11                   1                 0.5644599   0.2779146   1.1464493
9 months    ki1000108-IRC              12                   1                 0.8067227   0.4529060   1.4369462
9 months    ki1017093-NIH-Birth        2                    1                 0.7262846   0.4370645   1.2068912
9 months    ki1017093-NIH-Birth        3                    1                 0.7252544   0.4410067   1.1927120
9 months    ki1017093-NIH-Birth        4                    1                 0.5072464   0.2733868   0.9411533
9 months    ki1017093-NIH-Birth        5                    1                 0.7647715   0.4570350   1.2797168
9 months    ki1017093-NIH-Birth        6                    1                 0.4916388   0.2575948   0.9383291
9 months    ki1017093-NIH-Birth        7                    1                 0.8521739   0.5347777   1.3579482
9 months    ki1017093-NIH-Birth        8                    1                 0.9621318   0.5897481   1.5696494
9 months    ki1017093-NIH-Birth        9                    1                 0.6817391   0.3576990   1.2993278
9 months    ki1017093-NIH-Birth        10                   1                 0.7826087   0.4874851   1.2564002
9 months    ki1017093-NIH-Birth        11                   1                 0.9972248   0.6510104   1.5275598
9 months    ki1017093-NIH-Birth        12                   1                 0.5965217   0.3491934   1.0190288
9 months    ki1114097-CMIN             2                    1                 1.1827365   0.7531146   1.8574406
9 months    ki1114097-CMIN             3                    1                 0.7798262   0.4679239   1.2996321
9 months    ki1114097-CMIN             4                    1                 0.8780721   0.5768393   1.3366124
9 months    ki1114097-CMIN             5                    1                 0.8693385   0.5512904   1.3708738
9 months    ki1114097-CMIN             6                    1                 0.7158067   0.4249477   1.2057466
9 months    ki1114097-CMIN             7                    1                 0.8276515   0.4932685   1.3887102
9 months    ki1114097-CMIN             8                    1                 1.1348887   0.7035127   1.8307734
9 months    ki1114097-CMIN             9                    1                 0.8981086   0.5560046   1.4507057
9 months    ki1114097-CMIN             10                   1                 1.4935065   0.9665187   2.3078309
9 months    ki1114097-CMIN             11                   1                 0.9350649   0.5887178   1.4851706
9 months    ki1114097-CMIN             12                   1                 1.2709447   0.8206776   1.9682521
9 months    ki1126311-ZVITAMBO         2                    1                 0.9861111   0.6538840   1.4871370
9 months    ki1126311-ZVITAMBO         3                    1                 0.9220779   0.6101390   1.3934984
9 months    ki1126311-ZVITAMBO         4                    1                 0.6423810   0.3927000   1.0508105
9 months    ki1126311-ZVITAMBO         5                    1                 0.9194245   0.6000775   1.4087202
9 months    ki1126311-ZVITAMBO         6                    1                 0.9964912   0.6661512   1.4906447
9 months    ki1126311-ZVITAMBO         7                    1                 0.9140230   0.5993277   1.3939586
9 months    ki1126311-ZVITAMBO         8                    1                 0.7344828   0.4762815   1.1326599
9 months    ki1126311-ZVITAMBO         9                    1                 0.8940741   0.6000255   1.3322241
9 months    ki1126311-ZVITAMBO         10                   1                 1.2162037   0.8315497   1.7787891
9 months    ki1126311-ZVITAMBO         11                   1                 0.8606061   0.5728677   1.2928688
9 months    ki1126311-ZVITAMBO         12                   1                 0.9801347   0.6726767   1.4281213
Birth       ki0047075b-MAL-ED          2                    1                 1.1115385   0.5865934   2.1062590
Birth       ki0047075b-MAL-ED          3                    1                 1.2240000   0.6529858   2.2943471
Birth       ki0047075b-MAL-ED          4                    1                 0.7010312   0.3124845   1.5727013
Birth       ki0047075b-MAL-ED          5                    1                 0.9954955   0.5004233   1.9803458
Birth       ki0047075b-MAL-ED          6                    1                 1.1755319   0.5936311   2.3278351
Birth       ki0047075b-MAL-ED          7                    1                 1.3125000   0.7162815   2.4049989
Birth       ki0047075b-MAL-ED          8                    1                 1.1590909   0.6001197   2.2387064
Birth       ki0047075b-MAL-ED          9                    1                 1.1788321   0.6332045   2.1946232
Birth       ki0047075b-MAL-ED          10                   1                 1.0699301   0.5690405   2.0117204
Birth       ki0047075b-MAL-ED          11                   1                 1.4676259   0.8160378   2.6394927
Birth       ki0047075b-MAL-ED          12                   1                 1.0248227   0.5398571   1.9454435
Birth       ki1126311-ZVITAMBO         2                    1                 0.8047059   0.5394090   1.2004833
Birth       ki1126311-ZVITAMBO         3                    1                 0.7183459   0.4786402   1.0780977
Birth       ki1126311-ZVITAMBO         4                    1                 0.6290768   0.4061333   0.9744031
Birth       ki1126311-ZVITAMBO         5                    1                 0.7583149   0.5014292   1.1468049
Birth       ki1126311-ZVITAMBO         6                    1                 0.7523779   0.5056184   1.1195646
Birth       ki1126311-ZVITAMBO         7                    1                 0.6361836   0.4212793   0.9607157
Birth       ki1126311-ZVITAMBO         8                    1                 0.5398422   0.3496755   0.8334285
Birth       ki1126311-ZVITAMBO         9                    1                 0.4248447   0.2653995   0.6800805
Birth       ki1126311-ZVITAMBO         10                   1                 0.4597099   0.2799732   0.7548337
Birth       ki1126311-ZVITAMBO         11                   1                 0.5292070   0.3364630   0.8323649
Birth       ki1126311-ZVITAMBO         12                   1                 0.5415836   0.3508196   0.8360786


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          1                    NA                -0.0011658   -0.0711832    0.0688517
12 months   ki1000108-IRC              1                    NA                -0.1354680   -0.3001314    0.0291954
12 months   ki1017093-NIH-Birth        1                    NA                -0.0720631   -0.2144224    0.0702962
12 months   ki1114097-CMIN             1                    NA                -0.0498299   -0.1184690    0.0188092
12 months   ki1126311-ZVITAMBO         1                    NA                 0.0296944   -0.0308378    0.0902267
18 months   ki0047075b-MAL-ED          1                    NA                -0.0304139   -0.1091252    0.0482974
18 months   ki1000108-IRC              1                    NA                -0.0611111   -0.2227837    0.1005615
18 months   ki1017093-NIH-Birth        1                    NA                -0.0125270   -0.1559414    0.1308874
18 months   ki1114097-CMIN             1                    NA                -0.0597215   -0.1256254    0.0061824
18 months   ki1126311-ZVITAMBO         1                    NA                -0.0592992   -0.1903778    0.0717794
24 months   ki0047075b-MAL-ED          1                    NA                -0.0620803   -0.1431826    0.0190221
24 months   ki1017093-NIH-Birth        1                    NA                -0.0880786   -0.2333066    0.0571494
24 months   ki1114097-CMIN             1                    NA                -0.0064753   -0.0685497    0.0555990
3 months    ki0047075b-MAL-ED          1                    NA                -0.0239602   -0.0811394    0.0332191
3 months    ki1017093-NIH-Birth        1                    NA                -0.0552632   -0.1694947    0.0589684
3 months    ki1114097-CMIN             1                    NA                -0.0057641   -0.0648580    0.0533298
3 months    ki1126311-ZVITAMBO         1                    NA                 0.0151039   -0.0315061    0.0617140
6 months    ki0047075b-MAL-ED          1                    NA                -0.0256989   -0.0856662    0.0342684
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                 0.0066954   -0.1470624    0.1604531
6 months    ki1000108-IRC              1                    NA                -0.0598553   -0.2107603    0.0910497
6 months    ki1017093-NIH-Birth        1                    NA                -0.0318436   -0.1591261    0.0954389
6 months    ki1114097-CMIN             1                    NA                -0.0436419   -0.1014942    0.0142104
6 months    ki1126311-ZVITAMBO         1                    NA                -0.0182440   -0.0692462    0.0327583
9 months    ki0047075b-MAL-ED          1                    NA                -0.0211408   -0.0865979    0.0443163
9 months    ki1000108-IRC              1                    NA                -0.1161616   -0.2759041    0.0435809
9 months    ki1017093-NIH-Birth        1                    NA                -0.1123858   -0.2524263    0.0276547
9 months    ki1114097-CMIN             1                    NA                -0.0043749   -0.0598471    0.0510973
9 months    ki1126311-ZVITAMBO         1                    NA                -0.0162702   -0.0711180    0.0385777
Birth       ki0047075b-MAL-ED          1                    NA                 0.0151081   -0.0390691    0.0692853
Birth       ki1126311-ZVITAMBO         1                    NA                -0.0562587   -0.0952085   -0.0173089


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          1                    NA                -0.0043208   -0.3004498    0.2243758
12 months   ki1000108-IRC              1                    NA                -0.4621849   -1.1500771    0.0056242
12 months   ki1017093-NIH-Birth        1                    NA                -0.1922988   -0.6397976    0.1330781
12 months   ki1114097-CMIN             1                    NA                -0.2005908   -0.5113871    0.0462945
12 months   ki1126311-ZVITAMBO         1                    NA                 0.1248784   -0.1705484    0.3457444
18 months   ki0047075b-MAL-ED          1                    NA                -0.0786285   -0.3025996    0.1068326
18 months   ki1000108-IRC              1                    NA                -0.1718750   -0.7280637    0.2053007
18 months   ki1017093-NIH-Birth        1                    NA                -0.0213235   -0.2971016    0.1958211
18 months   ki1114097-CMIN             1                    NA                -0.1685944   -0.3703258    0.0034394
18 months   ki1126311-ZVITAMBO         1                    NA                -0.1244696   -0.4364013    0.1197224
24 months   ki0047075b-MAL-ED          1                    NA                -0.1653623   -0.4027719    0.0318674
24 months   ki1017093-NIH-Birth        1                    NA                -0.1587635   -0.4525816    0.0756231
24 months   ki1114097-CMIN             1                    NA                -0.0161817   -0.1837734    0.1276833
3 months    ki0047075b-MAL-ED          1                    NA                -0.1543520   -0.5882986    0.1610340
3 months    ki1017093-NIH-Birth        1                    NA                -0.2423077   -0.8595879    0.1700697
3 months    ki1114097-CMIN             1                    NA                -0.0423748   -0.5813450    0.3128981
3 months    ki1126311-ZVITAMBO         1                    NA                 0.0875333   -0.2267869    0.3213202
6 months    ki0047075b-MAL-ED          1                    NA                -0.1573479   -0.5895109    0.1573168
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                 0.0222576   -0.6490651    0.4202895
6 months    ki1000108-IRC              1                    NA                -0.2436111   -1.0387353    0.2414078
6 months    ki1017093-NIH-Birth        1                    NA                -0.1187500   -0.7101953    0.2681528
6 months    ki1114097-CMIN             1                    NA                -0.3609306   -0.9344972    0.0425771
6 months    ki1126311-ZVITAMBO         1                    NA                -0.1115332   -0.4715018    0.1603774
9 months    ki0047075b-MAL-ED          1                    NA                -0.1022740   -0.4691617    0.1729924
9 months    ki1000108-IRC              1                    NA                -0.4259259   -1.1519700    0.0551612
9 months    ki1017093-NIH-Birth        1                    NA                -0.3148044   -0.7723302    0.0246115
9 months    ki1114097-CMIN             1                    NA                -0.0250034   -0.3965462    0.2476927
9 months    ki1126311-ZVITAMBO         1                    NA                -0.0834378   -0.4046153    0.1642997
Birth       ki0047075b-MAL-ED          1                    NA                 0.1138043   -0.4044842    0.4408319
Birth       ki1126311-ZVITAMBO         1                    NA                -0.5380523   -0.9597136   -0.2071177


