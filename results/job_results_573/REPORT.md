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
![](/tmp/a55cba0d-e601-498e-a2a3-02cb1ef9d72e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a55cba0d-e601-498e-a2a3-02cb1ef9d72e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/a55cba0d-e601-498e-a2a3-02cb1ef9d72e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a55cba0d-e601-498e-a2a3-02cb1ef9d72e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A       n    nA   nAY0   nAY1
----------  -------------------------  ---  ----  ----  -----  -----
Birth       ki1000108-IRC              1     388   114    108      6
Birth       ki1000108-IRC              0     388    84     79      5
Birth       ki1000108-IRC              2+    388   190    185      5
Birth       ki1017093b-PROVIDE         1       0     0      0      0
Birth       ki1017093b-PROVIDE         0       0     0      0      0
Birth       ki1017093b-PROVIDE         2+      0     0      0      0
Birth       ki1017093c-NIH-Crypto      1      27     8      8      0
Birth       ki1017093c-NIH-Crypto      0      27    18     17      1
Birth       ki1017093c-NIH-Crypto      2+     27     1      1      0
Birth       ki1066203-TanzaniaChild2   1       0     0      0      0
Birth       ki1066203-TanzaniaChild2   0       0     0      0      0
Birth       ki1066203-TanzaniaChild2   2+      0     0      0      0
Birth       ki1148112-LCNI-5           1       0     0      0      0
Birth       ki1148112-LCNI-5           0       0     0      0      0
Birth       ki1148112-LCNI-5           2+      0     0      0      0
3 months    ki1000108-IRC              1     407   117    107     10
3 months    ki1000108-IRC              0     407    89     77     12
3 months    ki1000108-IRC              2+    407   201    187     14
3 months    ki1017093b-PROVIDE         1     168    45     45      0
3 months    ki1017093b-PROVIDE         0     168   120    115      5
3 months    ki1017093b-PROVIDE         2+    168     3      3      0
3 months    ki1017093c-NIH-Crypto      1     728   204    195      9
3 months    ki1017093c-NIH-Crypto      0     728   518    494     24
3 months    ki1017093c-NIH-Crypto      2+    728     6      6      0
3 months    ki1066203-TanzaniaChild2   1     574   157    154      3
3 months    ki1066203-TanzaniaChild2   0     574   397    390      7
3 months    ki1066203-TanzaniaChild2   2+    574    20     20      0
3 months    ki1148112-LCNI-5           1       0     0      0      0
3 months    ki1148112-LCNI-5           0       0     0      0      0
3 months    ki1148112-LCNI-5           2+      0     0      0      0
6 months    ki1000108-IRC              1     407   119    112      7
6 months    ki1000108-IRC              0     407    89     78     11
6 months    ki1000108-IRC              2+    407   199    188     11
6 months    ki1017093b-PROVIDE         1     153    45     45      0
6 months    ki1017093b-PROVIDE         0     153   106    100      6
6 months    ki1017093b-PROVIDE         2+    153     2      2      0
6 months    ki1017093c-NIH-Crypto      1     715   203    195      8
6 months    ki1017093c-NIH-Crypto      0     715   507    492     15
6 months    ki1017093c-NIH-Crypto      2+    715     5      5      0
6 months    ki1066203-TanzaniaChild2   1     503   140    137      3
6 months    ki1066203-TanzaniaChild2   0     503   346    342      4
6 months    ki1066203-TanzaniaChild2   2+    503    17     17      0
6 months    ki1148112-LCNI-5           1     405   189    181      8
6 months    ki1148112-LCNI-5           0     405     3      3      0
6 months    ki1148112-LCNI-5           2+    405   213    194     19
9 months    ki1000108-IRC              1     407   119    112      7
9 months    ki1000108-IRC              0     407    89     77     12
9 months    ki1000108-IRC              2+    407   199    184     15
9 months    ki1017093b-PROVIDE         1     158    44     43      1
9 months    ki1017093b-PROVIDE         0     158   111    103      8
9 months    ki1017093b-PROVIDE         2+    158     3      3      0
9 months    ki1017093c-NIH-Crypto      1     706   198    188     10
9 months    ki1017093c-NIH-Crypto      0     706   503    485     18
9 months    ki1017093c-NIH-Crypto      2+    706     5      5      0
9 months    ki1066203-TanzaniaChild2   1     433   121    119      2
9 months    ki1066203-TanzaniaChild2   0     433   300    295      5
9 months    ki1066203-TanzaniaChild2   2+    433    12     12      0
9 months    ki1148112-LCNI-5           1     317   146    142      4
9 months    ki1148112-LCNI-5           0     317     1      1      0
9 months    ki1148112-LCNI-5           2+    317   170    157     13
12 months   ki1000108-IRC              1     406   118    110      8
12 months   ki1000108-IRC              0     406    88     78     10
12 months   ki1000108-IRC              2+    406   200    184     16
12 months   ki1017093b-PROVIDE         1     153    44     40      4
12 months   ki1017093b-PROVIDE         0     153   107     98      9
12 months   ki1017093b-PROVIDE         2+    153     2      2      0
12 months   ki1017093c-NIH-Crypto      1     706   202    189     13
12 months   ki1017093c-NIH-Crypto      0     706   500    472     28
12 months   ki1017093c-NIH-Crypto      2+    706     4      4      0
12 months   ki1066203-TanzaniaChild2   1     356   100     98      2
12 months   ki1066203-TanzaniaChild2   0     356   245    240      5
12 months   ki1066203-TanzaniaChild2   2+    356    11     11      0
12 months   ki1148112-LCNI-5           1     306   141    132      9
12 months   ki1148112-LCNI-5           0     306     2      2      0
12 months   ki1148112-LCNI-5           2+    306   163    139     24
18 months   ki1000108-IRC              1     405   118    111      7
18 months   ki1000108-IRC              0     405    88     81      7
18 months   ki1000108-IRC              2+    405   199    179     20
18 months   ki1017093b-PROVIDE         1     141    40     35      5
18 months   ki1017093b-PROVIDE         0     141    99     84     15
18 months   ki1017093b-PROVIDE         2+    141     2      2      0
18 months   ki1017093c-NIH-Crypto      1     634   183    167     16
18 months   ki1017093c-NIH-Crypto      0     634   447    421     26
18 months   ki1017093c-NIH-Crypto      2+    634     4      4      0
18 months   ki1066203-TanzaniaChild2   1     257    70     68      2
18 months   ki1066203-TanzaniaChild2   0     257   178    165     13
18 months   ki1066203-TanzaniaChild2   2+    257     9      9      0
18 months   ki1148112-LCNI-5           1     353   167    149     18
18 months   ki1148112-LCNI-5           0     353     3      3      0
18 months   ki1148112-LCNI-5           2+    353   183    150     33
24 months   ki1000108-IRC              1     409   119    110      9
24 months   ki1000108-IRC              0     409    89     82      7
24 months   ki1000108-IRC              2+    409   201    176     25
24 months   ki1017093b-PROVIDE         1     149    41     37      4
24 months   ki1017093b-PROVIDE         0     149   106     92     14
24 months   ki1017093b-PROVIDE         2+    149     2      2      0
24 months   ki1017093c-NIH-Crypto      1     514   153    139     14
24 months   ki1017093c-NIH-Crypto      0     514   357    336     21
24 months   ki1017093c-NIH-Crypto      2+    514     4      4      0
24 months   ki1066203-TanzaniaChild2   1       2     1      1      0
24 months   ki1066203-TanzaniaChild2   0       2     1      1      0
24 months   ki1066203-TanzaniaChild2   2+      2     0      0      0
24 months   ki1148112-LCNI-5           1     293   141    129     12
24 months   ki1148112-LCNI-5           0     293     2      2      0
24 months   ki1148112-LCNI-5           2+    293   150    126     24

## Results Table

### Parameter: TSM


agecat      studyid         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC   1                    NA                0.0526316   0.0115886   0.0936745
Birth       ki1000108-IRC   0                    NA                0.0595238   0.0088611   0.1101865
Birth       ki1000108-IRC   2+                   NA                0.0263158   0.0035255   0.0491060
3 months    ki1000108-IRC   1                    NA                0.0854701   0.0347482   0.1361920
3 months    ki1000108-IRC   0                    NA                0.1348315   0.0637865   0.2058764
3 months    ki1000108-IRC   2+                   NA                0.0696517   0.0344168   0.1048866
6 months    ki1000108-IRC   1                    NA                0.0588235   0.0164963   0.1011508
6 months    ki1000108-IRC   0                    NA                0.1235955   0.0551349   0.1920561
6 months    ki1000108-IRC   2+                   NA                0.0552764   0.0234873   0.0870655
9 months    ki1000108-IRC   1                    NA                0.0588235   0.0164963   0.1011508
9 months    ki1000108-IRC   0                    NA                0.1348315   0.0637865   0.2058764
9 months    ki1000108-IRC   2+                   NA                0.0753769   0.0386523   0.1121015
12 months   ki1000108-IRC   1                    NA                0.0677966   0.0223813   0.1132119
12 months   ki1000108-IRC   0                    NA                0.1136364   0.0472457   0.1800270
12 months   ki1000108-IRC   2+                   NA                0.0800000   0.0423550   0.1176450
18 months   ki1000108-IRC   1                    NA                0.0593220   0.0166471   0.1019969
18 months   ki1000108-IRC   0                    NA                0.0795455   0.0229408   0.1361501
18 months   ki1000108-IRC   2+                   NA                0.1005025   0.0586765   0.1423286
24 months   ki1000108-IRC   1                    NA                0.0756303   0.0280664   0.1231941
24 months   ki1000108-IRC   0                    NA                0.0786517   0.0226565   0.1346469
24 months   ki1000108-IRC   2+                   NA                0.1243781   0.0786996   0.1700566


### Parameter: E(Y)


agecat      studyid         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC   NA                   NA                0.0412371   0.0397608   0.0427134
3 months    ki1000108-IRC   NA                   NA                0.0884521   0.0859769   0.0909272
6 months    ki1000108-IRC   NA                   NA                0.0712531   0.0685555   0.0739506
9 months    ki1000108-IRC   NA                   NA                0.0835381   0.0808102   0.0862660
12 months   ki1000108-IRC   NA                   NA                0.0837438   0.0821303   0.0853574
18 months   ki1000108-IRC   NA                   NA                0.0839506   0.0822184   0.0856828
24 months   ki1000108-IRC   NA                   NA                0.1002445   0.0979402   0.1025488


### Parameter: RR


agecat      studyid         intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC   0                    1                 1.1309524   0.3565442   3.587363
Birth       ki1000108-IRC   2+                   1                 0.5000000   0.1559014   1.603577
3 months    ki1000108-IRC   0                    1                 1.5775281   0.7133718   3.488496
3 months    ki1000108-IRC   2+                   1                 0.8149254   0.3736421   1.777378
6 months    ki1000108-IRC   0                    1                 2.1011236   0.8473895   5.209789
6 months    ki1000108-IRC   2+                   1                 0.9396985   0.3740602   2.360672
9 months    ki1000108-IRC   0                    1                 2.2921348   0.9395303   5.592030
9 months    ki1000108-IRC   2+                   1                 1.2814070   0.5373888   3.055524
12 months   ki1000108-IRC   0                    1                 1.6761364   0.6891023   4.076946
12 months   ki1000108-IRC   2+                   1                 1.1800000   0.5204196   2.675533
18 months   ki1000108-IRC   0                    1                 1.3409091   0.4874723   3.688491
18 months   ki1000108-IRC   2+                   1                 1.6941852   0.7379483   3.889518
24 months   ki1000108-IRC   0                    1                 1.0399501   0.4022186   2.688827
24 months   ki1000108-IRC   2+                   1                 1.6445550   0.7938906   3.406718


### Parameter: PAR


agecat      studyid         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC   1                    NA                -0.0113945   -0.0524640   0.0296750
3 months    ki1000108-IRC   1                    NA                 0.0029820   -0.0478002   0.0537642
6 months    ki1000108-IRC   1                    NA                 0.0124295   -0.0299836   0.0548426
9 months    ki1000108-IRC   1                    NA                 0.0247146   -0.0177005   0.0671296
12 months   ki1000108-IRC   1                    NA                 0.0159472   -0.0294967   0.0613912
18 months   ki1000108-IRC   1                    NA                 0.0246286   -0.0180814   0.0673386
24 months   ki1000108-IRC   1                    NA                 0.0246142   -0.0230054   0.0722339


### Parameter: PAF


agecat      studyid         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC   1                    NA                -0.2763158   -1.7860234   0.4153021
3 months    ki1000108-IRC   1                    NA                 0.0337132   -0.7503413   0.4665554
6 months    ki1000108-IRC   1                    NA                 0.1744422   -0.6970004   0.5983821
9 months    ki1000108-IRC   1                    NA                 0.2958478   -0.4470729   0.6573563
12 months   ki1000108-IRC   1                    NA                 0.1904287   -0.5823354   0.5857985
18 months   ki1000108-IRC   1                    NA                 0.2933699   -0.4512491   0.6559336
24 months   ki1000108-IRC   1                    NA                 0.2455421   -0.4156144   0.5979084


