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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/b6562085-d9c3-4cc0-9d91-879c9259216b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b6562085-d9c3-4cc0-9d91-879c9259216b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/b6562085-d9c3-4cc0-9d91-879c9259216b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b6562085-d9c3-4cc0-9d91-879c9259216b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          0     1498   1317   1148    169
Birth       ki0047075b-MAL-ED          1     1498    181    152     29
Birth       ki1066203-TanzaniaChild2   0        0      0      0      0
Birth       ki1066203-TanzaniaChild2   1        0      0      0      0
Birth       ki1112895-Guatemala BSC    0        0      0      0      0
Birth       ki1112895-Guatemala BSC    1        0      0      0      0
Birth       ki1126311-ZVITAMBO         0     3427   3219   2889    330
Birth       ki1126311-ZVITAMBO         1     3427    208    181     27
Birth       ki1135781-COHORTS          0     8151   8041   7284    757
Birth       ki1135781-COHORTS          1     8151    110    103      7
3 months    ki0047075b-MAL-ED          0     1776   1577   1351    226
3 months    ki0047075b-MAL-ED          1     1776    199    151     48
3 months    ki1066203-TanzaniaChild2   0      569    511    480     31
3 months    ki1066203-TanzaniaChild2   1      569     58     50      8
3 months    ki1112895-Guatemala BSC    0        4      4      2      2
3 months    ki1112895-Guatemala BSC    1        4      0      0      0
3 months    ki1126311-ZVITAMBO         0     2262   2117   1757    360
3 months    ki1126311-ZVITAMBO         1     2262    145    115     30
3 months    ki1135781-COHORTS          0     8360   8243   7004   1239
3 months    ki1135781-COHORTS          1     8360    117     85     32
6 months    ki0047075b-MAL-ED          0     1694   1509   1281    228
6 months    ki0047075b-MAL-ED          1     1694    185    138     47
6 months    ki1066203-TanzaniaChild2   0      499    451    414     37
6 months    ki1066203-TanzaniaChild2   1      499     48     40      8
6 months    ki1112895-Guatemala BSC    0       90     84     60     24
6 months    ki1112895-Guatemala BSC    1       90      6      4      2
6 months    ki1126311-ZVITAMBO         0     2041   1926   1617    309
6 months    ki1126311-ZVITAMBO         1     2041    115     90     25
6 months    ki1135781-COHORTS          0     8075   7959   6265   1694
6 months    ki1135781-COHORTS          1     8075    116     78     38
9 months    ki0047075b-MAL-ED          0     1638   1459   1170    289
9 months    ki0047075b-MAL-ED          1     1638    179    130     49
9 months    ki1066203-TanzaniaChild2   0      432    392    334     58
9 months    ki1066203-TanzaniaChild2   1      432     40     35      5
9 months    ki1112895-Guatemala BSC    0       60     57     38     19
9 months    ki1112895-Guatemala BSC    1       60      3      0      3
9 months    ki1126311-ZVITAMBO         0     1954   1841   1493    348
9 months    ki1126311-ZVITAMBO         1     1954    113     81     32
9 months    ki1135781-COHORTS          0     7451   7335   5195   2140
9 months    ki1135781-COHORTS          1     7451    116     70     46
12 months   ki0047075b-MAL-ED          0     1614   1436   1048    388
12 months   ki0047075b-MAL-ED          1     1614    178    131     47
12 months   ki1066203-TanzaniaChild2   0      356    318    273     45
12 months   ki1066203-TanzaniaChild2   1      356     38     31      7
12 months   ki1112895-Guatemala BSC    0       53     50     30     20
12 months   ki1112895-Guatemala BSC    1       53      3      0      3
12 months   ki1126311-ZVITAMBO         0     1695   1600   1223    377
12 months   ki1126311-ZVITAMBO         1     1695     95     68     27
12 months   ki1135781-COHORTS          0     6924   6805   4127   2678
12 months   ki1135781-COHORTS          1     6924    119     55     64
18 months   ki0047075b-MAL-ED          0     1544   1377    844    533
18 months   ki0047075b-MAL-ED          1     1544    167    103     64
18 months   ki1066203-TanzaniaChild2   0      257    232    173     59
18 months   ki1066203-TanzaniaChild2   1      257     25     16      9
18 months   ki1112895-Guatemala BSC    0        0      0      0      0
18 months   ki1112895-Guatemala BSC    1        0      0      0      0
18 months   ki1126311-ZVITAMBO         0      423    397    210    187
18 months   ki1126311-ZVITAMBO         1      423     26     12     14
18 months   ki1135781-COHORTS          0     2872   2773   1042   1731
18 months   ki1135781-COHORTS          1     2872     99     35     64
24 months   ki0047075b-MAL-ED          0     1487   1328    826    502
24 months   ki0047075b-MAL-ED          1     1487    159    103     56
24 months   ki1066203-TanzaniaChild2   0        2      2      2      0
24 months   ki1066203-TanzaniaChild2   1        2      0      0      0
24 months   ki1112895-Guatemala BSC    0        0      0      0      0
24 months   ki1112895-Guatemala BSC    1        0      0      0      0
24 months   ki1126311-ZVITAMBO         0      116    103     44     59
24 months   ki1126311-ZVITAMBO         1      116     13      4      9
24 months   ki1135781-COHORTS          0     6658   6539   2865   3674
24 months   ki1135781-COHORTS          1     6658    119     35     84

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          0                    NA                0.1283219   0.1102532   0.1463907
Birth       ki0047075b-MAL-ED          1                    NA                0.1602210   0.1067650   0.2136769
Birth       ki1126311-ZVITAMBO         0                    NA                0.1025163   0.0920363   0.1129963
Birth       ki1126311-ZVITAMBO         1                    NA                0.1298077   0.0841265   0.1754889
Birth       ki1135781-COHORTS          0                    NA                0.0941425   0.0877593   0.1005258
Birth       ki1135781-COHORTS          1                    NA                0.0636364   0.0180166   0.1092562
3 months    ki0047075b-MAL-ED          0                    NA                0.1433101   0.1260117   0.1606084
3 months    ki0047075b-MAL-ED          1                    NA                0.2412060   0.1817495   0.3006626
3 months    ki1066203-TanzaniaChild2   0                    NA                0.0606654   0.0399496   0.0813811
3 months    ki1066203-TanzaniaChild2   1                    NA                0.1379310   0.0491095   0.2267525
3 months    ki1126311-ZVITAMBO         0                    NA                0.1700520   0.1540453   0.1860586
3 months    ki1126311-ZVITAMBO         1                    NA                0.2068966   0.1409485   0.2728446
3 months    ki1135781-COHORTS          0                    NA                0.1503094   0.1425940   0.1580247
3 months    ki1135781-COHORTS          1                    NA                0.2735043   0.1927288   0.3542798
6 months    ki0047075b-MAL-ED          0                    NA                0.1510934   0.1330182   0.1691687
6 months    ki0047075b-MAL-ED          1                    NA                0.2540541   0.1913050   0.3168031
6 months    ki1066203-TanzaniaChild2   0                    NA                0.0820399   0.0566875   0.1073924
6 months    ki1066203-TanzaniaChild2   1                    NA                0.1666667   0.0611316   0.2722017
6 months    ki1126311-ZVITAMBO         0                    NA                0.1604361   0.1440414   0.1768309
6 months    ki1126311-ZVITAMBO         1                    NA                0.2173913   0.1419865   0.2927961
6 months    ki1135781-COHORTS          0                    NA                0.2128408   0.2038478   0.2218338
6 months    ki1135781-COHORTS          1                    NA                0.3275862   0.2421726   0.4129998
9 months    ki0047075b-MAL-ED          0                    NA                0.1980809   0.1776240   0.2185378
9 months    ki0047075b-MAL-ED          1                    NA                0.2737430   0.2084043   0.3390818
9 months    ki1066203-TanzaniaChild2   0                    NA                0.1479592   0.1127700   0.1831484
9 months    ki1066203-TanzaniaChild2   1                    NA                0.1250000   0.0223922   0.2276078
9 months    ki1126311-ZVITAMBO         0                    NA                0.1890277   0.1711382   0.2069172
9 months    ki1126311-ZVITAMBO         1                    NA                0.2831858   0.2000939   0.3662778
9 months    ki1135781-COHORTS          0                    NA                0.2917519   0.2813484   0.3021553
9 months    ki1135781-COHORTS          1                    NA                0.3965517   0.3075255   0.4855780
12 months   ki0047075b-MAL-ED          0                    NA                0.2701950   0.2472204   0.2931696
12 months   ki0047075b-MAL-ED          1                    NA                0.2640449   0.1992655   0.3288244
12 months   ki1066203-TanzaniaChild2   0                    NA                0.1415094   0.1031470   0.1798718
12 months   ki1066203-TanzaniaChild2   1                    NA                0.1842105   0.0607826   0.3076384
12 months   ki1126311-ZVITAMBO         0                    NA                0.2356250   0.2148242   0.2564258
12 months   ki1126311-ZVITAMBO         1                    NA                0.2842105   0.1934855   0.3749356
12 months   ki1135781-COHORTS          0                    NA                0.3935342   0.3819261   0.4051422
12 months   ki1135781-COHORTS          1                    NA                0.5378151   0.4482311   0.6273991
18 months   ki0047075b-MAL-ED          0                    NA                0.3870733   0.3613384   0.4128083
18 months   ki0047075b-MAL-ED          1                    NA                0.3832335   0.3094732   0.4569938
18 months   ki1066203-TanzaniaChild2   0                    NA                0.2543103   0.1981653   0.3104554
18 months   ki1066203-TanzaniaChild2   1                    NA                0.3600000   0.1714763   0.5485237
18 months   ki1126311-ZVITAMBO         0                    NA                0.4710327   0.4218733   0.5201922
18 months   ki1126311-ZVITAMBO         1                    NA                0.5384615   0.3466138   0.7303093
18 months   ki1135781-COHORTS          0                    NA                0.6242337   0.6062043   0.6422631
18 months   ki1135781-COHORTS          1                    NA                0.6464646   0.5522768   0.7406525
24 months   ki0047075b-MAL-ED          0                    NA                0.3780120   0.3519242   0.4040999
24 months   ki0047075b-MAL-ED          1                    NA                0.3522013   0.2779317   0.4264709
24 months   ki1135781-COHORTS          0                    NA                0.5618596   0.5498329   0.5738863
24 months   ki1135781-COHORTS          1                    NA                0.7058824   0.6240106   0.7877541


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NA                   NA                0.1321762   0.1316496   0.1327029
Birth       ki1126311-ZVITAMBO         NA                   NA                0.1041727   0.1039545   0.1043909
Birth       ki1135781-COHORTS          NA                   NA                0.0937308   0.0936544   0.0938072
3 months    ki0047075b-MAL-ED          NA                   NA                0.1542793   0.1528428   0.1557158
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0685413   0.0666188   0.0704638
3 months    ki1126311-ZVITAMBO         NA                   NA                0.1724138   0.1720418   0.1727858
3 months    ki1135781-COHORTS          NA                   NA                0.1520335   0.1517233   0.1523437
6 months    ki0047075b-MAL-ED          NA                   NA                0.1623377   0.1608080   0.1638674
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.0901804   0.0879888   0.0923719
6 months    ki1126311-ZVITAMBO         NA                   NA                0.1636453   0.1630754   0.1642152
6 months    ki1135781-COHORTS          NA                   NA                0.2144892   0.2141913   0.2147870
9 months    ki0047075b-MAL-ED          NA                   NA                0.2063492   0.2052057   0.2074927
9 months    ki1066203-TanzaniaChild2   NA                   NA                0.1458333   0.1452051   0.1464616
9 months    ki1126311-ZVITAMBO         NA                   NA                0.1944729   0.1934981   0.1954476
9 months    ki1135781-COHORTS          NA                   NA                0.2933834   0.2930888   0.2936780
12 months   ki0047075b-MAL-ED          NA                   NA                0.2695167   0.2694227   0.2696107
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.1460674   0.1446958   0.1474390
12 months   ki1126311-ZVITAMBO         NA                   NA                0.2383481   0.2378159   0.2388803
12 months   ki1135781-COHORTS          NA                   NA                0.3960139   0.3955722   0.3964556
18 months   ki0047075b-MAL-ED          NA                   NA                0.3866580   0.3865985   0.3867175
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.2645914   0.2607549   0.2684280
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4751773   0.4736321   0.4767225
18 months   ki1135781-COHORTS          NA                   NA                0.6250000   0.6248516   0.6251484
24 months   ki0047075b-MAL-ED          NA                   NA                0.3752522   0.3748467   0.3756577
24 months   ki1135781-COHORTS          NA                   NA                0.5644338   0.5639754   0.5648921


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          1                    0                 1.2485861   0.8692511   1.793460
Birth       ki1126311-ZVITAMBO         1                    0                 1.2662150   0.8777182   1.826669
Birth       ki1135781-COHORTS          1                    0                 0.6759577   0.3289970   1.388824
3 months    ki0047075b-MAL-ED          1                    0                 1.6831058   1.2791252   2.214674
3 months    ki1066203-TanzaniaChild2   1                    0                 2.2736374   1.0969003   4.712759
3 months    ki1126311-ZVITAMBO         1                    0                 1.2166667   0.8726318   1.696337
3 months    ki1135781-COHORTS          1                    0                 1.8196091   1.3483193   2.455633
6 months    ki0047075b-MAL-ED          1                    0                 1.6814367   1.2778914   2.212417
6 months    ki1066203-TanzaniaChild2   1                    0                 2.0315315   1.0042050   4.109839
6 months    ki1126311-ZVITAMBO         1                    0                 1.3550021   0.9438399   1.945278
6 months    ki1135781-COHORTS          1                    0                 1.5391137   1.1818360   2.004399
9 months    ki0047075b-MAL-ED          1                    0                 1.3819760   1.0654989   1.792454
9 months    ki1066203-TanzaniaChild2   1                    0                 0.8448276   0.3594269   1.985755
9 months    ki1126311-ZVITAMBO         1                    0                 1.4981182   1.1006559   2.039110
9 months    ki1135781-COHORTS          1                    0                 1.3592088   1.0828403   1.706114
12 months   ki0047075b-MAL-ED          1                    0                 0.9772385   0.7537634   1.266969
12 months   ki1066203-TanzaniaChild2   1                    0                 1.3017544   0.6318592   2.681870
12 months   ki1126311-ZVITAMBO         1                    0                 1.2061985   0.8661251   1.679798
12 months   ki1135781-COHORTS          1                    0                 1.3666288   1.1539435   1.618515
18 months   ki0047075b-MAL-ED          1                    0                 0.9900799   0.8076732   1.213682
18 months   ki1066203-TanzaniaChild2   1                    0                 1.4155932   0.8019064   2.498925
18 months   ki1126311-ZVITAMBO         1                    0                 1.1431510   0.7886196   1.657065
18 months   ki1135781-COHORTS          1                    0                 1.0356132   0.8926700   1.201446
24 months   ki0047075b-MAL-ED          1                    0                 0.9317197   0.7463192   1.163177
24 months   ki1135781-COHORTS          1                    0                 1.2563323   1.1165605   1.413601


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          0                    NA                 0.0038543   -0.0142222   0.0219307
Birth       ki1126311-ZVITAMBO         0                    NA                 0.0016564   -0.0088258   0.0121387
Birth       ki1135781-COHORTS          0                    NA                -0.0004117   -0.0067954   0.0059720
3 months    ki0047075b-MAL-ED          0                    NA                 0.0109692   -0.0063887   0.0283271
3 months    ki1066203-TanzaniaChild2   0                    NA                 0.0078759   -0.0129288   0.0286807
3 months    ki1126311-ZVITAMBO         0                    NA                 0.0023618   -0.0136491   0.0183728
3 months    ki1135781-COHORTS          0                    NA                 0.0017241   -0.0059974   0.0094457
6 months    ki0047075b-MAL-ED          0                    NA                 0.0112442   -0.0068956   0.0293841
6 months    ki1066203-TanzaniaChild2   0                    NA                 0.0081404   -0.0173065   0.0335874
6 months    ki1126311-ZVITAMBO         0                    NA                 0.0032091   -0.0131955   0.0196138
6 months    ki1135781-COHORTS          0                    NA                 0.0016484   -0.0073496   0.0106463
9 months    ki0047075b-MAL-ED          0                    NA                 0.0082683   -0.0122205   0.0287572
9 months    ki1066203-TanzaniaChild2   0                    NA                -0.0021259   -0.0373207   0.0330690
9 months    ki1126311-ZVITAMBO         0                    NA                 0.0054452   -0.0124709   0.0233612
9 months    ki1135781-COHORTS          0                    NA                 0.0016316   -0.0087760   0.0120392
12 months   ki0047075b-MAL-ED          0                    NA                -0.0006783   -0.0236530   0.0222965
12 months   ki1066203-TanzaniaChild2   0                    NA                 0.0045580   -0.0338289   0.0429449
12 months   ki1126311-ZVITAMBO         0                    NA                 0.0027231   -0.0180845   0.0235307
12 months   ki1135781-COHORTS          0                    NA                 0.0024797   -0.0091368   0.0140962
18 months   ki0047075b-MAL-ED          0                    NA                -0.0004153   -0.0261503   0.0253197
18 months   ki1066203-TanzaniaChild2   0                    NA                 0.0102811   -0.0459949   0.0665571
18 months   ki1126311-ZVITAMBO         0                    NA                 0.0041446   -0.0450391   0.0533283
18 months   ki1135781-COHORTS          0                    NA                 0.0007663   -0.0172637   0.0187963
24 months   ki0047075b-MAL-ED          0                    NA                -0.0027599   -0.0288509   0.0233312
24 months   ki1135781-COHORTS          0                    NA                 0.0025742   -0.0094613   0.0146096


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          0                    NA                 0.0291602   -0.1176974   0.1567218
Birth       ki1126311-ZVITAMBO         0                    NA                 0.0159009   -0.0900465   0.1115506
Birth       ki1135781-COHORTS          0                    NA                -0.0043922   -0.0748614   0.0614569
3 months    ki0047075b-MAL-ED          0                    NA                 0.0710996   -0.0484476   0.1770157
3 months    ki1066203-TanzaniaChild2   0                    NA                 0.1149079   -0.2467770   0.3716695
3 months    ki1126311-ZVITAMBO         0                    NA                 0.0136986   -0.0836763   0.1023239
3 months    ki1135781-COHORTS          0                    NA                 0.0113405   -0.0407743   0.0608458
6 months    ki0047075b-MAL-ED          0                    NA                 0.0692644   -0.0494016   0.1745117
6 months    ki1066203-TanzaniaChild2   0                    NA                 0.0902685   -0.2403257   0.3327468
6 months    ki1126311-ZVITAMBO         0                    NA                 0.0196103   -0.0859365   0.1148985
6 months    ki1135781-COHORTS          0                    NA                 0.0076850   -0.0351645   0.0487608
9 months    ki0047075b-MAL-ED          0                    NA                 0.0400696   -0.0645259   0.1343880
9 months    ki1066203-TanzaniaChild2   0                    NA                -0.0145773   -0.2870355   0.2002031
9 months    ki1126311-ZVITAMBO         0                    NA                 0.0279997   -0.0686253   0.1158878
9 months    ki1135781-COHORTS          0                    NA                 0.0055612   -0.0305534   0.0404102
12 months   ki0047075b-MAL-ED          0                    NA                -0.0025166   -0.0914900   0.0792041
12 months   ki1066203-TanzaniaChild2   0                    NA                 0.0312046   -0.2706836   0.2613705
12 months   ki1126311-ZVITAMBO         0                    NA                 0.0114248   -0.0798444   0.0949799
12 months   ki1135781-COHORTS          0                    NA                 0.0062616   -0.0235088   0.0351662
18 months   ki0047075b-MAL-ED          0                    NA                -0.0010741   -0.0698940   0.0633190
18 months   ki1066203-TanzaniaChild2   0                    NA                 0.0388565   -0.1991560   0.2296275
18 months   ki1126311-ZVITAMBO         0                    NA                 0.0087221   -0.1003798   0.1070067
18 months   ki1135781-COHORTS          0                    NA                 0.0012261   -0.0280426   0.0296615
24 months   ki0047075b-MAL-ED          0                    NA                -0.0073547   -0.0793399   0.0598295
24 months   ki1135781-COHORTS          0                    NA                 0.0045606   -0.0169923   0.0256567


