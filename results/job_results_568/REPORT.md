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

* agecat: Birth, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/d658214f-902a-4cce-adc1-d71ba72320e3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d658214f-902a-4cce-adc1-d71ba72320e3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/d658214f-902a-4cce-adc1-d71ba72320e3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d658214f-902a-4cce-adc1-d71ba72320e3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          0     1498   1317   1277     40
Birth       ki0047075b-MAL-ED          1     1498    181    175      6
Birth       ki1066203-TanzaniaChild2   0        0      0      0      0
Birth       ki1066203-TanzaniaChild2   1        0      0      0      0
Birth       ki1112895-Guatemala BSC    0        0      0      0      0
Birth       ki1112895-Guatemala BSC    1        0      0      0      0
Birth       ki1126311-ZVITAMBO         0     3427   3219   3121     98
Birth       ki1126311-ZVITAMBO         1     3427    208    196     12
Birth       ki1135781-COHORTS          0     8151   8041   7855    186
Birth       ki1135781-COHORTS          1     8151    110    108      2
3 months    ki0047075b-MAL-ED          0     1776   1577   1522     55
3 months    ki0047075b-MAL-ED          1     1776    199    190      9
3 months    ki1066203-TanzaniaChild2   0      569    511    502      9
3 months    ki1066203-TanzaniaChild2   1      569     58     57      1
3 months    ki1112895-Guatemala BSC    0        4      4      2      2
3 months    ki1112895-Guatemala BSC    1        4      0      0      0
3 months    ki1126311-ZVITAMBO         0     2262   2117   2012    105
3 months    ki1126311-ZVITAMBO         1     2262    145    136      9
3 months    ki1135781-COHORTS          0     8360   8243   7950    293
3 months    ki1135781-COHORTS          1     8360    117    108      9
6 months    ki0047075b-MAL-ED          0     1694   1509   1467     42
6 months    ki0047075b-MAL-ED          1     1694    185    177      8
6 months    ki1066203-TanzaniaChild2   0      499    451    446      5
6 months    ki1066203-TanzaniaChild2   1      499     48     46      2
6 months    ki1112895-Guatemala BSC    0       90     84     77      7
6 months    ki1112895-Guatemala BSC    1       90      6      5      1
6 months    ki1126311-ZVITAMBO         0     2041   1926   1864     62
6 months    ki1126311-ZVITAMBO         1     2041    115    105     10
6 months    ki1135781-COHORTS          0     8075   7959   7532    427
6 months    ki1135781-COHORTS          1     8075    116    104     12
9 months    ki0047075b-MAL-ED          0     1638   1459   1398     61
9 months    ki0047075b-MAL-ED          1     1638    179    168     11
9 months    ki1066203-TanzaniaChild2   0      432    392    385      7
9 months    ki1066203-TanzaniaChild2   1      432     40     40      0
9 months    ki1112895-Guatemala BSC    0       60     57     49      8
9 months    ki1112895-Guatemala BSC    1       60      3      2      1
9 months    ki1126311-ZVITAMBO         0     1954   1841   1763     78
9 months    ki1126311-ZVITAMBO         1     1954    113    104      9
9 months    ki1135781-COHORTS          0     7451   7335   6686    649
9 months    ki1135781-COHORTS          1     7451    116    103     13
12 months   ki0047075b-MAL-ED          0     1614   1436   1345     91
12 months   ki0047075b-MAL-ED          1     1614    178    167     11
12 months   ki1066203-TanzaniaChild2   0      356    318    312      6
12 months   ki1066203-TanzaniaChild2   1      356     38     37      1
12 months   ki1112895-Guatemala BSC    0       53     50     40     10
12 months   ki1112895-Guatemala BSC    1       53      3      2      1
12 months   ki1126311-ZVITAMBO         0     1695   1600   1505     95
12 months   ki1126311-ZVITAMBO         1     1695     95     86      9
12 months   ki1135781-COHORTS          0     6924   6805   5845    960
12 months   ki1135781-COHORTS          1     6924    119     91     28
18 months   ki0047075b-MAL-ED          0     1544   1377   1214    163
18 months   ki0047075b-MAL-ED          1     1544    167    145     22
18 months   ki1066203-TanzaniaChild2   0      257    232    220     12
18 months   ki1066203-TanzaniaChild2   1      257     25     22      3
18 months   ki1112895-Guatemala BSC    0        0      0      0      0
18 months   ki1112895-Guatemala BSC    1        0      0      0      0
18 months   ki1126311-ZVITAMBO         0      423    397    338     59
18 months   ki1126311-ZVITAMBO         1      423     26     18      8
18 months   ki1135781-COHORTS          0     2872   2773   1978    795
18 months   ki1135781-COHORTS          1     2872     99     66     33
24 months   ki0047075b-MAL-ED          0     1487   1328   1179    149
24 months   ki0047075b-MAL-ED          1     1487    159    136     23
24 months   ki1066203-TanzaniaChild2   0        2      2      2      0
24 months   ki1066203-TanzaniaChild2   1        2      0      0      0
24 months   ki1112895-Guatemala BSC    0        0      0      0      0
24 months   ki1112895-Guatemala BSC    1        0      0      0      0
24 months   ki1126311-ZVITAMBO         0      116    103     85     18
24 months   ki1126311-ZVITAMBO         1      116     13      9      4
24 months   ki1135781-COHORTS          0     6658   6539   4873   1666
24 months   ki1135781-COHORTS          1     6658    119     78     41

