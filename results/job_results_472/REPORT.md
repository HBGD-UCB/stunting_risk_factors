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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/92597f6b-8f03-4cfe-b532-bfa0f5287108/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/92597f6b-8f03-4cfe-b532-bfa0f5287108/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/92597f6b-8f03-4cfe-b532-bfa0f5287108/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/92597f6b-8f03-4cfe-b532-bfa0f5287108/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A       n    nA   nAY0   nAY1
----------  -------------------------  ---  ----  ----  -----  -----
12 months   ki1000108-IRC              0     406    88     64     24
12 months   ki1000108-IRC              1     406   118     85     33
12 months   ki1000108-IRC              2+    406   200    138     62
12 months   ki1017093b-PROVIDE         0     153   107     75     32
12 months   ki1017093b-PROVIDE         1     153    44     32     12
12 months   ki1017093b-PROVIDE         2+    153     2      2      0
12 months   ki1017093c-NIH-Crypto      0     706   500    384    116
12 months   ki1017093c-NIH-Crypto      1     706   202    147     55
12 months   ki1017093c-NIH-Crypto      2+    706     4      4      0
12 months   ki1066203-TanzaniaChild2   0     356   245    204     41
12 months   ki1066203-TanzaniaChild2   1     356   100     91      9
12 months   ki1066203-TanzaniaChild2   2+    356    11      9      2
12 months   ki1148112-LCNI-5           0     306     2      1      1
12 months   ki1148112-LCNI-5           1     306   141     92     49
12 months   ki1148112-LCNI-5           2+    306   163     88     75
18 months   ki1000108-IRC              0     405    88     63     25
18 months   ki1000108-IRC              1     405   118     77     41
18 months   ki1000108-IRC              2+    405   199    121     78
18 months   ki1017093b-PROVIDE         0     141    99     64     35
18 months   ki1017093b-PROVIDE         1     141    40     23     17
18 months   ki1017093b-PROVIDE         2+    141     2      2      0
18 months   ki1017093c-NIH-Crypto      0     634   447    318    129
18 months   ki1017093c-NIH-Crypto      1     634   183    123     60
18 months   ki1017093c-NIH-Crypto      2+    634     4      2      2
18 months   ki1066203-TanzaniaChild2   0     257   178    131     47
18 months   ki1066203-TanzaniaChild2   1     257    70     53     17
18 months   ki1066203-TanzaniaChild2   2+    257     9      5      4
18 months   ki1148112-LCNI-5           0     353     3      1      2
18 months   ki1148112-LCNI-5           1     353   167     94     73
18 months   ki1148112-LCNI-5           2+    353   183     84     99
24 months   ki1000108-IRC              0     409    89     58     31
24 months   ki1000108-IRC              1     409   119     73     46
24 months   ki1000108-IRC              2+    409   201    108     93
24 months   ki1017093b-PROVIDE         0     149   106     73     33
24 months   ki1017093b-PROVIDE         1     149    41     26     15
24 months   ki1017093b-PROVIDE         2+    149     2      1      1
24 months   ki1017093c-NIH-Crypto      0     514   357    276     81
24 months   ki1017093c-NIH-Crypto      1     514   153    103     50
24 months   ki1017093c-NIH-Crypto      2+    514     4      3      1
24 months   ki1066203-TanzaniaChild2   0       2     1      1      0
24 months   ki1066203-TanzaniaChild2   1       2     1      1      0
24 months   ki1066203-TanzaniaChild2   2+      2     0      0      0
24 months   ki1148112-LCNI-5           0     293     2      1      1
24 months   ki1148112-LCNI-5           1     293   141     82     59
24 months   ki1148112-LCNI-5           2+    293   150     82     68
3 months    ki1000108-IRC              0     407    89     67     22
3 months    ki1000108-IRC              1     407   117     92     25
3 months    ki1000108-IRC              2+    407   201    157     44
3 months    ki1017093b-PROVIDE         0     168   120    104     16
3 months    ki1017093b-PROVIDE         1     168    45     41      4
3 months    ki1017093b-PROVIDE         2+    168     3      3      0
3 months    ki1017093c-NIH-Crypto      0     728   518    413    105
3 months    ki1017093c-NIH-Crypto      1     728   204    153     51
3 months    ki1017093c-NIH-Crypto      2+    728     6      6      0
3 months    ki1066203-TanzaniaChild2   0     574   397    370     27
3 months    ki1066203-TanzaniaChild2   1     574   157    146     11
3 months    ki1066203-TanzaniaChild2   2+    574    20     19      1
3 months    ki1148112-LCNI-5           0       0     0      0      0
3 months    ki1148112-LCNI-5           1       0     0      0      0
3 months    ki1148112-LCNI-5           2+      0     0      0      0
6 months    ki1000108-IRC              0     407    89     67     22
6 months    ki1000108-IRC              1     407   119     90     29
6 months    ki1000108-IRC              2+    407   199    150     49
6 months    ki1017093b-PROVIDE         0     153   106     86     20
6 months    ki1017093b-PROVIDE         1     153    45     37      8
6 months    ki1017093b-PROVIDE         2+    153     2      2      0
6 months    ki1017093c-NIH-Crypto      0     715   507    400    107
6 months    ki1017093c-NIH-Crypto      1     715   203    160     43
6 months    ki1017093c-NIH-Crypto      2+    715     5      5      0
6 months    ki1066203-TanzaniaChild2   0     503   346    314     32
6 months    ki1066203-TanzaniaChild2   1     503   140    128     12
6 months    ki1066203-TanzaniaChild2   2+    503    17     16      1
6 months    ki1148112-LCNI-5           0     405     3      2      1
6 months    ki1148112-LCNI-5           1     405   189    128     61
6 months    ki1148112-LCNI-5           2+    405   213    126     87
9 months    ki1000108-IRC              0     407    89     66     23
9 months    ki1000108-IRC              1     407   119     86     33
9 months    ki1000108-IRC              2+    407   199    144     55
9 months    ki1017093b-PROVIDE         0     158   111     88     23
9 months    ki1017093b-PROVIDE         1     158    44     31     13
9 months    ki1017093b-PROVIDE         2+    158     3      2      1
9 months    ki1017093c-NIH-Crypto      0     706   503    389    114
9 months    ki1017093c-NIH-Crypto      1     706   198    148     50
9 months    ki1017093c-NIH-Crypto      2+    706     5      5      0
9 months    ki1066203-TanzaniaChild2   0     433   300    254     46
9 months    ki1066203-TanzaniaChild2   1     433   121    106     15
9 months    ki1066203-TanzaniaChild2   2+    433    12     10      2
9 months    ki1148112-LCNI-5           0     317     1      0      1
9 months    ki1148112-LCNI-5           1     317   146    104     42
9 months    ki1148112-LCNI-5           2+    317   170    114     56
Birth       ki1000108-IRC              0     388    84     72     12
Birth       ki1000108-IRC              1     388   114    100     14
Birth       ki1000108-IRC              2+    388   190    171     19
Birth       ki1017093b-PROVIDE         0       0     0      0      0
Birth       ki1017093b-PROVIDE         1       0     0      0      0
Birth       ki1017093b-PROVIDE         2+      0     0      0      0
Birth       ki1017093c-NIH-Crypto      0      27    18     14      4
Birth       ki1017093c-NIH-Crypto      1      27     8      7      1
Birth       ki1017093c-NIH-Crypto      2+     27     1      1      0
Birth       ki1066203-TanzaniaChild2   0       0     0      0      0
Birth       ki1066203-TanzaniaChild2   1       0     0      0      0
Birth       ki1066203-TanzaniaChild2   2+      0     0      0      0
Birth       ki1148112-LCNI-5           0       0     0      0      0
Birth       ki1148112-LCNI-5           1       0     0      0      0
Birth       ki1148112-LCNI-5           2+      0     0      0      0

