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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** fhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country     A               n    nA   nAY0   nAY1
----------  -------------------------  ----------  ----------  -----  ----  -----  -----
Birth       ki1101329-Keneba           GAMBIA      [160-170)    1165   631    598     33
Birth       ki1101329-Keneba           GAMBIA      <160         1165    27     24      3
Birth       ki1101329-Keneba           GAMBIA      >=170        1165   507    485     22
Birth       ki1135781-COHORTS          GUATEMALA   [160-170)      91    53     51      2
Birth       ki1135781-COHORTS          GUATEMALA   <160           91    32     30      2
Birth       ki1135781-COHORTS          GUATEMALA   >=170          91     6      4      2
3 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      92    59     40     19
3 months    ki1000304b-SAS-FoodSuppl   INDIA       <160           92    22     11     11
3 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170          92    11      6      5
3 months    ki1101329-Keneba           GAMBIA      [160-170)    1562   859    719    140
3 months    ki1101329-Keneba           GAMBIA      <160         1562    36     30      6
3 months    ki1101329-Keneba           GAMBIA      >=170        1562   667    595     72
3 months    ki1135781-COHORTS          GUATEMALA   [160-170)     140    75     53     22
3 months    ki1135781-COHORTS          GUATEMALA   <160          140    53     25     28
3 months    ki1135781-COHORTS          GUATEMALA   >=170         140    12      7      5
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      94    60     33     27
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160           94    23      9     14
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170          94    11      5      6
6 months    ki1101329-Keneba           GAMBIA      [160-170)    1511   828    692    136
6 months    ki1101329-Keneba           GAMBIA      <160         1511    34     29      5
6 months    ki1101329-Keneba           GAMBIA      >=170        1511   649    581     68
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)     151    86     48     38
6 months    ki1135781-COHORTS          GUATEMALA   <160          151    54     20     34
6 months    ki1135781-COHORTS          GUATEMALA   >=170         151    11      6      5
9 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      84    54     18     36
9 months    ki1000304b-SAS-FoodSuppl   INDIA       <160           84    22      5     17
9 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170          84     8      4      4
9 months    ki1101329-Keneba           GAMBIA      [160-170)    1529   840    651    189
9 months    ki1101329-Keneba           GAMBIA      <160         1529    35     27      8
9 months    ki1101329-Keneba           GAMBIA      >=170        1529   654    583     71
9 months    ki1135781-COHORTS          GUATEMALA   [160-170)     164    87     30     57
9 months    ki1135781-COHORTS          GUATEMALA   <160          164    65     14     51
9 months    ki1135781-COHORTS          GUATEMALA   >=170         164    12      4      8
12 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      91    59     11     48
12 months   ki1000304b-SAS-FoodSuppl   INDIA       <160           91    23      5     18
12 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170          91     9      2      7
12 months   ki1101329-Keneba           GAMBIA      [160-170)    1448   805    552    253
12 months   ki1101329-Keneba           GAMBIA      <160         1448    32     24      8
12 months   ki1101329-Keneba           GAMBIA      >=170        1448   611    495    116
12 months   ki1135781-COHORTS          GUATEMALA   [160-170)     204   112     30     82
12 months   ki1135781-COHORTS          GUATEMALA   <160          204    78     13     65
12 months   ki1135781-COHORTS          GUATEMALA   >=170         204    14      3     11
18 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      83    54      6     48
18 months   ki1000304b-SAS-FoodSuppl   INDIA       <160           83    21      2     19
18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170          83     8      1      7
18 months   ki1101329-Keneba           GAMBIA      [160-170)    1445   823    486    337
18 months   ki1101329-Keneba           GAMBIA      <160         1445    30     16     14
18 months   ki1101329-Keneba           GAMBIA      >=170        1445   592    453    139
18 months   ki1135781-COHORTS          GUATEMALA   [160-170)     188   106     13     93
18 months   ki1135781-COHORTS          GUATEMALA   <160          188    68      9     59
18 months   ki1135781-COHORTS          GUATEMALA   >=170         188    14      4     10
24 months   ki1101329-Keneba           GAMBIA      [160-170)    1297   729    428    301
24 months   ki1101329-Keneba           GAMBIA      <160         1297    27     15     12
24 months   ki1101329-Keneba           GAMBIA      >=170        1297   541    405    136
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)     240   135     19    116
24 months   ki1135781-COHORTS          GUATEMALA   <160          240    89     12     77
24 months   ki1135781-COHORTS          GUATEMALA   >=170         240    16      5     11