## Results Table

### Parameter: TSM


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED    0                    NA                0.0303721   0.0211008   0.0396433
Birth       ki0047075b-MAL-ED    1                    NA                0.0331492   0.0070594   0.0592389
Birth       ki1126311-ZVITAMBO   0                    NA                0.0304442   0.0245083   0.0363802
Birth       ki1126311-ZVITAMBO   1                    NA                0.0576923   0.0260014   0.0893832
3 months    ki0047075b-MAL-ED    0                    NA                0.0348763   0.0258188   0.0439339
3 months    ki0047075b-MAL-ED    1                    NA                0.0452261   0.0163467   0.0741056
3 months    ki1126311-ZVITAMBO   0                    NA                0.0495985   0.0403479   0.0588491
3 months    ki1126311-ZVITAMBO   1                    NA                0.0620690   0.0227879   0.1013500
3 months    ki1135781-COHORTS    0                    NA                0.0355453   0.0315480   0.0395426
3 months    ki1135781-COHORTS    1                    NA                0.0769231   0.0286363   0.1252099
6 months    ki0047075b-MAL-ED    0                    NA                0.0278330   0.0195310   0.0361350
6 months    ki0047075b-MAL-ED    1                    NA                0.0432432   0.0139242   0.0725623
6 months    ki1126311-ZVITAMBO   0                    NA                0.0321911   0.0243063   0.0400758
6 months    ki1126311-ZVITAMBO   1                    NA                0.0869565   0.0354452   0.1384678
6 months    ki1135781-COHORTS    0                    NA                0.0536500   0.0486994   0.0586005
6 months    ki1135781-COHORTS    1                    NA                0.1034483   0.0480246   0.1588719
9 months    ki0047075b-MAL-ED    0                    NA                0.0418095   0.0315360   0.0520829
9 months    ki0047075b-MAL-ED    1                    NA                0.0614525   0.0262599   0.0966452
9 months    ki1126311-ZVITAMBO   0                    NA                0.0423683   0.0331648   0.0515718
9 months    ki1126311-ZVITAMBO   1                    NA                0.0796460   0.0297140   0.1295781
9 months    ki1135781-COHORTS    0                    NA                0.0884799   0.0819804   0.0949794
9 months    ki1135781-COHORTS    1                    NA                0.1120690   0.0546599   0.1694780
12 months   ki0047075b-MAL-ED    0                    NA                0.0633705   0.0507658   0.0759752
12 months   ki0047075b-MAL-ED    1                    NA                0.0617978   0.0264137   0.0971818
12 months   ki1126311-ZVITAMBO   0                    NA                0.0593750   0.0477919   0.0709581
12 months   ki1126311-ZVITAMBO   1                    NA                0.0947368   0.0358306   0.1536431
12 months   ki1135781-COHORTS    0                    NA                0.1410727   0.1328016   0.1493439
12 months   ki1135781-COHORTS    1                    NA                0.2352941   0.1590759   0.3115123
18 months   ki0047075b-MAL-ED    0                    NA                0.1183733   0.1013049   0.1354416
18 months   ki0047075b-MAL-ED    1                    NA                0.1317365   0.0804257   0.1830474
18 months   ki1126311-ZVITAMBO   0                    NA                0.1486146   0.1135830   0.1836463
18 months   ki1126311-ZVITAMBO   1                    NA                0.3076923   0.1300758   0.4853088
18 months   ki1135781-COHORTS    0                    NA                0.2866931   0.2698588   0.3035274
18 months   ki1135781-COHORTS    1                    NA                0.3333333   0.2404581   0.4262086
24 months   ki0047075b-MAL-ED    0                    NA                0.1121988   0.0952184   0.1291792
24 months   ki0047075b-MAL-ED    1                    NA                0.1446541   0.0899611   0.1993471
24 months   ki1135781-COHORTS    0                    NA                0.2547790   0.2442169   0.2653411
24 months   ki1135781-COHORTS    1                    NA                0.3445378   0.2591493   0.4299263


