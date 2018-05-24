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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093c-NIH-Crypto

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1148112-LCNI-5

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/4e9cac5c-d2bb-4cf9-93d5-78132705928e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4e9cac5c-d2bb-4cf9-93d5-78132705928e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/4e9cac5c-d2bb-4cf9-93d5-78132705928e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4e9cac5c-d2bb-4cf9-93d5-78132705928e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A       n    nA   nAY0   nAY1
----------  -------------------------  ---  ----  ----  -----  -----
Birth       ki1000108-IRC              1     388   114    100     14
Birth       ki1000108-IRC              0     388    84     72     12
Birth       ki1000108-IRC              2+    388   190    171     19
Birth       ki1017093b-PROVIDE         1       0     0      0      0
Birth       ki1017093b-PROVIDE         0       0     0      0      0
Birth       ki1017093b-PROVIDE         2+      0     0      0      0
Birth       ki1017093c-NIH-Crypto      1      27     8      7      1
Birth       ki1017093c-NIH-Crypto      0      27    18     14      4
Birth       ki1017093c-NIH-Crypto      2+     27     1      1      0
Birth       ki1066203-TanzaniaChild2   1       0     0      0      0
Birth       ki1066203-TanzaniaChild2   0       0     0      0      0
Birth       ki1066203-TanzaniaChild2   2+      0     0      0      0
Birth       ki1148112-LCNI-5           1       0     0      0      0
Birth       ki1148112-LCNI-5           0       0     0      0      0
Birth       ki1148112-LCNI-5           2+      0     0      0      0
3 months    ki1000108-IRC              1     407   117     92     25
3 months    ki1000108-IRC              0     407    89     67     22
3 months    ki1000108-IRC              2+    407   201    157     44
3 months    ki1017093b-PROVIDE         1     168    45     41      4
3 months    ki1017093b-PROVIDE         0     168   120    104     16
3 months    ki1017093b-PROVIDE         2+    168     3      3      0
3 months    ki1017093c-NIH-Crypto      1     728   204    153     51
3 months    ki1017093c-NIH-Crypto      0     728   518    413    105
3 months    ki1017093c-NIH-Crypto      2+    728     6      6      0
3 months    ki1066203-TanzaniaChild2   1     574   157    146     11
3 months    ki1066203-TanzaniaChild2   0     574   397    370     27
3 months    ki1066203-TanzaniaChild2   2+    574    20     19      1
3 months    ki1148112-LCNI-5           1       0     0      0      0
3 months    ki1148112-LCNI-5           0       0     0      0      0
3 months    ki1148112-LCNI-5           2+      0     0      0      0
6 months    ki1000108-IRC              1     407   119     90     29
6 months    ki1000108-IRC              0     407    89     67     22
6 months    ki1000108-IRC              2+    407   199    150     49
6 months    ki1017093b-PROVIDE         1     153    45     37      8
6 months    ki1017093b-PROVIDE         0     153   106     86     20
6 months    ki1017093b-PROVIDE         2+    153     2      2      0
6 months    ki1017093c-NIH-Crypto      1     715   203    160     43
6 months    ki1017093c-NIH-Crypto      0     715   507    400    107
6 months    ki1017093c-NIH-Crypto      2+    715     5      5      0
6 months    ki1066203-TanzaniaChild2   1     503   140    128     12
6 months    ki1066203-TanzaniaChild2   0     503   346    314     32
6 months    ki1066203-TanzaniaChild2   2+    503    17     16      1
6 months    ki1148112-LCNI-5           1     405   189    128     61
6 months    ki1148112-LCNI-5           0     405     3      2      1
6 months    ki1148112-LCNI-5           2+    405   213    126     87
9 months    ki1000108-IRC              1     407   119     86     33
9 months    ki1000108-IRC              0     407    89     66     23
9 months    ki1000108-IRC              2+    407   199    144     55
9 months    ki1017093b-PROVIDE         1     158    44     31     13
9 months    ki1017093b-PROVIDE         0     158   111     88     23
9 months    ki1017093b-PROVIDE         2+    158     3      2      1
9 months    ki1017093c-NIH-Crypto      1     706   198    148     50
9 months    ki1017093c-NIH-Crypto      0     706   503    389    114
9 months    ki1017093c-NIH-Crypto      2+    706     5      5      0
9 months    ki1066203-TanzaniaChild2   1     433   121    106     15
9 months    ki1066203-TanzaniaChild2   0     433   300    254     46
9 months    ki1066203-TanzaniaChild2   2+    433    12     10      2
9 months    ki1148112-LCNI-5           1     317   146    104     42
9 months    ki1148112-LCNI-5           0     317     1      0      1
9 months    ki1148112-LCNI-5           2+    317   170    114     56
12 months   ki1000108-IRC              1     406   118     85     33
12 months   ki1000108-IRC              0     406    88     64     24
12 months   ki1000108-IRC              2+    406   200    138     62
12 months   ki1017093b-PROVIDE         1     153    44     32     12
12 months   ki1017093b-PROVIDE         0     153   107     75     32
12 months   ki1017093b-PROVIDE         2+    153     2      2      0
12 months   ki1017093c-NIH-Crypto      1     706   202    147     55
12 months   ki1017093c-NIH-Crypto      0     706   500    384    116
12 months   ki1017093c-NIH-Crypto      2+    706     4      4      0
12 months   ki1066203-TanzaniaChild2   1     356   100     91      9
12 months   ki1066203-TanzaniaChild2   0     356   245    204     41
12 months   ki1066203-TanzaniaChild2   2+    356    11      9      2
12 months   ki1148112-LCNI-5           1     306   141     92     49
12 months   ki1148112-LCNI-5           0     306     2      1      1
12 months   ki1148112-LCNI-5           2+    306   163     88     75
18 months   ki1000108-IRC              1     405   118     77     41
18 months   ki1000108-IRC              0     405    88     63     25
18 months   ki1000108-IRC              2+    405   199    121     78
18 months   ki1017093b-PROVIDE         1     141    40     23     17
18 months   ki1017093b-PROVIDE         0     141    99     64     35
18 months   ki1017093b-PROVIDE         2+    141     2      2      0
18 months   ki1017093c-NIH-Crypto      1     634   183    123     60
18 months   ki1017093c-NIH-Crypto      0     634   447    318    129
18 months   ki1017093c-NIH-Crypto      2+    634     4      2      2
18 months   ki1066203-TanzaniaChild2   1     257    70     53     17
18 months   ki1066203-TanzaniaChild2   0     257   178    131     47
18 months   ki1066203-TanzaniaChild2   2+    257     9      5      4
18 months   ki1148112-LCNI-5           1     353   167     94     73
18 months   ki1148112-LCNI-5           0     353     3      1      2
18 months   ki1148112-LCNI-5           2+    353   183     84     99
24 months   ki1000108-IRC              1     409   119     73     46
24 months   ki1000108-IRC              0     409    89     58     31
24 months   ki1000108-IRC              2+    409   201    108     93
24 months   ki1017093b-PROVIDE         1     149    41     26     15
24 months   ki1017093b-PROVIDE         0     149   106     73     33
24 months   ki1017093b-PROVIDE         2+    149     2      1      1
24 months   ki1017093c-NIH-Crypto      1     514   153    103     50
24 months   ki1017093c-NIH-Crypto      0     514   357    276     81
24 months   ki1017093c-NIH-Crypto      2+    514     4      3      1
24 months   ki1066203-TanzaniaChild2   1       2     1      1      0
24 months   ki1066203-TanzaniaChild2   0       2     1      1      0
24 months   ki1066203-TanzaniaChild2   2+      2     0      0      0
24 months   ki1148112-LCNI-5           1     293   141     82     59
24 months   ki1148112-LCNI-5           0     293     2      1      1
24 months   ki1148112-LCNI-5           2+    293   150     82     68

