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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/dd2b89a2-c843-4873-9b8f-3887f8fefbae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dd2b89a2-c843-4873-9b8f-3887f8fefbae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/dd2b89a2-c843-4873-9b8f-3887f8fefbae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dd2b89a2-c843-4873-9b8f-3887f8fefbae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
3 months    ki0047075b-MAL-ED          1     1702    338    246     92
3 months    ki0047075b-MAL-ED          2     1702    316    225     91
3 months    ki0047075b-MAL-ED          3     1702    310    236     74
3 months    ki0047075b-MAL-ED          4+    1702    738    558    180
3 months    ki1000108-CMC-V-BCS-2002   1      362    196    128     68
3 months    ki1000108-CMC-V-BCS-2002   2      362    101     63     38
3 months    ki1000108-CMC-V-BCS-2002   3      362     51     35     16
3 months    ki1000108-CMC-V-BCS-2002   4+     362     14     11      3
3 months    ki1000108-IRC              1      408    185    129     56
3 months    ki1000108-IRC              2      408    170    114     56
3 months    ki1000108-IRC              3      408     36     26     10
3 months    ki1000108-IRC              4+     408     17      9      8
3 months    ki1017093b-PROVIDE         1      175    124     92     32
3 months    ki1017093b-PROVIDE         2      175     27     21      6
3 months    ki1017093b-PROVIDE         3      175     17     13      4
3 months    ki1017093b-PROVIDE         4+     175      7      5      2
3 months    ki1017093c-NIH-Crypto      1      758    368    304     64
3 months    ki1017093c-NIH-Crypto      2      758    191    158     33
3 months    ki1017093c-NIH-Crypto      3      758    104     93     11
3 months    ki1017093c-NIH-Crypto      4+     758     95     82     13
3 months    ki1113344-GMS-Nepal        1      593     39     31      8
3 months    ki1113344-GMS-Nepal        2      593    128    105     23
3 months    ki1113344-GMS-Nepal        3      593    149    123     26
3 months    ki1113344-GMS-Nepal        4+     593    277    240     37
3 months    ki1114097-CONTENT          1      215     44     36      8
3 months    ki1114097-CONTENT          2      215     54     48      6
3 months    ki1114097-CONTENT          3      215     39     32      7
3 months    ki1114097-CONTENT          4+     215     78     64     14
3 months    ki1135781-COHORTS          1     5193   3403   2654    749
3 months    ki1135781-COHORTS          2     5193   1501   1294    207
3 months    ki1135781-COHORTS          3     5193    188    164     24
3 months    ki1135781-COHORTS          4+    5193    101     91     10
6 months    ki0047075b-MAL-ED          1     1699    338    225    113
6 months    ki0047075b-MAL-ED          2     1699    315    194    121
6 months    ki0047075b-MAL-ED          3     1699    309    213     96
6 months    ki0047075b-MAL-ED          4+    1699    737    504    233
6 months    ki1000108-CMC-V-BCS-2002   1      367    198     92    106
6 months    ki1000108-CMC-V-BCS-2002   2      367    104     51     53
6 months    ki1000108-CMC-V-BCS-2002   3      367     51     29     22
6 months    ki1000108-CMC-V-BCS-2002   4+     367     14      7      7
6 months    ki1000108-IRC              1      406    183    107     76
6 months    ki1000108-IRC              2      406    170     97     73
6 months    ki1000108-IRC              3      406     36     23     13
6 months    ki1000108-IRC              4+     406     17      6     11
6 months    ki1017093b-PROVIDE         1      166    116     81     35
6 months    ki1017093b-PROVIDE         2      166     26     21      5
6 months    ki1017093b-PROVIDE         3      166     17     11      6
6 months    ki1017093b-PROVIDE         4+     166      7      5      2
6 months    ki1017093c-NIH-Crypto      1      736    352    240    112
6 months    ki1017093c-NIH-Crypto      2      736    189    126     63
6 months    ki1017093c-NIH-Crypto      3      736    104     79     25
6 months    ki1017093c-NIH-Crypto      4+     736     91     65     26
6 months    ki1113344-GMS-Nepal        1      567     39     25     14
6 months    ki1113344-GMS-Nepal        2      567    118     83     35
6 months    ki1113344-GMS-Nepal        3      567    142     97     45
6 months    ki1113344-GMS-Nepal        4+     567    268    200     68
6 months    ki1114097-CONTENT          1      215     44     31     13
6 months    ki1114097-CONTENT          2      215     54     46      8
6 months    ki1114097-CONTENT          3      215     39     31      8
6 months    ki1114097-CONTENT          4+     215     78     59     19
6 months    ki1135781-COHORTS          1        0      0      0      0
6 months    ki1135781-COHORTS          2        0      0      0      0
6 months    ki1135781-COHORTS          3        0      0      0      0
6 months    ki1135781-COHORTS          4+       0      0      0      0
12 months   ki0047075b-MAL-ED          1     1686    335    194    141
12 months   ki0047075b-MAL-ED          2     1686    308    157    151
12 months   ki0047075b-MAL-ED          3     1686    308    175    133
12 months   ki0047075b-MAL-ED          4+    1686    735    436    299
12 months   ki1000108-CMC-V-BCS-2002   1      372    201     58    143
12 months   ki1000108-CMC-V-BCS-2002   2      372    106     31     75
12 months   ki1000108-CMC-V-BCS-2002   3      372     51     19     32
12 months   ki1000108-CMC-V-BCS-2002   4+     372     14      4     10
12 months   ki1000108-IRC              1      406    184     91     93
12 months   ki1000108-IRC              2      406    170     84     86
12 months   ki1000108-IRC              3      406     35     19     16
12 months   ki1000108-IRC              4+     406     17      5     12
12 months   ki1017093b-PROVIDE         1      159    110     68     42
12 months   ki1017093b-PROVIDE         2      159     26     20      6
12 months   ki1017093b-PROVIDE         3      159     16     10      6
12 months   ki1017093b-PROVIDE         4+     159      7      5      2
12 months   ki1017093c-NIH-Crypto      1      729    346    205    141
12 months   ki1017093c-NIH-Crypto      2      729    188    116     72
12 months   ki1017093c-NIH-Crypto      3      729    104     74     30
12 months   ki1017093c-NIH-Crypto      4+     729     91     57     34
12 months   ki1113344-GMS-Nepal        1      582     40     21     19
12 months   ki1113344-GMS-Nepal        2      582    124     65     59
12 months   ki1113344-GMS-Nepal        3      582    143     75     68
12 months   ki1113344-GMS-Nepal        4+     582    275    156    119
12 months   ki1114097-CONTENT          1      215     44     29     15
12 months   ki1114097-CONTENT          2      215     54     45      9
12 months   ki1114097-CONTENT          3      215     39     31      8
12 months   ki1114097-CONTENT          4+     215     78     56     22
12 months   ki1135781-COHORTS          1     5022   3257   1740   1517
12 months   ki1135781-COHORTS          2     5022   1487   1059    428
12 months   ki1135781-COHORTS          3     5022    184    137     47
12 months   ki1135781-COHORTS          4+    5022     94     77     17
18 months   ki0047075b-MAL-ED          1     1614    325    152    173
18 months   ki0047075b-MAL-ED          2     1614    290    106    184
18 months   ki0047075b-MAL-ED          3     1614    292    136    156
18 months   ki0047075b-MAL-ED          4+    1614    707    349    358
18 months   ki1000108-CMC-V-BCS-2002   1      373    202     25    177
18 months   ki1000108-CMC-V-BCS-2002   2      373    106     17     89
18 months   ki1000108-CMC-V-BCS-2002   3      373     51     13     38
18 months   ki1000108-CMC-V-BCS-2002   4+     373     14      2     12
18 months   ki1000108-IRC              1      407    185     81    104
18 months   ki1000108-IRC              2      407    170     74     96
18 months   ki1000108-IRC              3      407     35     17     18
18 months   ki1000108-IRC              4+     407     17      5     12
18 months   ki1017093b-PROVIDE         1      155    106     53     53
18 months   ki1017093b-PROVIDE         2      155     25     17      8
18 months   ki1017093b-PROVIDE         3      155     17     10      7
18 months   ki1017093b-PROVIDE         4+     155      7      5      2
18 months   ki1017093c-NIH-Crypto      1      715    337    173    164
18 months   ki1017093c-NIH-Crypto      2      715    185    101     84
18 months   ki1017093c-NIH-Crypto      3      715    102     71     31
18 months   ki1017093c-NIH-Crypto      4+     715     91     53     38
18 months   ki1113344-GMS-Nepal        1      574     39     13     26
18 months   ki1113344-GMS-Nepal        2      574    120     44     76
18 months   ki1113344-GMS-Nepal        3      574    143     54     89
18 months   ki1113344-GMS-Nepal        4+     574    272    105    167
18 months   ki1114097-CONTENT          1      214     44     29     15
18 months   ki1114097-CONTENT          2      214     54     43     11
18 months   ki1114097-CONTENT          3      214     39     29     10
18 months   ki1114097-CONTENT          4+     214     77     53     24
18 months   ki1135781-COHORTS          1        0      0      0      0
18 months   ki1135781-COHORTS          2        0      0      0      0
18 months   ki1135781-COHORTS          3        0      0      0      0
18 months   ki1135781-COHORTS          4+       0      0      0      0
24 months   ki0047075b-MAL-ED          1     1540    310    130    180
24 months   ki0047075b-MAL-ED          2     1540    276     89    187
24 months   ki0047075b-MAL-ED          3     1540    278    107    171
24 months   ki0047075b-MAL-ED          4+    1540    676    309    367
24 months   ki1000108-CMC-V-BCS-2002   1      373    202     11    191
24 months   ki1000108-CMC-V-BCS-2002   2      373    106      8     98
24 months   ki1000108-CMC-V-BCS-2002   3      373     51      7     44
24 months   ki1000108-CMC-V-BCS-2002   4+     373     14      2     12
24 months   ki1000108-IRC              1      408    185     65    120
24 months   ki1000108-IRC              2      408    170     66    104
24 months   ki1000108-IRC              3      408     36     10     26
24 months   ki1000108-IRC              4+     408     17      4     13
24 months   ki1017093b-PROVIDE         1      148    101     46     55
24 months   ki1017093b-PROVIDE         2      148     24     16      8
24 months   ki1017093b-PROVIDE         3      148     16      9      7
24 months   ki1017093b-PROVIDE         4+     148      7      5      2
24 months   ki1017093c-NIH-Crypto      1      634    287    125    162
24 months   ki1017093c-NIH-Crypto      2      634    168     83     85
24 months   ki1017093c-NIH-Crypto      3      634     93     58     35
24 months   ki1017093c-NIH-Crypto      4+     634     86     50     36
24 months   ki1113344-GMS-Nepal        1      568     40     11     29
24 months   ki1113344-GMS-Nepal        2      568    123     37     86
24 months   ki1113344-GMS-Nepal        3      568    139     46     93
24 months   ki1113344-GMS-Nepal        4+     568    266     82    184
24 months   ki1114097-CONTENT          1      197     38     25     13
24 months   ki1114097-CONTENT          2      197     50     38     12
24 months   ki1114097-CONTENT          3      197     38     28     10
24 months   ki1114097-CONTENT          4+     197     71     49     22
24 months   ki1135781-COHORTS          1        0      0      0      0
24 months   ki1135781-COHORTS          2        0      0      0      0
24 months   ki1135781-COHORTS          3        0      0      0      0
24 months   ki1135781-COHORTS          4+       0      0      0      0

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          1                    NA                0.2721893   0.2247256   0.3196531
3 months    ki0047075b-MAL-ED          2                    NA                0.2879747   0.2380337   0.3379157
3 months    ki0047075b-MAL-ED          3                    NA                0.2387097   0.1912412   0.2861781
3 months    ki0047075b-MAL-ED          4+                   NA                0.2439024   0.2129108   0.2748941
3 months    ki1000108-IRC              1                    NA                0.3027027   0.2364182   0.3689872
3 months    ki1000108-IRC              2                    NA                0.3294118   0.2586736   0.4001500
3 months    ki1000108-IRC              3                    NA                0.2777778   0.1312858   0.4242698
3 months    ki1000108-IRC              4+                   NA                0.4705882   0.2330280   0.7081485
3 months    ki1017093c-NIH-Crypto      1                    NA                0.1739130   0.1351614   0.2126647
3 months    ki1017093c-NIH-Crypto      2                    NA                0.1727749   0.1191248   0.2264249
3 months    ki1017093c-NIH-Crypto      3                    NA                0.1057692   0.0466236   0.1649148
3 months    ki1017093c-NIH-Crypto      4+                   NA                0.1368421   0.0676864   0.2059978
3 months    ki1113344-GMS-Nepal        1                    NA                0.2051282   0.0782919   0.3319645
3 months    ki1113344-GMS-Nepal        2                    NA                0.1796875   0.1131206   0.2462544
3 months    ki1113344-GMS-Nepal        3                    NA                0.1744966   0.1135044   0.2354889
3 months    ki1113344-GMS-Nepal        4+                   NA                0.1335740   0.0934780   0.1736700
3 months    ki1114097-CONTENT          1                    NA                0.1818182   0.0675888   0.2960475
3 months    ki1114097-CONTENT          2                    NA                0.1111111   0.0270943   0.1951279
3 months    ki1114097-CONTENT          3                    NA                0.1794872   0.0587649   0.3002095
3 months    ki1114097-CONTENT          4+                   NA                0.1794872   0.0941236   0.2648507
3 months    ki1135781-COHORTS          1                    NA                0.2200999   0.2061783   0.2340215
3 months    ki1135781-COHORTS          2                    NA                0.1379081   0.1204631   0.1553531
3 months    ki1135781-COHORTS          3                    NA                0.1276596   0.0799527   0.1753664
3 months    ki1135781-COHORTS          4+                   NA                0.0990099   0.0407555   0.1572643
6 months    ki0047075b-MAL-ED          1                    NA                0.3343195   0.2840122   0.3846269
6 months    ki0047075b-MAL-ED          2                    NA                0.3841270   0.3303986   0.4378554
6 months    ki0047075b-MAL-ED          3                    NA                0.3106796   0.2590661   0.3622932
6 months    ki0047075b-MAL-ED          4+                   NA                0.3161465   0.2825675   0.3497256
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.5353535   0.4657887   0.6049184
6 months    ki1000108-CMC-V-BCS-2002   2                    NA                0.5096154   0.4134069   0.6058239
6 months    ki1000108-CMC-V-BCS-2002   3                    NA                0.4313726   0.2952608   0.5674843
6 months    ki1000108-CMC-V-BCS-2002   4+                   NA                0.5000000   0.2377312   0.7622688
6 months    ki1000108-IRC              1                    NA                0.4153005   0.3438171   0.4867840
6 months    ki1000108-IRC              2                    NA                0.4294118   0.3549116   0.5039120
6 months    ki1000108-IRC              3                    NA                0.3611111   0.2040150   0.5182072
6 months    ki1000108-IRC              4+                   NA                0.6470588   0.4196108   0.8745069
6 months    ki1017093c-NIH-Crypto      1                    NA                0.3181818   0.2694913   0.3668723
6 months    ki1017093c-NIH-Crypto      2                    NA                0.3333333   0.2660812   0.4005855
6 months    ki1017093c-NIH-Crypto      3                    NA                0.2403846   0.1582026   0.3225666
6 months    ki1017093c-NIH-Crypto      4+                   NA                0.2857143   0.1928338   0.3785948
6 months    ki1113344-GMS-Nepal        1                    NA                0.3589744   0.2082899   0.5096588
6 months    ki1113344-GMS-Nepal        2                    NA                0.2966102   0.2141239   0.3790964
6 months    ki1113344-GMS-Nepal        3                    NA                0.3169014   0.2403081   0.3934947
6 months    ki1113344-GMS-Nepal        4+                   NA                0.2537313   0.2015880   0.3058747
6 months    ki1114097-CONTENT          1                    NA                0.2954545   0.1603301   0.4305790
6 months    ki1114097-CONTENT          2                    NA                0.1481481   0.0531766   0.2431197
6 months    ki1114097-CONTENT          3                    NA                0.2051282   0.0781032   0.3321533
6 months    ki1114097-CONTENT          4+                   NA                0.2435897   0.1481078   0.3390717
12 months   ki0047075b-MAL-ED          1                    NA                0.4208955   0.3680120   0.4737790
12 months   ki0047075b-MAL-ED          2                    NA                0.4902597   0.4344141   0.5461054
12 months   ki0047075b-MAL-ED          3                    NA                0.4318182   0.3764837   0.4871526
12 months   ki0047075b-MAL-ED          4+                   NA                0.4068027   0.3712785   0.4423270
12 months   ki1000108-IRC              1                    NA                0.5054348   0.4331047   0.5777649
12 months   ki1000108-IRC              2                    NA                0.5058824   0.4306336   0.5811311
12 months   ki1000108-IRC              3                    NA                0.4571429   0.2919017   0.6223841
12 months   ki1000108-IRC              4+                   NA                0.7058824   0.4890192   0.9227455
12 months   ki1017093c-NIH-Crypto      1                    NA                0.4075145   0.3557039   0.4593250
12 months   ki1017093c-NIH-Crypto      2                    NA                0.3829787   0.3134435   0.4525139
12 months   ki1017093c-NIH-Crypto      3                    NA                0.2884615   0.2013305   0.3755925
12 months   ki1017093c-NIH-Crypto      4+                   NA                0.3736264   0.2741635   0.4730892
12 months   ki1113344-GMS-Nepal        1                    NA                0.4750000   0.3201119   0.6298881
12 months   ki1113344-GMS-Nepal        2                    NA                0.4758065   0.3878289   0.5637840
12 months   ki1113344-GMS-Nepal        3                    NA                0.4755245   0.3936021   0.5574469
12 months   ki1113344-GMS-Nepal        4+                   NA                0.4327273   0.3741191   0.4913355
12 months   ki1114097-CONTENT          1                    NA                0.3409091   0.2005224   0.4812958
12 months   ki1114097-CONTENT          2                    NA                0.1666667   0.0670350   0.2662983
12 months   ki1114097-CONTENT          3                    NA                0.2051282   0.0781032   0.3321533
12 months   ki1114097-CONTENT          4+                   NA                0.2820513   0.1819536   0.3821489
12 months   ki1135781-COHORTS          1                    NA                0.4657660   0.4486331   0.4828990
12 months   ki1135781-COHORTS          2                    NA                0.2878278   0.2648137   0.3108420
12 months   ki1135781-COHORTS          3                    NA                0.2554348   0.1924154   0.3184541
12 months   ki1135781-COHORTS          4+                   NA                0.1808511   0.1030350   0.2586671
18 months   ki0047075b-MAL-ED          1                    NA                0.5323077   0.4780449   0.5865705
18 months   ki0047075b-MAL-ED          2                    NA                0.6344828   0.5790397   0.6899259
18 months   ki0047075b-MAL-ED          3                    NA                0.5342466   0.4770144   0.5914787
18 months   ki0047075b-MAL-ED          4+                   NA                0.5063649   0.4695005   0.5432294
18 months   ki1000108-IRC              1                    NA                0.5621622   0.4905835   0.6337409
18 months   ki1000108-IRC              2                    NA                0.5647059   0.4900850   0.6393268
18 months   ki1000108-IRC              3                    NA                0.5142857   0.3485024   0.6800691
18 months   ki1000108-IRC              4+                   NA                0.7058824   0.4890198   0.9227449
18 months   ki1017093c-NIH-Crypto      1                    NA                0.4866469   0.4332455   0.5400482
18 months   ki1017093c-NIH-Crypto      2                    NA                0.4540541   0.3822590   0.5258491
18 months   ki1017093c-NIH-Crypto      3                    NA                0.3039216   0.2145989   0.3932443
18 months   ki1017093c-NIH-Crypto      4+                   NA                0.4175824   0.3161867   0.5189781
18 months   ki1113344-GMS-Nepal        1                    NA                0.6666667   0.5185895   0.8147439
18 months   ki1113344-GMS-Nepal        2                    NA                0.6333333   0.5470379   0.7196288
18 months   ki1113344-GMS-Nepal        3                    NA                0.6223776   0.5428506   0.7019046
18 months   ki1113344-GMS-Nepal        4+                   NA                0.6139706   0.5560642   0.6718769
18 months   ki1114097-CONTENT          1                    NA                0.3409091   0.2005208   0.4812974
18 months   ki1114097-CONTENT          2                    NA                0.2037037   0.0960311   0.3113763
18 months   ki1114097-CONTENT          3                    NA                0.2564103   0.1190480   0.3937725
18 months   ki1114097-CONTENT          4+                   NA                0.3116883   0.2079898   0.4153869
24 months   ki0047075b-MAL-ED          1                    NA                0.5806452   0.5256968   0.6355935
24 months   ki0047075b-MAL-ED          2                    NA                0.6775362   0.6223741   0.7326984
24 months   ki0047075b-MAL-ED          3                    NA                0.6151079   0.5578927   0.6723232
24 months   ki0047075b-MAL-ED          4+                   NA                0.5428994   0.5053346   0.5804642
24 months   ki1017093c-NIH-Crypto      1                    NA                0.5644599   0.5070509   0.6218690
24 months   ki1017093c-NIH-Crypto      2                    NA                0.5059524   0.4302908   0.5816140
24 months   ki1017093c-NIH-Crypto      3                    NA                0.3763441   0.2778037   0.4748845
24 months   ki1017093c-NIH-Crypto      4+                   NA                0.4186047   0.3142578   0.5229515
24 months   ki1113344-GMS-Nepal        1                    NA                0.7250000   0.5865044   0.8634956
24 months   ki1113344-GMS-Nepal        2                    NA                0.6991870   0.6180679   0.7803061
24 months   ki1113344-GMS-Nepal        3                    NA                0.6690647   0.5907707   0.7473588
24 months   ki1113344-GMS-Nepal        4+                   NA                0.6917293   0.6361870   0.7472717
24 months   ki1114097-CONTENT          1                    NA                0.3421053   0.1908817   0.4933288
24 months   ki1114097-CONTENT          2                    NA                0.2400000   0.1213192   0.3586808
24 months   ki1114097-CONTENT          3                    NA                0.2631579   0.1227936   0.4035222
24 months   ki1114097-CONTENT          4+                   NA                0.3098592   0.2020204   0.4176979


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.2567568   0.2558561   0.2576574
3 months    ki1000108-IRC              NA                   NA                0.3186275   0.3151614   0.3220935
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.1596306   0.1578774   0.1613838
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1585160   0.1565521   0.1604800
3 months    ki1114097-CONTENT          NA                   NA                0.1627907   0.1587789   0.1668025
3 months    ki1135781-COHORTS          NA                   NA                0.1906412   0.1895266   0.1917559
6 months    ki0047075b-MAL-ED          NA                   NA                0.3313714   0.3301164   0.3326264
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.5087058   0.5158174
6 months    ki1000108-IRC              NA                   NA                0.4261084   0.4212623   0.4309545
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.3070652   0.3048713   0.3092591
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2857143   0.2829560   0.2884725
6 months    ki1114097-CONTENT          NA                   NA                0.2232558   0.2163027   0.2302089
12 months   ki0047075b-MAL-ED          NA                   NA                0.4294187   0.4279747   0.4308628
12 months   ki1000108-IRC              NA                   NA                0.5098522   0.5056474   0.5140570
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3799726   0.3771016   0.3828436
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4553265   0.4535872   0.4570657
12 months   ki1114097-CONTENT          NA                   NA                0.2511628   0.2425088   0.2598168
12 months   ki1135781-COHORTS          NA                   NA                0.4000398   0.3975358   0.4025438
18 months   ki0047075b-MAL-ED          NA                   NA                0.5396530   0.5374075   0.5418986
18 months   ki1000108-IRC              NA                   NA                0.5651106   0.5619528   0.5682683
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4433566   0.4388523   0.4478610
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6236934   0.6225644   0.6248224
18 months   ki1114097-CONTENT          NA                   NA                0.2803738   0.2734031   0.2873445
24 months   ki0047075b-MAL-ED          NA                   NA                0.5876623   0.5851778   0.5901469
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5015773   0.4960526   0.5071020
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6901408   0.6889390   0.6913426
24 months   ki1114097-CONTENT          NA                   NA                0.2893401   0.2840296   0.2946506


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          2                    1                 1.0579939   0.8273252   1.3529761
3 months    ki0047075b-MAL-ED          3                    1                 0.8769986   0.6731873   1.1425149
3 months    ki0047075b-MAL-ED          4+                   1                 0.8960764   0.7221721   1.1118580
3 months    ki1000108-IRC              2                    1                 1.0882353   0.8008023   1.4788371
3 months    ki1000108-IRC              3                    1                 0.9176587   0.5184272   1.6243314
3 months    ki1000108-IRC              4+                   1                 1.5546218   0.8967031   2.6952612
3 months    ki1017093c-NIH-Crypto      2                    1                 0.9934555   0.6778969   1.4559054
3 months    ki1017093c-NIH-Crypto      3                    1                 0.6081731   0.3331209   1.1103310
3 months    ki1017093c-NIH-Crypto      4+                   1                 0.7868421   0.4529207   1.3669512
3 months    ki1113344-GMS-Nepal        2                    1                 0.8759766   0.4260380   1.8010950
3 months    ki1113344-GMS-Nepal        3                    1                 0.8506711   0.4181095   1.7307462
3 months    ki1113344-GMS-Nepal        4+                   1                 0.6511733   0.3274831   1.2948045
3 months    ki1114097-CONTENT          2                    1                 0.6111111   0.2286479   1.6333269
3 months    ki1114097-CONTENT          3                    1                 0.9871795   0.3932608   2.4780588
3 months    ki1114097-CONTENT          4+                   1                 0.9871795   0.4489344   2.1707479
3 months    ki1135781-COHORTS          2                    1                 0.6265703   0.5439359   0.7217584
3 months    ki1135781-COHORTS          3                    1                 0.5800074   0.3970341   0.8473039
3 months    ki1135781-COHORTS          4+                   1                 0.4498407   0.2489207   0.8129363
6 months    ki0047075b-MAL-ED          2                    1                 1.1489816   0.9355992   1.4110302
6 months    ki0047075b-MAL-ED          3                    1                 0.9292895   0.7426844   1.1627804
6 months    ki0047075b-MAL-ED          4+                   1                 0.9456419   0.7865668   1.1368882
6 months    ki1000108-CMC-V-BCS-2002   2                    1                 0.9519231   0.7569524   1.1971130
6 months    ki1000108-CMC-V-BCS-2002   3                    1                 0.8057714   0.5728130   1.1334719
6 months    ki1000108-CMC-V-BCS-2002   4+                   1                 0.9339623   0.5440511   1.6033155
6 months    ki1000108-IRC              2                    1                 1.0339783   0.8097926   1.3202285
6 months    ki1000108-IRC              3                    1                 0.8695175   0.5446207   1.3882337
6 months    ki1000108-IRC              4+                   1                 1.5580495   1.0534222   2.3044115
6 months    ki1017093c-NIH-Crypto      2                    1                 1.0476190   0.8132594   1.3495149
6 months    ki1017093c-NIH-Crypto      3                    1                 0.7554945   0.5194703   1.0987577
6 months    ki1017093c-NIH-Crypto      4+                   1                 0.8979592   0.6269244   1.2861689
6 months    ki1113344-GMS-Nepal        2                    1                 0.8262712   0.4993944   1.3671041
6 months    ki1113344-GMS-Nepal        3                    1                 0.8827968   0.5438760   1.4329189
6 months    ki1113344-GMS-Nepal        4+                   1                 0.7068230   0.4429295   1.1279420
6 months    ki1114097-CONTENT          2                    1                 0.5014245   0.2281439   1.1020526
6 months    ki1114097-CONTENT          3                    1                 0.6942801   0.3215170   1.4992205
6 months    ki1114097-CONTENT          4+                   1                 0.8244576   0.4514153   1.5057760
12 months   ki0047075b-MAL-ED          2                    1                 1.1648015   0.9831007   1.3800850
12 months   ki0047075b-MAL-ED          3                    1                 1.0259510   0.8574057   1.2276282
12 months   ki0047075b-MAL-ED          4+                   1                 0.9665171   0.8293877   1.1263192
12 months   ki1000108-IRC              2                    1                 1.0008855   0.8142205   1.2303447
12 months   ki1000108-IRC              3                    1                 0.9044547   0.6131258   1.3342096
12 months   ki1000108-IRC              4+                   1                 1.3965844   0.9951243   1.9600044
12 months   ki1017093c-NIH-Crypto      2                    1                 0.9397918   0.7529557   1.1729888
12 months   ki1017093c-NIH-Crypto      3                    1                 0.7078560   0.5100558   0.9823633
12 months   ki1017093c-NIH-Crypto      4+                   1                 0.9168420   0.6826103   1.2314483
12 months   ki1113344-GMS-Nepal        2                    1                 1.0016978   0.6885553   1.4572517
12 months   ki1113344-GMS-Nepal        3                    1                 1.0011042   0.6923325   1.4475842
12 months   ki1113344-GMS-Nepal        4+                   1                 0.9110048   0.6399941   1.2967772
12 months   ki1114097-CONTENT          2                    1                 0.4888889   0.2365676   1.0103344
12 months   ki1114097-CONTENT          3                    1                 0.6017094   0.2860319   1.2657827
12 months   ki1114097-CONTENT          4+                   1                 0.8273504   0.4803924   1.4248950
12 months   ki1135781-COHORTS          2                    1                 0.6179666   0.5659020   0.6748213
12 months   ki1135781-COHORTS          3                    1                 0.5484186   0.4273476   0.7037901
12 months   ki1135781-COHORTS          4+                   1                 0.3882874   0.2521184   0.5980009
18 months   ki0047075b-MAL-ED          2                    1                 1.1919474   1.0421881   1.3632266
18 months   ki0047075b-MAL-ED          3                    1                 1.0036424   0.8656787   1.1635935
18 months   ki0047075b-MAL-ED          4+                   1                 0.9512636   0.8392635   1.0782101
18 months   ki1000108-IRC              2                    1                 1.0045249   0.8361151   1.2068556
18 months   ki1000108-IRC              3                    1                 0.9148352   0.6468742   1.2937961
18 months   ki1000108-IRC              4+                   1                 1.2556561   0.9004110   1.7510584
18 months   ki1017093c-NIH-Crypto      2                    1                 0.9330257   0.7696734   1.1310473
18 months   ki1017093c-NIH-Crypto      3                    1                 0.6245218   0.4563538   0.8546602
18 months   ki1017093c-NIH-Crypto      4+                   1                 0.8580809   0.6573642   1.1200836
18 months   ki1113344-GMS-Nepal        2                    1                 0.9500000   0.7320754   1.2327965
18 months   ki1113344-GMS-Nepal        3                    1                 0.9335664   0.7225338   1.2062360
18 months   ki1113344-GMS-Nepal        4+                   1                 0.9209559   0.7235009   1.1722994
18 months   ki1114097-CONTENT          2                    1                 0.5975309   0.3057446   1.1677823
18 months   ki1114097-CONTENT          3                    1                 0.7521368   0.3826869   1.4782573
18 months   ki1114097-CONTENT          4+                   1                 0.9142857   0.5384718   1.5523902
24 months   ki0047075b-MAL-ED          2                    1                 1.1668680   1.0299264   1.3220176
24 months   ki0047075b-MAL-ED          3                    1                 1.0593525   0.9277105   1.2096745
24 months   ki0047075b-MAL-ED          4+                   1                 0.9349934   0.8315642   1.0512871
24 months   ki1017093c-NIH-Crypto      2                    1                 0.8963477   0.7480554   1.0740371
24 months   ki1017093c-NIH-Crypto      3                    1                 0.6667330   0.5034550   0.8829646
24 months   ki1017093c-NIH-Crypto      4+                   1                 0.7416021   0.5665637   0.9707182
24 months   ki1113344-GMS-Nepal        2                    1                 0.9643959   0.7712416   1.2059248
24 months   ki1113344-GMS-Nepal        3                    1                 0.9228479   0.7376305   1.1545730
24 months   ki1113344-GMS-Nepal        4+                   1                 0.9541094   0.7755409   1.1737934
24 months   ki1114097-CONTENT          2                    1                 0.7015385   0.3614062   1.3617814
24 months   ki1114097-CONTENT          3                    1                 0.7692308   0.3847698   1.5378441
24 months   ki1114097-CONTENT          4+                   1                 0.9057421   0.5160245   1.5897866


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          1                    NA                -0.0154326   -0.0629049    0.0320397
3 months    ki1000108-IRC              1                    NA                 0.0159247   -0.0504504    0.0822998
3 months    ki1017093c-NIH-Crypto      1                    NA                -0.0142824   -0.0530737    0.0245088
3 months    ki1113344-GMS-Nepal        1                    NA                -0.0466122   -0.1734637    0.0802393
3 months    ki1114097-CONTENT          1                    NA                -0.0190275   -0.1333272    0.0952723
3 months    ki1135781-COHORTS          1                    NA                -0.0294587   -0.0434248   -0.0154925
6 months    ki0047075b-MAL-ED          1                    NA                -0.0029481   -0.0532711    0.0473749
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                -0.0230920   -0.0927476    0.0465637
6 months    ki1000108-IRC              1                    NA                 0.0108078   -0.0608397    0.0824554
6 months    ki1017093c-NIH-Crypto      1                    NA                -0.0111166   -0.0598565    0.0376233
6 months    ki1113344-GMS-Nepal        1                    NA                -0.0732601   -0.2239698    0.0774496
6 months    ki1114097-CONTENT          1                    NA                -0.0721987   -0.2075020    0.0631045
12 months   ki0047075b-MAL-ED          1                    NA                 0.0085232   -0.0443800    0.0614264
12 months   ki1000108-IRC              1                    NA                 0.0044174   -0.0680348    0.0768696
12 months   ki1017093c-NIH-Crypto      1                    NA                -0.0275419   -0.0794320    0.0243482
12 months   ki1113344-GMS-Nepal        1                    NA                -0.0196735   -0.1745714    0.1352243
12 months   ki1114097-CONTENT          1                    NA                -0.0897463   -0.2303995    0.0509069
12 months   ki1135781-COHORTS          1                    NA                -0.0657262   -0.0830412   -0.0484113
18 months   ki0047075b-MAL-ED          1                    NA                 0.0073453   -0.0469639    0.0616546
18 months   ki1000108-IRC              1                    NA                 0.0029484   -0.0686999    0.0745967
18 months   ki1017093c-NIH-Crypto      1                    NA                -0.0432902   -0.0968812    0.0103007
18 months   ki1113344-GMS-Nepal        1                    NA                -0.0429733   -0.1910548    0.1051082
18 months   ki1114097-CONTENT          1                    NA                -0.0605353   -0.2010965    0.0800260
24 months   ki0047075b-MAL-ED          1                    NA                 0.0070172   -0.0479873    0.0620217
24 months   ki1017093c-NIH-Crypto      1                    NA                -0.0628826   -0.1205569   -0.0052084
24 months   ki1113344-GMS-Nepal        1                    NA                -0.0348592   -0.1733600    0.1036417
24 months   ki1114097-CONTENT          1                    NA                -0.0527652   -0.2040819    0.0985516


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          1                    NA                -0.0601059   -0.2621061    0.1095641
3 months    ki1000108-IRC              1                    NA                 0.0499792   -0.1829063    0.2370152
3 months    ki1017093c-NIH-Crypto      1                    NA                -0.0894718   -0.3617699    0.1283779
3 months    ki1113344-GMS-Nepal        1                    NA                -0.2940535   -1.4018290    0.3027920
3 months    ki1114097-CONTENT          1                    NA                -0.1168831   -1.0944404    0.4044099
3 months    ki1135781-COHORTS          1                    NA                -0.1545241   -0.2302397   -0.0834684
6 months    ki0047075b-MAL-ED          1                    NA                -0.0088968   -0.1727857    0.1320898
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                -0.0450784   -0.1903163    0.0824380
6 months    ki1000108-IRC              1                    NA                 0.0253640   -0.1581324    0.1797870
6 months    ki1017093c-NIH-Crypto      1                    NA                -0.0362027   -0.2077471    0.1109760
6 months    ki1113344-GMS-Nepal        1                    NA                -0.2564103   -0.9119689    0.1743764
6 months    ki1114097-CONTENT          1                    NA                -0.3233902   -1.0930037    0.1632306
12 months   ki0047075b-MAL-ED          1                    NA                 0.0198483   -0.1114242    0.1356159
12 months   ki1000108-IRC              1                    NA                 0.0086641   -0.1441251    0.1410495
12 months   ki1017093c-NIH-Crypto      1                    NA                -0.0724839   -0.2181578    0.0557695
12 months   ki1113344-GMS-Nepal        1                    NA                -0.0432075   -0.4454240    0.2470846
12 months   ki1114097-CONTENT          1                    NA                -0.3573232   -1.0518762    0.1021260
12 months   ki1135781-COHORTS          1                    NA                -0.1642992   -0.2085636   -0.1216560
18 months   ki0047075b-MAL-ED          1                    NA                 0.0136112   -0.0923366    0.1092829
18 months   ki1000108-IRC              1                    NA                 0.0052174   -0.1300016    0.1242557
18 months   ki1017093c-NIH-Crypto      1                    NA                -0.0976420   -0.2255219    0.0168939
18 months   ki1113344-GMS-Nepal        1                    NA                -0.0689013   -0.3347640    0.1440060
18 months   ki1114097-CONTENT          1                    NA                -0.2159091   -0.8368413    0.1951210
24 months   ki0047075b-MAL-ED          1                    NA                 0.0119408   -0.0862321    0.1012410
24 months   ki1017093c-NIH-Crypto      1                    NA                -0.1253698   -0.2465909   -0.0159364
24 months   ki1113344-GMS-Nepal        1                    NA                -0.0505102   -0.2716463    0.1321709
24 months   ki1114097-CONTENT          1                    NA                -0.1823638   -0.8403111    0.2403544