### Parameter: E(Y)


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED    NA                   NA                0.0307076   0.0306618   0.0307535
Birth       ki1126311-ZVITAMBO   NA                   NA                0.0320980   0.0318802   0.0323159
3 months    ki0047075b-MAL-ED    NA                   NA                0.0360360   0.0358842   0.0361879
3 months    ki1126311-ZVITAMBO   NA                   NA                0.0503979   0.0502720   0.0505238
3 months    ki1135781-COHORTS    NA                   NA                0.0361244   0.0360202   0.0362286
6 months    ki0047075b-MAL-ED    NA                   NA                0.0295159   0.0292870   0.0297449
6 months    ki1126311-ZVITAMBO   NA                   NA                0.0352768   0.0347288   0.0358248
6 months    ki1135781-COHORTS    NA                   NA                0.0543653   0.0542361   0.0544946
9 months    ki0047075b-MAL-ED    NA                   NA                0.0439560   0.0436592   0.0442529
9 months    ki1126311-ZVITAMBO   NA                   NA                0.0445241   0.0441381   0.0449100
9 months    ki1135781-COHORTS    NA                   NA                0.0888471   0.0887808   0.0889134
12 months   ki0047075b-MAL-ED    NA                   NA                0.0631970   0.0631730   0.0632211
12 months   ki1126311-ZVITAMBO   NA                   NA                0.0613569   0.0609696   0.0617443
12 months   ki1135781-COHORTS    NA                   NA                0.1426921   0.1424036   0.1429805
18 months   ki0047075b-MAL-ED    NA                   NA                0.1198187   0.1196116   0.1200257
18 months   ki1126311-ZVITAMBO   NA                   NA                0.1583924   0.1547471   0.1620378
18 months   ki1135781-COHORTS    NA                   NA                0.2883008   0.2879896   0.2886121
24 months   ki0047075b-MAL-ED    NA                   NA                0.1156691   0.1151592   0.1161791
24 months   ki1135781-COHORTS    NA                   NA                0.2563833   0.2560976   0.2566690


### Parameter: RR


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED    1                    0                 1.0914365   0.4692261   2.538720
Birth       ki1126311-ZVITAMBO   1                    0                 1.8950157   1.0579574   3.394357
3 months    ki0047075b-MAL-ED    1                    0                 1.2967565   0.6508460   2.583680
3 months    ki1126311-ZVITAMBO   1                    0                 1.2514286   0.6469500   2.420702
3 months    ki1135781-COHORTS    1                    0                 2.1640851   1.1437082   4.094807
6 months    ki0047075b-MAL-ED    1                    0                 1.5536680   0.7407465   3.258718
6 months    ki1126311-ZVITAMBO   1                    0                 2.7012623   1.4229018   5.128125
6 months    ki1135781-COHORTS    1                    0                 1.9282080   1.1195654   3.320919
9 months    ki0047075b-MAL-ED    1                    0                 1.4698232   0.7881802   2.740973
9 months    ki1126311-ZVITAMBO   1                    0                 1.8798502   0.9682161   3.649843
9 months    ki1135781-COHORTS    1                    0                 1.2666038   0.7549026   2.125155
12 months   ki0047075b-MAL-ED    1                    0                 0.9751821   0.5319140   1.787846
12 months   ki1126311-ZVITAMBO   1                    0                 1.5955679   0.8315666   3.061495
12 months   ki1135781-COHORTS    1                    0                 1.6678922   1.2000582   2.318108
18 months   ki0047075b-MAL-ED    1                    0                 1.1128908   0.7346448   1.685884
18 months   ki1126311-ZVITAMBO   1                    0                 2.0704042   1.1098407   3.862332
18 months   ki1135781-COHORTS    1                    0                 1.1626834   0.8745768   1.545699
24 months   ki0047075b-MAL-ED    1                    0                 1.2892660   0.8579697   1.937372
24 months   ki1135781-COHORTS    1                    0                 1.3523006   1.0518274   1.738609


