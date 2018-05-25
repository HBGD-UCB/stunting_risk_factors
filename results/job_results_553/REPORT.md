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

* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/26a34899-4802-439b-9cd9-af27660c0d9f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/26a34899-4802-439b-9cd9-af27660c0d9f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/26a34899-4802-439b-9cd9-af27660c0d9f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/26a34899-4802-439b-9cd9-af27660c0d9f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       ki1101329-Keneba           1     1407    156    140     16
Birth       ki1101329-Keneba           2     1407    146    138      8
Birth       ki1101329-Keneba           3+    1407   1105   1054     51
Birth       ki1113344-GMS-Nepal        1        0      0      0      0
Birth       ki1113344-GMS-Nepal        2        0      0      0      0
Birth       ki1113344-GMS-Nepal        3+       0      0      0      0
Birth       ki1126311-ZVITAMBO         1     3449   1470   1307    163
Birth       ki1126311-ZVITAMBO         2     3449   1009    908    101
Birth       ki1126311-ZVITAMBO         3+    3449    970    874     96
Birth       ki1135781-COHORTS          1     7579   1428   1265    163
Birth       ki1135781-COHORTS          2     7579   1794   1650    144
Birth       ki1135781-COHORTS          3+    7579   4357   3983    374
3 months    ki1000304b-SAS-FoodSuppl   1       93     17     10      7
3 months    ki1000304b-SAS-FoodSuppl   2       93     19     12      7
3 months    ki1000304b-SAS-FoodSuppl   3+      93     57     35     22
3 months    ki1017093b-PROVIDE         1      168     68     57     11
3 months    ki1017093b-PROVIDE         2      168     58     52      6
3 months    ki1017093b-PROVIDE         3+     168     42     39      3
3 months    ki1066203-TanzaniaChild2   1      567    197    179     18
3 months    ki1066203-TanzaniaChild2   2      567    193    180     13
3 months    ki1066203-TanzaniaChild2   3+     567    177    169      8
3 months    ki1101329-Keneba           1     1689    212    170     42
3 months    ki1101329-Keneba           2     1689    182    160     22
3 months    ki1101329-Keneba           3+    1689   1295   1130    165
3 months    ki1113344-GMS-Nepal        1      571    156    124     32
3 months    ki1113344-GMS-Nepal        2      571    148    129     19
3 months    ki1113344-GMS-Nepal        3+     571    267    234     33
3 months    ki1126311-ZVITAMBO         1     2271    877    719    158
3 months    ki1126311-ZVITAMBO         2     2271    681    579    102
3 months    ki1126311-ZVITAMBO         3+    2271    713    582    131
3 months    ki1135781-COHORTS          1     7721   1425   1213    212
3 months    ki1135781-COHORTS          2     7721   1839   1620    219
3 months    ki1135781-COHORTS          3+    7721   4457   3709    748
6 months    ki1000304b-SAS-FoodSuppl   1       93     18     11      7
6 months    ki1000304b-SAS-FoodSuppl   2       93     18     11      7
6 months    ki1000304b-SAS-FoodSuppl   3+      93     57     26     31
6 months    ki1017093b-PROVIDE         1      153     59     48     11
6 months    ki1017093b-PROVIDE         2      153     55     42     13
6 months    ki1017093b-PROVIDE         3+     153     39     35      4
6 months    ki1066203-TanzaniaChild2   1      496    171    158     13
6 months    ki1066203-TanzaniaChild2   2      496    171    153     18
6 months    ki1066203-TanzaniaChild2   3+     496    154    140     14
6 months    ki1101329-Keneba           1     1623    194    175     19
6 months    ki1101329-Keneba           2     1623    164    150     14
6 months    ki1101329-Keneba           3+    1623   1265   1071    194
6 months    ki1113344-GMS-Nepal        1      563    153    118     35
6 months    ki1113344-GMS-Nepal        2      563    149    120     29
6 months    ki1113344-GMS-Nepal        3+     563    261    206     55
6 months    ki1126311-ZVITAMBO         1     2052    798    671    127
6 months    ki1126311-ZVITAMBO         2     2052    603    513     90
6 months    ki1126311-ZVITAMBO         3+    2052    651    533    118
6 months    ki1135781-COHORTS          1     7463   1383   1132    251
6 months    ki1135781-COHORTS          2     7463   1779   1472    307
6 months    ki1135781-COHORTS          3+    7463   4301   3236   1065
9 months    ki1000304b-SAS-FoodSuppl   1       85     15      7      8
9 months    ki1000304b-SAS-FoodSuppl   2       85     17      7     10
9 months    ki1000304b-SAS-FoodSuppl   3+      85     53     14     39
9 months    ki1017093b-PROVIDE         1      158     62     46     16
9 months    ki1017093b-PROVIDE         2      158     56     43     13
9 months    ki1017093b-PROVIDE         3+     158     40     32      8
9 months    ki1066203-TanzaniaChild2   1      427    149    130     19
9 months    ki1066203-TanzaniaChild2   2      427    146    124     22
9 months    ki1066203-TanzaniaChild2   3+     427    132    111     21
9 months    ki1101329-Keneba           1     1625    182    164     18
9 months    ki1101329-Keneba           2     1625    163    153     10
9 months    ki1101329-Keneba           3+    1625   1280   1017    263
9 months    ki1113344-GMS-Nepal        1      551    153    107     46
9 months    ki1113344-GMS-Nepal        2      551    143    106     37
9 months    ki1113344-GMS-Nepal        3+     551    255    183     72
9 months    ki1126311-ZVITAMBO         1     1963    769    618    151
9 months    ki1126311-ZVITAMBO         2     1963    588    480    108
9 months    ki1126311-ZVITAMBO         3+    1963    606    483    123
9 months    ki1135781-COHORTS          1     6934   1295    995    300
9 months    ki1135781-COHORTS          2     6934   1610   1219    391
9 months    ki1135781-COHORTS          3+    6934   4029   2670   1359
12 months   ki1000304b-SAS-FoodSuppl   1       91     17      5     12
12 months   ki1000304b-SAS-FoodSuppl   2       91     18      3     15
12 months   ki1000304b-SAS-FoodSuppl   3+      91     56     11     45
12 months   ki1017093b-PROVIDE         1      153     59     38     21
12 months   ki1017093b-PROVIDE         2      153     56     40     16
12 months   ki1017093b-PROVIDE         3+     153     38     31      7
12 months   ki1066203-TanzaniaChild2   1      350    124    104     20
12 months   ki1066203-TanzaniaChild2   2      350    119    107     12
12 months   ki1066203-TanzaniaChild2   3+     350    107     88     19
12 months   ki1101329-Keneba           1     1530    164    132     32
12 months   ki1101329-Keneba           2     1530    154    133     21
12 months   ki1101329-Keneba           3+    1530   1212    880    332
12 months   ki1113344-GMS-Nepal        1      558    155    112     43
12 months   ki1113344-GMS-Nepal        2      558    140     95     45
12 months   ki1113344-GMS-Nepal        3+     558    263    160    103
12 months   ki1126311-ZVITAMBO         1     1701    648    496    152
12 months   ki1126311-ZVITAMBO         2     1701    515    399    116
12 months   ki1126311-ZVITAMBO         3+    1701    538    401    137
12 months   ki1135781-COHORTS          1     6533   1227    839    388
12 months   ki1135781-COHORTS          2     6533   1491    997    494
12 months   ki1135781-COHORTS          3+    6533   3815   2076   1739
18 months   ki1000304b-SAS-FoodSuppl   1       82     15      2     13
18 months   ki1000304b-SAS-FoodSuppl   2       82     17      1     16
18 months   ki1000304b-SAS-FoodSuppl   3+      82     50      7     43
18 months   ki1017093b-PROVIDE         1      141     54     32     22
18 months   ki1017093b-PROVIDE         2      141     51     32     19
18 months   ki1017093b-PROVIDE         3+     141     36     25     11
18 months   ki1066203-TanzaniaChild2   1      254     89     66     23
18 months   ki1066203-TanzaniaChild2   2      254     91     67     24
18 months   ki1066203-TanzaniaChild2   3+     254     74     54     20
18 months   ki1101329-Keneba           1     1542    155    116     39
18 months   ki1101329-Keneba           2     1542    152    121     31
18 months   ki1101329-Keneba           3+    1542   1235    794    441
18 months   ki1113344-GMS-Nepal        1      550    155     74     81
18 months   ki1113344-GMS-Nepal        2      550    141     70     71
18 months   ki1113344-GMS-Nepal        3+     550    254    114    140
18 months   ki1126311-ZVITAMBO         1      425    163     84     79
18 months   ki1126311-ZVITAMBO         2      425    120     73     47
18 months   ki1126311-ZVITAMBO         3+     425    142     66     76
18 months   ki1135781-COHORTS          1     2928    606    292    314
18 months   ki1135781-COHORTS          2     2928    613    259    354
18 months   ki1135781-COHORTS          3+    2928   1709    547   1162
24 months   ki1000304b-SAS-FoodSuppl   1        0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   2        0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   3+       0      0      0      0
24 months   ki1017093b-PROVIDE         1      149     58     38     20
24 months   ki1017093b-PROVIDE         2      149     54     37     17
24 months   ki1017093b-PROVIDE         3+     149     37     25     12
24 months   ki1066203-TanzaniaChild2   1        2      1      1      0
24 months   ki1066203-TanzaniaChild2   2        2      1      1      0
24 months   ki1066203-TanzaniaChild2   3+       2      0      0      0
24 months   ki1101329-Keneba           1     1376    137     95     42
24 months   ki1101329-Keneba           2     1376    139    104     35
24 months   ki1101329-Keneba           3+    1376   1100    711    389
24 months   ki1113344-GMS-Nepal        1      499    136     82     54
24 months   ki1113344-GMS-Nepal        2      499    130     68     62
24 months   ki1113344-GMS-Nepal        3+     499    233    126    107
24 months   ki1126311-ZVITAMBO         1      116     52     22     30
24 months   ki1126311-ZVITAMBO         2      116     30     15     15
24 months   ki1126311-ZVITAMBO         3+     116     34     11     23
24 months   ki1135781-COHORTS          1     6346   1184    624    560
24 months   ki1135781-COHORTS          2     6346   1472    730    742
24 months   ki1135781-COHORTS          3+    6346   3690   1359   2331

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           1                    NA                0.1025641   0.0549386   0.1501896
Birth       ki1101329-Keneba           2                    NA                0.0547945   0.0178664   0.0917227
Birth       ki1101329-Keneba           3+                   NA                0.0461538   0.0337783   0.0585294
Birth       ki1126311-ZVITAMBO         1                    NA                0.1108844   0.0948310   0.1269377
Birth       ki1126311-ZVITAMBO         2                    NA                0.1000991   0.0815775   0.1186207
Birth       ki1126311-ZVITAMBO         3+                   NA                0.0989691   0.0801740   0.1177642
Birth       ki1135781-COHORTS          1                    NA                0.1141457   0.0976518   0.1306396
Birth       ki1135781-COHORTS          2                    NA                0.0802676   0.0676938   0.0928414
Birth       ki1135781-COHORTS          3+                   NA                0.0858389   0.0775205   0.0941572
3 months    ki1000304b-SAS-FoodSuppl   1                    NA                0.4117647   0.1765463   0.6469831
3 months    ki1000304b-SAS-FoodSuppl   2                    NA                0.3684211   0.1503465   0.5864956
3 months    ki1000304b-SAS-FoodSuppl   3+                   NA                0.3859649   0.2588991   0.5130307
3 months    ki1066203-TanzaniaChild2   1                    NA                0.0913706   0.0510993   0.1316418
3 months    ki1066203-TanzaniaChild2   2                    NA                0.0673575   0.0319657   0.1027494
3 months    ki1066203-TanzaniaChild2   3+                   NA                0.0451977   0.0145668   0.0758286
3 months    ki1101329-Keneba           1                    NA                0.1981132   0.1444444   0.2517820
3 months    ki1101329-Keneba           2                    NA                0.1208791   0.0735050   0.1682532
3 months    ki1101329-Keneba           3+                   NA                0.1274131   0.1092474   0.1455789
3 months    ki1113344-GMS-Nepal        1                    NA                0.2051282   0.1417080   0.2685484
3 months    ki1113344-GMS-Nepal        2                    NA                0.1283784   0.0744388   0.1823180
3 months    ki1113344-GMS-Nepal        3+                   NA                0.1235955   0.0840837   0.1631073
3 months    ki1126311-ZVITAMBO         1                    NA                0.1801596   0.1547185   0.2056008
3 months    ki1126311-ZVITAMBO         2                    NA                0.1497797   0.1229719   0.1765876
3 months    ki1126311-ZVITAMBO         3+                   NA                0.1837307   0.1552988   0.2121627
3 months    ki1135781-COHORTS          1                    NA                0.1487719   0.1302940   0.1672498
3 months    ki1135781-COHORTS          2                    NA                0.1190865   0.1042823   0.1338906
3 months    ki1135781-COHORTS          3+                   NA                0.1678259   0.1568537   0.1787980
6 months    ki1000304b-SAS-FoodSuppl   1                    NA                0.3888889   0.1624598   0.6153180
6 months    ki1000304b-SAS-FoodSuppl   2                    NA                0.3888889   0.1624598   0.6153180
6 months    ki1000304b-SAS-FoodSuppl   3+                   NA                0.5438596   0.4138574   0.6738619
6 months    ki1066203-TanzaniaChild2   1                    NA                0.0760234   0.0362592   0.1157876
6 months    ki1066203-TanzaniaChild2   2                    NA                0.1052632   0.0592190   0.1513073
6 months    ki1066203-TanzaniaChild2   3+                   NA                0.0909091   0.0454592   0.1363590
6 months    ki1101329-Keneba           1                    NA                0.0979381   0.0560997   0.1397766
6 months    ki1101329-Keneba           2                    NA                0.0853659   0.0425874   0.1281444
6 months    ki1101329-Keneba           3+                   NA                0.1533597   0.1334968   0.1732225
6 months    ki1113344-GMS-Nepal        1                    NA                0.2287582   0.1621432   0.2953732
6 months    ki1113344-GMS-Nepal        2                    NA                0.1946309   0.1310034   0.2582583
6 months    ki1113344-GMS-Nepal        3+                   NA                0.2107280   0.1612071   0.2602488
6 months    ki1126311-ZVITAMBO         1                    NA                0.1591479   0.1337608   0.1845349
6 months    ki1126311-ZVITAMBO         2                    NA                0.1492537   0.1208053   0.1777021
6 months    ki1126311-ZVITAMBO         3+                   NA                0.1812596   0.1516599   0.2108593
6 months    ki1135781-COHORTS          1                    NA                0.1814895   0.1611751   0.2018039
6 months    ki1135781-COHORTS          2                    NA                0.1725689   0.1550084   0.1901293
6 months    ki1135781-COHORTS          3+                   NA                0.2476168   0.2347165   0.2605172
9 months    ki1000304b-SAS-FoodSuppl   1                    NA                0.5333333   0.2793677   0.7872990
9 months    ki1000304b-SAS-FoodSuppl   2                    NA                0.5882353   0.3528965   0.8235741
9 months    ki1000304b-SAS-FoodSuppl   3+                   NA                0.7358491   0.6164501   0.8552480
9 months    ki1017093b-PROVIDE         1                    NA                0.2580645   0.1488002   0.3673288
9 months    ki1017093b-PROVIDE         2                    NA                0.2321429   0.1212124   0.3430733
9 months    ki1017093b-PROVIDE         3+                   NA                0.2000000   0.0756468   0.3243532
9 months    ki1066203-TanzaniaChild2   1                    NA                0.1275168   0.0738968   0.1811367
9 months    ki1066203-TanzaniaChild2   2                    NA                0.1506849   0.0925884   0.2087815
9 months    ki1066203-TanzaniaChild2   3+                   NA                0.1590909   0.0966215   0.2215603
9 months    ki1101329-Keneba           1                    NA                0.0989011   0.0555168   0.1422854
9 months    ki1101329-Keneba           2                    NA                0.0613497   0.0244990   0.0982004
9 months    ki1101329-Keneba           3+                   NA                0.2054687   0.1833273   0.2276102
9 months    ki1113344-GMS-Nepal        1                    NA                0.3006536   0.2279299   0.3733773
9 months    ki1113344-GMS-Nepal        2                    NA                0.2587413   0.1868970   0.3305856
9 months    ki1113344-GMS-Nepal        3+                   NA                0.2823529   0.2270531   0.3376528
9 months    ki1126311-ZVITAMBO         1                    NA                0.1963589   0.1682754   0.2244425
9 months    ki1126311-ZVITAMBO         2                    NA                0.1836735   0.1523676   0.2149793
9 months    ki1126311-ZVITAMBO         3+                   NA                0.2029703   0.1709389   0.2350017
9 months    ki1135781-COHORTS          1                    NA                0.2316602   0.2086804   0.2546401
9 months    ki1135781-COHORTS          2                    NA                0.2428571   0.2219097   0.2638046
9 months    ki1135781-COHORTS          3+                   NA                0.3373045   0.3227047   0.3519044
12 months   ki1017093b-PROVIDE         1                    NA                0.3559322   0.2333590   0.4785054
12 months   ki1017093b-PROVIDE         2                    NA                0.2857143   0.1670063   0.4044223
12 months   ki1017093b-PROVIDE         3+                   NA                0.1842105   0.0605513   0.3078697
12 months   ki1066203-TanzaniaChild2   1                    NA                0.1612903   0.0964614   0.2261192
12 months   ki1066203-TanzaniaChild2   2                    NA                0.1008403   0.0466613   0.1550194
12 months   ki1066203-TanzaniaChild2   3+                   NA                0.1775701   0.1050578   0.2500824
12 months   ki1101329-Keneba           1                    NA                0.1951220   0.1344502   0.2557937
12 months   ki1101329-Keneba           2                    NA                0.1363636   0.0821455   0.1905818
12 months   ki1101329-Keneba           3+                   NA                0.2739274   0.2488116   0.2990432
12 months   ki1113344-GMS-Nepal        1                    NA                0.2774194   0.2068716   0.3479671
12 months   ki1113344-GMS-Nepal        2                    NA                0.3214286   0.2439978   0.3988593
12 months   ki1113344-GMS-Nepal        3+                   NA                0.3916350   0.3325901   0.4506799
12 months   ki1126311-ZVITAMBO         1                    NA                0.2345679   0.2019335   0.2672023
12 months   ki1126311-ZVITAMBO         2                    NA                0.2252427   0.1891533   0.2613322
12 months   ki1126311-ZVITAMBO         3+                   NA                0.2546468   0.2178225   0.2914712
12 months   ki1135781-COHORTS          1                    NA                0.3162184   0.2901982   0.3422387
12 months   ki1135781-COHORTS          2                    NA                0.3313213   0.3074280   0.3552145
12 months   ki1135781-COHORTS          3+                   NA                0.4558322   0.4400269   0.4716375
18 months   ki1017093b-PROVIDE         1                    NA                0.4074074   0.2758882   0.5389267
18 months   ki1017093b-PROVIDE         2                    NA                0.3725490   0.2393840   0.5057140
18 months   ki1017093b-PROVIDE         3+                   NA                0.3055556   0.1545454   0.4565657
18 months   ki1066203-TanzaniaChild2   1                    NA                0.2584270   0.1672982   0.3495557
18 months   ki1066203-TanzaniaChild2   2                    NA                0.2637363   0.1730199   0.3544526
18 months   ki1066203-TanzaniaChild2   3+                   NA                0.2702703   0.1688864   0.3716542
18 months   ki1101329-Keneba           1                    NA                0.2516129   0.1832764   0.3199494
18 months   ki1101329-Keneba           2                    NA                0.2039474   0.1398711   0.2680236
18 months   ki1101329-Keneba           3+                   NA                0.3570850   0.3303538   0.3838162
18 months   ki1113344-GMS-Nepal        1                    NA                0.5225806   0.4438753   0.6012860
18 months   ki1113344-GMS-Nepal        2                    NA                0.5035461   0.4209437   0.5861485
18 months   ki1113344-GMS-Nepal        3+                   NA                0.5511811   0.4899589   0.6124033
18 months   ki1126311-ZVITAMBO         1                    NA                0.4846626   0.4078502   0.5614750
18 months   ki1126311-ZVITAMBO         2                    NA                0.3916667   0.3042291   0.4791042
18 months   ki1126311-ZVITAMBO         3+                   NA                0.5352113   0.4530805   0.6173420
18 months   ki1135781-COHORTS          1                    NA                0.5181518   0.4783622   0.5579414
18 months   ki1135781-COHORTS          2                    NA                0.5774878   0.5383782   0.6165973
18 months   ki1135781-COHORTS          3+                   NA                0.6799298   0.6578087   0.7020508
24 months   ki1017093b-PROVIDE         1                    NA                0.3448276   0.2220907   0.4675645
24 months   ki1017093b-PROVIDE         2                    NA                0.3148148   0.1905223   0.4391074
24 months   ki1017093b-PROVIDE         3+                   NA                0.3243243   0.1729792   0.4756694
24 months   ki1101329-Keneba           1                    NA                0.3065693   0.2293348   0.3838039
24 months   ki1101329-Keneba           2                    NA                0.2517986   0.1796156   0.3239815
24 months   ki1101329-Keneba           3+                   NA                0.3536364   0.3253728   0.3818999
24 months   ki1113344-GMS-Nepal        1                    NA                0.3970588   0.3147438   0.4793739
24 months   ki1113344-GMS-Nepal        2                    NA                0.4769231   0.3909784   0.5628678
24 months   ki1113344-GMS-Nepal        3+                   NA                0.4592275   0.3951763   0.5232786
24 months   ki1126311-ZVITAMBO         1                    NA                0.5769231   0.4420594   0.7117868
24 months   ki1126311-ZVITAMBO         2                    NA                0.5000000   0.3203044   0.6796956
24 months   ki1126311-ZVITAMBO         3+                   NA                0.6764706   0.5185386   0.8344026
24 months   ki1135781-COHORTS          1                    NA                0.4729730   0.4445322   0.5014137
24 months   ki1135781-COHORTS          2                    NA                0.5040761   0.4785324   0.5296198
24 months   ki1135781-COHORTS          3+                   NA                0.6317073   0.6161432   0.6472714


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           NA                   NA                0.0533049   0.0523854   0.0542244
Birth       ki1126311-ZVITAMBO         NA                   NA                0.1043781   0.1041904   0.1045658
Birth       ki1135781-COHORTS          NA                   NA                0.0898535   0.0895851   0.0901220
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.3870968   0.3843304   0.3898631
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0687831   0.0672383   0.0703279
3 months    ki1101329-Keneba           NA                   NA                0.1355832   0.1344490   0.1367174
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1471103   0.1441857   0.1500349
3 months    ki1126311-ZVITAMBO         NA                   NA                0.1721708   0.1715649   0.1727768
3 months    ki1135781-COHORTS          NA                   NA                0.1527004   0.1522520   0.1531488
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4838710   0.4684465   0.4992954
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.0907258   0.0896563   0.0917953
6 months    ki1101329-Keneba           NA                   NA                0.1398645   0.1386216   0.1411073
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2113677   0.2103334   0.2124020
6 months    ki1126311-ZVITAMBO         NA                   NA                0.1632554   0.1626961   0.1638146
6 months    ki1135781-COHORTS          NA                   NA                0.2174729   0.2166725   0.2182732
9 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.6705882   0.6522713   0.6889052
9 months    ki1017093b-PROVIDE         NA                   NA                0.2341772   0.2306065   0.2377479
9 months    ki1066203-TanzaniaChild2   NA                   NA                0.1451991   0.1439284   0.1464697
9 months    ki1101329-Keneba           NA                   NA                0.1790769   0.1765691   0.1815848
9 months    ki1113344-GMS-Nepal        NA                   NA                0.2813067   0.2800212   0.2825922
9 months    ki1126311-ZVITAMBO         NA                   NA                0.1946001   0.1942614   0.1949388
9 months    ki1135781-COHORTS          NA                   NA                0.2956446   0.2944867   0.2968026
12 months   ki1017093b-PROVIDE         NA                   NA                0.2875817   0.2769688   0.2981946
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.1457143   0.1422651   0.1491635
12 months   ki1101329-Keneba           NA                   NA                0.2516340   0.2493516   0.2539164
12 months   ki1113344-GMS-Nepal        NA                   NA                0.3422939   0.3382037   0.3463841
12 months   ki1126311-ZVITAMBO         NA                   NA                0.2380952   0.2375300   0.2386605
12 months   ki1135781-COHORTS          NA                   NA                0.4011939   0.3996197   0.4027681
18 months   ki1017093b-PROVIDE         NA                   NA                0.3687943   0.3621743   0.3754143
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.2637795   0.2631975   0.2643616
18 months   ki1101329-Keneba           NA                   NA                0.3313878   0.3287603   0.3340153
18 months   ki1113344-GMS-Nepal        NA                   NA                0.5309091   0.5292334   0.5325848
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4752941   0.4699031   0.4806851
18 months   ki1135781-COHORTS          NA                   NA                0.6250000   0.6225439   0.6274561
24 months   ki1017093b-PROVIDE         NA                   NA                0.3288591   0.3267226   0.3309955
24 months   ki1101329-Keneba           NA                   NA                0.3386628   0.3369549   0.3403706
24 months   ki1113344-GMS-Nepal        NA                   NA                0.4468938   0.4441404   0.4496472
24 months   ki1126311-ZVITAMBO         NA                   NA                0.5862069   0.5741544   0.5982594
24 months   ki1135781-COHORTS          NA                   NA                0.5724866   0.5707515   0.5742217


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           2                    1                 0.5342466   0.2356709   1.2110933
Birth       ki1101329-Keneba           3+                   1                 0.4500000   0.2632335   0.7692791
Birth       ki1126311-ZVITAMBO         2                    1                 0.9027343   0.7137179   1.1418086
Birth       ki1126311-ZVITAMBO         3+                   1                 0.8925432   0.7029423   1.1332840
Birth       ki1135781-COHORTS          2                    1                 0.7032029   0.5682315   0.8702339
Birth       ki1135781-COHORTS          3+                   1                 0.7520118   0.6319227   0.8949223
3 months    ki1000304b-SAS-FoodSuppl   2                    1                 0.8947368   0.3930436   2.0368071
3 months    ki1000304b-SAS-FoodSuppl   3+                   1                 0.9373434   0.4847964   1.8123330
3 months    ki1066203-TanzaniaChild2   2                    1                 0.7371906   0.3713092   1.4636047
3 months    ki1066203-TanzaniaChild2   3+                   1                 0.4946642   0.2204028   1.1102064
3 months    ki1101329-Keneba           2                    1                 0.6101518   0.3789033   0.9825335
3 months    ki1101329-Keneba           3+                   1                 0.6431329   0.4735342   0.8734743
3 months    ki1113344-GMS-Nepal        2                    1                 0.6258446   0.3714623   1.0544313
3 months    ki1113344-GMS-Nepal        3+                   1                 0.6025281   0.3862177   0.9399883
3 months    ki1126311-ZVITAMBO         2                    1                 0.8313723   0.6618871   1.0442566
3 months    ki1126311-ZVITAMBO         3+                   1                 1.0198218   0.8270683   1.2574976
3 months    ki1135781-COHORTS          2                    1                 0.8004632   0.6714654   0.9542433
3 months    ki1135781-COHORTS          3+                   1                 1.1280750   0.9803493   1.2980609
6 months    ki1000304b-SAS-FoodSuppl   2                    1                 1.0000000   0.4389277   2.2782796
6 months    ki1000304b-SAS-FoodSuppl   3+                   1                 1.3984962   0.7452718   2.6242663
6 months    ki1066203-TanzaniaChild2   2                    1                 1.3846154   0.7001733   2.7381219
6 months    ki1066203-TanzaniaChild2   3+                   1                 1.1958042   0.5799944   2.4654510
6 months    ki1101329-Keneba           2                    1                 0.8716305   0.4511824   1.6838859
6 months    ki1101329-Keneba           3+                   1                 1.5658831   1.0020575   2.4469551
6 months    ki1113344-GMS-Nepal        2                    1                 0.8508150   0.5491611   1.3181671
6 months    ki1113344-GMS-Nepal        3+                   1                 0.9211823   0.6336271   1.3392368
6 months    ki1126311-ZVITAMBO         2                    1                 0.9378305   0.7314442   1.2024514
6 months    ki1126311-ZVITAMBO         3+                   1                 1.1389383   0.9064798   1.4310086
6 months    ki1135781-COHORTS          2                    1                 0.9508475   0.8173606   1.1061348
6 months    ki1135781-COHORTS          3+                   1                 1.3643589   1.2058957   1.5436453
9 months    ki1000304b-SAS-FoodSuppl   2                    1                 1.1029412   0.5921691   2.0542766
9 months    ki1000304b-SAS-FoodSuppl   3+                   1                 1.3797170   0.8342741   2.2817668
9 months    ki1017093b-PROVIDE         2                    1                 0.8995536   0.4750662   1.7033345
9 months    ki1017093b-PROVIDE         3+                   1                 0.7750000   0.3652663   1.6443481
9 months    ki1066203-TanzaniaChild2   2                    1                 1.1816871   0.6679443   2.0905702
9 months    ki1066203-TanzaniaChild2   3+                   1                 1.2476077   0.7018059   2.2178851
9 months    ki1101329-Keneba           2                    1                 0.6203136   0.2948401   1.3050767
9 months    ki1101329-Keneba           3+                   1                 2.0775174   1.3224257   3.2637586
9 months    ki1113344-GMS-Nepal        2                    1                 0.8605959   0.5954841   1.2437366
9 months    ki1113344-GMS-Nepal        3+                   1                 0.9391304   0.6879522   1.2820164
9 months    ki1126311-ZVITAMBO         2                    1                 0.9353967   0.7487996   1.1684927
9 months    ki1126311-ZVITAMBO         3+                   1                 1.0336699   0.8353840   1.2790208
9 months    ki1135781-COHORTS          2                    1                 1.0483333   0.9192009   1.1956068
9 months    ki1135781-COHORTS          3+                   1                 1.4560313   1.3066753   1.6224590
12 months   ki1017093b-PROVIDE         2                    1                 0.8027211   0.4679515   1.3769828
12 months   ki1017093b-PROVIDE         3+                   1                 0.5175439   0.2433798   1.1005499
12 months   ki1066203-TanzaniaChild2   2                    1                 0.6252101   0.3196106   1.2230123
12 months   ki1066203-TanzaniaChild2   3+                   1                 1.1009346   0.6207507   1.9525664
12 months   ki1101329-Keneba           2                    1                 0.6988636   0.4218744   1.1577153
12 months   ki1101329-Keneba           3+                   1                 1.4038779   1.0151735   1.9414150
12 months   ki1113344-GMS-Nepal        2                    1                 1.1586379   0.8162460   1.6446534
12 months   ki1113344-GMS-Nepal        3+                   1                 1.4117075   1.0503960   1.8973016
12 months   ki1126311-ZVITAMBO         2                    1                 0.9602453   0.7766508   1.1872400
12 months   ki1126311-ZVITAMBO         3+                   1                 1.0855997   0.8882199   1.3268411
12 months   ki1135781-COHORTS          2                    1                 1.0477608   0.9391696   1.1689078
12 months   ki1135781-COHORTS          3+                   1                 1.4415107   1.3183738   1.5761487
18 months   ki1017093b-PROVIDE         2                    1                 0.9144385   0.5649115   1.4802279
18 months   ki1017093b-PROVIDE         3+                   1                 0.7500000   0.4156182   1.3534056
18 months   ki1066203-TanzaniaChild2   2                    1                 1.0205447   0.6235860   1.6701970
18 months   ki1066203-TanzaniaChild2   3+                   1                 1.0458284   0.6249818   1.7500624
18 months   ki1101329-Keneba           2                    1                 0.8105601   0.5350860   1.2278543
18 months   ki1101329-Keneba           3+                   1                 1.4191841   1.0707512   1.8810004
18 months   ki1113344-GMS-Nepal        2                    1                 0.9635759   0.7712073   1.2039286
18 months   ki1113344-GMS-Nepal        3+                   1                 1.0547293   0.8747179   1.2717859
18 months   ki1126311-ZVITAMBO         2                    1                 0.8081224   0.6145757   1.0626221
18 months   ki1126311-ZVITAMBO         3+                   1                 1.1042967   0.8856833   1.3768704
18 months   ki1135781-COHORTS          2                    1                 1.1145146   1.0060487   1.2346747
18 months   ki1135781-COHORTS          3+                   1                 1.3122212   1.2072224   1.4263522
24 months   ki1017093b-PROVIDE         2                    1                 0.9129630   0.5365312   1.5535004
24 months   ki1017093b-PROVIDE         3+                   1                 0.9405405   0.5229863   1.6914717
24 months   ki1101329-Keneba           2                    1                 0.8213429   0.5607645   1.2030081
24 months   ki1101329-Keneba           3+                   1                 1.1535281   0.8856088   1.5024999
24 months   ki1113344-GMS-Nepal        2                    1                 1.2011396   0.9126383   1.5808414
24 months   ki1113344-GMS-Nepal        3+                   1                 1.1565729   0.9008628   1.4848662
24 months   ki1126311-ZVITAMBO         2                    1                 0.8666667   0.5644922   1.3305961
24 months   ki1126311-ZVITAMBO         3+                   1                 1.1725490   0.8426527   1.6315989
24 months   ki1135781-COHORTS          2                    1                 1.0657609   0.9851635   1.1529521
24 months   ki1135781-COHORTS          3+                   1                 1.3356098   1.2515769   1.4252848


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba           1                    NA                -0.0492592   -0.0968936   -0.0016248
Birth       ki1126311-ZVITAMBO         1                    NA                -0.0065063   -0.0225608    0.0095482
Birth       ki1135781-COHORTS          1                    NA                -0.0242921   -0.0407882   -0.0077960
3 months    ki1000304b-SAS-FoodSuppl   1                    NA                -0.0246679   -0.2599026    0.2105667
3 months    ki1066203-TanzaniaChild2   1                    NA                -0.0225875   -0.0628883    0.0177134
3 months    ki1101329-Keneba           1                    NA                -0.0625300   -0.1162108   -0.0088492
3 months    ki1113344-GMS-Nepal        1                    NA                -0.0580179   -0.1215055    0.0054697
3 months    ki1126311-ZVITAMBO         1                    NA                -0.0079888   -0.0334372    0.0174596
3 months    ki1135781-COHORTS          1                    NA                 0.0039285   -0.0145548    0.0224118
6 months    ki1000304b-SAS-FoodSuppl   1                    NA                 0.0949821   -0.1319718    0.3219359
6 months    ki1066203-TanzaniaChild2   1                    NA                 0.0147024   -0.0250762    0.0544810
6 months    ki1101329-Keneba           1                    NA                 0.0419263    0.0000694    0.0837832
6 months    ki1113344-GMS-Nepal        1                    NA                -0.0173905   -0.0840135    0.0492325
6 months    ki1126311-ZVITAMBO         1                    NA                 0.0041075   -0.0212857    0.0295007
6 months    ki1135781-COHORTS          1                    NA                 0.0359834    0.0156532    0.0563135
9 months    ki1000304b-SAS-FoodSuppl   1                    NA                 0.1372549   -0.1173705    0.3918803
9 months    ki1017093b-PROVIDE         1                    NA                -0.0238873   -0.1332099    0.0854353
9 months    ki1066203-TanzaniaChild2   1                    NA                 0.0176823   -0.0359527    0.0713173
9 months    ki1101329-Keneba           1                    NA                 0.0801758    0.0367191    0.1236326
9 months    ki1113344-GMS-Nepal        1                    NA                -0.0193469   -0.0920820    0.0533882
9 months    ki1126311-ZVITAMBO         1                    NA                -0.0017588   -0.0298444    0.0263268
9 months    ki1135781-COHORTS          1                    NA                 0.0639844    0.0409754    0.0869934
12 months   ki1017093b-PROVIDE         1                    NA                -0.0683505   -0.1913823    0.0546813
12 months   ki1066203-TanzaniaChild2   1                    NA                -0.0155760   -0.0804966    0.0493445
12 months   ki1101329-Keneba           1                    NA                 0.0565120   -0.0042026    0.1172267
12 months   ki1113344-GMS-Nepal        1                    NA                 0.0648746   -0.0057917    0.1355408
12 months   ki1126311-ZVITAMBO         1                    NA                 0.0035273   -0.0291120    0.0361667
12 months   ki1135781-COHORTS          1                    NA                 0.0849755    0.0589077    0.1110433
18 months   ki1017093b-PROVIDE         1                    NA                -0.0386131   -0.1702988    0.0930727
18 months   ki1066203-TanzaniaChild2   1                    NA                 0.0053526   -0.0857781    0.0964832
18 months   ki1101329-Keneba           1                    NA                 0.0797749    0.0113879    0.1481619
18 months   ki1113344-GMS-Nepal        1                    NA                 0.0083284   -0.0703947    0.0870516
18 months   ki1126311-ZVITAMBO         1                    NA                -0.0093685   -0.0863698    0.0676329
18 months   ki1135781-COHORTS          1                    NA                 0.1068482    0.0669828    0.1467135
24 months   ki1017093b-PROVIDE         1                    NA                -0.0159685   -0.1387240    0.1067870
24 months   ki1101329-Keneba           1                    NA                 0.0320934   -0.0451600    0.1093469
24 months   ki1113344-GMS-Nepal        1                    NA                 0.0498350   -0.0325261    0.1321960
24 months   ki1126311-ZVITAMBO         1                    NA                 0.0092838   -0.1261174    0.1446850
24 months   ki1135781-COHORTS          1                    NA                 0.0995136    0.0710200    0.1280073


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba           1                    NA                -0.9241025   -2.0621846   -0.2089965
Birth       ki1126311-ZVITAMBO         1                    NA                -0.0623337   -0.2278384    0.0808620
Birth       ki1135781-COHORTS          1                    NA                -0.2703523   -0.4678870   -0.0994001
3 months    ki1000304b-SAS-FoodSuppl   1                    NA                -0.0637255   -0.8833776    0.3992113
3 months    ki1066203-TanzaniaChild2   1                    NA                -0.3283873   -1.0653169    0.1455970
3 months    ki1101329-Keneba           1                    NA                -0.4611930   -0.9160813   -0.1142978
3 months    ki1113344-GMS-Nepal        1                    NA                -0.3943834   -0.9007800   -0.0228985
3 months    ki1126311-ZVITAMBO         1                    NA                -0.0464003   -0.2051627    0.0914474
3 months    ki1135781-COHORTS          1                    NA                 0.0257268   -0.1031546    0.1395511
6 months    ki1000304b-SAS-FoodSuppl   1                    NA                 0.1962963   -0.4399288    0.5514086
6 months    ki1066203-TanzaniaChild2   1                    NA                 0.1620533   -0.4139460    0.5034077
6 months    ki1101329-Keneba           1                    NA                 0.2997638   -0.0735243    0.5432514
6 months    ki1113344-GMS-Nepal        1                    NA                -0.0822760   -0.4481836    0.1911789
6 months    ki1126311-ZVITAMBO         1                    NA                 0.0251599   -0.1434772    0.1689268
6 months    ki1135781-COHORTS          1                    NA                 0.1654613    0.0665652    0.2538795
9 months    ki1000304b-SAS-FoodSuppl   1                    NA                 0.2046784   -0.2814084    0.5063740
9 months    ki1017093b-PROVIDE         1                    NA                -0.1020052   -0.6833822    0.2785860
9 months    ki1066203-TanzaniaChild2   1                    NA                 0.1217796   -0.3373988    0.4233051
9 months    ki1101329-Keneba           1                    NA                 0.4477172    0.1434203    0.6439138
9 months    ki1113344-GMS-Nepal        1                    NA                -0.0687750   -0.3613023    0.1608917
9 months    ki1126311-ZVITAMBO         1                    NA                -0.0090381   -0.1641946    0.1254402
9 months    ki1135781-COHORTS          1                    NA                 0.2164234    0.1346428    0.2904753
12 months   ki1017093b-PROVIDE         1                    NA                -0.2376733   -0.7499326    0.1246318
12 months   ki1066203-TanzaniaChild2   1                    NA                -0.1068944   -0.6556500    0.2599794
12 months   ki1101329-Keneba           1                    NA                 0.2245803   -0.0583636    0.4318817
12 months   ki1113344-GMS-Nepal        1                    NA                 0.1895288   -0.0454435    0.3716891
12 months   ki1126311-ZVITAMBO         1                    NA                 0.0148148   -0.1322653    0.1427894
12 months   ki1135781-COHORTS          1                    NA                 0.2118066    0.1441264    0.2741348
18 months   ki1017093b-PROVIDE         1                    NA                -0.1047009   -0.5263713    0.2004803
18 months   ki1066203-TanzaniaChild2   1                    NA                 0.0202918   -0.3939412    0.3114285
18 months   ki1101329-Keneba           1                    NA                 0.2407298    0.0036812    0.4213787
18 months   ki1113344-GMS-Nepal        1                    NA                 0.0156871   -0.1443428    0.1533378
18 months   ki1126311-ZVITAMBO         1                    NA                -0.0197109   -0.1953163    0.1300962
18 months   ki1135781-COHORTS          1                    NA                 0.1709571    0.1046956    0.2323146
24 months   ki1017093b-PROVIDE         1                    NA                -0.0485574   -0.4969229    0.2655116
24 months   ki1101329-Keneba           1                    NA                 0.0947652   -0.1646507    0.2963985
24 months   ki1113344-GMS-Nepal        1                    NA                 0.1115141   -0.0932632    0.2779349
24 months   ki1126311-ZVITAMBO         1                    NA                 0.0158371   -0.2444608    0.2216897
24 months   ki1135781-COHORTS          1                    NA                 0.1738270    0.1225567    0.2221016


