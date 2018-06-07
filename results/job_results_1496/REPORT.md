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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A         n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ---  ------  -----  -----  -----
3 months    ki1000304b-SAS-CompFeed    INDIA                          1       470    142     91     51
3 months    ki1000304b-SAS-CompFeed    INDIA                          2       470    108     73     35
3 months    ki1000304b-SAS-CompFeed    INDIA                          3+      470    220    150     70
3 months    ki1017093b-PROVIDE         BANGLADESH                     1       700    271    220     51
3 months    ki1017093b-PROVIDE         BANGLADESH                     2       700    244    191     53
3 months    ki1017093b-PROVIDE         BANGLADESH                     3+      700    185    159     26
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2360    841    738    103
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2360    773    710     63
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     2360    746    670     76
3 months    ki1101329-Keneba           GAMBIA                         1      1809    233    156     77
3 months    ki1101329-Keneba           GAMBIA                         2      1809    197    158     39
3 months    ki1101329-Keneba           GAMBIA                         3+     1809   1379   1068    311
3 months    ki1113344-GMS-Nepal        NEPAL                          1       593    166    127     39
3 months    ki1113344-GMS-Nepal        NEPAL                          2       593    153    136     17
3 months    ki1113344-GMS-Nepal        NEPAL                          3+      593    274    236     38
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1     14030   6050   4765   1285
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2     14030   4199   3363    836
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+    14030   3781   2962    819
3 months    ki1135781-COHORTS          GUATEMALA                      1       514     80     63     17
3 months    ki1135781-COHORTS          GUATEMALA                      2       514     81     60     21
3 months    ki1135781-COHORTS          GUATEMALA                      3+      514    353    250    103
3 months    ki1135781-COHORTS          INDIA                          1      4473    765    599    166
3 months    ki1135781-COHORTS          INDIA                          2      4473   1144    973    171
3 months    ki1135781-COHORTS          INDIA                          3+     4473   2564   2050    514
3 months    ki1135781-COHORTS          PHILIPPINES                    1      3056    677    582     95
3 months    ki1135781-COHORTS          PHILIPPINES                    2      3056    689    598     91
3 months    ki1135781-COHORTS          PHILIPPINES                    3+     3056   1690   1434    256
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1     13352   5023   2693   2330
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2     13352   4449   2832   1617
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+    13352   3880   2440   1440
6 months    ki1000304b-SAS-CompFeed    INDIA                          1       367    110     65     45
6 months    ki1000304b-SAS-CompFeed    INDIA                          2       367     79     50     29
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+      367    178     94     84
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1       101     19     11      8
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2       101     21     13      8
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+      101     61     36     25
6 months    ki1017093b-PROVIDE         BANGLADESH                     1       640    241    174     67
6 months    ki1017093b-PROVIDE         BANGLADESH                     2       640    227    166     61
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+      640    172    137     35
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2204    768    602    166
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2204    732    591    141
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     2204    704    571    133
6 months    ki1101329-Keneba           GAMBIA                         1      1727    213    133     80
6 months    ki1101329-Keneba           GAMBIA                         2      1727    186    136     50
6 months    ki1101329-Keneba           GAMBIA                         3+     1727   1328    902    426
6 months    ki1113344-GMS-Nepal        NEPAL                          1       567    155    101     54
6 months    ki1113344-GMS-Nepal        NEPAL                          2       567    148    112     36
6 months    ki1113344-GMS-Nepal        NEPAL                          3+      567    264    192     72
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9101   3693   2569   1124
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      9101   2794   2017    777
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+     9101   2614   1834    780
6 months    ki1135781-COHORTS          GUATEMALA                      1       141     14     11      3
6 months    ki1135781-COHORTS          GUATEMALA                      2       141     32     22     10
6 months    ki1135781-COHORTS          GUATEMALA                      3+      141     95     57     38
6 months    ki1135781-COHORTS          PHILIPPINES                    1      2806    597    451    146
6 months    ki1135781-COHORTS          PHILIPPINES                    2      2806    633    491    142
6 months    ki1135781-COHORTS          PHILIPPINES                    3+     2806   1576   1163    413
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1      9594   3661   1874   1787
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2      9594   3204   1986   1218
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+     9594   2729   1652   1077
12 months   ki1000304b-SAS-CompFeed    INDIA                          1       425    130     58     72
12 months   ki1000304b-SAS-CompFeed    INDIA                          2       425     95     47     48
12 months   ki1000304b-SAS-CompFeed    INDIA                          3+      425    200     70    130
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        96     18      4     14
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        96     19      3     16
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+       96     59      8     51
12 months   ki1017093b-PROVIDE         BANGLADESH                     1       609    223    149     74
12 months   ki1017093b-PROVIDE         BANGLADESH                     2       609    224    145     79
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+      609    162    113     49
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1970    687    474    213
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1970    642    431    211
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     1970    641    439    202
12 months   ki1101329-Keneba           GAMBIA                         1      1788    209    120     89
12 months   ki1101329-Keneba           GAMBIA                         2      1788    182    120     62
12 months   ki1101329-Keneba           GAMBIA                         3+     1788   1397    781    616
12 months   ki1113344-GMS-Nepal        NEPAL                          1       582    161     85     76
12 months   ki1113344-GMS-Nepal        NEPAL                          2       582    150     90     60
12 months   ki1113344-GMS-Nepal        NEPAL                          3+      582    271    142    129
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1     10185   4177   2599   1578
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2     10185   3092   1953   1139
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+    10185   2916   1794   1122
12 months   ki1135781-COHORTS          GUATEMALA                      1       561     94     29     65
12 months   ki1135781-COHORTS          GUATEMALA                      2       561     87     31     56
12 months   ki1135781-COHORTS          GUATEMALA                      3+      561    380     95    285
12 months   ki1135781-COHORTS          INDIA                          1      4345    753    463    290
12 months   ki1135781-COHORTS          INDIA                          2      4345   1107    729    378
12 months   ki1135781-COHORTS          INDIA                          3+     4345   2485   1396   1089
12 months   ki1135781-COHORTS          PHILIPPINES                    1      2762    593    371    222
12 months   ki1135781-COHORTS          PHILIPPINES                    2      2762    616    369    247
12 months   ki1135781-COHORTS          PHILIPPINES                    3+     2762   1553    810    743
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1      8371   3252   1604   1648
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2      8371   2834   1668   1166
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+     8371   2285   1318    967
18 months   ki1000304b-SAS-CompFeed    INDIA                          1       416    129     47     82
18 months   ki1000304b-SAS-CompFeed    INDIA                          2       416     91     33     58
18 months   ki1000304b-SAS-CompFeed    INDIA                          3+      416    196     45    151
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        91     18      3     15
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        91     19      1     18
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+       91     54      6     48
18 months   ki1017093b-PROVIDE         BANGLADESH                     1       604    223    129     94
18 months   ki1017093b-PROVIDE         BANGLADESH                     2       604    222    126     96
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+      604    159     97     62
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1435    502    311    191
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1435    460    269    191
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     1435    473    274    199
18 months   ki1101329-Keneba           GAMBIA                         1      1740    191     92     99
18 months   ki1101329-Keneba           GAMBIA                         2      1740    174     96     78
18 months   ki1101329-Keneba           GAMBIA                         3+     1740   1375    643    732
18 months   ki1113344-GMS-Nepal        NEPAL                          1       574    163     61    102
18 months   ki1113344-GMS-Nepal        NEPAL                          2       574    146     60     86
18 months   ki1113344-GMS-Nepal        NEPAL                          3+      574    265     95    170
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      7283   2894   1486   1408
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      7283   2208   1132   1076
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+     7283   2181   1088   1093
18 months   ki1135781-COHORTS          GUATEMALA                      1       451     74     18     56
18 months   ki1135781-COHORTS          GUATEMALA                      2       451     69     15     54
18 months   ki1135781-COHORTS          GUATEMALA                      3+      451    308     44    264
18 months   ki1135781-COHORTS          PHILIPPINES                    1      2632    569    271    298
18 months   ki1135781-COHORTS          PHILIPPINES                    2      2632    567    240    327
18 months   ki1135781-COHORTS          PHILIPPINES                    3+     2632   1496    498    998
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1      7327   2767   1172   1595
18 months   kiGH5241-JiVitA-3          BANGLADESH                     2      7327   2527   1244   1283
18 months   kiGH5241-JiVitA-3          BANGLADESH                     3+     7327   2033    929   1104
24 months   ki1000304b-SAS-CompFeed    INDIA                          1        43     13      5      8
24 months   ki1000304b-SAS-CompFeed    INDIA                          2        43     17      5     12
24 months   ki1000304b-SAS-CompFeed    INDIA                          3+       43     13      3     10
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1         9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2         9      2      0      2
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+        9      6      1      5
24 months   ki1017093b-PROVIDE         BANGLADESH                     1       582    213    108    105
24 months   ki1017093b-PROVIDE         BANGLADESH                     2       582    217    111    106
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+      582    152     83     69
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       947    332    195    137
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2       947    303    166    137
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+      947    312    174    138
24 months   ki1101329-Keneba           GAMBIA                         1      1713    185     86     99
24 months   ki1101329-Keneba           GAMBIA                         2      1713    167     81     86
24 months   ki1101329-Keneba           GAMBIA                         3+     1713   1361    535    826
24 months   ki1113344-GMS-Nepal        NEPAL                          1       568    162     51    111
24 months   ki1113344-GMS-Nepal        NEPAL                          2       568    146     52     94
24 months   ki1113344-GMS-Nepal        NEPAL                          3+      568    260     73    187
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1878    721    208    513
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      1878    571    166    405
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+     1878    586    159    427
24 months   ki1135781-COHORTS          GUATEMALA                      1       474     85     14     71
24 months   ki1135781-COHORTS          GUATEMALA                      2       474     75      7     68
24 months   ki1135781-COHORTS          GUATEMALA                      3+      474    314     28    286
24 months   ki1135781-COHORTS          PHILIPPINES                    1      2562    558    179    379
24 months   ki1135781-COHORTS          PHILIPPINES                    2      2562    571    160    411
24 months   ki1135781-COHORTS          PHILIPPINES                    3+     2562   1433    295   1138
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1         3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2         3      2      1      1
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+        3      1      1      0