### Parameter: PAR


agecat      studyid              intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED    0                    NA                 0.0003356   -0.0089358   0.0096069
Birth       ki1126311-ZVITAMBO   0                    NA                 0.0016538   -0.0042861   0.0075937
3 months    ki0047075b-MAL-ED    0                    NA                 0.0011597   -0.0078992   0.0102185
3 months    ki1126311-ZVITAMBO   0                    NA                 0.0007994   -0.0084521   0.0100509
3 months    ki1135781-COHORTS    0                    NA                 0.0005791   -0.0034195   0.0045777
6 months    ki0047075b-MAL-ED    0                    NA                 0.0016829   -0.0066222   0.0099881
6 months    ki1126311-ZVITAMBO   0                    NA                 0.0030858   -0.0048180   0.0109895
6 months    ki1135781-COHORTS    0                    NA                 0.0007154   -0.0042369   0.0056676
9 months    ki0047075b-MAL-ED    0                    NA                 0.0021466   -0.0081312   0.0124243
9 months    ki1126311-ZVITAMBO   0                    NA                 0.0021558   -0.0070558   0.0113673
9 months    ki1135781-COHORTS    0                    NA                 0.0003672   -0.0061326   0.0068671
12 months   ki0047075b-MAL-ED    0                    NA                -0.0001734   -0.0127782   0.0124313
12 months   ki1126311-ZVITAMBO   0                    NA                 0.0019819   -0.0096077   0.0135715
12 months   ki1135781-COHORTS    0                    NA                 0.0016193   -0.0066568   0.0098955
18 months   ki0047075b-MAL-ED    0                    NA                 0.0014454   -0.0156242   0.0185150
18 months   ki1126311-ZVITAMBO   0                    NA                 0.0097778   -0.0254430   0.0449986
18 months   ki1135781-COHORTS    0                    NA                 0.0016077   -0.0152295   0.0184449
24 months   ki0047075b-MAL-ED    0                    NA                 0.0034703   -0.0135177   0.0204584
24 months   ki1135781-COHORTS    0                    NA                 0.0016043   -0.0089617   0.0121702


### Parameter: PAF


agecat      studyid              intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED    0                    NA                 0.0109273   -0.3421505   0.2711214
Birth       ki1126311-ZVITAMBO   0                    NA                 0.0515236   -0.1528041   0.2196355
3 months    ki0047075b-MAL-ED    0                    NA                 0.0321814   -0.2548660   0.2535673
3 months    ki1126311-ZVITAMBO   0                    NA                 0.0158616   -0.1859432   0.1833264
3 months    ki1135781-COHORTS    0                    NA                 0.0160305   -0.1011249   0.1207209
6 months    ki0047075b-MAL-ED    0                    NA                 0.0570179   -0.2708316   0.3002887
6 months    ki1126311-ZVITAMBO   0                    NA                 0.0874726   -0.1663642   0.2860667
6 months    ki1135781-COHORTS    0                    NA                 0.0131586   -0.0822696   0.1001724
9 months    ki0047075b-MAL-ED    0                    NA                 0.0488348   -0.2162179   0.2561241
9 months    ki1126311-ZVITAMBO   0                    NA                 0.0484182   -0.1826633   0.2343485
9 months    ki1135781-COHORTS    0                    NA                 0.0041334   -0.0717787   0.0746689
12 months   ki0047075b-MAL-ED    0                    NA                -0.0027446   -0.2234151   0.1781231
12 months   ki1126311-ZVITAMBO   0                    NA                 0.0323017   -0.1762738   0.2038928
12 months   ki1135781-COHORTS    0                    NA                 0.0113485   -0.0483859   0.0676794
18 months   ki0047075b-MAL-ED    0                    NA                 0.0120630   -0.1411821   0.1447295
18 months   ki1126311-ZVITAMBO   0                    NA                 0.0617316   -0.1890124   0.2595977
18 months   ki1135781-COHORTS    0                    NA                 0.0055765   -0.0545738   0.0622961
24 months   ki0047075b-MAL-ED    0                    NA                 0.0300023   -0.1285622   0.1662882
24 months   ki1135781-COHORTS    0                    NA                 0.0062574   -0.0358204   0.0466258