The following strata were considered:

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/28fe9173-7ecf-4b9e-8888-9d894be8b2be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 11 rows containing missing values (geom_errorbar).
```

![](/tmp/28fe9173-7ecf-4b9e-8888-9d894be8b2be/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/28fe9173-7ecf-4b9e-8888-9d894be8b2be/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/28fe9173-7ecf-4b9e-8888-9d894be8b2be/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                0.3220339   0.2021530   0.4419148
3 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.5000000   0.2899223   0.7100777
3 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                0.4545455   0.1586809   0.7504100
3 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                0.1629802   0.1382729   0.1876875
3 months    ki1101329-Keneba           GAMBIA      <160                 NA                0.1666667   0.0448884   0.2884449
3 months    ki1101329-Keneba           GAMBIA      >=170                NA                0.1079460   0.0843889   0.1315032
3 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.2933333   0.1899234   0.3967432
3 months    ki1135781-COHORTS          GUATEMALA   <160                 NA                0.5283019   0.3934243   0.6631795
3 months    ki1135781-COHORTS          GUATEMALA   >=170                NA                0.4166667   0.1367254   0.6966079
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                0.4500000   0.3234441   0.5765559
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.6086957   0.4081727   0.8092186
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                0.5454545   0.2496246   0.8412845
6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                0.1642512   0.1390066   0.1894958
6 months    ki1101329-Keneba           GAMBIA      <160                 NA                0.1470588   0.0279737   0.2661439
6 months    ki1101329-Keneba           GAMBIA      >=170                NA                0.1047766   0.0812062   0.1283470
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.4418605   0.3365538   0.5471671
6 months    ki1135781-COHORTS          GUATEMALA   <160                 NA                0.6296296   0.5004022   0.7588571
6 months    ki1135781-COHORTS          GUATEMALA   >=170                NA                0.4545455   0.1593141   0.7497768
9 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                0.2250000   0.1967517   0.2532483
9 months    ki1101329-Keneba           GAMBIA      <160                 NA                0.2285714   0.0894113   0.3677316
9 months    ki1101329-Keneba           GAMBIA      >=170                NA                0.1085627   0.0847128   0.1324126
12 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.3142857   0.2822057   0.3463657
12 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.2500000   0.0999197   0.4000803
12 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.1898527   0.1587450   0.2209604
18 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.4094775   0.3758704   0.4430847
18 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.4666667   0.2880835   0.6452498
18 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.2347973   0.2006409   0.2689537
24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.4128944   0.3771400   0.4486488
24 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.4444444   0.2569423   0.6319466
24 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.2513863   0.2148170   0.2879556
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.8592593   0.8004752   0.9180434
24 months   ki1135781-COHORTS          GUATEMALA   <160                 NA                0.8651685   0.7940626   0.9362745
24 months   ki1135781-COHORTS          GUATEMALA   >=170                NA                0.6875000   0.4599085   0.9150915


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.3804348   0.3641754   0.3966941
3 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1395647   0.1382103   0.1409190
3 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.3928571   0.3744201   0.4112941
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.5000000   0.4860247   0.5139753
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1383190   0.1368455   0.1397925
6 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.5099338   0.4956325   0.5242351
9 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.1752780   0.1723858   0.1781701
12 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.2603591   0.2572179   0.2635003
18 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3391003   0.3345992   0.3436015
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.3461835   0.3418108   0.3505562
24 months   ki1135781-COHORTS          GUATEMALA   NA                   NA                0.8500000   0.8444826   0.8555174


### Parameter: RR


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
3 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         1.5526316   0.8856842   2.7218108
3 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         1.4114833   0.6668476   2.9876165
3 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)         1.0226190   0.4848755   2.1567386
3 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.6623260   0.5077753   0.8639169
3 months    ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         1.8010292   1.1654275   2.7832756
3 months    ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         1.4204545   0.6651417   3.0334757
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         1.3526570   0.8771494   2.0859399
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         1.2121212   0.6579913   2.2329139
6 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)         0.8953287   0.3926645   2.0414717
6 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.6379045   0.4857719   0.8376815
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         1.4249513   1.0404110   1.9516193
6 months    ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         1.0287081   0.5150200   2.0547561
9 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
9 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)         1.0158730   0.5455900   1.8915266
9 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.4825009   0.3746345   0.6214246
12 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         0.7954545   0.4326705   1.4624244
12 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.6040768   0.4980282   0.7327070
18 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         1.1396637   0.7705527   1.6855866
18 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.5734070   0.4852036   0.6776447
24 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         1.0764120   0.6997431   1.6558401
24 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.6088393   0.5140193   0.7211505
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         1.0068772   0.9047640   1.1205150
24 months   ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         0.8001078   0.5706118   1.1219054


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0584009   -0.0625776    0.1793794
3 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0234155   -0.0481600    0.0013289
3 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.0995238   -0.0055168    0.2045644
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0500000   -0.0773252    0.1773252
6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0259322   -0.0512198   -0.0006446
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.0680733   -0.0382000    0.1743466
9 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0497220   -0.0781180   -0.0213261
12 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0539266   -0.0861600   -0.0216932
18 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0703772   -0.1042844   -0.0364699
24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0667109   -0.1027317   -0.0306901
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0092593   -0.0683017    0.0497832


### Parameter: PAF


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.1535109   -0.2312738    0.4180467
3 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1677756   -0.3593521   -0.0031985
3 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.2533333   -0.0655673    0.4767941
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.1000000   -0.1939420    0.3215751
6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1874812   -0.3852746   -0.0179293
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.1334944   -0.1015114    0.3183621
9 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.2836754   -0.4569643   -0.1309971
12 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.2071239   -0.3377964   -0.0892151
18 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.2075409   -0.3122270   -0.1112063
24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1927038   -0.3017815   -0.0927658
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)            NA                -0.0108932   -0.0828042    0.0562419