The following strata were considered:

* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 24 rows containing missing values (geom_errorbar).
```

![](/tmp/dbe474d5-581c-4f65-a00e-e5b473f2470f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 61 rows containing missing values (geom_errorbar).
```

![](/tmp/dbe474d5-581c-4f65-a00e-e5b473f2470f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 8 rows containing missing values (geom_errorbar).
```

![](/tmp/dbe474d5-581c-4f65-a00e-e5b473f2470f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 8 rows containing missing values (geom_errorbar).
```

![](/tmp/dbe474d5-581c-4f65-a00e-e5b473f2470f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3591549          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3240741          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3181818          NA          NA
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1881919   0.1416224   0.2347613
3 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2172131   0.1654371   0.2689891
3 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1405405   0.0904234   0.1906577
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1224732   0.1003121   0.1446344
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0815006   0.0622090   0.1007923
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1018767   0.0801659   0.1235875
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.3304721   0.2700575   0.3908867
3 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1979695   0.1423113   0.2536278
3 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.2255257   0.2034616   0.2475899
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2349398   0.1703912   0.2994883
3 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1111111   0.0612719   0.1609503
3 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1386861   0.0977283   0.1796439
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2123967   0.2020901   0.2227032
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1990950   0.1870166   0.2111735
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2166094   0.2034787   0.2297401
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2125000   0.1227714   0.3022286
3 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2592593   0.1637317   0.3547868
3 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2917847   0.2443171   0.3392523
3 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2169935   0.1877807   0.2462062
3 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1494755   0.1288116   0.1701394
3 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2004680   0.1849699   0.2159661
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1403250   0.1141576   0.1664923
3 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1320755   0.1067905   0.1573604
3 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1514793   0.1343837   0.1685749
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4638662          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3634525          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3711340          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4090909          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3670886          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4719101          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4210526   0.1979423   0.6441630
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3809524   0.1722168   0.5896880
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4098361   0.2858036   0.5338685
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2780083   0.2214008   0.3346158
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2687225   0.2110102   0.3264347
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2034884   0.1432755   0.2637012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2161458   0.1870281   0.2452635
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1926230   0.1640481   0.2211978
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1889205   0.1599982   0.2178427
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.3755869   0.3105327   0.4406410
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.2688172   0.2050850   0.3325494
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.3207831   0.2956709   0.3458953
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3483871   0.2733128   0.4234614
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2432432   0.1740603   0.3124262
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2727273   0.2189570   0.3264976
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3043596   0.2895184   0.3192008
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2780959   0.2614811   0.2947107
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2983933   0.2808520   0.3159345
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2445561   0.2100712   0.2790410
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2243286   0.1918270   0.2568302
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2620558   0.2403410   0.2837706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4881180          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3801498          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3946501          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5538462          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.5052632          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.6500000          NA          NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3318386   0.2699862   0.3936910
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3526786   0.2900561   0.4153011
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3024691   0.2316795   0.3732588
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3100437   0.2754496   0.3446378
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3286604   0.2923162   0.3650047
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3151326   0.2791594   0.3511058
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4258373   0.3587816   0.4928930
12 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.3406593   0.2717863   0.4095323
12 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4409449   0.4149019   0.4669879
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4720497   0.3948707   0.5492287
12 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4000000   0.3215340   0.4784660
12 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4760148   0.4165025   0.5355270
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3777831   0.3630793   0.3924869
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3683700   0.3513671   0.3853729
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.3847737   0.3671135   0.4024339
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6914894   0.5980350   0.7849437
12 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.6436782   0.5429545   0.7444018
12 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7500000   0.7064243   0.7935757
12 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3851262   0.3503649   0.4198874
12 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3414634   0.3135260   0.3694008
12 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.4382294   0.4187190   0.4577397
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3743676   0.3354086   0.4133267
12 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.4009740   0.3622645   0.4396835
12 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.4784288   0.4535800   0.5032777
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5067651          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4114326          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4231947          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6356589          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.6373626          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.7704082          NA          NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4215247   0.3566598   0.4863895
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.4324324   0.3672096   0.4976552
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3899371   0.3140629   0.4658113
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3804781   0.3379926   0.4229636
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4152174   0.3701715   0.4602633
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.4207188   0.3762137   0.4652239
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.5183246   0.4474429   0.5892063
18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.4482759   0.3743610   0.5221908
18 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.5323636   0.5059833   0.5587439
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6257669   0.5514118   0.7001219
18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5890411   0.5091640   0.6689182
18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6415094   0.5837206   0.6992983
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4865238   0.4683125   0.5047351
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.4873188   0.4664687   0.5081690
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.5011463   0.4801608   0.5221317
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7567568   0.6588950   0.8546185
18 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7826087   0.6851773   0.8800401
18 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.8571429   0.8180198   0.8962659
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5237258   0.4826813   0.5647703
18 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5767196   0.5360438   0.6173953
18 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6671123   0.6432280   0.6909966
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5764366          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.5077167          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.5430398          NA          NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4929577   0.4257594   0.5601561
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.4884793   0.4219142   0.5550443
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.4539474   0.3747301   0.5331646
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4126506   0.3596662   0.4656350
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4521452   0.3960756   0.5082149
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.4423077   0.3871686   0.4974468
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.5351351   0.4632425   0.6070277
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.5149701   0.4391486   0.5907915
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.6069067   0.5809497   0.6328637
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6851852   0.6136030   0.7567673
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6438356   0.5660916   0.7215796
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.7192308   0.6645603   0.7739013
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7115118   0.6784329   0.7445907
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7092820   0.6720264   0.7465375
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.7286689   0.6926584   0.7646795
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8352941   0.7563588   0.9142295
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.9066667   0.8407617   0.9725717
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.9108280   0.8792726   0.9423835
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6792115   0.6404743   0.7179486
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.7197898   0.6829465   0.7566332
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7941382   0.7731997   0.8150767


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3319149          NA          NA
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1857143   0.1568859   0.2145427
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1025424   0.0903006   0.1147841
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2360420   0.2164681   0.2556160
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1585160   0.1290957   0.1879363
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2095510   0.2028163   0.2162856
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2743191   0.2357099   0.3129282
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1902526   0.1787489   0.2017563
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1446335   0.1321610   0.1571060
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4034602          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4305177          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4059406   0.3096920   0.5021892
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2546875   0.2209066   0.2884684
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1996370   0.1829452   0.2163289
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3219456   0.2999036   0.3439876
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2857143   0.2484972   0.3229313
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2945830   0.2852170   0.3039490
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2498218   0.2338012   0.2658424
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4254743          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5882353          NA          NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3316913   0.2942672   0.3691154
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3177665   0.2972007   0.3383323
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4289709   0.4060238   0.4519181
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4553265   0.4148326   0.4958204
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3769269   0.3675147   0.3863390
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7237077   0.6866720   0.7607433
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4043728   0.3897786   0.4189671
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4388125   0.4203024   0.4573225
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4516784          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6995192          NA          NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4172185   0.3778614   0.4565757
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4048780   0.3794719   0.4302842
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5224138   0.4989374   0.5458902
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6236934   0.5840266   0.6633602
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4911438   0.4796616   0.5026259
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8292683   0.7945030   0.8640336
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6166413   0.5980630   0.6352197
18 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5434694          NA          NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4810997   0.4404722   0.5217271
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4350581   0.4034660   0.4666501
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5901926   0.5668966   0.6134887
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6901408   0.6520774   0.7282042
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7161874   0.6957914   0.7365834
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8966245   0.8691878   0.9240612
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7525371   0.7358238   0.7692504


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9023239          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.8859180          NA          NA
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.1542109   0.8185904   1.6274350
3 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7467939   0.4838321   1.1526748
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6654567   0.4939963   0.8964291
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8318280   0.6289549   1.1001390
3 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.5990507   0.4283714   0.8377351
3 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.6824350   0.5546414   0.8396733
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.4729345   0.2794850   0.8002828
3 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.5903051   0.3943642   0.8835998
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9373735   0.8673093   1.0130977
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0198340   0.9436412   1.1021787
3 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.2200436   0.6966126   2.1367779
3 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.3731045   0.8733387   2.1588599
3 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          INDIA                          2                    1                 0.6888480   0.5679636   0.8354614
3 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9238436   0.7910008   1.0789963
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9412115   0.7204783   1.2295709
3 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.0794893   0.8680719   1.3423969
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7835286          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8000885          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8973277          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1535581          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.9047619   0.4221804   1.9389678
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 0.9733607   0.5287590   1.7918011
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9665987   0.7189824   1.2994938
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7319507   0.5110774   1.0482793
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8911712   0.7293485   1.0888981
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8740416   0.7128025   1.0717537
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7157258   0.5336194   0.9599790
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.8540851   0.7062396   1.0328808
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.6981982   0.4886610   0.9975846
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.7828283   0.5845479   1.0483660
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9137084   0.8458935   0.9869600
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9803971   0.9083052   1.0582109
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9172888   0.7493800   1.1228199
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.0715571   0.9098805   1.2619619
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7788072          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8085136          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9122807          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1736111          NA          NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0628016   0.8215826   1.3748432
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9114948   0.6757968   1.2293974
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0600456   0.9059408   1.2403644
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0164136   0.8664544   1.1923266
12 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.7999753   0.6191312   1.0336428
12 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.0354773   0.8751874   1.2251242
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8473684   0.6563990   1.0938975
12 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0083997   0.8208166   1.2388515
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9750833   0.9179530   1.0357692
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0185042   0.9590199   1.0816781
12 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9308576   0.7569834   1.1446697
12 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0846154   0.9362399   1.2565055
12 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          INDIA                          2                    1                 0.8866274   0.7849361   1.0014932
12 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1378852   1.0289401   1.2583655
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0710703   0.9293308   1.2344275
12 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.2779653   1.1376468   1.4355909
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8118804          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8350906          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0026802          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2119836          NA          NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0258769   0.8270212   1.2725472
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9250636   0.7218286   1.1855205
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0913043   0.9339682   1.2751453
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1057636   0.9481162   1.2896238
18 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8648555   0.6980884   1.0714616
18 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.0270854   0.8880495   1.1878892
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9413108   0.7860142   1.1272900
18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0251572   0.8831472   1.1900025
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0016340   0.9462813   1.0602246
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0300549   0.9737955   1.0895646
18 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0341615   0.8642318   1.2375037
18 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.1326531   0.9875054   1.2991351
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1011860   0.9909947   1.2236298
18 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.2737815   1.1686265   1.3883987
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8807850          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9420635          NA          NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9909151   0.8171976   1.2015609
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9208647   0.7379487   1.1491201
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0957096   0.9165814   1.3098449
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0718697   0.8962309   1.2819294
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9623178   0.7884189   1.1745730
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1341186   0.9849813   1.3058369
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9396520   0.8009813   1.1023301
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0496881   0.9224658   1.1944564
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9968661   0.9293367   1.0693024
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0241137   0.9569318   1.0960121
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0854460   0.9634531   1.2228858
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0904279   0.9860184   1.2058934
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0597434   0.9815649   1.1441484
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.1692061   1.0980026   1.2450270


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0272400           NA           NA
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0024776   -0.0388175    0.0338623
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0199309   -0.0369882   -0.0028735
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0944301   -0.1500434   -0.0388168
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0764237   -0.1283793   -0.0244682
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0028457   -0.0105897    0.0048982
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0618191   -0.0220598    0.1456979
3 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0267408   -0.0530812   -0.0004004
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0043085   -0.0188629    0.0274800
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0604061           NA           NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0214268           NA           NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0151120   -0.2158944    0.1856704
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0233208   -0.0672780    0.0206364
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0165088   -0.0396515    0.0066339
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0536413   -0.1142546    0.0069721
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0626728   -0.1254404    0.0000948
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0097766   -0.0211444    0.0015913
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0052657   -0.0253911    0.0359225
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0626437           NA           NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0343891           NA           NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0001473   -0.0493868    0.0490922
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0077228   -0.0202953    0.0357410
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0031336   -0.0598890    0.0661562
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0167232   -0.0823035    0.0488571
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0008562   -0.0121459    0.0104334
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0322183   -0.0525080    0.1169446
12 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0192467   -0.0124159    0.0509092
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0644448    0.0296787    0.0992110
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0550867           NA           NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0638603           NA           NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0043061   -0.0557805    0.0471683
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0244000   -0.0100617    0.0588616
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0040892   -0.0627864    0.0709648
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0020735   -0.0650191    0.0608721
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0046199   -0.0095194    0.0187592
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0725115   -0.0149115    0.1599346
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0929155    0.0568404    0.1289906
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0329672           NA           NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0118581   -0.0653460    0.0416299
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0224075   -0.0204528    0.0652677
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0550575   -0.0127280    0.1228430
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0049557   -0.0554594    0.0653707
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0046756   -0.0212093    0.0305606
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0613304   -0.0075818    0.1302425
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0733256    0.0397658    0.1068854


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0820693           NA           NA
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0133409   -0.2291796    0.1645975
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1943672   -0.3714954   -0.0401150
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.4000563   -0.6562761   -0.1834727
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.4821200   -0.8421769   -0.1924368
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0135801   -0.0512157    0.0227080
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2253546   -0.1485421    0.4775329
3 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1405544   -0.2876208   -0.0102852
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0297894   -0.1443885    0.1774571
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1497200           NA           NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0497699           NA           NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0372272   -0.6710312    0.3561818
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0915663   -0.2784251    0.0679805
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0826941   -0.2049462    0.0271544
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1666160   -0.3709750    0.0072811
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2193548   -0.4600208   -0.0183596
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0331879   -0.0725052    0.0046881
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0210778   -0.1096572    0.1364102
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1472328           NA           NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0584615           NA           NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0004440   -0.1604731    0.1375171
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0243035   -0.0679740    0.1086077
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0073049   -0.1510396    0.1438665
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0367280   -0.1912730    0.0977677
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0022716   -0.0326754    0.0272370
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0445184   -0.0801289    0.1547813
12 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0475964   -0.0340187    0.1227696
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1468619    0.0637500    0.2225959
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1219599           NA           NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0912917           NA           NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0103210   -0.1415473    0.1058201
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0602650   -0.0288506    0.1416616
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0078275   -0.1288110    0.1279264
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0033245   -0.1094996    0.0926899
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0094064   -0.0198052    0.0377814
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0874404   -0.0248737    0.1874462
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1506800    0.0897894    0.2074971
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0606607           NA           NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0246479   -0.1421018    0.0807271
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0515046   -0.0523460    0.1451066
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0932874   -0.0292651    0.2012477
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0071807   -0.0843382    0.0909753
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0065285   -0.0302817    0.0420236
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0684014   -0.0121834    0.1425704
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0974379    0.0514752    0.1411733
