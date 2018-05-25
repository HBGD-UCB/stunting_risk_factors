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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
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
![](/tmp/dd2ea8d8-0b92-4caa-82ad-c33ae62e0554/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dd2ea8d8-0b92-4caa-82ad-c33ae62e0554/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/dd2ea8d8-0b92-4caa-82ad-c33ae62e0554/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dd2ea8d8-0b92-4caa-82ad-c33ae62e0554/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A       n    nA   nAY0   nAY1
----------  -------------------------  ---  ----  ----  -----  -----
3 months    ki1000108-IRC              1     410   119     85     34
3 months    ki1000108-IRC              0     410    89     56     33
3 months    ki1000108-IRC              2+    410   202    139     63
3 months    ki1017093b-PROVIDE         1     175    47     37     10
3 months    ki1017093b-PROVIDE         0     175   125     91     34
3 months    ki1017093b-PROVIDE         2+    175     3      3      0
3 months    ki1017093c-NIH-Crypto      1     758   211    176     35
3 months    ki1017093c-NIH-Crypto      0     758   541    455     86
3 months    ki1017093c-NIH-Crypto      2+    758     6      6      0
3 months    ki1066203-TanzaniaChild2   1     600   163    150     13
3 months    ki1066203-TanzaniaChild2   0     600   414    369     45
3 months    ki1066203-TanzaniaChild2   2+    600    23     22      1
3 months    ki1148112-LCNI-5           1       0     0      0      0
3 months    ki1148112-LCNI-5           0       0     0      0      0
3 months    ki1148112-LCNI-5           2+      0     0      0      0
6 months    ki1000108-IRC              1     408   119     69     50
6 months    ki1000108-IRC              0     408    89     49     40
6 months    ki1000108-IRC              2+    408   200    117     83
6 months    ki1017093b-PROVIDE         1     166    45     33     12
6 months    ki1017093b-PROVIDE         0     166   118     82     36
6 months    ki1017093b-PROVIDE         2+    166     3      3      0
6 months    ki1017093c-NIH-Crypto      1     736   207    133     74
6 months    ki1017093c-NIH-Crypto      0     736   523    371    152
6 months    ki1017093c-NIH-Crypto      2+    736     6      6      0
6 months    ki1066203-TanzaniaChild2   1     556   154    128     26
6 months    ki1066203-TanzaniaChild2   0     556   383    305     78
6 months    ki1066203-TanzaniaChild2   2+    556    19     15      4
6 months    ki1148112-LCNI-5           1     132    63     43     20
6 months    ki1148112-LCNI-5           0     132     1      1      0
6 months    ki1148112-LCNI-5           2+    132    68     37     31
12 months   ki1000108-IRC              1     408   119     55     64
12 months   ki1000108-IRC              0     408    89     43     46
12 months   ki1000108-IRC              2+    408   200    103     97
12 months   ki1017093b-PROVIDE         1     159    45     28     17
12 months   ki1017093b-PROVIDE         0     159   111     73     38
12 months   ki1017093b-PROVIDE         2+    159     3      2      1
12 months   ki1017093c-NIH-Crypto      1     729   205    115     90
12 months   ki1017093c-NIH-Crypto      0     729   519    332    187
12 months   ki1017093c-NIH-Crypto      2+    729     5      5      0
12 months   ki1066203-TanzaniaChild2   1     495   139     95     44
12 months   ki1066203-TanzaniaChild2   0     495   338    230    108
12 months   ki1066203-TanzaniaChild2   2+    495    18     12      6
12 months   ki1148112-LCNI-5           1     392   182     99     83
12 months   ki1148112-LCNI-5           0     392     3      0      3
12 months   ki1148112-LCNI-5           2+    392   207    104    103
18 months   ki1000108-IRC              1     409   119     50     69
18 months   ki1000108-IRC              0     409    89     41     48
18 months   ki1000108-IRC              2+    409   201     88    113
18 months   ki1017093b-PROVIDE         1     155    44     24     20
18 months   ki1017093b-PROVIDE         0     155   109     59     50
18 months   ki1017093b-PROVIDE         2+    155     2      2      0
18 months   ki1017093c-NIH-Crypto      1     715   202     98    104
18 months   ki1017093c-NIH-Crypto      0     715   508    296    212
18 months   ki1017093c-NIH-Crypto      2+    715     5      4      1
18 months   ki1066203-TanzaniaChild2   1     359   102     61     41
18 months   ki1066203-TanzaniaChild2   0     359   244    138    106
18 months   ki1066203-TanzaniaChild2   2+    359    13      7      6
18 months   ki1148112-LCNI-5           1     325   153     75     78
18 months   ki1148112-LCNI-5           0     325     2      0      2
18 months   ki1148112-LCNI-5           2+    325   170     65    105
24 months   ki1000108-IRC              1     410   119     42     77
24 months   ki1000108-IRC              0     410    89     35     54
24 months   ki1000108-IRC              2+    410   202     70    132
24 months   ki1017093b-PROVIDE         1     148    42     20     22
24 months   ki1017093b-PROVIDE         0     148   104     54     50
24 months   ki1017093b-PROVIDE         2+    148     2      2      0
24 months   ki1017093c-NIH-Crypto      1     634   182     77    105
24 months   ki1017093c-NIH-Crypto      0     634   448    237    211
24 months   ki1017093c-NIH-Crypto      2+    634     4      2      2
24 months   ki1066203-TanzaniaChild2   1     250    70     35     35
24 months   ki1066203-TanzaniaChild2   0     250   172     93     79
24 months   ki1066203-TanzaniaChild2   2+    250     8      3      5
24 months   ki1148112-LCNI-5           1     351   165     64    101
24 months   ki1148112-LCNI-5           0     351     3      0      3
24 months   ki1148112-LCNI-5           2+    351   183     57    126

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              1                    NA                0.2857143   0.2044487   0.3669799
3 months    ki1000108-IRC              0                    NA                0.3707865   0.2703147   0.4712584
3 months    ki1000108-IRC              2+                   NA                0.3118812   0.2479182   0.3758442
6 months    ki1000108-IRC              1                    NA                0.4201681   0.3313768   0.5089593
6 months    ki1000108-IRC              0                    NA                0.4494382   0.3459659   0.5529105
6 months    ki1000108-IRC              2+                   NA                0.4150000   0.3466296   0.4833704
12 months   ki1000108-IRC              1                    NA                0.5378151   0.4481276   0.6275026
12 months   ki1000108-IRC              0                    NA                0.5168539   0.4129076   0.6208002
12 months   ki1000108-IRC              2+                   NA                0.4850000   0.4156510   0.5543490
12 months   ki1066203-TanzaniaChild2   1                    NA                0.3165468   0.2391446   0.3939489
12 months   ki1066203-TanzaniaChild2   0                    NA                0.3195266   0.2697658   0.3692875
12 months   ki1066203-TanzaniaChild2   2+                   NA                0.3333333   0.1153392   0.5513274
18 months   ki1000108-IRC              1                    NA                0.5798319   0.4910410   0.6686229
18 months   ki1000108-IRC              0                    NA                0.5393258   0.4356429   0.6430088
18 months   ki1000108-IRC              2+                   NA                0.5621891   0.4935192   0.6308589
18 months   ki1066203-TanzaniaChild2   1                    NA                0.4019608   0.3066789   0.4972427
18 months   ki1066203-TanzaniaChild2   0                    NA                0.4344262   0.3721444   0.4967081
18 months   ki1066203-TanzaniaChild2   2+                   NA                0.4615385   0.1901675   0.7329095
24 months   ki1000108-IRC              1                    NA                0.6470588   0.5610926   0.7330251
24 months   ki1000108-IRC              0                    NA                0.6067416   0.5051344   0.7083487
24 months   ki1000108-IRC              2+                   NA                0.6534653   0.5877620   0.7191687


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              NA                   NA                0.3170732   0.3141257   0.3200207
6 months    ki1000108-IRC              NA                   NA                0.4240196   0.4226977   0.4253415
12 months   ki1000108-IRC              NA                   NA                0.5073529   0.5051052   0.5096006
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3191919   0.3189228   0.3194610
18 months   ki1000108-IRC              NA                   NA                0.5623472   0.5609603   0.5637341
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4261838   0.4245195   0.4278482
24 months   ki1000108-IRC              NA                   NA                0.6414634   0.6396718   0.6432550


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki1000108-IRC              0                    1                 1.2977528   0.8761590   1.922211
3 months    ki1000108-IRC              2+                   1                 1.0915842   0.7687201   1.550052
6 months    ki1000108-IRC              0                    1                 1.0696629   0.7825757   1.462068
6 months    ki1000108-IRC              2+                   1                 0.9877000   0.7555342   1.291207
12 months   ki1000108-IRC              0                    1                 0.9610253   0.7400675   1.247953
12 months   ki1000108-IRC              2+                   1                 0.9017969   0.7239472   1.123338
12 months   ki1066203-TanzaniaChild2   0                    1                 1.0094137   0.7553816   1.348876
12 months   ki1066203-TanzaniaChild2   2+                   1                 1.0530303   0.5238615   2.116729
18 months   ki1000108-IRC              0                    1                 0.9301417   0.7274585   1.189296
18 months   ki1000108-IRC              2+                   1                 0.9695724   0.7970951   1.179371
18 months   ki1066203-TanzaniaChild2   0                    1                 1.0807677   0.8192601   1.425749
18 months   ki1066203-TanzaniaChild2   2+                   1                 1.1482176   0.6091177   2.164448
24 months   ki1000108-IRC              0                    1                 0.9376915   0.7572225   1.161172
24 months   ki1000108-IRC              2+                   1                 1.0099010   0.8549072   1.192995


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC              1                    NA                 0.0313589   -0.0499602   0.1126779
6 months    ki1000108-IRC              1                    NA                 0.0038515   -0.0849495   0.0926526
12 months   ki1000108-IRC              1                    NA                -0.0304622   -0.1201778   0.0592535
12 months   ki1066203-TanzaniaChild2   1                    NA                 0.0026452   -0.0747575   0.0800478
18 months   ki1000108-IRC              1                    NA                -0.0174847   -0.1062865   0.0713170
18 months   ki1066203-TanzaniaChild2   1                    NA                 0.0242231   -0.0710734   0.1195195
24 months   ki1000108-IRC              1                    NA                -0.0055954   -0.0915803   0.0803895


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC              1                    NA                 0.0989011   -0.1977458   0.3220772
6 months    ki1000108-IRC              1                    NA                 0.0090834   -0.2241188   0.1978591
12 months   ki1000108-IRC              1                    NA                -0.0600414   -0.2524849   0.1028333
12 months   ki1066203-TanzaniaChild2   1                    NA                 0.0082870   -0.2664281   0.2234106
18 months   ki1000108-IRC              1                    NA                -0.0310924   -0.2017405   0.1153235
18 months   ki1066203-TanzaniaChild2   1                    NA                 0.0568371   -0.1954930   0.2559085
24 months   ki1000108-IRC              1                    NA                -0.0087229   -0.1520827   0.1167979