## Results Table

### Parameter: TSM


agecat      studyid         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC   0                    NA                0.2727273   0.1795618   0.3658928
12 months   ki1000108-IRC   1                    NA                0.2796610   0.1985785   0.3607435
12 months   ki1000108-IRC   2+                   NA                0.3100000   0.2458238   0.3741762
18 months   ki1000108-IRC   0                    NA                0.2840909   0.1897498   0.3784321
18 months   ki1000108-IRC   1                    NA                0.3474576   0.2614377   0.4334776
18 months   ki1000108-IRC   2+                   NA                0.3919598   0.3240480   0.4598716
24 months   ki1000108-IRC   0                    NA                0.3483146   0.2492110   0.4474182
24 months   ki1000108-IRC   1                    NA                0.3865546   0.2989555   0.4741537
24 months   ki1000108-IRC   2+                   NA                0.4626866   0.3936723   0.5317008
3 months    ki1000108-IRC   0                    NA                0.2471910   0.1574593   0.3369227
3 months    ki1000108-IRC   1                    NA                0.2136752   0.1393104   0.2880400
3 months    ki1000108-IRC   2+                   NA                0.2189055   0.1616701   0.2761408
6 months    ki1000108-IRC   0                    NA                0.2471910   0.1574593   0.3369227
6 months    ki1000108-IRC   1                    NA                0.2436975   0.1664682   0.3209268
6 months    ki1000108-IRC   2+                   NA                0.2462312   0.1863009   0.3061614
9 months    ki1000108-IRC   0                    NA                0.2584270   0.1673658   0.3494881
9 months    ki1000108-IRC   1                    NA                0.2773109   0.1967790   0.3578428
9 months    ki1000108-IRC   2+                   NA                0.2763819   0.2141712   0.3385926
Birth       ki1000108-IRC   0                    NA                0.1428571   0.0679288   0.2177855
Birth       ki1000108-IRC   1                    NA                0.1228070   0.0624795   0.1831345
Birth       ki1000108-IRC   2+                   NA                0.1000000   0.0572877   0.1427123


