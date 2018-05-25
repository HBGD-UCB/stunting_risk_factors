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

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/dc00ac2b-48dd-4556-a4c8-8fef0f491c18/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dc00ac2b-48dd-4556-a4c8-8fef0f491c18/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/dc00ac2b-48dd-4556-a4c8-8fef0f491c18/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dc00ac2b-48dd-4556-a4c8-8fef0f491c18/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
Birth       ki1000304b-SAS-FoodSuppl   1        0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   2        0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   3+       0      0      0      0
Birth       ki1017093b-PROVIDE         1        0      0      0      0
Birth       ki1017093b-PROVIDE         2        0      0      0      0
Birth       ki1017093b-PROVIDE         3+       0      0      0      0
Birth       ki1066203-TanzaniaChild2   1        0      0      0      0
Birth       ki1066203-TanzaniaChild2   2        0      0      0      0
Birth       ki1066203-TanzaniaChild2   3+       0      0      0      0
Birth       ki1101329-Keneba           1     1407    156    153      3
Birth       ki1101329-Keneba           2     1407    146    144      2
Birth       ki1101329-Keneba           3+    1407   1105   1084     21
Birth       ki1113344-GMS-Nepal        1        0      0      0      0
Birth       ki1113344-GMS-Nepal        2        0      0      0      0
Birth       ki1113344-GMS-Nepal        3+       0      0      0      0
Birth       ki1126311-ZVITAMBO         1     3449   1470   1417     53
Birth       ki1126311-ZVITAMBO         2     3449   1009    980     29
Birth       ki1126311-ZVITAMBO         3+    3449    970    940     30
Birth       ki1135781-COHORTS          1     7579   1428   1391     37
Birth       ki1135781-COHORTS          2     7579   1794   1762     32
Birth       ki1135781-COHORTS          3+    7579   4357   4263     94
3 months    ki1000304b-SAS-FoodSuppl   1       93     17     14      3
3 months    ki1000304b-SAS-FoodSuppl   2       93     19     18      1
3 months    ki1000304b-SAS-FoodSuppl   3+      93     57     49      8
3 months    ki1017093b-PROVIDE         1      168     68     65      3
3 months    ki1017093b-PROVIDE         2      168     58     56      2
3 months    ki1017093b-PROVIDE         3+     168     42     42      0
3 months    ki1066203-TanzaniaChild2   1      567    197    192      5
3 months    ki1066203-TanzaniaChild2   2      567    193    190      3
3 months    ki1066203-TanzaniaChild2   3+     567    177    175      2
3 months    ki1101329-Keneba           1     1689    212    200     12
3 months    ki1101329-Keneba           2     1689    182    180      2
3 months    ki1101329-Keneba           3+    1689   1295   1258     37
3 months    ki1113344-GMS-Nepal        1      571    156    149      7
3 months    ki1113344-GMS-Nepal        2      571    148    142      6
3 months    ki1113344-GMS-Nepal        3+     571    267    258      9
3 months    ki1126311-ZVITAMBO         1     2271    877    830     47
3 months    ki1126311-ZVITAMBO         2     2271    681    647     34
3 months    ki1126311-ZVITAMBO         3+    2271    713    680     33
3 months    ki1135781-COHORTS          1     7721   1425   1372     53
3 months    ki1135781-COHORTS          2     7721   1839   1786     53
3 months    ki1135781-COHORTS          3+    7721   4457   4283    174
6 months    ki1000304b-SAS-FoodSuppl   1       93     18     16      2
6 months    ki1000304b-SAS-FoodSuppl   2       93     18     17      1
6 months    ki1000304b-SAS-FoodSuppl   3+      93     57     47     10
6 months    ki1017093b-PROVIDE         1      153     59     56      3
6 months    ki1017093b-PROVIDE         2      153     55     53      2
6 months    ki1017093b-PROVIDE         3+     153     39     38      1
6 months    ki1066203-TanzaniaChild2   1      496    171    169      2
6 months    ki1066203-TanzaniaChild2   2      496    171    167      4
6 months    ki1066203-TanzaniaChild2   3+     496    154    153      1
6 months    ki1101329-Keneba           1     1623    194    190      4
6 months    ki1101329-Keneba           2     1623    164    159      5
6 months    ki1101329-Keneba           3+    1623   1265   1218     47
6 months    ki1113344-GMS-Nepal        1      563    153    147      6
6 months    ki1113344-GMS-Nepal        2      563    149    143      6
6 months    ki1113344-GMS-Nepal        3+     563    261    253      8
6 months    ki1126311-ZVITAMBO         1     2052    798    769     29
6 months    ki1126311-ZVITAMBO         2     2052    603    593     10
6 months    ki1126311-ZVITAMBO         3+    2052    651    618     33
6 months    ki1135781-COHORTS          1     7463   1383   1327     56
6 months    ki1135781-COHORTS          2     7463   1779   1708     71
6 months    ki1135781-COHORTS          3+    7463   4301   4016    285
9 months    ki1000304b-SAS-FoodSuppl   1       85     15     13      2
9 months    ki1000304b-SAS-FoodSuppl   2       85     17     12      5
9 months    ki1000304b-SAS-FoodSuppl   3+      85     53     40     13
9 months    ki1017093b-PROVIDE         1      158     62     59      3
9 months    ki1017093b-PROVIDE         2      158     56     52      4
9 months    ki1017093b-PROVIDE         3+     158     40     38      2
9 months    ki1066203-TanzaniaChild2   1      427    149    148      1
9 months    ki1066203-TanzaniaChild2   2      427    146    142      4
9 months    ki1066203-TanzaniaChild2   3+     427    132    130      2
9 months    ki1101329-Keneba           1     1625    182    176      6
9 months    ki1101329-Keneba           2     1625    163    160      3
9 months    ki1101329-Keneba           3+    1625   1280   1209     71
9 months    ki1113344-GMS-Nepal        1      551    153    142     11
9 months    ki1113344-GMS-Nepal        2      551    143    133     10
9 months    ki1113344-GMS-Nepal        3+     551    255    241     14
9 months    ki1126311-ZVITAMBO         1     1963    769    733     36
9 months    ki1126311-ZVITAMBO         2     1963    588    567     21
9 months    ki1126311-ZVITAMBO         3+    1963    606    576     30
9 months    ki1135781-COHORTS          1     6934   1295   1220     75
9 months    ki1135781-COHORTS          2     6934   1610   1513     97
9 months    ki1135781-COHORTS          3+    6934   4029   3586    443
12 months   ki1000304b-SAS-FoodSuppl   1       91     17      8      9
12 months   ki1000304b-SAS-FoodSuppl   2       91     18     11      7
12 months   ki1000304b-SAS-FoodSuppl   3+      91     56     31     25
12 months   ki1017093b-PROVIDE         1      153     59     55      4
12 months   ki1017093b-PROVIDE         2      153     56     50      6
12 months   ki1017093b-PROVIDE         3+     153     38     35      3
12 months   ki1066203-TanzaniaChild2   1      350    124    121      3
12 months   ki1066203-TanzaniaChild2   2      350    119    117      2
12 months   ki1066203-TanzaniaChild2   3+     350    107    105      2
12 months   ki1101329-Keneba           1     1530    164    156      8
12 months   ki1101329-Keneba           2     1530    154    151      3
12 months   ki1101329-Keneba           3+    1530   1212   1115     97
12 months   ki1113344-GMS-Nepal        1      558    155    143     12
12 months   ki1113344-GMS-Nepal        2      558    140    128     12
12 months   ki1113344-GMS-Nepal        3+     558    263    236     27
12 months   ki1126311-ZVITAMBO         1     1701    648    610     38
12 months   ki1126311-ZVITAMBO         2     1701    515    485     30
12 months   ki1126311-ZVITAMBO         3+    1701    538    501     37
12 months   ki1135781-COHORTS          1     6533   1227   1108    119
12 months   ki1135781-COHORTS          2     6533   1491   1337    154
12 months   ki1135781-COHORTS          3+    6533   3815   3129    686
18 months   ki1000304b-SAS-FoodSuppl   1       82     15      9      6
18 months   ki1000304b-SAS-FoodSuppl   2       82     17     11      6
18 months   ki1000304b-SAS-FoodSuppl   3+      82     50     27     23
18 months   ki1017093b-PROVIDE         1      141     54     43     11
18 months   ki1017093b-PROVIDE         2      141     51     44      7
18 months   ki1017093b-PROVIDE         3+     141     36     34      2
18 months   ki1066203-TanzaniaChild2   1      254     89     81      8
18 months   ki1066203-TanzaniaChild2   2      254     91     87      4
18 months   ki1066203-TanzaniaChild2   3+     254     74     71      3
18 months   ki1101329-Keneba           1     1542    155    145     10
18 months   ki1101329-Keneba           2     1542    152    148      4
18 months   ki1101329-Keneba           3+    1542   1235   1105    130
18 months   ki1113344-GMS-Nepal        1      550    155    126     29
18 months   ki1113344-GMS-Nepal        2      550    141    124     17
18 months   ki1113344-GMS-Nepal        3+     550    254    215     39
18 months   ki1126311-ZVITAMBO         1      425    163    137     26
18 months   ki1126311-ZVITAMBO         2      425    120    110     10
18 months   ki1126311-ZVITAMBO         3+     425    142    111     31
18 months   ki1135781-COHORTS          1     2928    606    494    112
18 months   ki1135781-COHORTS          2     2928    613    457    156
18 months   ki1135781-COHORTS          3+    2928   1709   1135    574
24 months   ki1000304b-SAS-FoodSuppl   1        0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   2        0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   3+       0      0      0      0
24 months   ki1017093b-PROVIDE         1      149     58     49      9
24 months   ki1017093b-PROVIDE         2      149     54     49      5
24 months   ki1017093b-PROVIDE         3+     149     37     33      4
24 months   ki1066203-TanzaniaChild2   1        2      1      1      0
24 months   ki1066203-TanzaniaChild2   2        2      1      1      0
24 months   ki1066203-TanzaniaChild2   3+       2      0      0      0
24 months   ki1101329-Keneba           1     1376    137    129      8
24 months   ki1101329-Keneba           2     1376    139    135      4
24 months   ki1101329-Keneba           3+    1376   1100    997    103
24 months   ki1113344-GMS-Nepal        1      499    136    122     14
24 months   ki1113344-GMS-Nepal        2      499    130    116     14
24 months   ki1113344-GMS-Nepal        3+     499    233    207     26
24 months   ki1126311-ZVITAMBO         1      116     52     44      8
24 months   ki1126311-ZVITAMBO         2      116     30     23      7
24 months   ki1126311-ZVITAMBO         3+     116     34     27      7
24 months   ki1135781-COHORTS          1     6346   1184    965    219
24 months   ki1135781-COHORTS          2     6346   1472   1156    316
24 months   ki1135781-COHORTS          3+    6346   3690   2561   1129

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         1                    NA                0.0360544   0.0265230   0.0455858
Birth       ki1126311-ZVITAMBO         2                    NA                0.0287413   0.0184307   0.0390520
Birth       ki1126311-ZVITAMBO         3+                   NA                0.0309278   0.0200316   0.0418241
Birth       ki1135781-COHORTS          1                    NA                0.0259104   0.0176700   0.0341508
Birth       ki1135781-COHORTS          2                    NA                0.0178372   0.0117120   0.0239624
Birth       ki1135781-COHORTS          3+                   NA                0.0215745   0.0172601   0.0258888
3 months    ki1113344-GMS-Nepal        1                    NA                0.0448718   0.0123568   0.0773868
3 months    ki1113344-GMS-Nepal        2                    NA                0.0405405   0.0087384   0.0723427
3 months    ki1113344-GMS-Nepal        3+                   NA                0.0337079   0.0120412   0.0553746
3 months    ki1126311-ZVITAMBO         1                    NA                0.0535918   0.0386833   0.0685002
3 months    ki1126311-ZVITAMBO         2                    NA                0.0499266   0.0335654   0.0662878
3 months    ki1126311-ZVITAMBO         3+                   NA                0.0462833   0.0308585   0.0617082
3 months    ki1135781-COHORTS          1                    NA                0.0371930   0.0273672   0.0470188
3 months    ki1135781-COHORTS          2                    NA                0.0288200   0.0211732   0.0364669
3 months    ki1135781-COHORTS          3+                   NA                0.0390397   0.0333530   0.0447264
6 months    ki1113344-GMS-Nepal        1                    NA                0.0392157   0.0084312   0.0700001
6 months    ki1113344-GMS-Nepal        2                    NA                0.0402685   0.0086749   0.0718620
6 months    ki1113344-GMS-Nepal        3+                   NA                0.0306513   0.0097209   0.0515818
6 months    ki1126311-ZVITAMBO         1                    NA                0.0363409   0.0233538   0.0493279
6 months    ki1126311-ZVITAMBO         2                    NA                0.0165837   0.0063883   0.0267792
6 months    ki1126311-ZVITAMBO         3+                   NA                0.0506912   0.0338361   0.0675464
6 months    ki1135781-COHORTS          1                    NA                0.0404917   0.0301027   0.0508807
6 months    ki1135781-COHORTS          2                    NA                0.0399101   0.0308133   0.0490068
6 months    ki1135781-COHORTS          3+                   NA                0.0662637   0.0588293   0.0736980
9 months    ki1113344-GMS-Nepal        1                    NA                0.0718954   0.0309273   0.1128635
9 months    ki1113344-GMS-Nepal        2                    NA                0.0699301   0.0280927   0.1117674
9 months    ki1113344-GMS-Nepal        3+                   NA                0.0549020   0.0269183   0.0828856
9 months    ki1126311-ZVITAMBO         1                    NA                0.0468140   0.0318802   0.0617479
9 months    ki1126311-ZVITAMBO         2                    NA                0.0357143   0.0207107   0.0507178
9 months    ki1126311-ZVITAMBO         3+                   NA                0.0495050   0.0322298   0.0667801
9 months    ki1135781-COHORTS          1                    NA                0.0579151   0.0451922   0.0706379
9 months    ki1135781-COHORTS          2                    NA                0.0602484   0.0486247   0.0718722
9 months    ki1135781-COHORTS          3+                   NA                0.1099528   0.1002925   0.1196131
12 months   ki1000304b-SAS-FoodSuppl   1                    NA                0.5294118   0.2908283   0.7679953
12 months   ki1000304b-SAS-FoodSuppl   2                    NA                0.3888889   0.1624327   0.6153450
12 months   ki1000304b-SAS-FoodSuppl   3+                   NA                0.4464286   0.3155055   0.5773517
12 months   ki1113344-GMS-Nepal        1                    NA                0.0774194   0.0353081   0.1195307
12 months   ki1113344-GMS-Nepal        2                    NA                0.0857143   0.0393011   0.1321274
12 months   ki1113344-GMS-Nepal        3+                   NA                0.1026616   0.0659467   0.1393765
12 months   ki1126311-ZVITAMBO         1                    NA                0.0586420   0.0405465   0.0767375
12 months   ki1126311-ZVITAMBO         2                    NA                0.0582524   0.0380177   0.0784871
12 months   ki1126311-ZVITAMBO         3+                   NA                0.0687732   0.0473827   0.0901638
12 months   ki1135781-COHORTS          1                    NA                0.0969845   0.0804246   0.1135444
12 months   ki1135781-COHORTS          2                    NA                0.1032864   0.0878377   0.1187350
12 months   ki1135781-COHORTS          3+                   NA                0.1798165   0.1676293   0.1920037
18 months   ki1000304b-SAS-FoodSuppl   1                    NA                0.4000000   0.1505563   0.6494437
18 months   ki1000304b-SAS-FoodSuppl   2                    NA                0.3529412   0.1243755   0.5815069
18 months   ki1000304b-SAS-FoodSuppl   3+                   NA                0.4600000   0.3210037   0.5989963
18 months   ki1113344-GMS-Nepal        1                    NA                0.1870968   0.1256456   0.2485479
18 months   ki1113344-GMS-Nepal        2                    NA                0.1205674   0.0667714   0.1743634
18 months   ki1113344-GMS-Nepal        3+                   NA                0.1535433   0.1091677   0.1979189
18 months   ki1126311-ZVITAMBO         1                    NA                0.1595092   0.1032329   0.2157855
18 months   ki1126311-ZVITAMBO         2                    NA                0.0833333   0.0338243   0.1328423
18 months   ki1126311-ZVITAMBO         3+                   NA                0.2183099   0.1502847   0.2863350
18 months   ki1135781-COHORTS          1                    NA                0.1848185   0.1539094   0.2157275
18 months   ki1135781-COHORTS          2                    NA                0.2544861   0.2199994   0.2889729
18 months   ki1135781-COHORTS          3+                   NA                0.3358689   0.3134733   0.3582645
24 months   ki1113344-GMS-Nepal        1                    NA                0.1029412   0.0518178   0.1540645
24 months   ki1113344-GMS-Nepal        2                    NA                0.1076923   0.0543512   0.1610334
24 months   ki1113344-GMS-Nepal        3+                   NA                0.1115880   0.0711191   0.1520569
24 months   ki1126311-ZVITAMBO         1                    NA                0.1538462   0.0553556   0.2523367
24 months   ki1126311-ZVITAMBO         2                    NA                0.2333333   0.0813279   0.3853388
24 months   ki1126311-ZVITAMBO         3+                   NA                0.2058824   0.0693798   0.3423849
24 months   ki1135781-COHORTS          1                    NA                0.1849662   0.1628485   0.2070839
24 months   ki1135781-COHORTS          2                    NA                0.2146739   0.1936969   0.2356509
24 months   ki1135781-COHORTS          3+                   NA                0.3059621   0.2910926   0.3208315


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         NA                   NA                0.0324732   0.0323665   0.0325798
Birth       ki1135781-COHORTS          NA                   NA                0.0215068   0.0214479   0.0215657
3 months    ki1113344-GMS-Nepal        NA                   NA                0.0385289   0.0381360   0.0389218
3 months    ki1126311-ZVITAMBO         NA                   NA                0.0501982   0.0500728   0.0503235
3 months    ki1135781-COHORTS          NA                   NA                0.0362647   0.0361706   0.0363589
6 months    ki1113344-GMS-Nepal        NA                   NA                0.0355240   0.0351481   0.0358998
6 months    ki1126311-ZVITAMBO         NA                   NA                0.0350877   0.0345096   0.0356659
6 months    ki1135781-COHORTS          NA                   NA                0.0552057   0.0549130   0.0554983
9 months    ki1113344-GMS-Nepal        NA                   NA                0.0635209   0.0628496   0.0641921
9 months    ki1126311-ZVITAMBO         NA                   NA                0.0443199   0.0440660   0.0445738
9 months    ki1135781-COHORTS          NA                   NA                0.0886934   0.0881038   0.0892830
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4505495   0.4414865   0.4596124
12 months   ki1113344-GMS-Nepal        NA                   NA                0.0913978   0.0904799   0.0923158
12 months   ki1126311-ZVITAMBO         NA                   NA                0.0617284   0.0615005   0.0619563
12 months   ki1135781-COHORTS          NA                   NA                0.1467932   0.1458432   0.1477433
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4268293   0.4172511   0.4364074
18 months   ki1113344-GMS-Nepal        NA                   NA                0.1545455   0.1525049   0.1565860
18 months   ki1126311-ZVITAMBO         NA                   NA                0.1576471   0.1526192   0.1626749
18 months   ki1135781-COHORTS          NA                   NA                0.2875683   0.2853422   0.2897944
24 months   ki1113344-GMS-Nepal        NA                   NA                0.1082164   0.1079002   0.1085327
24 months   ki1126311-ZVITAMBO         NA                   NA                0.1896552   0.1834697   0.1958407
24 months   ki1135781-COHORTS          NA                   NA                0.2622124   0.2609220   0.2635028


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         2                    1                 0.7971651   0.5105236   1.2447460
Birth       ki1126311-ZVITAMBO         3+                   1                 0.8578098   0.5522024   1.3325504
Birth       ki1135781-COHORTS          2                    1                 0.6884209   0.4311065   1.0993184
Birth       ki1135781-COHORTS          3+                   1                 0.8326582   0.5718872   1.2123366
3 months    ki1113344-GMS-Nepal        2                    1                 0.9034749   0.3105468   2.6284827
3 months    ki1113344-GMS-Nepal        3+                   1                 0.7512039   0.2851597   1.9789164
3 months    ki1126311-ZVITAMBO         2                    1                 0.9316087   0.6061063   1.4319185
3 months    ki1126311-ZVITAMBO         3+                   1                 0.8636269   0.5594900   1.3330916
3 months    ki1135781-COHORTS          2                    1                 0.7748777   0.5328713   1.1267925
3 months    ki1135781-COHORTS          3+                   1                 1.0496527   0.7762952   1.4192676
6 months    ki1113344-GMS-Nepal        2                    1                 1.0268456   0.3384542   3.1153756
6 months    ki1113344-GMS-Nepal        3+                   1                 0.7816092   0.2761410   2.2123227
6 months    ki1126311-ZVITAMBO         2                    1                 0.4563390   0.2241084   0.9292169
6 months    ki1126311-ZVITAMBO         3+                   1                 1.3948832   0.8561396   2.2726424
6 months    ki1135781-COHORTS          2                    1                 0.9856360   0.6993101   1.3891954
6 months    ki1135781-COHORTS          3+                   1                 1.6364757   1.2367864   2.1653317
9 months    ki1113344-GMS-Nepal        2                    1                 0.9726637   0.4257361   2.2222092
9 months    ki1113344-GMS-Nepal        3+                   1                 0.7636364   0.3555139   1.6402749
9 months    ki1126311-ZVITAMBO         2                    1                 0.7628968   0.4501728   1.2928626
9 months    ki1126311-ZVITAMBO         3+                   1                 1.0574807   0.6590831   1.6966990
9 months    ki1135781-COHORTS          2                    1                 1.0402899   0.7765659   1.3935752
9 months    ki1135781-COHORTS          3+                   1                 1.8985191   1.4985156   2.4052968
12 months   ki1000304b-SAS-FoodSuppl   2                    1                 0.7345679   0.3517606   1.5339693
12 months   ki1000304b-SAS-FoodSuppl   3+                   1                 0.8432540   0.4925468   1.4436745
12 months   ki1113344-GMS-Nepal        2                    1                 1.1071429   0.5138981   2.3852304
12 months   ki1113344-GMS-Nepal        3+                   1                 1.3260456   0.6915825   2.5425702
12 months   ki1126311-ZVITAMBO         2                    1                 0.9933572   0.6241946   1.5808506
12 months   ki1126311-ZVITAMBO         3+                   1                 1.1727646   0.7567162   1.8175596
12 months   ki1135781-COHORTS          2                    1                 1.0649781   0.8487081   1.3363586
12 months   ki1135781-COHORTS          3+                   1                 1.8540744   1.5429223   2.2279748
18 months   ki1000304b-SAS-FoodSuppl   2                    1                 0.8823529   0.3590815   2.1681616
18 months   ki1000304b-SAS-FoodSuppl   3+                   1                 1.1500000   0.5751080   2.2995680
18 months   ki1113344-GMS-Nepal        2                    1                 0.6444118   0.3702936   1.1214524
18 months   ki1113344-GMS-Nepal        3+                   1                 0.8206625   0.5298611   1.2710631
18 months   ki1126311-ZVITAMBO         2                    1                 0.5224359   0.2617875   1.0425985
18 months   ki1126311-ZVITAMBO         3+                   1                 1.3686349   0.8547927   2.1913635
18 months   ki1135781-COHORTS          2                    1                 1.3769518   1.1102884   1.7076610
18 months   ki1135781-COHORTS          3+                   1                 1.8172908   1.5178639   2.1757853
24 months   ki1113344-GMS-Nepal        2                    1                 1.0461538   0.5187748   2.1096587
24 months   ki1113344-GMS-Nepal        3+                   1                 1.0839975   0.5860828   2.0049225
24 months   ki1126311-ZVITAMBO         2                    1                 1.5166667   0.6084458   3.7805799
24 months   ki1126311-ZVITAMBO         3+                   1                 1.3382353   0.5324365   3.3635440
24 months   ki1135781-COHORTS          2                    1                 1.1606115   0.9945372   1.3544179
24 months   ki1135781-COHORTS          3+                   1                 1.6541510   1.4538456   1.8820538


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         1                    NA                -0.0035812   -0.0131133   0.0059508
Birth       ki1135781-COHORTS          1                    NA                -0.0044036   -0.0126442   0.0038371
3 months    ki1113344-GMS-Nepal        1                    NA                -0.0063429   -0.0388603   0.0261745
3 months    ki1126311-ZVITAMBO         1                    NA                -0.0033936   -0.0183026   0.0115153
3 months    ki1135781-COHORTS          1                    NA                -0.0009282   -0.0107545   0.0088980
6 months    ki1113344-GMS-Nepal        1                    NA                -0.0036917   -0.0344784   0.0270950
6 months    ki1126311-ZVITAMBO         1                    NA                -0.0012531   -0.0142531   0.0117468
6 months    ki1135781-COHORTS          1                    NA                 0.0147140    0.0043209   0.0251071
9 months    ki1113344-GMS-Nepal        1                    NA                -0.0083746   -0.0493482   0.0325991
9 months    ki1126311-ZVITAMBO         1                    NA                -0.0024941   -0.0174302   0.0124419
9 months    ki1135781-COHORTS          1                    NA                 0.0307783    0.0180418   0.0435149
12 months   ki1000304b-SAS-FoodSuppl   1                    NA                -0.0788623   -0.3176179   0.1598933
12 months   ki1113344-GMS-Nepal        1                    NA                 0.0139785   -0.0281428   0.0560998
12 months   ki1126311-ZVITAMBO         1                    NA                 0.0030864   -0.0150105   0.0211833
12 months   ki1135781-COHORTS          1                    NA                 0.0498087    0.0332216   0.0663958
18 months   ki1000304b-SAS-FoodSuppl   1                    NA                 0.0268293   -0.2227982   0.2764568
18 months   ki1113344-GMS-Nepal        1                    NA                -0.0325513   -0.0940363   0.0289337
18 months   ki1126311-ZVITAMBO         1                    NA                -0.0018621   -0.0583625   0.0546383
18 months   ki1135781-COHORTS          1                    NA                 0.1027498    0.0717607   0.1337389
24 months   ki1113344-GMS-Nepal        1                    NA                 0.0052753   -0.0458491   0.0563996
24 months   ki1126311-ZVITAMBO         1                    NA                 0.0358090   -0.0628756   0.1344936
24 months   ki1135781-COHORTS          1                    NA                 0.0772462    0.0550909   0.0994015


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         1                    NA                -0.1102830   -0.4462841   0.1476582
Birth       ki1135781-COHORTS          1                    NA                -0.2047524   -0.6558612   0.1234601
3 months    ki1113344-GMS-Nepal        1                    NA                -0.1646270   -1.4039014   0.4357688
3 months    ki1126311-ZVITAMBO         1                    NA                -0.0676049   -0.4100344   0.1916650
3 months    ki1135781-COHORTS          1                    NA                -0.0255965   -0.3357220   0.2125247
6 months    ki1113344-GMS-Nepal        1                    NA                -0.1039216   -1.4204258   0.4965172
6 months    ki1126311-ZVITAMBO         1                    NA                -0.0357143   -0.4811811   0.2757779
6 months    ki1135781-COHORTS          1                    NA                 0.2665305    0.0519457   0.4325457
9 months    ki1113344-GMS-Nepal        1                    NA                -0.1318394   -1.0012485   0.3598694
9 months    ki1126311-ZVITAMBO         1                    NA                -0.0562755   -0.4532532   0.2322618
9 months    ki1135781-COHORTS          1                    NA                 0.3470195    0.1865134   0.4758567
12 months   ki1000304b-SAS-FoodSuppl   1                    NA                -0.1750359   -0.8448631   0.2515926
12 months   ki1113344-GMS-Nepal        1                    NA                 0.1529412   -0.4594290   0.5083634
12 months   ki1126311-ZVITAMBO         1                    NA                 0.0500000   -0.2934386   0.3022475
12 months   ki1135781-COHORTS          1                    NA                 0.3393119    0.2162012   0.4430858
18 months   ki1000304b-SAS-FoodSuppl   1                    NA                 0.0628571   -0.7490858   0.4978881
18 months   ki1113344-GMS-Nepal        1                    NA                -0.2106262   -0.6817733   0.1285295
18 months   ki1126311-ZVITAMBO         1                    NA                -0.0118121   -0.4419412   0.2900101
18 months   ki1135781-COHORTS          1                    NA                 0.3573058    0.2401750   0.4563803
24 months   ki1113344-GMS-Nepal        1                    NA                 0.0487473   -0.5630826   0.4210915
24 months   ki1126311-ZVITAMBO         1                    NA                 0.1888112   -0.5399720   0.5727018
24 months   ki1135781-COHORTS          1                    NA                 0.2945940    0.2049127   0.3741597