## Results Table

### Parameter: TSM


agecat      studyid         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC   1                    NA                0.1228070   0.0624795   0.1831345
Birth       ki1000108-IRC   0                    NA                0.1428571   0.0679288   0.2177855
Birth       ki1000108-IRC   2+                   NA                0.1000000   0.0572877   0.1427123
3 months    ki1000108-IRC   1                    NA                0.2136752   0.1393104   0.2880400
3 months    ki1000108-IRC   0                    NA                0.2471910   0.1574593   0.3369227
3 months    ki1000108-IRC   2+                   NA                0.2189055   0.1616701   0.2761408
6 months    ki1000108-IRC   1                    NA                0.2436975   0.1664682   0.3209268
6 months    ki1000108-IRC   0                    NA                0.2471910   0.1574593   0.3369227
6 months    ki1000108-IRC   2+                   NA                0.2462312   0.1863009   0.3061614
9 months    ki1000108-IRC   1                    NA                0.2773109   0.1967790   0.3578428
9 months    ki1000108-IRC   0                    NA                0.2584270   0.1673658   0.3494881
9 months    ki1000108-IRC   2+                   NA                0.2763819   0.2141712   0.3385926
12 months   ki1000108-IRC   1                    NA                0.2796610   0.1985785   0.3607435
12 months   ki1000108-IRC   0                    NA                0.2727273   0.1795618   0.3658928
12 months   ki1000108-IRC   2+                   NA                0.3100000   0.2458238   0.3741762
18 months   ki1000108-IRC   1                    NA                0.3474576   0.2614377   0.4334776
18 months   ki1000108-IRC   0                    NA                0.2840909   0.1897498   0.3784321
18 months   ki1000108-IRC   2+                   NA                0.3919598   0.3240480   0.4598716
24 months   ki1000108-IRC   1                    NA                0.3865546   0.2989555   0.4741537
24 months   ki1000108-IRC   0                    NA                0.3483146   0.2492110   0.4474182
24 months   ki1000108-IRC   2+                   NA                0.4626866   0.3936723   0.5317008