### Parameter: E(Y)


agecat      studyid         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC   NA                   NA                0.2931034   0.2914646   0.2947423
18 months   ki1000108-IRC   NA                   NA                0.3555556   0.3514415   0.3596696
24 months   ki1000108-IRC   NA                   NA                0.4156479   0.4109740   0.4203219
3 months    ki1000108-IRC   NA                   NA                0.2235872   0.2223534   0.2248211
6 months    ki1000108-IRC   NA                   NA                0.2457002   0.2455699   0.2458306
9 months    ki1000108-IRC   NA                   NA                0.2727273   0.2719904   0.2734642
Birth       ki1000108-IRC   NA                   NA                0.1159794   0.1142678   0.1176910


### Parameter: RR


agecat      studyid         intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  -------------------  ---------------  ----------  ----------  ---------
12 months   ki1000108-IRC   1                    0                 1.0254237   0.6551104   1.605063
12 months   ki1000108-IRC   2+                   0                 1.1366667   0.7623570   1.694759
18 months   ki1000108-IRC   1                    0                 1.2230508   0.8082695   1.850686
18 months   ki1000108-IRC   2+                   0                 1.3796985   0.9486664   2.006572
24 months   ki1000108-IRC   1                    0                 1.1097858   0.7713798   1.596651
24 months   ki1000108-IRC   2+                   0                 1.3283582   0.9633801   1.831609
3 months    ki1000108-IRC   1                    0                 0.8644134   0.5227814   1.429298
3 months    ki1000108-IRC   2+                   0                 0.8855721   0.5661557   1.385198
6 months    ki1000108-IRC   1                    0                 0.9858671   0.6088959   1.596223
6 months    ki1000108-IRC   2+                   0                 0.9961169   0.6434315   1.542121
9 months    ki1000108-IRC   1                    0                 1.0730727   0.6797108   1.694081
9 months    ki1000108-IRC   2+                   0                 1.0694778   0.7040163   1.624654
Birth       ki1000108-IRC   1                    0                 0.8596491   0.4190143   1.763655
Birth       ki1000108-IRC   2+                   0                 0.7000000   0.3559067   1.376766


### Parameter: PAR


agecat      studyid         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki1000108-IRC   0                    NA                 0.0203762   -0.0728038   0.1135561
18 months   ki1000108-IRC   0                    NA                 0.0714646   -0.0229662   0.1658955
24 months   ki1000108-IRC   0                    NA                 0.0673333   -0.0318805   0.1665471
3 months    ki1000108-IRC   0                    NA                -0.0236038   -0.1133440   0.0661364
6 months    ki1000108-IRC   0                    NA                -0.0014908   -0.0912226   0.0882411
9 months    ki1000108-IRC   0                    NA                 0.0143003   -0.0767638   0.1053644
Birth       ki1000108-IRC   0                    NA                -0.0268778   -0.1018257   0.0480702


### Parameter: PAF


agecat      studyid         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki1000108-IRC   0                    NA                 0.0695187   -0.3094397   0.3388047
18 months   ki1000108-IRC   0                    NA                 0.2009943   -0.1139310   0.4268854
24 months   ki1000108-IRC   0                    NA                 0.1619960   -0.1140622   0.3696486
3 months    ki1000108-IRC   0                    NA                -0.1055686   -0.5894806   0.2310181
6 months    ki1000108-IRC   0                    NA                -0.0060674   -0.4463673   0.3001974
9 months    ki1000108-IRC   0                    NA                 0.0524345   -0.3478602   0.3338475
Birth       ki1000108-IRC   0                    NA                -0.2317460   -1.0816046   0.2711400


