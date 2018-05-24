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

**Intervention Variable:** nrooms

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
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1114097-CONTENT

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/2a8d7e41-f37c-4215-bbc5-9e6224d8f67f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2a8d7e41-f37c-4215-bbc5-9e6224d8f67f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/2a8d7e41-f37c-4215-bbc5-9e6224d8f67f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2a8d7e41-f37c-4215-bbc5-9e6224d8f67f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          1     1365    289    251     38
Birth       ki0047075b-MAL-ED          2     1365    254    216     38
Birth       ki0047075b-MAL-ED          3     1365    242    213     29
Birth       ki0047075b-MAL-ED          4+    1365    580    513     67
Birth       ki1000108-CMC-V-BCS-2002   1       90     38     32      6
Birth       ki1000108-CMC-V-BCS-2002   2       90     28     22      6
Birth       ki1000108-CMC-V-BCS-2002   3       90     19     16      3
Birth       ki1000108-CMC-V-BCS-2002   4+      90      5      4      1
Birth       ki1000108-IRC              1      386    175    156     19
Birth       ki1000108-IRC              2      386    161    141     20
Birth       ki1000108-IRC              3      386     33     28      5
Birth       ki1000108-IRC              4+     386     17     16      1
Birth       ki1017093b-PROVIDE         1        0      0      0      0
Birth       ki1017093b-PROVIDE         2        0      0      0      0
Birth       ki1017093b-PROVIDE         3        0      0      0      0
Birth       ki1017093b-PROVIDE         4+       0      0      0      0
Birth       ki1017093c-NIH-Crypto      1       27     17     14      3
Birth       ki1017093c-NIH-Crypto      2       27      7      6      1
Birth       ki1017093c-NIH-Crypto      3       27      0      0      0
Birth       ki1017093c-NIH-Crypto      4+      27      3      2      1
Birth       ki1113344-GMS-Nepal        1        0      0      0      0
Birth       ki1113344-GMS-Nepal        2        0      0      0      0
Birth       ki1113344-GMS-Nepal        3        0      0      0      0
Birth       ki1113344-GMS-Nepal        4+       0      0      0      0
Birth       ki1114097-CONTENT          1        2      0      0      0
Birth       ki1114097-CONTENT          2        2      1      1      0
Birth       ki1114097-CONTENT          3        2      0      0      0
Birth       ki1114097-CONTENT          4+       2      1      1      0
Birth       ki1135781-COHORTS          1     4769   3125   2705    420
Birth       ki1135781-COHORTS          2     4769   1385   1263    122
Birth       ki1135781-COHORTS          3     4769    167    152     15
Birth       ki1135781-COHORTS          4+    4769     92     84      8
3 months    ki0047075b-MAL-ED          1     1697    337    273     64
3 months    ki0047075b-MAL-ED          2     1697    316    259     57
3 months    ki0047075b-MAL-ED          3     1697    309    276     33
3 months    ki0047075b-MAL-ED          4+    1697    735    628    107
3 months    ki1000108-CMC-V-BCS-2002   1      362    195    149     46
3 months    ki1000108-CMC-V-BCS-2002   2      362    102     73     29
3 months    ki1000108-CMC-V-BCS-2002   3      362     51     38     13
3 months    ki1000108-CMC-V-BCS-2002   4+     362     14     12      2
3 months    ki1000108-IRC              1      405    184    147     37
3 months    ki1000108-IRC              2      405    168    125     43
3 months    ki1000108-IRC              3      405     36     31      5
3 months    ki1000108-IRC              4+     405     17     11      6
3 months    ki1017093b-PROVIDE         1      168    118    102     16
3 months    ki1017093b-PROVIDE         2      168     26     25      1
3 months    ki1017093b-PROVIDE         3      168     17     16      1
3 months    ki1017093b-PROVIDE         4+     168      7      5      2
3 months    ki1017093c-NIH-Crypto      1      728    349    271     78
3 months    ki1017093c-NIH-Crypto      2      728    186    142     44
3 months    ki1017093c-NIH-Crypto      3      728    102     85     17
3 months    ki1017093c-NIH-Crypto      4+     728     91     74     17
3 months    ki1113344-GMS-Nepal        1      571     40     32      8
3 months    ki1113344-GMS-Nepal        2      571    121    106     15
3 months    ki1113344-GMS-Nepal        3      571    140    113     27
3 months    ki1113344-GMS-Nepal        4+     571    270    236     34
3 months    ki1114097-CONTENT          1      215     44     39      5
3 months    ki1114097-CONTENT          2      215     54     50      4
3 months    ki1114097-CONTENT          3      215     39     34      5
3 months    ki1114097-CONTENT          4+     215     78     72      6
3 months    ki1135781-COHORTS          1     5077   3327   2708    619
3 months    ki1135781-COHORTS          2     5077   1467   1320    147
3 months    ki1135781-COHORTS          3     5077    185    169     16
3 months    ki1135781-COHORTS          4+    5077     98     93      5
6 months    ki0047075b-MAL-ED          1     1686    336    268     68
6 months    ki0047075b-MAL-ED          2     1686    312    252     60
6 months    ki0047075b-MAL-ED          3     1686    306    274     32
6 months    ki0047075b-MAL-ED          4+    1686    732    617    115
6 months    ki1000108-CMC-V-BCS-2002   1      369    198    143     55
6 months    ki1000108-CMC-V-BCS-2002   2      369    106     70     36
6 months    ki1000108-CMC-V-BCS-2002   3      369     51     35     16
6 months    ki1000108-CMC-V-BCS-2002   4+     369     14     10      4
6 months    ki1000108-IRC              1      405    183    140     43
6 months    ki1000108-IRC              2      405    170    123     47
6 months    ki1000108-IRC              3      405     35     29      6
6 months    ki1000108-IRC              4+     405     17     13      4
6 months    ki1017093b-PROVIDE         1      153    106     85     21
6 months    ki1017093b-PROVIDE         2      153     24     21      3
6 months    ki1017093b-PROVIDE         3      153     16     14      2
6 months    ki1017093b-PROVIDE         4+     153      7      5      2
6 months    ki1017093c-NIH-Crypto      1      715    339    261     78
6 months    ki1017093c-NIH-Crypto      2      715    184    141     43
6 months    ki1017093c-NIH-Crypto      3      715    101     87     14
6 months    ki1017093c-NIH-Crypto      4+     715     91     76     15
6 months    ki1113344-GMS-Nepal        1      563     40     28     12
6 months    ki1113344-GMS-Nepal        2      563    115     90     25
6 months    ki1113344-GMS-Nepal        3      563    141    111     30
6 months    ki1113344-GMS-Nepal        4+     563    267    215     52
6 months    ki1114097-CONTENT          1      215     44     36      8
6 months    ki1114097-CONTENT          2      215     54     50      4
6 months    ki1114097-CONTENT          3      215     39     36      3
6 months    ki1114097-CONTENT          4+     215     78     74      4
6 months    ki1135781-COHORTS          1     4962   3213   2448    765
6 months    ki1135781-COHORTS          2     4962   1474   1294    180
6 months    ki1135781-COHORTS          3     4962    182    163     19
6 months    ki1135781-COHORTS          4+    4962     93     87      6
9 months    ki0047075b-MAL-ED          1     1638    329    251     78
9 months    ki0047075b-MAL-ED          2     1638    295    223     72
9 months    ki0047075b-MAL-ED          3     1638    299    240     59
9 months    ki0047075b-MAL-ED          4+    1638    715    585    130
9 months    ki1000108-CMC-V-BCS-2002   1      366    199    125     74
9 months    ki1000108-CMC-V-BCS-2002   2      366    103     65     38
9 months    ki1000108-CMC-V-BCS-2002   3      366     50     33     17
9 months    ki1000108-CMC-V-BCS-2002   4+     366     14      8      6
9 months    ki1000108-IRC              1      405    183    131     52
9 months    ki1000108-IRC              2      405    170    123     47
9 months    ki1000108-IRC              3      405     35     28      7
9 months    ki1000108-IRC              4+     405     17     12      5
9 months    ki1017093b-PROVIDE         1      158    109     81     28
9 months    ki1017093b-PROVIDE         2      158     26     22      4
9 months    ki1017093b-PROVIDE         3      158     16     13      3
9 months    ki1017093b-PROVIDE         4+     158      7      5      2
9 months    ki1017093c-NIH-Crypto      1      706    332    247     85
9 months    ki1017093c-NIH-Crypto      2      706    184    137     47
9 months    ki1017093c-NIH-Crypto      3      706    101     84     17
9 months    ki1017093c-NIH-Crypto      4+     706     89     74     15
9 months    ki1113344-GMS-Nepal        1      551     38     26     12
9 months    ki1113344-GMS-Nepal        2      551    117     82     35
9 months    ki1113344-GMS-Nepal        3      551    136     98     38
9 months    ki1113344-GMS-Nepal        4+     551    260    190     70
9 months    ki1114097-CONTENT          1      214     44     35      9
9 months    ki1114097-CONTENT          2      214     54     48      6
9 months    ki1114097-CONTENT          3      214     38     36      2
9 months    ki1114097-CONTENT          4+     214     78     73      5
9 months    ki1135781-COHORTS          1     4337   2793   1873    920
9 months    ki1135781-COHORTS          2     4337   1306   1079    227
9 months    ki1135781-COHORTS          3     4337    156    124     32
9 months    ki1135781-COHORTS          4+    4337     82     77      5
12 months   ki0047075b-MAL-ED          1     1615    325    231     94
12 months   ki0047075b-MAL-ED          2     1615    291    192     99
12 months   ki0047075b-MAL-ED          3     1615    290    215     75
12 months   ki0047075b-MAL-ED          4+    1615    709    542    167
12 months   ki1000108-CMC-V-BCS-2002   1      368    200     99    101
12 months   ki1000108-CMC-V-BCS-2002   2      368    105     48     57
12 months   ki1000108-CMC-V-BCS-2002   3      368     49     30     19
12 months   ki1000108-CMC-V-BCS-2002   4+     368     14      8      6
12 months   ki1000108-IRC              1      404    184    128     56
12 months   ki1000108-IRC              2      404    169    119     50
12 months   ki1000108-IRC              3      404     34     27      7
12 months   ki1000108-IRC              4+     404     17     11      6
12 months   ki1017093b-PROVIDE         1      153    105     71     34
12 months   ki1017093b-PROVIDE         2      153     25     20      5
12 months   ki1017093b-PROVIDE         3      153     16     13      3
12 months   ki1017093b-PROVIDE         4+     153      7      5      2
12 months   ki1017093c-NIH-Crypto      1      706    331    242     89
12 months   ki1017093c-NIH-Crypto      2      706    183    131     52
12 months   ki1017093c-NIH-Crypto      3      706    102     90     12
12 months   ki1017093c-NIH-Crypto      4+     706     90     72     18
12 months   ki1113344-GMS-Nepal        1      558     38     22     16
12 months   ki1113344-GMS-Nepal        2      558    119     70     49
12 months   ki1113344-GMS-Nepal        3      558    136     98     38
12 months   ki1113344-GMS-Nepal        4+     558    265    177     88
12 months   ki1114097-CONTENT          1      215     44     34     10
12 months   ki1114097-CONTENT          2      215     54     47      7
12 months   ki1114097-CONTENT          3      215     39     37      2
12 months   ki1114097-CONTENT          4+     215     78     71      7
12 months   ki1135781-COHORTS          1     3874   2451   1367   1084
12 months   ki1135781-COHORTS          2     3874   1202    916    286
12 months   ki1135781-COHORTS          3     3874    143    112     31
12 months   ki1135781-COHORTS          4+    3874     78     72      6
18 months   ki0047075b-MAL-ED          1     1546    312    180    132
18 months   ki0047075b-MAL-ED          2     1546    275    138    137
18 months   ki0047075b-MAL-ED          3     1546    279    175    104
18 months   ki0047075b-MAL-ED          4+    1546    680    455    225
18 months   ki1000108-CMC-V-BCS-2002   1      369    200     56    144
18 months   ki1000108-CMC-V-BCS-2002   2      369    105     33     72
18 months   ki1000108-CMC-V-BCS-2002   3      369     51     21     30
18 months   ki1000108-CMC-V-BCS-2002   4+     369     13      5      8
18 months   ki1000108-IRC              1      403    182    115     67
18 months   ki1000108-IRC              2      403    169    110     59
18 months   ki1000108-IRC              3      403     35     26      9
18 months   ki1000108-IRC              4+     403     17      8      9
18 months   ki1017093b-PROVIDE         1      141     95     53     42
18 months   ki1017093b-PROVIDE         2      141     23     18      5
18 months   ki1017093b-PROVIDE         3      141     16     13      3
18 months   ki1017093b-PROVIDE         4+     141      7      5      2
18 months   ki1017093c-NIH-Crypto      1      634    287    186    101
18 months   ki1017093c-NIH-Crypto      2      634    169    116     53
18 months   ki1017093c-NIH-Crypto      3      634     92     73     19
18 months   ki1017093c-NIH-Crypto      4+     634     86     68     18
18 months   ki1113344-GMS-Nepal        1      550     37     14     23
18 months   ki1113344-GMS-Nepal        2      550    120     52     68
18 months   ki1113344-GMS-Nepal        3      550    136     70     66
18 months   ki1113344-GMS-Nepal        4+     550    257    122    135
18 months   ki1114097-CONTENT          1      200     38     29      9
18 months   ki1114097-CONTENT          2      200     51     43      8
18 months   ki1114097-CONTENT          3      200     38     35      3
18 months   ki1114097-CONTENT          4+     200     73     66      7
18 months   ki1135781-COHORTS          1        0      0      0      0
18 months   ki1135781-COHORTS          2        0      0      0      0
18 months   ki1135781-COHORTS          3        0      0      0      0
18 months   ki1135781-COHORTS          4+       0      0      0      0
24 months   ki0047075b-MAL-ED          1     1489    302    183    119
24 months   ki0047075b-MAL-ED          2     1489    262    136    126
24 months   ki0047075b-MAL-ED          3     1489    267    169     98
24 months   ki0047075b-MAL-ED          4+    1489    658    442    216
24 months   ki1000108-CMC-V-BCS-2002   1      372    201     46    155
24 months   ki1000108-CMC-V-BCS-2002   2      372    106     35     71
24 months   ki1000108-CMC-V-BCS-2002   3      372     51     19     32
24 months   ki1000108-CMC-V-BCS-2002   4+     372     14      6      8
24 months   ki1000108-IRC              1      407    184    102     82
24 months   ki1000108-IRC              2      407    170    109     61
24 months   ki1000108-IRC              3      407     36     18     18
24 months   ki1000108-IRC              4+     407     17      9      8
24 months   ki1017093b-PROVIDE         1      149    102     63     39
24 months   ki1017093b-PROVIDE         2      149     24     19      5
24 months   ki1017093b-PROVIDE         3      149     16     13      3
24 months   ki1017093b-PROVIDE         4+     149      7      5      2
24 months   ki1017093c-NIH-Crypto      1      514    217    150     67
24 months   ki1017093c-NIH-Crypto      2      514    137     94     43
24 months   ki1017093c-NIH-Crypto      3      514     78     69      9
24 months   ki1017093c-NIH-Crypto      4+     514     82     69     13
24 months   ki1113344-GMS-Nepal        1      499     36     16     20
24 months   ki1113344-GMS-Nepal        2      499    108     56     52
24 months   ki1113344-GMS-Nepal        3      499    118     65     53
24 months   ki1113344-GMS-Nepal        4+     499    237    139     98
24 months   ki1114097-CONTENT          1      164     30     23      7
24 months   ki1114097-CONTENT          2      164     39     32      7
24 months   ki1114097-CONTENT          3      164     32     30      2
24 months   ki1114097-CONTENT          4+     164     63     58      5
24 months   ki1135781-COHORTS          1     3749   2302    943   1359
24 months   ki1135781-COHORTS          2     3749   1221    796    425
24 months   ki1135781-COHORTS          3     3749    150     97     53
24 months   ki1135781-COHORTS          4+    3749     76     63     13

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          1                    NA                0.1314879   0.0925126   0.1704632
Birth       ki0047075b-MAL-ED          2                    NA                0.1496063   0.1057254   0.1934872
Birth       ki0047075b-MAL-ED          3                    NA                0.1198347   0.0789018   0.1607677
Birth       ki0047075b-MAL-ED          4+                   NA                0.1155172   0.0894940   0.1415405
Birth       ki1135781-COHORTS          1                    NA                0.1344000   0.1224401   0.1463599
Birth       ki1135781-COHORTS          2                    NA                0.0880866   0.0731587   0.1030146
Birth       ki1135781-COHORTS          3                    NA                0.0898204   0.0464507   0.1331901
Birth       ki1135781-COHORTS          4+                   NA                0.0869565   0.0293732   0.1445398
3 months    ki0047075b-MAL-ED          1                    NA                0.1899110   0.1480217   0.2318002
3 months    ki0047075b-MAL-ED          2                    NA                0.1803797   0.1379732   0.2227863
3 months    ki0047075b-MAL-ED          3                    NA                0.1067961   0.0723492   0.1412430
3 months    ki0047075b-MAL-ED          4+                   NA                0.1455782   0.1200737   0.1710827
3 months    ki1000108-IRC              1                    NA                0.2010870   0.1431017   0.2590722
3 months    ki1000108-IRC              2                    NA                0.2559524   0.1898815   0.3220233
3 months    ki1000108-IRC              3                    NA                0.1388889   0.0257799   0.2519979
3 months    ki1000108-IRC              4+                   NA                0.3529412   0.1254925   0.5803899
3 months    ki1017093c-NIH-Crypto      1                    NA                0.2234957   0.1797596   0.2672318
3 months    ki1017093c-NIH-Crypto      2                    NA                0.2365591   0.1754442   0.2976741
3 months    ki1017093c-NIH-Crypto      3                    NA                0.1666667   0.0942931   0.2390403
3 months    ki1017093c-NIH-Crypto      4+                   NA                0.1868132   0.1066777   0.2669487
3 months    ki1113344-GMS-Nepal        1                    NA                0.2000000   0.0759323   0.3240677
3 months    ki1113344-GMS-Nepal        2                    NA                0.1239669   0.0651978   0.1827361
3 months    ki1113344-GMS-Nepal        3                    NA                0.1928571   0.1274451   0.2582692
3 months    ki1113344-GMS-Nepal        4+                   NA                0.1259259   0.0863183   0.1655335
3 months    ki1135781-COHORTS          1                    NA                0.1860535   0.1728289   0.1992781
3 months    ki1135781-COHORTS          2                    NA                0.1002045   0.0848374   0.1155716
3 months    ki1135781-COHORTS          3                    NA                0.0864865   0.0459789   0.1269941
3 months    ki1135781-COHORTS          4+                   NA                0.0510204   0.0074513   0.0945895
6 months    ki0047075b-MAL-ED          1                    NA                0.2023810   0.1594085   0.2453534
6 months    ki0047075b-MAL-ED          2                    NA                0.1923077   0.1485634   0.2360519
6 months    ki0047075b-MAL-ED          3                    NA                0.1045752   0.0702790   0.1388713
6 months    ki0047075b-MAL-ED          4+                   NA                0.1571038   0.1307343   0.1834733
6 months    ki1017093c-NIH-Crypto      1                    NA                0.2300885   0.1852532   0.2749238
6 months    ki1017093c-NIH-Crypto      2                    NA                0.2336957   0.1725073   0.2948840
6 months    ki1017093c-NIH-Crypto      3                    NA                0.1386139   0.0711776   0.2060501
6 months    ki1017093c-NIH-Crypto      4+                   NA                0.1648352   0.0885496   0.2411207
6 months    ki1113344-GMS-Nepal        1                    NA                0.3000000   0.1578608   0.4421392
6 months    ki1113344-GMS-Nepal        2                    NA                0.2173913   0.1419379   0.2928447
6 months    ki1113344-GMS-Nepal        3                    NA                0.2127660   0.1451534   0.2803785
6 months    ki1113344-GMS-Nepal        4+                   NA                0.1947566   0.1472134   0.2422997
6 months    ki1135781-COHORTS          1                    NA                0.2380952   0.2233666   0.2528239
6 months    ki1135781-COHORTS          2                    NA                0.1221167   0.1054000   0.1388333
6 months    ki1135781-COHORTS          3                    NA                0.1043956   0.0599677   0.1488235
6 months    ki1135781-COHORTS          4+                   NA                0.0645161   0.0145814   0.1144509
9 months    ki0047075b-MAL-ED          1                    NA                0.2370821   0.1911124   0.2830517
9 months    ki0047075b-MAL-ED          2                    NA                0.2440678   0.1950373   0.2930983
9 months    ki0047075b-MAL-ED          3                    NA                0.1973244   0.1522006   0.2424482
9 months    ki0047075b-MAL-ED          4+                   NA                0.1818182   0.1535387   0.2100977
9 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.3718593   0.3046184   0.4391002
9 months    ki1000108-CMC-V-BCS-2002   2                    NA                0.3689320   0.2756206   0.4622435
9 months    ki1000108-CMC-V-BCS-2002   3                    NA                0.3400000   0.2085173   0.4714827
9 months    ki1000108-CMC-V-BCS-2002   4+                   NA                0.4285714   0.1689917   0.6881512
9 months    ki1000108-IRC              1                    NA                0.2841530   0.2187277   0.3495783
9 months    ki1000108-IRC              2                    NA                0.2764706   0.2091554   0.3437858
9 months    ki1000108-IRC              3                    NA                0.2000000   0.0673183   0.3326817
9 months    ki1000108-IRC              4+                   NA                0.2941176   0.0772538   0.5109815
9 months    ki1017093c-NIH-Crypto      1                    NA                0.2560241   0.2090448   0.3030034
9 months    ki1017093c-NIH-Crypto      2                    NA                0.2554348   0.1923770   0.3184925
9 months    ki1017093c-NIH-Crypto      3                    NA                0.1683168   0.0952975   0.2413362
9 months    ki1017093c-NIH-Crypto      4+                   NA                0.1685393   0.0907120   0.2463667
9 months    ki1113344-GMS-Nepal        1                    NA                0.3157895   0.1678635   0.4637155
9 months    ki1113344-GMS-Nepal        2                    NA                0.2991453   0.2161020   0.3821886
9 months    ki1113344-GMS-Nepal        3                    NA                0.2794118   0.2039305   0.3548930
9 months    ki1113344-GMS-Nepal        4+                   NA                0.2692308   0.2152662   0.3231953
9 months    ki1135781-COHORTS          1                    NA                0.3293949   0.3119626   0.3468272
9 months    ki1135781-COHORTS          2                    NA                0.1738132   0.1532587   0.1943677
9 months    ki1135781-COHORTS          3                    NA                0.2051282   0.1417563   0.2685002
9 months    ki1135781-COHORTS          4+                   NA                0.0609756   0.0091782   0.1127730
12 months   ki0047075b-MAL-ED          1                    NA                0.2892308   0.2399216   0.3385399
12 months   ki0047075b-MAL-ED          2                    NA                0.3402062   0.2857545   0.3946579
12 months   ki0047075b-MAL-ED          3                    NA                0.2586207   0.2082085   0.3090329
12 months   ki0047075b-MAL-ED          4+                   NA                0.2355430   0.2042987   0.2667873
12 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.5050000   0.4356139   0.5743861
12 months   ki1000108-CMC-V-BCS-2002   2                    NA                0.5428571   0.4474429   0.6382714
12 months   ki1000108-CMC-V-BCS-2002   3                    NA                0.3877551   0.2511452   0.5243650
12 months   ki1000108-CMC-V-BCS-2002   4+                   NA                0.4285714   0.1689936   0.6881492
12 months   ki1000108-IRC              1                    NA                0.3043478   0.2377809   0.3709148
12 months   ki1000108-IRC              2                    NA                0.2958580   0.2269587   0.3647573
12 months   ki1000108-IRC              3                    NA                0.2058824   0.0698010   0.3419638
12 months   ki1000108-IRC              4+                   NA                0.3529412   0.1254918   0.5803906
12 months   ki1017093c-NIH-Crypto      1                    NA                0.2688822   0.2210834   0.3166809
12 months   ki1017093c-NIH-Crypto      2                    NA                0.2841530   0.2187622   0.3495438
12 months   ki1017093c-NIH-Crypto      3                    NA                0.1176471   0.0550769   0.1802173
12 months   ki1017093c-NIH-Crypto      4+                   NA                0.2000000   0.1173021   0.2826979
12 months   ki1113344-GMS-Nepal        1                    NA                0.4210526   0.2639319   0.5781734
12 months   ki1113344-GMS-Nepal        2                    NA                0.4117647   0.3232604   0.5002690
12 months   ki1113344-GMS-Nepal        3                    NA                0.2794118   0.2039314   0.3548921
12 months   ki1113344-GMS-Nepal        4+                   NA                0.3320755   0.2753214   0.3888295
12 months   ki1135781-COHORTS          1                    NA                0.4422685   0.4226037   0.4619332
12 months   ki1135781-COHORTS          2                    NA                0.2379368   0.2138611   0.2620124
12 months   ki1135781-COHORTS          3                    NA                0.2167832   0.1492387   0.2843277
12 months   ki1135781-COHORTS          4+                   NA                0.0769232   0.0177801   0.1360663
18 months   ki0047075b-MAL-ED          1                    NA                0.4230769   0.3682391   0.4779147
18 months   ki0047075b-MAL-ED          2                    NA                0.4981818   0.4390679   0.5572957
18 months   ki0047075b-MAL-ED          3                    NA                0.3727599   0.3160030   0.4295167
18 months   ki0047075b-MAL-ED          4+                   NA                0.3308824   0.2955053   0.3662594
18 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.7200000   0.6576886   0.7823114
18 months   ki1000108-CMC-V-BCS-2002   2                    NA                0.6857143   0.5967990   0.7746296
18 months   ki1000108-CMC-V-BCS-2002   3                    NA                0.5882353   0.4529806   0.7234900
18 months   ki1000108-CMC-V-BCS-2002   4+                   NA                0.6153846   0.3505637   0.8802056
18 months   ki1000108-IRC              1                    NA                0.3681319   0.2979755   0.4382882
18 months   ki1000108-IRC              2                    NA                0.3491124   0.2771543   0.4210706
18 months   ki1000108-IRC              3                    NA                0.2571429   0.1121677   0.4021180
18 months   ki1000108-IRC              4+                   NA                0.5294118   0.2918479   0.7669757
18 months   ki1017093c-NIH-Crypto      1                    NA                0.3519164   0.2966215   0.4072113
18 months   ki1017093c-NIH-Crypto      2                    NA                0.3136095   0.2436047   0.3836143
18 months   ki1017093c-NIH-Crypto      3                    NA                0.2065217   0.1237376   0.2893059
18 months   ki1017093c-NIH-Crypto      4+                   NA                0.2093023   0.1232557   0.2953490
18 months   ki1113344-GMS-Nepal        1                    NA                0.6216216   0.4652101   0.7780331
18 months   ki1113344-GMS-Nepal        2                    NA                0.5666667   0.4779250   0.6554083
18 months   ki1113344-GMS-Nepal        3                    NA                0.4852941   0.4012212   0.5693670
18 months   ki1113344-GMS-Nepal        4+                   NA                0.5252918   0.4641849   0.5863987
24 months   ki0047075b-MAL-ED          1                    NA                0.3940397   0.3389104   0.4491690
24 months   ki0047075b-MAL-ED          2                    NA                0.4809160   0.4203963   0.5414357
24 months   ki0047075b-MAL-ED          3                    NA                0.3670412   0.3092072   0.4248752
24 months   ki0047075b-MAL-ED          4+                   NA                0.3282675   0.2923759   0.3641591
24 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.7711443   0.7129898   0.8292988
24 months   ki1000108-CMC-V-BCS-2002   2                    NA                0.6698113   0.5801641   0.7594586
24 months   ki1000108-CMC-V-BCS-2002   3                    NA                0.6274510   0.4945803   0.7603217
24 months   ki1000108-CMC-V-BCS-2002   4+                   NA                0.5714286   0.3118546   0.8310026
24 months   ki1000108-IRC              1                    NA                0.4456522   0.3737466   0.5175577
24 months   ki1000108-IRC              2                    NA                0.3588235   0.2866319   0.4310152
24 months   ki1000108-IRC              3                    NA                0.5000000   0.3364686   0.6635314
24 months   ki1000108-IRC              4+                   NA                0.4705882   0.2330272   0.7081492
24 months   ki1017093c-NIH-Crypto      1                    NA                0.3087558   0.2472290   0.3702826
24 months   ki1017093c-NIH-Crypto      2                    NA                0.3138686   0.2360850   0.3916523
24 months   ki1017093c-NIH-Crypto      3                    NA                0.1153846   0.0444146   0.1863546
24 months   ki1017093c-NIH-Crypto      4+                   NA                0.1585366   0.0794056   0.2376675
24 months   ki1113344-GMS-Nepal        1                    NA                0.5555556   0.3930737   0.7180374
24 months   ki1113344-GMS-Nepal        2                    NA                0.4814815   0.3871528   0.5758102
24 months   ki1113344-GMS-Nepal        3                    NA                0.4491525   0.3593155   0.5389896
24 months   ki1113344-GMS-Nepal        4+                   NA                0.4135021   0.3507423   0.4762619
24 months   ki1135781-COHORTS          1                    NA                0.5903562   0.5702647   0.6104478
24 months   ki1135781-COHORTS          2                    NA                0.3480753   0.3213525   0.3747982
24 months   ki1135781-COHORTS          3                    NA                0.3533333   0.2768278   0.4298389
24 months   ki1135781-COHORTS          4+                   NA                0.1710526   0.0863830   0.2557222


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NA                   NA                0.1260073   0.1253287   0.1266859
Birth       ki1135781-COHORTS          NA                   NA                0.1184735   0.1178501   0.1190968
3 months    ki0047075b-MAL-ED          NA                   NA                0.1538008   0.1524363   0.1551654
3 months    ki1000108-IRC              NA                   NA                0.2246914   0.2203269   0.2290558
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.2142857   0.2125359   0.2160355
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1471103   0.1444695   0.1497511
3 months    ki1135781-COHORTS          NA                   NA                0.1550128   0.1538202   0.1562054
6 months    ki0047075b-MAL-ED          NA                   NA                0.1631079   0.1615225   0.1646934
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.2097902   0.2071301   0.2124503
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2113677   0.2091851   0.2135502
6 months    ki1135781-COHORTS          NA                   NA                0.1954857   0.1938630   0.1971084
9 months    ki0047075b-MAL-ED          NA                   NA                0.2069597   0.2056571   0.2082623
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3688525   0.3672140   0.3704909
9 months    ki1000108-IRC              NA                   NA                0.2740741   0.2718095   0.2763387
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.2322946   0.2294335   0.2351557
9 months    ki1113344-GMS-Nepal        NA                   NA                0.2813067   0.2800692   0.2825443
9 months    ki1135781-COHORTS          NA                   NA                0.2729998   0.2706891   0.2753104
12 months   ki0047075b-MAL-ED          NA                   NA                0.2693498   0.2674562   0.2712435
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.4972826   0.4922685   0.5022967
12 months   ki1000108-IRC              NA                   NA                0.2945545   0.2917087   0.2974002
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.2422096   0.2379960   0.2464232
12 months   ki1113344-GMS-Nepal        NA                   NA                0.3422939   0.3381708   0.3464170
12 months   ki1135781-COHORTS          NA                   NA                0.3631905   0.3598478   0.3665332
18 months   ki0047075b-MAL-ED          NA                   NA                0.3868047   0.3836974   0.3899119
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6883469   0.6836451   0.6930487
18 months   ki1000108-IRC              NA                   NA                0.3573201   0.3527330   0.3619072
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.3012618   0.2965543   0.3059694
18 months   ki1113344-GMS-Nepal        NA                   NA                0.5309091   0.5278222   0.5339960
24 months   ki0047075b-MAL-ED          NA                   NA                0.3754197   0.3726258   0.3782137
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.7150538   0.7085290   0.7215786
24 months   ki1000108-IRC              NA                   NA                0.4152334   0.4103592   0.4201077
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.2568093   0.2497884   0.2638303
24 months   ki1113344-GMS-Nepal        NA                   NA                0.4468938   0.4433354   0.4504522
24 months   ki1135781-COHORTS          NA                   NA                0.4934649   0.4894738   0.4974561


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          2                    1                 1.1377953   0.7498270   1.7265024
Birth       ki0047075b-MAL-ED          3                    1                 0.9113745   0.5798063   1.4325534
Birth       ki0047075b-MAL-ED          4+                   1                 0.8785390   0.6054388   1.2748287
Birth       ki1135781-COHORTS          2                    1                 0.6554066   0.5412298   0.7936699
Birth       ki1135781-COHORTS          3                    1                 0.6683062   0.4090207   1.0919576
Birth       ki1135781-COHORTS          4+                   1                 0.6469979   0.3316841   1.2620634
3 months    ki0047075b-MAL-ED          2                    1                 0.9498121   0.6880723   1.3111165
3 months    ki0047075b-MAL-ED          3                    1                 0.5623483   0.3804543   0.8312052
3 months    ki0047075b-MAL-ED          4+                   1                 0.7665604   0.5783794   1.0159678
3 months    ki1000108-IRC              2                    1                 1.2728443   0.8643582   1.8743762
3 months    ki1000108-IRC              3                    1                 0.6906907   0.2911280   1.6386386
3 months    ki1000108-IRC              4+                   1                 1.7551669   0.8663668   3.5557816
3 months    ki1017093c-NIH-Crypto      2                    1                 1.0584505   0.7654495   1.4636073
3 months    ki1017093c-NIH-Crypto      3                    1                 0.7457265   0.4631541   1.2006976
3 months    ki1017093c-NIH-Crypto      4+                   1                 0.8358693   0.5216427   1.3393792
3 months    ki1113344-GMS-Nepal        2                    1                 0.6198347   0.2839243   1.3531602
3 months    ki1113344-GMS-Nepal        3                    1                 0.9642857   0.4755067   1.9554867
3 months    ki1113344-GMS-Nepal        4+                   1                 0.6296296   0.3140684   1.2622521
3 months    ki1135781-COHORTS          2                    1                 0.5385789   0.4548217   0.6377605
3 months    ki1135781-COHORTS          3                    1                 0.4648474   0.2894484   0.7465340
3 months    ki1135781-COHORTS          4+                   1                 0.2742244   0.1164009   0.6460348
6 months    ki0047075b-MAL-ED          2                    1                 0.9502262   0.6961237   1.2970826
6 months    ki0047075b-MAL-ED          3                    1                 0.5167243   0.3496092   0.7637214
6 months    ki0047075b-MAL-ED          4+                   1                 0.7762777   0.5922015   1.0175711
6 months    ki1017093c-NIH-Crypto      2                    1                 1.0156773   0.7328408   1.4076731
6 months    ki1017093c-NIH-Crypto      3                    1                 0.6024372   0.3567037   1.0174565
6 months    ki1017093c-NIH-Crypto      4+                   1                 0.7163990   0.4335851   1.1836835
6 months    ki1113344-GMS-Nepal        2                    1                 0.7246377   0.4027619   1.3037475
6 months    ki1113344-GMS-Nepal        3                    1                 0.7092199   0.4008824   1.2547142
6 months    ki1113344-GMS-Nepal        4+                   1                 0.6491885   0.3809755   1.1062280
6 months    ki1135781-COHORTS          2                    1                 0.5128901   0.4413519   0.5960238
6 months    ki1135781-COHORTS          3                    1                 0.4384615   0.2852105   0.6740583
6 months    ki1135781-COHORTS          4+                   1                 0.2709677   0.1246542   0.5890177
9 months    ki0047075b-MAL-ED          2                    1                 1.0294654   0.7786760   1.3610271
9 months    ki0047075b-MAL-ED          3                    1                 0.8323043   0.6166993   1.1232872
9 months    ki0047075b-MAL-ED          4+                   1                 0.7668998   0.5981156   0.9833136
9 months    ki1000108-CMC-V-BCS-2002   2                    1                 0.9921281   0.7270089   1.3539286
9 months    ki1000108-CMC-V-BCS-2002   3                    1                 0.9143243   0.5966222   1.4012033
9 months    ki1000108-CMC-V-BCS-2002   4+                   1                 1.1525097   0.6125284   2.1685173
9 months    ki1000108-IRC              2                    1                 0.9729638   0.6959241   1.3602900
9 months    ki1000108-IRC              3                    1                 0.7038462   0.3487418   1.4205334
9 months    ki1000108-IRC              4+                   1                 1.0350679   0.4780771   2.2409891
9 months    ki1017093c-NIH-Crypto      2                    1                 0.9976982   0.7335231   1.3570148
9 months    ki1017093c-NIH-Crypto      3                    1                 0.6574257   0.4104688   1.0529635
9 months    ki1017093c-NIH-Crypto      4+                   1                 0.6582948   0.4005165   1.0819829
9 months    ki1113344-GMS-Nepal        2                    1                 0.9472934   0.5495493   1.6329106
9 months    ki1113344-GMS-Nepal        3                    1                 0.8848039   0.5152334   1.5194627
9 months    ki1113344-GMS-Nepal        4+                   1                 0.8525641   0.5122097   1.4190781
9 months    ki1135781-COHORTS          2                    1                 0.5276741   0.4635530   0.6006648
9 months    ki1135781-COHORTS          3                    1                 0.6227425   0.4551808   0.8519872
9 months    ki1135781-COHORTS          4+                   1                 0.1851140   0.0790316   0.4335884
12 months   ki0047075b-MAL-ED          2                    1                 1.1762448   0.9309819   1.4861211
12 months   ki0047075b-MAL-ED          3                    1                 0.8941673   0.6901652   1.1584692
12 months   ki0047075b-MAL-ED          4+                   1                 0.8143775   0.6561663   1.0107357
12 months   ki1000108-CMC-V-BCS-2002   2                    1                 1.0749646   0.8600144   1.3436391
12 months   ki1000108-CMC-V-BCS-2002   3                    1                 0.7678319   0.5260608   1.1207180
12 months   ki1000108-CMC-V-BCS-2002   4+                   1                 0.8486563   0.4560416   1.5792804
12 months   ki1000108-IRC              2                    1                 0.9721048   0.7062559   1.3380246
12 months   ki1000108-IRC              3                    1                 0.6764706   0.3371992   1.3570983
12 months   ki1000108-IRC              4+                   1                 1.1596639   0.5871854   2.2902823
12 months   ki1017093c-NIH-Crypto      2                    1                 1.0567938   0.7901352   1.4134454
12 months   ki1017093c-NIH-Crypto      3                    1                 0.4375413   0.2497353   0.7665812
12 months   ki1017093c-NIH-Crypto      4+                   1                 0.7438202   0.4742410   1.1666399
12 months   ki1113344-GMS-Nepal        2                    1                 0.9779412   0.6357544   1.5043058
12 months   ki1113344-GMS-Nepal        3                    1                 0.6636029   0.4186372   1.0519106
12 months   ki1113344-GMS-Nepal        4+                   1                 0.7886792   0.5231782   1.1889159
12 months   ki1135781-COHORTS          2                    1                 0.5379917   0.4816992   0.6008628
12 months   ki1135781-COHORTS          3                    1                 0.4901621   0.3578104   0.6714697
12 months   ki1135781-COHORTS          4+                   1                 0.1739287   0.0805197   0.3756994
18 months   ki0047075b-MAL-ED          2                    1                 1.1775207   0.9877582   1.4037391
18 months   ki0047075b-MAL-ED          3                    1                 0.8810688   0.7213871   1.0760965
18 months   ki0047075b-MAL-ED          4+                   1                 0.7820856   0.6611237   0.9251791
18 months   ki1000108-CMC-V-BCS-2002   2                    1                 0.9523810   0.8149028   1.1130523
18 months   ki1000108-CMC-V-BCS-2002   3                    1                 0.8169935   0.6390294   1.0445190
18 months   ki1000108-CMC-V-BCS-2002   4+                   1                 0.8547009   0.5510367   1.3257076
18 months   ki1000108-IRC              2                    1                 0.9483352   0.7162217   1.2556723
18 months   ki1000108-IRC              3                    1                 0.6985075   0.3852204   1.2665805
18 months   ki1000108-IRC              4+                   1                 1.4381036   0.8832052   2.3416324
18 months   ki1017093c-NIH-Crypto      2                    1                 0.8911477   0.6782613   1.1708529
18 months   ki1017093c-NIH-Crypto      3                    1                 0.5868489   0.3815426   0.9026295
18 months   ki1017093c-NIH-Crypto      4+                   1                 0.5947502   0.3829968   0.9235790
18 months   ki1113344-GMS-Nepal        2                    1                 0.9115942   0.6777802   1.2260671
18 months   ki1113344-GMS-Nepal        3                    1                 0.7806905   0.5751832   1.0596237
18 months   ki1113344-GMS-Nepal        4+                   1                 0.8450347   0.6404490   1.1149735
24 months   ki0047075b-MAL-ED          2                    1                 1.2204760   1.0111253   1.4731721
24 months   ki0047075b-MAL-ED          3                    1                 0.9314827   0.7545034   1.1499749
24 months   ki0047075b-MAL-ED          4+                   1                 0.8330822   0.6975464   0.9949531
24 months   ki1000108-CMC-V-BCS-2002   2                    1                 0.8685940   0.7449017   1.0128257
24 months   ki1000108-CMC-V-BCS-2002   3                    1                 0.8136622   0.6498589   1.0187538
24 months   ki1000108-CMC-V-BCS-2002   4+                   1                 0.7410138   0.4675693   1.1743747
24 months   ki1000108-IRC              2                    1                 0.8051650   0.6221307   1.0420490
24 months   ki1000108-IRC              3                    1                 1.1219512   0.7790912   1.6156960
24 months   ki1000108-IRC              4+                   1                 1.0559541   0.6215552   1.7939503
24 months   ki1017093c-NIH-Crypto      2                    1                 1.0165595   0.7396495   1.3971392
24 months   ki1017093c-NIH-Crypto      3                    1                 0.3737084   0.1957674   0.7133873
24 months   ki1017093c-NIH-Crypto      4+                   1                 0.5134692   0.2999896   0.8788661
24 months   ki1113344-GMS-Nepal        2                    1                 0.8666667   0.6094963   1.2323474
24 months   ki1113344-GMS-Nepal        3                    1                 0.8084746   0.5672663   1.1522475
24 months   ki1113344-GMS-Nepal        4+                   1                 0.7443038   0.5353629   1.0347900
24 months   ki1135781-COHORTS          2                    1                 0.5896022   0.5421104   0.6412546
24 months   ki1135781-COHORTS          3                    1                 0.5985087   0.4807069   0.7451790
24 months   ki1135781-COHORTS          4+                   1                 0.2897448   0.1764152   0.4758776


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          1                    NA                -0.0054806   -0.0444617    0.0335006
Birth       ki1135781-COHORTS          1                    NA                -0.0159265   -0.0279026   -0.0039504
3 months    ki0047075b-MAL-ED          1                    NA                -0.0361102   -0.0780216    0.0058013
3 months    ki1000108-IRC              1                    NA                 0.0236044   -0.0345449    0.0817537
3 months    ki1017093c-NIH-Crypto      1                    NA                -0.0092100   -0.0529811    0.0345611
3 months    ki1113344-GMS-Nepal        1                    NA                -0.0528897   -0.1769855    0.0712061
3 months    ki1135781-COHORTS          1                    NA                -0.0310407   -0.0443189   -0.0177625
6 months    ki0047075b-MAL-ED          1                    NA                -0.0392730   -0.0822747    0.0037287
6 months    ki1017093c-NIH-Crypto      1                    NA                -0.0202983   -0.0652124    0.0246159
6 months    ki1113344-GMS-Nepal        1                    NA                -0.0886323   -0.2307883    0.0535236
6 months    ki1135781-COHORTS          1                    NA                -0.0426095   -0.0574273   -0.0277918
9 months    ki0047075b-MAL-ED          1                    NA                -0.0301224   -0.0761104    0.0158657
9 months    ki1000108-CMC-V-BCS-2002   1                    NA                -0.0030068   -0.0702677    0.0642540
9 months    ki1000108-IRC              1                    NA                -0.0100789   -0.0755434    0.0553855
9 months    ki1017093c-NIH-Crypto      1                    NA                -0.0237295   -0.0707958    0.0233369
9 months    ki1113344-GMS-Nepal        1                    NA                -0.0344828   -0.1824139    0.1134484
9 months    ki1135781-COHORTS          1                    NA                -0.0563951   -0.0739799   -0.0388104
12 months   ki0047075b-MAL-ED          1                    NA                -0.0198809   -0.0692264    0.0294646
12 months   ki1000108-CMC-V-BCS-2002   1                    NA                -0.0077174   -0.0772844    0.0618496
12 months   ki1000108-IRC              1                    NA                -0.0097934   -0.0764211    0.0568344
12 months   ki1017093c-NIH-Crypto      1                    NA                -0.0266725   -0.0746567    0.0213116
12 months   ki1113344-GMS-Nepal        1                    NA                -0.0787587   -0.2359336    0.0784161
12 months   ki1135781-COHORTS          1                    NA                -0.0790780   -0.0990248   -0.0591311
18 months   ki0047075b-MAL-ED          1                    NA                -0.0362723   -0.0911980    0.0186535
18 months   ki1000108-CMC-V-BCS-2002   1                    NA                -0.0316531   -0.0941417    0.0308354
18 months   ki1000108-IRC              1                    NA                -0.0108118   -0.0811179    0.0594944
18 months   ki1017093c-NIH-Crypto      1                    NA                -0.0506545   -0.1061495    0.0048404
18 months   ki1113344-GMS-Nepal        1                    NA                -0.0907125   -0.2471545    0.0657294
24 months   ki0047075b-MAL-ED          1                    NA                -0.0186200   -0.0738201    0.0365801
24 months   ki1000108-CMC-V-BCS-2002   1                    NA                -0.0560905   -0.1146099    0.0024289
24 months   ki1000108-IRC              1                    NA                -0.0304188   -0.1024893    0.0416518
24 months   ki1017093c-NIH-Crypto      1                    NA                -0.0519464   -0.1138725    0.0099797
24 months   ki1113344-GMS-Nepal        1                    NA                -0.1086618   -0.2711826    0.0538591
24 months   ki1135781-COHORTS          1                    NA                -0.0968913   -0.1173754   -0.0764071


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          1                    NA                -0.0434940   -0.4036006    0.2242239
Birth       ki1135781-COHORTS          1                    NA                -0.1344312   -0.2402016   -0.0376813
3 months    ki0047075b-MAL-ED          1                    NA                -0.2347852   -0.5397937    0.0098060
3 months    ki1000108-IRC              1                    NA                 0.1050526   -0.1948521    0.3296819
3 months    ki1017093c-NIH-Crypto      1                    NA                -0.0429799   -0.2686374    0.1425389
3 months    ki1113344-GMS-Nepal        1                    NA                -0.3595238   -1.5287691    0.2690891
3 months    ki1135781-COHORTS          1                    NA                -0.2002460   -0.2891989   -0.1174308
6 months    ki0047075b-MAL-ED          1                    NA                -0.2407792   -0.5346407   -0.0031879
6 months    ki1017093c-NIH-Crypto      1                    NA                -0.0967552   -0.3332628    0.0977984
6 months    ki1113344-GMS-Nepal        1                    NA                -0.4193277   -1.2798122    0.1163784
6 months    ki1135781-COHORTS          1                    NA                -0.2179676   -0.2964091   -0.1442723
9 months    ki0047075b-MAL-ED          1                    NA                -0.1455470   -0.3908039    0.0564609
9 months    ki1000108-CMC-V-BCS-2002   1                    NA                -0.0081519   -0.2080371    0.1586598
9 months    ki1000108-IRC              1                    NA                -0.0367745   -0.3053997    0.1765731
9 months    ki1017093c-NIH-Crypto      1                    NA                -0.1021525   -0.3246837    0.0829960
9 months    ki1113344-GMS-Nepal        1                    NA                -0.1225806   -0.7933459    0.2972983
9 months    ki1135781-COHORTS          1                    NA                -0.2065758   -0.2730061   -0.1436121
12 months   ki0047075b-MAL-ED          1                    NA                -0.0738108   -0.2735935    0.0946329
12 months   ki1000108-CMC-V-BCS-2002   1                    NA                -0.0155191   -0.1655203    0.1151770
12 months   ki1000108-IRC              1                    NA                -0.0332481   -0.2861336    0.1699139
12 months   ki1017093c-NIH-Crypto      1                    NA                -0.1101217   -0.3272210    0.0714657
12 months   ki1113344-GMS-Nepal        1                    NA                -0.2300909   -0.7868320    0.1531808
12 months   ki1135781-COHORTS          1                    NA                -0.2177314   -0.2742981   -0.1636757
18 months   ki0047075b-MAL-ED          1                    NA                -0.0937741   -0.2454532    0.0394325
18 months   ki1000108-CMC-V-BCS-2002   1                    NA                -0.0459843   -0.1408471    0.0409907
18 months   ki1000108-IRC              1                    NA                -0.0302579   -0.2470927    0.1488753
18 months   ki1017093c-NIH-Crypto      1                    NA                -0.1681413   -0.3679511    0.0024833
18 months   ki1113344-GMS-Nepal        1                    NA                -0.1708626   -0.5059537    0.0896670
24 months   ki0047075b-MAL-ED          1                    NA                -0.0495978   -0.2074526    0.0876201
24 months   ki1000108-CMC-V-BCS-2002   1                    NA                -0.0784424   -0.1635563    0.0004454
24 months   ki1000108-IRC              1                    NA                -0.0732570   -0.2617170    0.0870531
24 months   ki1017093c-NIH-Crypto      1                    NA                -0.2022762   -0.4701386    0.0167810
24 months   ki1113344-GMS-Nepal        1                    NA                -0.2431490   -0.6656633    0.0721898
24 months   ki1135781-COHORTS          1                    NA                -0.1963489   -0.2389387   -0.1552231