### Parameter: E(Y)


agecat      studyid         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC   NA                   NA                0.1159794   0.1142678   0.1176910
3 months    ki1000108-IRC   NA                   NA                0.2235872   0.2223534   0.2248211
6 months    ki1000108-IRC   NA                   NA                0.2457002   0.2455699   0.2458306
9 months    ki1000108-IRC   NA                   NA                0.2727273   0.2719904   0.2734642
12 months   ki1000108-IRC   NA                   NA                0.2931034   0.2914646   0.2947423
18 months   ki1000108-IRC   NA                   NA                0.3555556   0.3514415   0.3596696
24 months   ki1000108-IRC   NA                   NA                0.4156479   0.4109740   0.4203219


### Parameter: RR


agecat      studyid         intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC   0                    1                 1.1632653   0.5670043   2.386554
Birth       ki1000108-IRC   2+                   1                 0.8142857   0.4246865   1.561296
3 months    ki1000108-IRC   0                    1                 1.1568539   0.6996441   1.912845
3 months    ki1000108-IRC   2+                   1                 1.0244776   0.6629100   1.583253
6 months    ki1000108-IRC   0                    1                 1.0143355   0.6264787   1.642317
6 months    ki1000108-IRC   2+                   1                 1.0103968   0.6775701   1.506710
9 months    ki1000108-IRC   0                    1                 0.9319033   0.5902906   1.471214
9 months    ki1000108-IRC   2+                   1                 0.9966499   0.6901970   1.439170
12 months   ki1000108-IRC   0                    1                 0.9752066   0.6230283   1.526460
12 months   ki1000108-IRC   2+                   1                 1.1084848   0.7762655   1.582885
18 months   ki1000108-IRC   0                    1                 0.8176275   0.5403401   1.237211
18 months   ki1000108-IRC   2+                   1                 1.1280794   0.8338851   1.526066
24 months   ki1000108-IRC   0                    1                 0.9010747   0.6263108   1.296378
24 months   ki1000108-IRC   2+                   1                 1.1969500   0.9125411   1.570000


### Parameter: PAR


agecat      studyid         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC   1                    NA                -0.0068276   -0.0671794   0.0535241
3 months    ki1000108-IRC   1                    NA                 0.0099120   -0.0644630   0.0842870
6 months    ki1000108-IRC   1                    NA                 0.0020028   -0.0752266   0.0792322
9 months    ki1000108-IRC   1                    NA                -0.0045837   -0.0851189   0.0759516
12 months   ki1000108-IRC   1                    NA                 0.0134424   -0.0676566   0.0945415
18 months   ki1000108-IRC   1                    NA                 0.0080979   -0.0780203   0.0942162
24 months   ki1000108-IRC   1                    NA                 0.0290933   -0.0586304   0.1168170


### Parameter: PAF


agecat      studyid         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC   1                    NA                -0.0588694   -0.7309345   0.3522549
3 months    ki1000108-IRC   1                    NA                 0.0443317   -0.3535443   0.3252516
6 months    ki1000108-IRC   1                    NA                 0.0081513   -0.3616841   0.2775388
9 months    ki1000108-IRC   1                    NA                -0.0168067   -0.3594532   0.2394767
12 months   ki1000108-IRC   1                    NA                 0.0458624   -0.2751168   0.2860430
18 months   ki1000108-IRC   1                    NA                 0.0227754   -0.2520736   0.2372910
24 months   ki1000108-IRC   1                    NA                 0.0699951   -0.1668741   0.2587811


