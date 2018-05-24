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
      strata: ['study_id']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
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

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1148112-LCNI-5
* NA
* NA
* agecat: 6 months, studyid: ki1148112-LCNI-5

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/c3ff6ba5-3e79-46e6-9e50-015ec02bef73/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c3ff6ba5-3e79-46e6-9e50-015ec02bef73/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/c3ff6ba5-3e79-46e6-9e50-015ec02bef73/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c3ff6ba5-3e79-46e6-9e50-015ec02bef73/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A           n     nA   nAY0   nAY1
----------  -------------------------  ------  -----  -----  -----  -----
12 months   ki1000304b-SAS-CompFeed    <=24      891    260    104    156
12 months   ki1000304b-SAS-CompFeed    >32       891     95     39     56
12 months   ki1000304b-SAS-CompFeed    24-28     891    362    165    197
12 months   ki1000304b-SAS-CompFeed    28-32     891    174     63    111
12 months   ki1000304b-SAS-FoodSuppl   <=24       99     18      2     16
12 months   ki1000304b-SAS-FoodSuppl   >32        99     28      3     25
12 months   ki1000304b-SAS-FoodSuppl   24-28      99     26      5     21
12 months   ki1000304b-SAS-FoodSuppl   28-32      99     27      5     22
12 months   ki1119695-PROBIT           <=24     7638   2555   2178    377
12 months   ki1119695-PROBIT           >32      7638   1243   1073    170
12 months   ki1119695-PROBIT           24-28    7638   2413   2073    340
12 months   ki1119695-PROBIT           28-32    7638   1427   1228    199
12 months   ki1135781-COHORTS          <=24     3211    814    414    400
12 months   ki1135781-COHORTS          >32      3211    950    430    520
12 months   ki1135781-COHORTS          24-28    3211    785    456    329
12 months   ki1135781-COHORTS          28-32    3211    662    350    312
12 months   ki1148112-LCNI-5           <=24       47      7      3      4
12 months   ki1148112-LCNI-5           >32        47     19     10      9
12 months   ki1148112-LCNI-5           24-28      47     11      7      4
12 months   ki1148112-LCNI-5           28-32      47     10      6      4
18 months   ki1000304b-SAS-CompFeed    <=24      860    256     78    178
18 months   ki1000304b-SAS-CompFeed    >32       860     90     24     66
18 months   ki1000304b-SAS-CompFeed    24-28     860    348    106    242
18 months   ki1000304b-SAS-CompFeed    28-32     860    166     39    127
18 months   ki1000304b-SAS-FoodSuppl   <=24       93     16      1     15
18 months   ki1000304b-SAS-FoodSuppl   >32        93     26      3     23
18 months   ki1000304b-SAS-FoodSuppl   24-28      93     28      3     25
18 months   ki1000304b-SAS-FoodSuppl   28-32      93     23      3     20
18 months   ki1119695-PROBIT           <=24     7201   2413   2027    386
18 months   ki1119695-PROBIT           >32      7201   1181   1006    175
18 months   ki1119695-PROBIT           24-28    7201   2271   1923    348
18 months   ki1119695-PROBIT           28-32    7201   1336   1145    191
18 months   ki1135781-COHORTS          <=24     2986    758    274    484
18 months   ki1135781-COHORTS          >32      2986    870    269    601
18 months   ki1135781-COHORTS          24-28    2986    740    298    442
18 months   ki1135781-COHORTS          28-32    2986    618    206    412
18 months   ki1148112-LCNI-5           <=24       39      6      2      4
18 months   ki1148112-LCNI-5           >32        39     15      7      8
18 months   ki1148112-LCNI-5           24-28      39      9      6      3
18 months   ki1148112-LCNI-5           28-32      39      9      6      3
24 months   ki1000304b-SAS-CompFeed    <=24       80     29      8     21
24 months   ki1000304b-SAS-CompFeed    >32        80      8      1      7
24 months   ki1000304b-SAS-CompFeed    24-28      80     33     11     22
24 months   ki1000304b-SAS-CompFeed    28-32      80     10      4      6
24 months   ki1000304b-SAS-FoodSuppl   <=24        9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   >32         9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   24-28       9      2      0      2
24 months   ki1000304b-SAS-FoodSuppl   28-32       9      5      1      4
24 months   ki1119695-PROBIT           <=24     1990    658    535    123
24 months   ki1119695-PROBIT           >32      1990    360    291     69
24 months   ki1119695-PROBIT           24-28    1990    603    464    139
24 months   ki1119695-PROBIT           28-32    1990    369    294     75
24 months   ki1135781-COHORTS          <=24     2941    757    171    586
24 months   ki1135781-COHORTS          >32      2941    848    165    683
24 months   ki1135781-COHORTS          24-28    2941    735    189    546
24 months   ki1135781-COHORTS          28-32    2941    601    132    469
24 months   ki1148112-LCNI-5           <=24       43      6      2      4
24 months   ki1148112-LCNI-5           >32        43     18      6     12
24 months   ki1148112-LCNI-5           24-28      43      9      6      3
24 months   ki1148112-LCNI-5           28-32      43     10      3      7
3 months    ki1000304b-SAS-CompFeed    <=24      975    281    179    102
3 months    ki1000304b-SAS-CompFeed    >32       975    109     74     35
3 months    ki1000304b-SAS-CompFeed    24-28     975    390    269    121
3 months    ki1000304b-SAS-CompFeed    28-32     975    195    131     64
3 months    ki1000304b-SAS-FoodSuppl   <=24        0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   >32         0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   24-28       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   28-32       0      0      0      0
3 months    ki1119695-PROBIT           <=24     7811   2620   2405    215
3 months    ki1119695-PROBIT           >32      7811   1269   1189     80
3 months    ki1119695-PROBIT           24-28    7811   2468   2295    173
3 months    ki1119695-PROBIT           28-32    7811   1454   1360     94
3 months    ki1135781-COHORTS          <=24     3441    886    740    146
3 months    ki1135781-COHORTS          >32      3441    988    798    190
3 months    ki1135781-COHORTS          24-28    3441    847    737    110
3 months    ki1135781-COHORTS          28-32    3441    720    603    117
3 months    ki1148112-LCNI-5           <=24        0      0      0      0
3 months    ki1148112-LCNI-5           >32         0      0      0      0
3 months    ki1148112-LCNI-5           24-28       0      0      0      0
3 months    ki1148112-LCNI-5           28-32       0      0      0      0
6 months    ki1000304b-SAS-CompFeed    <=24      805    224    127     97
6 months    ki1000304b-SAS-CompFeed    >32       805     89     51     38
6 months    ki1000304b-SAS-CompFeed    24-28     805    330    198    132
6 months    ki1000304b-SAS-CompFeed    28-32     805    162     88     74
6 months    ki1000304b-SAS-FoodSuppl   <=24      105     19      9     10
6 months    ki1000304b-SAS-FoodSuppl   >32       105     30     21      9
6 months    ki1000304b-SAS-FoodSuppl   24-28     105     30     20     10
6 months    ki1000304b-SAS-FoodSuppl   28-32     105     26     12     14
6 months    ki1119695-PROBIT           <=24     7513   2517   2238    279
6 months    ki1119695-PROBIT           >32      7513   1222   1108    114
6 months    ki1119695-PROBIT           24-28    7513   2371   2143    228
6 months    ki1119695-PROBIT           28-32    7513   1403   1262    141
6 months    ki1135781-COHORTS          <=24     2851    755    541    214
6 months    ki1135781-COHORTS          >32      2851    770    550    220
6 months    ki1135781-COHORTS          24-28    2851    728    571    157
6 months    ki1135781-COHORTS          28-32    2851    598    463    135
6 months    ki1148112-LCNI-5           <=24       18      2      1      1
6 months    ki1148112-LCNI-5           >32        18      9      6      3
6 months    ki1148112-LCNI-5           24-28      18      4      3      1
6 months    ki1148112-LCNI-5           28-32      18      3      2      1

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000304b-SAS-CompFeed    <=24                 NA                0.6000000   0.5404186   0.6595814
12 months   ki1000304b-SAS-CompFeed    >32                  NA                0.5894737   0.4904970   0.6884504
12 months   ki1000304b-SAS-CompFeed    24-28                NA                0.5441989   0.4928650   0.5955328
12 months   ki1000304b-SAS-CompFeed    28-32                NA                0.6379310   0.5664814   0.7093806
12 months   ki1119695-PROBIT           <=24                 NA                0.1475538   0.1338011   0.1613066
12 months   ki1119695-PROBIT           >32                  NA                0.1367659   0.1176632   0.1558686
12 months   ki1119695-PROBIT           24-28                NA                0.1409034   0.1270206   0.1547863
12 months   ki1119695-PROBIT           28-32                NA                0.1394534   0.1214785   0.1574283
12 months   ki1135781-COHORTS          <=24                 NA                0.4914005   0.4570519   0.5257491
12 months   ki1135781-COHORTS          >32                  NA                0.5473684   0.5157117   0.5790252
12 months   ki1135781-COHORTS          24-28                NA                0.4191083   0.3845866   0.4536299
12 months   ki1135781-COHORTS          28-32                NA                0.4712991   0.4332679   0.5093303
18 months   ki1000304b-SAS-CompFeed    <=24                 NA                0.6953125   0.6388970   0.7517280
18 months   ki1000304b-SAS-CompFeed    >32                  NA                0.7333333   0.6419189   0.8247477
18 months   ki1000304b-SAS-CompFeed    24-28                NA                0.6954023   0.6470193   0.7437853
18 months   ki1000304b-SAS-CompFeed    28-32                NA                0.7650602   0.7005286   0.8295919
18 months   ki1119695-PROBIT           <=24                 NA                0.1599668   0.1453396   0.1745941
18 months   ki1119695-PROBIT           >32                  NA                0.1481795   0.1279157   0.1684433
18 months   ki1119695-PROBIT           24-28                NA                0.1532365   0.1384204   0.1680525
18 months   ki1119695-PROBIT           28-32                NA                0.1429641   0.1241930   0.1617351
18 months   ki1135781-COHORTS          <=24                 NA                0.6385224   0.6043154   0.6727294
18 months   ki1135781-COHORTS          >32                  NA                0.6908046   0.6600893   0.7215199
18 months   ki1135781-COHORTS          24-28                NA                0.5972973   0.5619552   0.6326394
18 months   ki1135781-COHORTS          28-32                NA                0.6666667   0.6294943   0.7038390
24 months   ki1119695-PROBIT           <=24                 NA                0.1869301   0.1571348   0.2167254
24 months   ki1119695-PROBIT           >32                  NA                0.1916667   0.1509966   0.2323367
24 months   ki1119695-PROBIT           24-28                NA                0.2305141   0.1968902   0.2641380
24 months   ki1119695-PROBIT           28-32                NA                0.2032520   0.1621823   0.2443218
24 months   ki1135781-COHORTS          <=24                 NA                0.7741083   0.7443146   0.8039021
24 months   ki1135781-COHORTS          >32                  NA                0.8054245   0.7787756   0.8320735
24 months   ki1135781-COHORTS          24-28                NA                0.7428571   0.7112549   0.7744594
24 months   ki1135781-COHORTS          28-32                NA                0.7803661   0.7472618   0.8134703
3 months    ki1000304b-SAS-CompFeed    <=24                 NA                0.3629893   0.3067373   0.4192413
3 months    ki1000304b-SAS-CompFeed    >32                  NA                0.3211009   0.2334047   0.4087972
3 months    ki1000304b-SAS-CompFeed    24-28                NA                0.3102564   0.2643215   0.3561913
3 months    ki1000304b-SAS-CompFeed    28-32                NA                0.3282051   0.2622658   0.3941445
3 months    ki1119695-PROBIT           <=24                 NA                0.0820611   0.0715511   0.0925710
3 months    ki1119695-PROBIT           >32                  NA                0.0630418   0.0496691   0.0764145
3 months    ki1119695-PROBIT           24-28                NA                0.0700972   0.0600239   0.0801706
3 months    ki1119695-PROBIT           28-32                NA                0.0646492   0.0520088   0.0772897
3 months    ki1135781-COHORTS          <=24                 NA                0.1647856   0.1403539   0.1892172
3 months    ki1135781-COHORTS          >32                  NA                0.1923077   0.1677293   0.2168861
3 months    ki1135781-COHORTS          24-28                NA                0.1298701   0.1072281   0.1525122
3 months    ki1135781-COHORTS          28-32                NA                0.1625000   0.1355497   0.1894503
6 months    ki1000304b-SAS-CompFeed    <=24                 NA                0.4330357   0.3681075   0.4979640
6 months    ki1000304b-SAS-CompFeed    >32                  NA                0.4269663   0.3241386   0.5297939
6 months    ki1000304b-SAS-CompFeed    24-28                NA                0.4000000   0.3471108   0.4528892
6 months    ki1000304b-SAS-CompFeed    28-32                NA                0.4567901   0.3800358   0.5335444
6 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                0.5263158   0.3007273   0.7519043
6 months    ki1000304b-SAS-FoodSuppl   >32                  NA                0.3000000   0.1352312   0.4647688
6 months    ki1000304b-SAS-FoodSuppl   24-28                NA                0.3333333   0.1638374   0.5028292
6 months    ki1000304b-SAS-FoodSuppl   28-32                NA                0.5384615   0.3459217   0.7310014
6 months    ki1119695-PROBIT           <=24                 NA                0.1108462   0.0985808   0.1231117
6 months    ki1119695-PROBIT           >32                  NA                0.0932897   0.0769820   0.1095974
6 months    ki1119695-PROBIT           24-28                NA                0.0961620   0.0842945   0.1080294
6 months    ki1119695-PROBIT           28-32                NA                0.1004989   0.0847653   0.1162326
6 months    ki1135781-COHORTS          <=24                 NA                0.2834437   0.2512916   0.3155958
6 months    ki1135781-COHORTS          >32                  NA                0.2857143   0.2538003   0.3176283
6 months    ki1135781-COHORTS          24-28                NA                0.2156593   0.1857783   0.2455403
6 months    ki1135781-COHORTS          28-32                NA                0.2257525   0.1922382   0.2592668


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000304b-SAS-CompFeed    NA                   NA                0.5836139   0.5812549   0.5859730
12 months   ki1119695-PROBIT           NA                   NA                0.1421838   0.1420932   0.1422745
12 months   ki1135781-COHORTS          NA                   NA                0.4861414   0.4844968   0.4877860
18 months   ki1000304b-SAS-CompFeed    NA                   NA                0.7127907   0.7109173   0.7146641
18 months   ki1119695-PROBIT           NA                   NA                0.1527566   0.1526128   0.1529003
18 months   ki1135781-COHORTS          NA                   NA                0.6493637   0.6480883   0.6506391
24 months   ki1119695-PROBIT           NA                   NA                0.2040201   0.2032134   0.2048268
24 months   ki1135781-COHORTS          NA                   NA                0.7766066   0.7757755   0.7774377
3 months    ki1000304b-SAS-CompFeed    NA                   NA                0.3302564   0.3288819   0.3316309
3 months    ki1119695-PROBIT           NA                   NA                0.0719498   0.0717806   0.0721190
3 months    ki1135781-COHORTS          NA                   NA                0.1636152   0.1628552   0.1643753
6 months    ki1000304b-SAS-CompFeed    NA                   NA                0.4236025   0.4220944   0.4251106
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4095238   0.3887613   0.4302864
6 months    ki1119695-PROBIT           NA                   NA                0.1014242   0.1012653   0.1015831
6 months    ki1135781-COHORTS          NA                   NA                0.2546475   0.2534615   0.2558335


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ---------  ----------  ---------
12 months   ki1000304b-SAS-CompFeed    >32                  <=24              2.671009   2.1976369   3.246345
12 months   ki1000304b-SAS-CompFeed    24-28                <=24              2.476876   2.1598413   2.840447
12 months   ki1000304b-SAS-CompFeed    28-32                <=24              2.895675   2.4931176   3.363233
12 months   ki1119695-PROBIT           >32                  <=24              2.526635   2.1360778   2.988600
12 months   ki1119695-PROBIT           24-28                <=24              2.598486   2.2689143   2.975931
12 months   ki1119695-PROBIT           28-32                <=24              2.573076   2.1946849   3.016706
12 months   ki1135781-COHORTS          >32                  <=24              3.046200   2.7820032   3.335485
12 months   ki1135781-COHORTS          24-28                <=24              2.346407   2.1061353   2.614090
12 months   ki1135781-COHORTS          28-32                <=24              2.609330   2.3451151   2.903314
18 months   ki1000304b-SAS-CompFeed    >32                  <=24              2.871061   2.4742714   3.331482
18 months   ki1000304b-SAS-CompFeed    24-28                <=24              2.718633   2.4430477   3.025305
18 months   ki1000304b-SAS-CompFeed    28-32                <=24              3.005101   2.6731928   3.378221
18 months   ki1119695-PROBIT           >32                  <=24              2.525184   2.1421455   2.976713
18 months   ki1119695-PROBIT           24-28                <=24              2.606286   2.2815362   2.977261
18 months   ki1119695-PROBIT           28-32                <=24              2.444182   2.0827912   2.868279
18 months   ki1135781-COHORTS          >32                  <=24              2.950220   2.7518129   3.162933
18 months   ki1135781-COHORTS          24-28                <=24              2.548326   2.3528273   2.760069
18 months   ki1135781-COHORTS          28-32                <=24              2.840776   2.6293935   3.069151
24 months   ki1119695-PROBIT           >32                  <=24              2.788040   2.1381690   3.635431
24 months   ki1119695-PROBIT           24-28                <=24              3.432046   2.7651510   4.259783
24 months   ki1119695-PROBIT           28-32                <=24              2.966301   2.2932110   3.836953
24 months   ki1135781-COHORTS          >32                  <=24              2.830503   2.6904265   2.977873
24 months   ki1135781-COHORTS          24-28                <=24              2.610729   2.4651716   2.764881
24 months   ki1135781-COHORTS          28-32                <=24              2.740345   2.5877913   2.901892
3 months    ki1000304b-SAS-CompFeed    >32                  <=24              2.422019   1.7693056   3.315525
3 months    ki1000304b-SAS-CompFeed    24-28                <=24              2.350730   1.8972402   2.912616
3 months    ki1000304b-SAS-CompFeed    28-32                <=24              2.469888   1.9163864   3.183256
3 months    ki1119695-PROBIT           >32                  <=24              2.155947   1.6827674   2.762180
3 months    ki1119695-PROBIT           24-28                <=24              2.349514   1.9381104   2.848245
3 months    ki1119695-PROBIT           28-32                <=24              2.198595   1.7403434   2.777510
3 months    ki1135781-COHORTS          >32                  <=24              3.212399   2.6412994   3.906980
3 months    ki1135781-COHORTS          24-28                <=24              2.199249   1.7493669   2.764827
3 months    ki1135781-COHORTS          28-32                <=24              2.680840   2.1461424   3.348754
6 months    ki1000304b-SAS-CompFeed    >32                  <=24              2.680448   2.0183711   3.559703
6 months    ki1000304b-SAS-CompFeed    24-28                <=24              2.518620   2.0622571   3.075974
6 months    ki1000304b-SAS-CompFeed    28-32                <=24              2.871560   2.2925281   3.596841
6 months    ki1000304b-SAS-FoodSuppl   >32                  <=24              1.768267   0.8810133   3.549059
6 months    ki1000304b-SAS-FoodSuppl   24-28                <=24              1.883880   0.9687943   3.663319
6 months    ki1000304b-SAS-FoodSuppl   28-32                <=24              2.781741   1.5918390   4.861096
6 months    ki1119695-PROBIT           >32                  <=24              2.320107   1.8865090   2.853365
6 months    ki1119695-PROBIT           24-28                <=24              2.381012   2.0173232   2.810268
6 months    ki1119695-PROBIT           28-32                <=24              2.476018   2.0440622   2.999256
6 months    ki1135781-COHORTS          >32                  <=24              2.740145   2.3368715   3.213010
6 months    ki1135781-COHORTS          24-28                <=24              2.140104   1.7892326   2.559781
6 months    ki1135781-COHORTS          28-32                <=24              2.217684   1.8397521   2.673252


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki1000304b-SAS-CompFeed    <=24                 NA                -0.0163861   -0.0760142   0.0432420
12 months   ki1119695-PROBIT           <=24                 NA                -0.0053700   -0.0191231   0.0083831
12 months   ki1135781-COHORTS          <=24                 NA                -0.0052591   -0.0396471   0.0291289
18 months   ki1000304b-SAS-CompFeed    <=24                 NA                 0.0174782   -0.0389684   0.0739247
18 months   ki1119695-PROBIT           <=24                 NA                -0.0072103   -0.0218382   0.0074177
18 months   ki1135781-COHORTS          <=24                 NA                 0.0108413   -0.0233895   0.0450720
24 months   ki1119695-PROBIT           <=24                 NA                 0.0170900   -0.0127162   0.0468962
24 months   ki1135781-COHORTS          <=24                 NA                 0.0024983   -0.0273071   0.0323036
3 months    ki1000304b-SAS-CompFeed    <=24                 NA                -0.0327329   -0.0890017   0.0235359
3 months    ki1119695-PROBIT           <=24                 NA                -0.0101113   -0.0206226   0.0004001
3 months    ki1135781-COHORTS          <=24                 NA                -0.0011703   -0.0256138   0.0232732
6 months    ki1000304b-SAS-CompFeed    <=24                 NA                -0.0094332   -0.0743790   0.0555125
6 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                -0.1167920   -0.3433339   0.1097500
6 months    ki1119695-PROBIT           <=24                 NA                -0.0094220   -0.0216885   0.0028445
6 months    ki1135781-COHORTS          <=24                 NA                -0.0287962   -0.0609702   0.0033778


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000304b-SAS-CompFeed    <=24                 NA                0.6219353   0.5824309   0.6577023
12 months   ki1119695-PROBIT           <=24                 NA                0.6184855   0.5812157   0.6524385
12 months   ki1135781-COHORTS          <=24                 NA                0.6281623   0.6012085   0.6532943
18 months   ki1000304b-SAS-CompFeed    <=24                 NA                0.6412528   0.6109151   0.6692249
18 months   ki1119695-PROBIT           <=24                 NA                0.6151595   0.5783089   0.6487898
18 months   ki1135781-COHORTS          <=24                 NA                0.6383139   0.6183955   0.6571927
24 months   ki1119695-PROBIT           <=24                 NA                0.6642621   0.6062278   0.7137433
24 months   ki1135781-COHORTS          <=24                 NA                0.6333059   0.6189119   0.6471563
3 months    ki1000304b-SAS-CompFeed    <=24                 NA                0.5974049   0.5298951   0.6552200
3 months    ki1119695-PROBIT           <=24                 NA                0.5838809   0.5270130   0.6339115
3 months    ki1135781-COHORTS          <=24                 NA                0.6294985   0.5702544   0.6805754
6 months    ki1000304b-SAS-CompFeed    <=24                 NA                0.6240188   0.5631810   0.6763834
6 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                0.5407200   0.2928334   0.7017137
6 months    ki1119695-PROBIT           <=24                 NA                0.5994830   0.5526146   0.6414414
6 months    ki1135781-COHORTS          <=24                 NA                0.5927817   0.5438240   0.6364852


