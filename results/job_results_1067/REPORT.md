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
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
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
* country

## Data Summary

agecat      studyid                    country                        A        n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ---  -----  -----  -----  -----
Birth       ki1000108-IRC              INDIA                          1      388     84     79      5
Birth       ki1000108-IRC              INDIA                          2      388    114    108      6
Birth       ki1000108-IRC              INDIA                          3+     388    190    185      5
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1       27     18     17      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2       27      8      8      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3+      27      1      1      0
3 months    ki1000108-IRC              INDIA                          1      407     89     77     12
3 months    ki1000108-IRC              INDIA                          2      407    117    107     10
3 months    ki1000108-IRC              INDIA                          3+     407    201    187     14
3 months    ki1017093b-PROVIDE         BANGLADESH                     1      645    474    466      8
3 months    ki1017093b-PROVIDE         BANGLADESH                     2      645    161    159      2
3 months    ki1017093b-PROVIDE         BANGLADESH                     3+     645     10     10      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      728    518    494     24
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      728    204    195      9
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+     728      6      6      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2283   1560   1543     17
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     2283    650    644      6
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+    2283     73     73      0
6 months    ki1000108-IRC              INDIA                          1      407     89     78     11
6 months    ki1000108-IRC              INDIA                          2      407    119    112      7
6 months    ki1000108-IRC              INDIA                          3+     407    199    188     11
6 months    ki1017093b-PROVIDE         BANGLADESH                     1      583    426    416     10
6 months    ki1017093b-PROVIDE         BANGLADESH                     2      583    148    144      4
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+     583      9      9      0
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      715    507    492     15
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      715    203    195      8
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+     715      5      5      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2020   1391   1384      7
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     2020    567    556     11
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+    2020     62     61      1
6 months    ki1148112-LCNI-5           MALAWI                         1      811    390    362     28
6 months    ki1148112-LCNI-5           MALAWI                         2      811    358    326     32
6 months    ki1148112-LCNI-5           MALAWI                         3+     811     63     58      5
9 months    ki1000108-IRC              INDIA                          1      407     89     77     12
9 months    ki1000108-IRC              INDIA                          2      407    119    112      7
9 months    ki1000108-IRC              INDIA                          3+     407    199    184     15
9 months    ki1017093b-PROVIDE         BANGLADESH                     1      605    440    423     17
9 months    ki1017093b-PROVIDE         BANGLADESH                     2      605    155    147      8
9 months    ki1017093b-PROVIDE         BANGLADESH                     3+     605     10     10      0
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      706    503    485     18
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      706    198    188     10
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+     706      5      5      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     1780   1247   1227     20
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     1780    479    467     12
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+    1780     54     52      2
9 months    ki1148112-LCNI-5           MALAWI                         1      655    310    292     18
9 months    ki1148112-LCNI-5           MALAWI                         2      655    296    274     22
9 months    ki1148112-LCNI-5           MALAWI                         3+     655     49     43      6
12 months   ki1000108-IRC              INDIA                          1      406     88     78     10
12 months   ki1000108-IRC              INDIA                          2      406    118    110      8
12 months   ki1000108-IRC              INDIA                          3+     406    200    184     16
12 months   ki1017093b-PROVIDE         BANGLADESH                     1      600    437    412     25
12 months   ki1017093b-PROVIDE         BANGLADESH                     2      600    154    143     11
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+     600      9      9      0
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      706    500    472     28
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      706    202    189     13
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+     706      4      4      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     1438   1012    987     25
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     1438    383    376      7
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+    1438     43     42      1
12 months   ki1148112-LCNI-5           MALAWI                         1      617    297    270     27
12 months   ki1148112-LCNI-5           MALAWI                         2      617    276    241     35
12 months   ki1148112-LCNI-5           MALAWI                         3+     617     44     40      4
18 months   ki1000108-IRC              INDIA                          1      405     88     81      7
18 months   ki1000108-IRC              INDIA                          2      405    118    111      7
18 months   ki1000108-IRC              INDIA                          3+     405    199    179     20
18 months   ki1017093b-PROVIDE         BANGLADESH                     1      552    401    362     39
18 months   ki1017093b-PROVIDE         BANGLADESH                     2      552    144    126     18
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+     552      7      7      0
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      634    447    421     26
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      634    183    167     16
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+     634      4      4      0
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      977    690    662     28
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      977    260    249     11
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     977     27     26      1
18 months   ki1148112-LCNI-5           MALAWI                         1      714    345    309     36
18 months   ki1148112-LCNI-5           MALAWI                         2      714    313    263     50
18 months   ki1148112-LCNI-5           MALAWI                         3+     714     56     48      8
24 months   ki1000108-IRC              INDIA                          1      409     89     82      7
24 months   ki1000108-IRC              INDIA                          2      409    119    110      9
24 months   ki1000108-IRC              INDIA                          3+     409    201    176     25
24 months   ki1017093b-PROVIDE         BANGLADESH                     1      577    423    390     33
24 months   ki1017093b-PROVIDE         BANGLADESH                     2      577    146    130     16
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+     577      8      8      0
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      514    357    336     21
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      514    153    139     14
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+     514      4      4      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        6      5      4      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2        6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+       6      0      0      0
24 months   ki1148112-LCNI-5           MALAWI                         1      571    283    257     26
24 months   ki1148112-LCNI-5           MALAWI                         2      571    244    210     34
24 months   ki1148112-LCNI-5           MALAWI                         3+     571     44     38      6


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c751b69e-005f-466c-9471-c0d606bc84c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 11 rows containing missing values (geom_errorbar).
```

![](/tmp/c751b69e-005f-466c-9471-c0d606bc84c7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/c751b69e-005f-466c-9471-c0d606bc84c7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c751b69e-005f-466c-9471-c0d606bc84c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC      INDIA     1                    NA                0.0595238   0.0088611   0.1101865
Birth       ki1000108-IRC      INDIA     2                    NA                0.0526316   0.0115886   0.0936745
Birth       ki1000108-IRC      INDIA     3+                   NA                0.0263158   0.0035255   0.0491060
3 months    ki1000108-IRC      INDIA     1                    NA                0.1348315   0.0637865   0.2058764
3 months    ki1000108-IRC      INDIA     2                    NA                0.0854701   0.0347482   0.1361920
3 months    ki1000108-IRC      INDIA     3+                   NA                0.0696517   0.0344168   0.1048866
6 months    ki1000108-IRC      INDIA     1                    NA                0.1235955   0.0551349   0.1920561
6 months    ki1000108-IRC      INDIA     2                    NA                0.0588235   0.0164963   0.1011508
6 months    ki1000108-IRC      INDIA     3+                   NA                0.0552764   0.0234873   0.0870655
6 months    ki1148112-LCNI-5   MALAWI    1                    NA                0.0717949   0.0461587   0.0974310
6 months    ki1148112-LCNI-5   MALAWI    2                    NA                0.0893855   0.0598138   0.1189571
6 months    ki1148112-LCNI-5   MALAWI    3+                   NA                0.0793651   0.0125762   0.1461540
9 months    ki1000108-IRC      INDIA     1                    NA                0.1348315   0.0637865   0.2058764
9 months    ki1000108-IRC      INDIA     2                    NA                0.0588235   0.0164963   0.1011508
9 months    ki1000108-IRC      INDIA     3+                   NA                0.0753769   0.0386523   0.1121015
9 months    ki1148112-LCNI-5   MALAWI    1                    NA                0.0580645   0.0320111   0.0841180
9 months    ki1148112-LCNI-5   MALAWI    2                    NA                0.0743243   0.0444203   0.1042283
9 months    ki1148112-LCNI-5   MALAWI    3+                   NA                0.1224490   0.0305955   0.2143025
12 months   ki1000108-IRC      INDIA     1                    NA                0.1136364   0.0472457   0.1800270
12 months   ki1000108-IRC      INDIA     2                    NA                0.0677966   0.0223813   0.1132119
12 months   ki1000108-IRC      INDIA     3+                   NA                0.0800000   0.0423550   0.1176450
18 months   ki1000108-IRC      INDIA     1                    NA                0.0795455   0.0229408   0.1361501
18 months   ki1000108-IRC      INDIA     2                    NA                0.0593220   0.0166471   0.1019969
18 months   ki1000108-IRC      INDIA     3+                   NA                0.1005025   0.0586765   0.1423286
18 months   ki1148112-LCNI-5   MALAWI    1                    NA                0.1043478   0.0720663   0.1366294
18 months   ki1148112-LCNI-5   MALAWI    2                    NA                0.1597444   0.1191283   0.2003606
18 months   ki1148112-LCNI-5   MALAWI    3+                   NA                0.1428571   0.0511431   0.2345712
24 months   ki1000108-IRC      INDIA     1                    NA                0.0786517   0.0226565   0.1346469
24 months   ki1000108-IRC      INDIA     2                    NA                0.0756303   0.0280664   0.1231941
24 months   ki1000108-IRC      INDIA     3+                   NA                0.1243781   0.0786996   0.1700566
24 months   ki1148112-LCNI-5   MALAWI    1                    NA                0.0918728   0.0581904   0.1255551
24 months   ki1148112-LCNI-5   MALAWI    2                    NA                0.1393443   0.0958539   0.1828346
24 months   ki1148112-LCNI-5   MALAWI    3+                   NA                0.1363636   0.0348751   0.2378522


### Parameter: E(Y)


agecat      studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC      INDIA     NA                   NA                0.0412371   0.0397608   0.0427134
3 months    ki1000108-IRC      INDIA     NA                   NA                0.0884521   0.0859769   0.0909272
6 months    ki1000108-IRC      INDIA     NA                   NA                0.0712531   0.0685555   0.0739506
6 months    ki1148112-LCNI-5   MALAWI    NA                   NA                0.0801480   0.0795666   0.0807293
9 months    ki1000108-IRC      INDIA     NA                   NA                0.0835381   0.0808102   0.0862660
9 months    ki1148112-LCNI-5   MALAWI    NA                   NA                0.0702290   0.0689429   0.0715151
12 months   ki1000108-IRC      INDIA     NA                   NA                0.0837438   0.0821303   0.0853574
18 months   ki1000108-IRC      INDIA     NA                   NA                0.0839506   0.0822184   0.0856828
18 months   ki1148112-LCNI-5   MALAWI    NA                   NA                0.1316527   0.1296885   0.1336168
24 months   ki1000108-IRC      INDIA     NA                   NA                0.1002445   0.0979402   0.1025488
24 months   ki1148112-LCNI-5   MALAWI    NA                   NA                0.1155867   0.1136559   0.1175175


### Parameter: RR


agecat      studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC      INDIA     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC      INDIA     2                    1                 0.8842105   0.2787563   2.8047016
Birth       ki1000108-IRC      INDIA     3+                   1                 0.4421053   0.1312738   1.4889265
3 months    ki1000108-IRC      INDIA     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1000108-IRC      INDIA     2                    1                 0.6339031   0.2866565   1.4017936
3 months    ki1000108-IRC      INDIA     3+                   1                 0.5165837   0.2488359   1.0724288
6 months    ki1000108-IRC      INDIA     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC      INDIA     2                    1                 0.4759358   0.1919464   1.1800948
6 months    ki1000108-IRC      INDIA     3+                   1                 0.4472362   0.2012648   0.9938163
6 months    ki1148112-LCNI-5   MALAWI    1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5   MALAWI    2                    1                 1.2450120   0.7651889   2.0257152
6 months    ki1148112-LCNI-5   MALAWI    3+                   1                 1.1054422   0.4431193   2.7577281
9 months    ki1000108-IRC      INDIA     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1000108-IRC      INDIA     2                    1                 0.4362745   0.1788259   1.0643616
9 months    ki1000108-IRC      INDIA     3+                   1                 0.5590452   0.2727574   1.1458224
9 months    ki1148112-LCNI-5   MALAWI    1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1148112-LCNI-5   MALAWI    2                    1                 1.2800300   0.7006223   2.3386022
9 months    ki1148112-LCNI-5   MALAWI    3+                   1                 2.1088435   0.8798962   5.0542562
12 months   ki1000108-IRC      INDIA     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC      INDIA     2                    1                 0.5966102   0.2452816   1.4511633
12 months   ki1000108-IRC      INDIA     3+                   1                 0.7040000   0.3324878   1.4906293
18 months   ki1000108-IRC      INDIA     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC      INDIA     2                    1                 0.7457627   0.2711136   2.0513986
18 months   ki1000108-IRC      INDIA     3+                   1                 1.2634602   0.5540454   2.8812288
18 months   ki1148112-LCNI-5   MALAWI    1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5   MALAWI    2                    1                 1.5308839   1.0257294   2.2848186
18 months   ki1148112-LCNI-5   MALAWI    3+                   1                 1.3690476   0.6713036   2.7920173
24 months   ki1000108-IRC      INDIA     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC      INDIA     2                    1                 0.9615846   0.3719094   2.4862102
24 months   ki1000108-IRC      INDIA     3+                   1                 1.5813788   0.7097906   3.5232348
24 months   ki1148112-LCNI-5   MALAWI    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5   MALAWI    2                    1                 1.5167087   0.9371284   2.4547387
24 months   ki1148112-LCNI-5   MALAWI    3+                   1                 1.4842657   0.6474404   3.4026991


### Parameter: PAR


agecat      studyid            country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC      INDIA     1                    NA                -0.0182867   -0.0689709   0.0323975
3 months    ki1000108-IRC      INDIA     1                    NA                -0.0463794   -0.1174674   0.0247087
6 months    ki1000108-IRC      INDIA     1                    NA                -0.0523424   -0.1208562   0.0161713
6 months    ki1148112-LCNI-5   MALAWI    1                    NA                 0.0083531   -0.0172896   0.0339958
9 months    ki1000108-IRC      INDIA     1                    NA                -0.0512934   -0.1223907   0.0198039
9 months    ki1148112-LCNI-5   MALAWI    1                    NA                 0.0121645   -0.0139207   0.0382497
12 months   ki1000108-IRC      INDIA     1                    NA                -0.0298925   -0.0963028   0.0365177
18 months   ki1000108-IRC      INDIA     1                    NA                 0.0044052   -0.0522260   0.0610364
18 months   ki1148112-LCNI-5   MALAWI    1                    NA                 0.0273048   -0.0050364   0.0596461
24 months   ki1000108-IRC      INDIA     1                    NA                 0.0215928   -0.0344498   0.0776354
24 months   ki1148112-LCNI-5   MALAWI    1                    NA                 0.0237139   -0.0100237   0.0574515


### Parameter: PAF


agecat      studyid            country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------------  --------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC      INDIA     1                    NA                -0.4434524   -2.3835424   0.3842091
3 months    ki1000108-IRC      INDIA     1                    NA                -0.5243446   -1.5837034   0.1006606
6 months    ki1000108-IRC      INDIA     1                    NA                -0.7345990   -2.0221766   0.0044150
6 months    ki1148112-LCNI-5   MALAWI    1                    NA                 0.1042209   -0.2802903   0.3732514
9 months    ki1000108-IRC      INDIA     1                    NA                -0.6140119   -1.7364203   0.0480138
9 months    ki1148112-LCNI-5   MALAWI    1                    NA                 0.1732118   -0.2954588   0.4723269
12 months   ki1000108-IRC      INDIA     1                    NA                -0.3569519   -1.4346335   0.2436979
18 months   ki1000108-IRC      INDIA     1                    NA                 0.0524733   -0.9309282   0.5350387
18 months   ki1148112-LCNI-5   MALAWI    1                    NA                 0.2074006   -0.0803521   0.4185101
24 months   ki1000108-IRC      INDIA     1                    NA                 0.2154015   -0.5995567   0.6151466
24 months   ki1148112-LCNI-5   MALAWI    1                    NA                 0.2051612   -0.1472684   0.4493278
