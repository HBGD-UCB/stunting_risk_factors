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
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/98313c1d-fb6a-4cad-bdd2-eeb9118abbfd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/98313c1d-fb6a-4cad-bdd2-eeb9118abbfd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/98313c1d-fb6a-4cad-bdd2-eeb9118abbfd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/98313c1d-fb6a-4cad-bdd2-eeb9118abbfd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
3 months    ki1000304b-SAS-FoodSuppl   1        0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   2        0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   3+       0      0      0      0
3 months    ki1017093b-PROVIDE         1      175     71     53     18
3 months    ki1017093b-PROVIDE         2      175     59     43     16
3 months    ki1017093b-PROVIDE         3+     175     45     35     10
3 months    ki1066203-TanzaniaChild2   1      593    206    177     29
3 months    ki1066203-TanzaniaChild2   2      593    204    186     18
3 months    ki1066203-TanzaniaChild2   3+     593    183    171     12
3 months    ki1101329-Keneba           1     1809    233    156     77
3 months    ki1101329-Keneba           2     1809    197    158     39
3 months    ki1101329-Keneba           3+    1809   1379   1068    311
3 months    ki1113344-GMS-Nepal        1      593    166    127     39
3 months    ki1113344-GMS-Nepal        2      593    153    136     17
3 months    ki1113344-GMS-Nepal        3+     593    274    236     38
3 months    ki1126311-ZVITAMBO         1     3502   1491   1170    321
3 months    ki1126311-ZVITAMBO         2     3502   1023    818    205
3 months    ki1126311-ZVITAMBO         3+    3502    988    779    209
3 months    ki1135781-COHORTS          1     8043   1522   1244    278
3 months    ki1135781-COHORTS          2     8043   1914   1631    283
3 months    ki1135781-COHORTS          3+    8043   4607   3734    873
6 months    ki1000304b-SAS-FoodSuppl   1      101     19     11      8
6 months    ki1000304b-SAS-FoodSuppl   2      101     21     13      8
6 months    ki1000304b-SAS-FoodSuppl   3+     101     61     36     25
6 months    ki1017093b-PROVIDE         1      166     67     46     21
6 months    ki1017093b-PROVIDE         2      166     58     40     18
6 months    ki1017093b-PROVIDE         3+     166     41     32      9
6 months    ki1066203-TanzaniaChild2   1      549    189    145     44
6 months    ki1066203-TanzaniaChild2   2      549    191    155     36
6 months    ki1066203-TanzaniaChild2   3+     549    169    142     27
6 months    ki1101329-Keneba           1     1727    213    133     80
6 months    ki1101329-Keneba           2     1727    186    136     50
6 months    ki1101329-Keneba           3+    1727   1328    902    426
6 months    ki1113344-GMS-Nepal        1      567    155    101     54
6 months    ki1113344-GMS-Nepal        2      567    148    112     36
6 months    ki1113344-GMS-Nepal        3+     567    264    192     72
6 months    ki1126311-ZVITAMBO         1     2286    918    625    293
6 months    ki1126311-ZVITAMBO         2     2286    682    501    181
6 months    ki1126311-ZVITAMBO         3+    2286    686    482    204
6 months    ki1135781-COHORTS          1     2947    611    462    149
6 months    ki1135781-COHORTS          2     2947    665    513    152
6 months    ki1135781-COHORTS          3+    2947   1671   1220    451
12 months   ki1000304b-SAS-FoodSuppl   1       96     18      4     14
12 months   ki1000304b-SAS-FoodSuppl   2       96     19      3     16
12 months   ki1000304b-SAS-FoodSuppl   3+      96     59      8     51
12 months   ki1017093b-PROVIDE         1      159     62     40     22
12 months   ki1017093b-PROVIDE         2      159     57     36     21
12 months   ki1017093b-PROVIDE         3+     159     40     27     13
12 months   ki1066203-TanzaniaChild2   1      489    171    115     56
12 months   ki1066203-TanzaniaChild2   2      489    164    115     49
12 months   ki1066203-TanzaniaChild2   3+     489    154    102     52
12 months   ki1101329-Keneba           1     1788    209    120     89
12 months   ki1101329-Keneba           2     1788    182    120     62
12 months   ki1101329-Keneba           3+    1788   1397    781    616
12 months   ki1113344-GMS-Nepal        1      582    161     85     76
12 months   ki1113344-GMS-Nepal        2      582    150     90     60
12 months   ki1113344-GMS-Nepal        3+     582    271    142    129
12 months   ki1126311-ZVITAMBO         1     2546   1030    637    393
12 months   ki1126311-ZVITAMBO         2     2546    753    470    283
12 months   ki1126311-ZVITAMBO         3+    2546    763    479    284
12 months   ki1135781-COHORTS          1     7668   1440    863    577
12 months   ki1135781-COHORTS          2     7668   1810   1129    681
12 months   ki1135781-COHORTS          3+    7668   4418   2301   2117
18 months   ki1000304b-SAS-FoodSuppl   1       91     18      3     15
18 months   ki1000304b-SAS-FoodSuppl   2       91     19      1     18
18 months   ki1000304b-SAS-FoodSuppl   3+      91     54      6     48
18 months   ki1017093b-PROVIDE         1      155     61     31     30
18 months   ki1017093b-PROVIDE         2      155     56     31     25
18 months   ki1017093b-PROVIDE         3+     155     38     23     15
18 months   ki1066203-TanzaniaChild2   1      355    121     69     52
18 months   ki1066203-TanzaniaChild2   2      355    127     74     53
18 months   ki1066203-TanzaniaChild2   3+     355    107     60     47
18 months   ki1101329-Keneba           1     1740    191     92     99
18 months   ki1101329-Keneba           2     1740    174     96     78
18 months   ki1101329-Keneba           3+    1740   1375    643    732
18 months   ki1113344-GMS-Nepal        1      574    163     61    102
18 months   ki1113344-GMS-Nepal        2      574    146     60     86
18 months   ki1113344-GMS-Nepal        3+     574    265     95    170
18 months   ki1126311-ZVITAMBO         1     1857    722    367    355
18 months   ki1126311-ZVITAMBO         2     1857    548    296    252
18 months   ki1126311-ZVITAMBO         3+    1857    587    292    295
18 months   ki1135781-COHORTS          1     3083    643    289    354
18 months   ki1135781-COHORTS          2     3083    636    255    381
18 months   ki1135781-COHORTS          3+    3083   1804    542   1262
24 months   ki1000304b-SAS-FoodSuppl   1        9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   2        9      2      0      2
24 months   ki1000304b-SAS-FoodSuppl   3+       9      6      1      5
24 months   ki1017093b-PROVIDE         1      148     56     26     30
24 months   ki1017093b-PROVIDE         2      148     55     29     26
24 months   ki1017093b-PROVIDE         3+     148     37     21     16
24 months   ki1066203-TanzaniaChild2   1      247     85     45     40
24 months   ki1066203-TanzaniaChild2   2      247     82     43     39
24 months   ki1066203-TanzaniaChild2   3+     247     80     41     39
24 months   ki1101329-Keneba           1     1713    185     86     99
24 months   ki1101329-Keneba           2     1713    167     81     86
24 months   ki1101329-Keneba           3+    1713   1361    535    826
24 months   ki1113344-GMS-Nepal        1      568    162     51    111
24 months   ki1113344-GMS-Nepal        2      568    146     52     94
24 months   ki1113344-GMS-Nepal        3+     568    260     73    187
24 months   ki1126311-ZVITAMBO         1      471    179     42    137
24 months   ki1126311-ZVITAMBO         2      471    133     46     87
24 months   ki1126311-ZVITAMBO         3+     471    159     44    115
24 months   ki1135781-COHORTS          1     3036    643    193    450
24 months   ki1135781-COHORTS          2     3036    646    167    479
24 months   ki1135781-COHORTS          3+    3036   1747    323   1424

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1017093b-PROVIDE         1                    NA                0.2535211   0.1520414   0.3550008
3 months    ki1017093b-PROVIDE         2                    NA                0.2711864   0.1574214   0.3849514
3 months    ki1017093b-PROVIDE         3+                   NA                0.2222222   0.1004053   0.3440392
3 months    ki1066203-TanzaniaChild2   1                    NA                0.1407767   0.0932432   0.1883102
3 months    ki1066203-TanzaniaChild2   2                    NA                0.0882353   0.0492804   0.1271902
3 months    ki1066203-TanzaniaChild2   3+                   NA                0.0655738   0.0296794   0.1014682
3 months    ki1101329-Keneba           1                    NA                0.3304721   0.2700575   0.3908867
3 months    ki1101329-Keneba           2                    NA                0.1979695   0.1423113   0.2536278
3 months    ki1101329-Keneba           3+                   NA                0.2255257   0.2034616   0.2475899
3 months    ki1113344-GMS-Nepal        1                    NA                0.2349398   0.1703912   0.2994883
3 months    ki1113344-GMS-Nepal        2                    NA                0.1111111   0.0612719   0.1609503
3 months    ki1113344-GMS-Nepal        3+                   NA                0.1386861   0.0977283   0.1796439
3 months    ki1126311-ZVITAMBO         1                    NA                0.2152918   0.1944258   0.2361577
3 months    ki1126311-ZVITAMBO         2                    NA                0.2003910   0.1758580   0.2249240
3 months    ki1126311-ZVITAMBO         3+                   NA                0.2115385   0.1860692   0.2370077
3 months    ki1135781-COHORTS          1                    NA                0.1826544   0.1632417   0.2020671
3 months    ki1135781-COHORTS          2                    NA                0.1478579   0.1319548   0.1637610
3 months    ki1135781-COHORTS          3+                   NA                0.1894942   0.1781770   0.2008115
6 months    ki1000304b-SAS-FoodSuppl   1                    NA                0.4210526   0.1979423   0.6441630
6 months    ki1000304b-SAS-FoodSuppl   2                    NA                0.3809524   0.1722168   0.5896880
6 months    ki1000304b-SAS-FoodSuppl   3+                   NA                0.4098361   0.2858036   0.5338685
6 months    ki1017093b-PROVIDE         1                    NA                0.3134328   0.2020197   0.4248460
6 months    ki1017093b-PROVIDE         2                    NA                0.3103448   0.1909228   0.4297668
6 months    ki1017093b-PROVIDE         3+                   NA                0.2195122   0.0924312   0.3465932
6 months    ki1066203-TanzaniaChild2   1                    NA                0.2328042   0.1724981   0.2931104
6 months    ki1066203-TanzaniaChild2   2                    NA                0.1884817   0.1329666   0.2439968
6 months    ki1066203-TanzaniaChild2   3+                   NA                0.1597633   0.1044742   0.2150525
6 months    ki1101329-Keneba           1                    NA                0.3755869   0.3105327   0.4406410
6 months    ki1101329-Keneba           2                    NA                0.2688172   0.2050850   0.3325494
6 months    ki1101329-Keneba           3+                   NA                0.3207831   0.2956709   0.3458953
6 months    ki1113344-GMS-Nepal        1                    NA                0.3483871   0.2733128   0.4234614
6 months    ki1113344-GMS-Nepal        2                    NA                0.2432432   0.1740603   0.3124262
6 months    ki1113344-GMS-Nepal        3+                   NA                0.2727273   0.2189570   0.3264976
6 months    ki1126311-ZVITAMBO         1                    NA                0.3191721   0.2890106   0.3493336
6 months    ki1126311-ZVITAMBO         2                    NA                0.2653959   0.2322504   0.2985414
6 months    ki1126311-ZVITAMBO         3+                   NA                0.2973761   0.2631627   0.3315894
6 months    ki1135781-COHORTS          1                    NA                0.2438625   0.2098081   0.2779170
6 months    ki1135781-COHORTS          2                    NA                0.2285714   0.1966509   0.2604919
6 months    ki1135781-COHORTS          3+                   NA                0.2698983   0.2486107   0.2911858
12 months   ki1017093b-PROVIDE         1                    NA                0.3548387   0.2353651   0.4743123
12 months   ki1017093b-PROVIDE         2                    NA                0.3684211   0.2427988   0.4940433
12 months   ki1017093b-PROVIDE         3+                   NA                0.3250000   0.1793932   0.4706068
12 months   ki1066203-TanzaniaChild2   1                    NA                0.3274854   0.2570742   0.3978965
12 months   ki1066203-TanzaniaChild2   2                    NA                0.2987805   0.2286553   0.3689056
12 months   ki1066203-TanzaniaChild2   3+                   NA                0.3376623   0.2628948   0.4124299
12 months   ki1101329-Keneba           1                    NA                0.4258373   0.3587816   0.4928930
12 months   ki1101329-Keneba           2                    NA                0.3406593   0.2717863   0.4095323
12 months   ki1101329-Keneba           3+                   NA                0.4409449   0.4149019   0.4669879
12 months   ki1113344-GMS-Nepal        1                    NA                0.4720497   0.3948707   0.5492287
12 months   ki1113344-GMS-Nepal        2                    NA                0.4000000   0.3215340   0.4784660
12 months   ki1113344-GMS-Nepal        3+                   NA                0.4760148   0.4165025   0.5355270
12 months   ki1126311-ZVITAMBO         1                    NA                0.3815534   0.3518816   0.4112252
12 months   ki1126311-ZVITAMBO         2                    NA                0.3758300   0.3412295   0.4104306
12 months   ki1126311-ZVITAMBO         3+                   NA                0.3722149   0.3379087   0.4065212
12 months   ki1135781-COHORTS          1                    NA                0.4006944   0.3753825   0.4260064
12 months   ki1135781-COHORTS          2                    NA                0.3762431   0.3539239   0.3985623
12 months   ki1135781-COHORTS          3+                   NA                0.4791761   0.4644443   0.4939079
18 months   ki1017093b-PROVIDE         1                    NA                0.4918033   0.3659396   0.6176669
18 months   ki1017093b-PROVIDE         2                    NA                0.4464286   0.3158047   0.5770524
18 months   ki1017093b-PROVIDE         3+                   NA                0.3947368   0.2388219   0.5506518
18 months   ki1066203-TanzaniaChild2   1                    NA                0.4297521   0.3414220   0.5180822
18 months   ki1066203-TanzaniaChild2   2                    NA                0.4173228   0.3314395   0.5032062
18 months   ki1066203-TanzaniaChild2   3+                   NA                0.4392523   0.3450830   0.5334217
18 months   ki1101329-Keneba           1                    NA                0.5183246   0.4474429   0.5892063
18 months   ki1101329-Keneba           2                    NA                0.4482759   0.3743610   0.5221908
18 months   ki1101329-Keneba           3+                   NA                0.5323636   0.5059833   0.5587439
18 months   ki1113344-GMS-Nepal        1                    NA                0.6257669   0.5514118   0.7001219
18 months   ki1113344-GMS-Nepal        2                    NA                0.5890411   0.5091640   0.6689182
18 months   ki1113344-GMS-Nepal        3+                   NA                0.6415094   0.5837206   0.6992983
18 months   ki1126311-ZVITAMBO         1                    NA                0.4916898   0.4552138   0.5281657
18 months   ki1126311-ZVITAMBO         2                    NA                0.4598540   0.4181152   0.5015929
18 months   ki1126311-ZVITAMBO         3+                   NA                0.5025554   0.4620968   0.5430139
18 months   ki1135781-COHORTS          1                    NA                0.5505443   0.5120893   0.5889993
18 months   ki1135781-COHORTS          2                    NA                0.5990566   0.5609618   0.6371514
18 months   ki1135781-COHORTS          3+                   NA                0.6995565   0.6783976   0.7207154
24 months   ki1017093b-PROVIDE         1                    NA                0.5357143   0.4046496   0.6667789
24 months   ki1017093b-PROVIDE         2                    NA                0.4727273   0.3403352   0.6051193
24 months   ki1017093b-PROVIDE         3+                   NA                0.4324324   0.2722602   0.5926047
24 months   ki1066203-TanzaniaChild2   1                    NA                0.4705882   0.3642629   0.5769136
24 months   ki1066203-TanzaniaChild2   2                    NA                0.4756098   0.3672982   0.5839213
24 months   ki1066203-TanzaniaChild2   3+                   NA                0.4875000   0.3777465   0.5972535
24 months   ki1101329-Keneba           1                    NA                0.5351351   0.4632425   0.6070277
24 months   ki1101329-Keneba           2                    NA                0.5149701   0.4391486   0.5907915
24 months   ki1101329-Keneba           3+                   NA                0.6069067   0.5809497   0.6328637
24 months   ki1113344-GMS-Nepal        1                    NA                0.6851852   0.6136030   0.7567673
24 months   ki1113344-GMS-Nepal        2                    NA                0.6438356   0.5660916   0.7215796
24 months   ki1113344-GMS-Nepal        3+                   NA                0.7192308   0.6645603   0.7739013
24 months   ki1126311-ZVITAMBO         1                    NA                0.7653631   0.7032169   0.8275094
24 months   ki1126311-ZVITAMBO         2                    NA                0.6541353   0.5732126   0.7350581
24 months   ki1126311-ZVITAMBO         3+                   NA                0.7232704   0.6536576   0.7928833
24 months   ki1135781-COHORTS          1                    NA                0.6998445   0.6644131   0.7352759
24 months   ki1135781-COHORTS          2                    NA                0.7414861   0.7077187   0.7752534
24 months   ki1135781-COHORTS          3+                   NA                0.8151116   0.7969047   0.8333185


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1017093b-PROVIDE         NA                   NA                0.2514286   0.2486380   0.2542192
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0994941   0.0969586   0.1020296
3 months    ki1101329-Keneba           NA                   NA                0.2360420   0.2343231   0.2377610
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1585160   0.1545726   0.1624594
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2098801   0.2096718   0.2100884
3 months    ki1135781-COHORTS          NA                   NA                0.1782917   0.1779157   0.1786676
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4059406   0.4032968   0.4085844
6 months    ki1017093b-PROVIDE         NA                   NA                0.2891566   0.2830672   0.2952460
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1948998   0.1924035   0.1973962
6 months    ki1101329-Keneba           NA                   NA                0.3219456   0.3207336   0.3231575
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2857143   0.2823952   0.2890333
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2965879   0.2956754   0.2975004
6 months    ki1135781-COHORTS          NA                   NA                0.2551748   0.2545398   0.2558097
12 months   ki1017093b-PROVIDE         NA                   NA                0.3522013   0.3495774   0.3548251
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3210634   0.3196117   0.3225151
12 months   ki1101329-Keneba           NA                   NA                0.4289709   0.4275746   0.4303673
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4553265   0.4526721   0.4579808
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3770621   0.3769084   0.3772158
12 months   ki1135781-COHORTS          NA                   NA                0.4401408   0.4391068   0.4411748
18 months   ki1017093b-PROVIDE         NA                   NA                0.4516129   0.4456228   0.4576030
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4281690   0.4272375   0.4291005
18 months   ki1101329-Keneba           NA                   NA                0.5224138   0.5212344   0.5235932
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6236934   0.6219503   0.6254364
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4857297   0.4849405   0.4865188
18 months   ki1135781-COHORTS          NA                   NA                0.6477457   0.6455044   0.6499870
24 months   ki1017093b-PROVIDE         NA                   NA                0.4864865   0.4797865   0.4931864
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4777328   0.4768495   0.4786161
24 months   ki1101329-Keneba           NA                   NA                0.5901926   0.5886209   0.5917644
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6901408   0.6876099   0.6926718
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7197452   0.7156914   0.7237990
24 months   ki1135781-COHORTS          NA                   NA                0.7750329   0.7733042   0.7767617


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1017093b-PROVIDE         2                    1                 1.0696798   0.5990090   1.9101801
3 months    ki1017093b-PROVIDE         3+                   1                 0.8765432   0.4446204   1.7280539
3 months    ki1066203-TanzaniaChild2   2                    1                 0.6267748   0.3595240   1.0926857
3 months    ki1066203-TanzaniaChild2   3+                   1                 0.4657999   0.2448399   0.8861689
3 months    ki1101329-Keneba           2                    1                 0.5990507   0.4283714   0.8377351
3 months    ki1101329-Keneba           3+                   1                 0.6824350   0.5546414   0.8396733
3 months    ki1113344-GMS-Nepal        2                    1                 0.4729345   0.2794850   0.8002828
3 months    ki1113344-GMS-Nepal        3+                   1                 0.5903051   0.3943642   0.8835998
3 months    ki1126311-ZVITAMBO         2                    1                 0.9307881   0.7962285   1.0880879
3 months    ki1126311-ZVITAMBO         3+                   1                 0.9825665   0.8418529   1.1468000
3 months    ki1135781-COHORTS          2                    1                 0.8094954   0.6958974   0.9416370
3 months    ki1135781-COHORTS          3+                   1                 1.0374469   0.9183752   1.1719569
6 months    ki1000304b-SAS-FoodSuppl   2                    1                 0.9047619   0.4221804   1.9389678
6 months    ki1000304b-SAS-FoodSuppl   3+                   1                 0.9733607   0.5287590   1.7918011
6 months    ki1017093b-PROVIDE         2                    1                 0.9901478   0.5863967   1.6718932
6 months    ki1017093b-PROVIDE         3+                   1                 0.7003484   0.3550418   1.3814935
6 months    ki1066203-TanzaniaChild2   2                    1                 0.8096145   0.5469261   1.1984720
6 months    ki1066203-TanzaniaChild2   3+                   1                 0.6862561   0.4453987   1.0573613
6 months    ki1101329-Keneba           2                    1                 0.7157258   0.5336194   0.9599790
6 months    ki1101329-Keneba           3+                   1                 0.8540851   0.7062396   1.0328808
6 months    ki1113344-GMS-Nepal        2                    1                 0.6981982   0.4886610   0.9975846
6 months    ki1113344-GMS-Nepal        3+                   1                 0.7828283   0.5845479   1.0483660
6 months    ki1126311-ZVITAMBO         2                    1                 0.8315134   0.7109726   0.9724912
6 months    ki1126311-ZVITAMBO         3+                   1                 0.9317108   0.8028255   1.0812873
6 months    ki1135781-COHORTS          2                    1                 0.9372963   0.7693189   1.1419507
6 months    ki1135781-COHORTS          3+                   1                 1.1067640   0.9427633   1.2992939
12 months   ki1017093b-PROVIDE         2                    1                 1.0382775   0.6429851   1.6765865
12 months   ki1017093b-PROVIDE         3+                   1                 0.9159091   0.5229475   1.6041561
12 months   ki1066203-TanzaniaChild2   2                    1                 0.9123476   0.6636289   1.2542825
12 months   ki1066203-TanzaniaChild2   3+                   1                 1.0310761   0.7572705   1.4038813
12 months   ki1101329-Keneba           2                    1                 0.7999753   0.6191312   1.0336428
12 months   ki1101329-Keneba           3+                   1                 1.0354773   0.8751874   1.2251242
12 months   ki1113344-GMS-Nepal        2                    1                 0.8473684   0.6563990   1.0938975
12 months   ki1113344-GMS-Nepal        3+                   1                 1.0083997   0.8208166   1.2388515
12 months   ki1126311-ZVITAMBO         2                    1                 0.9849998   0.8731685   1.1111539
12 months   ki1126311-ZVITAMBO         3+                   1                 0.9755252   0.8647011   1.1005529
12 months   ki1135781-COHORTS          2                    1                 0.9389776   0.8610342   1.0239766
12 months   ki1135781-COHORTS          3+                   1                 1.1958641   1.1147327   1.2829003
18 months   ki1017093b-PROVIDE         2                    1                 0.9077381   0.6153724   1.3390078
18 months   ki1017093b-PROVIDE         3+                   1                 0.8026316   0.5013218   1.2850379
18 months   ki1066203-TanzaniaChild2   2                    1                 0.9710781   0.7260002   1.2988877
18 months   ki1066203-TanzaniaChild2   3+                   1                 1.0221064   0.7594729   1.3755613
18 months   ki1101329-Keneba           2                    1                 0.8648555   0.6980884   1.0714616
18 months   ki1101329-Keneba           3+                   1                 1.0270854   0.8880495   1.1878892
18 months   ki1113344-GMS-Nepal        2                    1                 0.9413108   0.7860142   1.1272900
18 months   ki1113344-GMS-Nepal        3+                   1                 1.0251572   0.8831472   1.1900025
18 months   ki1126311-ZVITAMBO         2                    1                 0.9352524   0.8317993   1.0515722
18 months   ki1126311-ZVITAMBO         3+                   1                 1.0220985   0.9161125   1.1403462
18 months   ki1135781-COHORTS          2                    1                 1.0881169   0.9900383   1.1959117
18 months   ki1135781-COHORTS          3+                   1                 1.2706634   1.1775343   1.3711580
24 months   ki1017093b-PROVIDE         2                    1                 0.8824242   0.6083804   1.2799107
24 months   ki1017093b-PROVIDE         3+                   1                 0.8072072   0.5178454   1.2582588
24 months   ki1066203-TanzaniaChild2   2                    1                 1.0106707   0.7333121   1.3929339
24 months   ki1066203-TanzaniaChild2   3+                   1                 1.0359375   0.7530278   1.4251353
24 months   ki1101329-Keneba           2                    1                 0.9623178   0.7884189   1.1745730
24 months   ki1101329-Keneba           3+                   1                 1.1341186   0.9849813   1.3058369
24 months   ki1113344-GMS-Nepal        2                    1                 0.9396520   0.8009813   1.1023301
24 months   ki1113344-GMS-Nepal        3+                   1                 1.0496881   0.9224658   1.1944564
24 months   ki1126311-ZVITAMBO         2                    1                 0.8546732   0.7371136   0.9909819
24 months   ki1126311-ZVITAMBO         3+                   1                 0.9450030   0.8331924   1.0718180
24 months   ki1135781-COHORTS          2                    1                 1.0595012   0.9897552   1.1341620
24 months   ki1135781-COHORTS          3+                   1                 1.1647039   1.1020046   1.2309706


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1017093b-PROVIDE         1                    NA                -0.0020926   -0.1036106    0.0994255
3 months    ki1066203-TanzaniaChild2   1                    NA                -0.0412826   -0.0888836    0.0063184
3 months    ki1101329-Keneba           1                    NA                -0.0944301   -0.1548691   -0.0339910
3 months    ki1113344-GMS-Nepal        1                    NA                -0.0764237   -0.1410927   -0.0117548
3 months    ki1126311-ZVITAMBO         1                    NA                -0.0054117   -0.0262787    0.0154554
3 months    ki1135781-COHORTS          1                    NA                -0.0043627   -0.0237790    0.0150536
6 months    ki1000304b-SAS-FoodSuppl   1                    NA                -0.0151120   -0.2382380    0.2080140
6 months    ki1017093b-PROVIDE         1                    NA                -0.0242762   -0.1358557    0.0873032
6 months    ki1066203-TanzaniaChild2   1                    NA                -0.0379044   -0.0982622    0.0224534
6 months    ki1101329-Keneba           1                    NA                -0.0536413   -0.1187068    0.0114242
6 months    ki1113344-GMS-Nepal        1                    NA                -0.0626728   -0.1378205    0.0124748
6 months    ki1126311-ZVITAMBO         1                    NA                -0.0225842   -0.0527595    0.0075911
6 months    ki1135781-COHORTS          1                    NA                 0.0113122   -0.0227482    0.0453726
12 months   ki1017093b-PROVIDE         1                    NA                -0.0026375   -0.1221398    0.1168649
12 months   ki1066203-TanzaniaChild2   1                    NA                -0.0064220   -0.0768481    0.0640041
12 months   ki1101329-Keneba           1                    NA                 0.0031336   -0.0639367    0.0702038
12 months   ki1113344-GMS-Nepal        1                    NA                -0.0167232   -0.0939478    0.0605014
12 months   ki1126311-ZVITAMBO         1                    NA                -0.0044913   -0.0341635    0.0251808
12 months   ki1135781-COHORTS          1                    NA                 0.0394464    0.0141133    0.0647795
18 months   ki1017093b-PROVIDE         1                    NA                -0.0401904   -0.1661965    0.0858157
18 months   ki1066203-TanzaniaChild2   1                    NA                -0.0015831   -0.0899181    0.0867520
18 months   ki1101329-Keneba           1                    NA                 0.0040892   -0.0668024    0.0749807
18 months   ki1113344-GMS-Nepal        1                    NA                -0.0020735   -0.0764489    0.0723020
18 months   ki1126311-ZVITAMBO         1                    NA                -0.0059601   -0.0424446    0.0305244
18 months   ki1135781-COHORTS          1                    NA                 0.0972014    0.0586811    0.1357216
24 months   ki1017093b-PROVIDE         1                    NA                -0.0492278   -0.1804636    0.0820080
24 months   ki1066203-TanzaniaChild2   1                    NA                 0.0071446   -0.0991845    0.1134736
24 months   ki1101329-Keneba           1                    NA                 0.0550575   -0.0168523    0.1269673
24 months   ki1113344-GMS-Nepal        1                    NA                 0.0049557   -0.0666712    0.0765825
24 months   ki1126311-ZVITAMBO         1                    NA                -0.0456179   -0.1078962    0.0166604
24 months   ki1135781-COHORTS          1                    NA                 0.0751885    0.0397149    0.1106620


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1017093b-PROVIDE         1                    NA                -0.0083227   -0.5048949    0.3243950
3 months    ki1066203-TanzaniaChild2   1                    NA                -0.4149251   -0.9851379   -0.0085008
3 months    ki1101329-Keneba           1                    NA                -0.4000563   -0.6811372   -0.1659712
3 months    ki1113344-GMS-Nepal        1                    NA                -0.4821200   -0.9529531   -0.1247990
3 months    ki1126311-ZVITAMBO         1                    NA                -0.0257846   -0.1301863    0.0689729
3 months    ki1135781-COHORTS          1                    NA                -0.0244696   -0.1393716    0.0788450
6 months    ki1000304b-SAS-FoodSuppl   1                    NA                -0.0372272   -0.7620504    0.3894384
6 months    ki1017093b-PROVIDE         1                    NA                -0.0839552   -0.5475932    0.2407831
6 months    ki1066203-TanzaniaChild2   1                    NA                -0.1944815   -0.5481660    0.0784024
6 months    ki1101329-Keneba           1                    NA                -0.1666160   -0.3872938    0.0189584
6 months    ki1113344-GMS-Nepal        1                    NA                -0.2193548   -0.5130476    0.0173302
6 months    ki1126311-ZVITAMBO         1                    NA                -0.0761467   -0.1828609    0.0209401
6 months    ki1135781-COHORTS          1                    NA                 0.0443313   -0.0989161    0.1689060
12 months   ki1017093b-PROVIDE         1                    NA                -0.0074885   -0.4109190    0.2805873
12 months   ki1066203-TanzaniaChild2   1                    NA                -0.0200022   -0.2647289    0.1773695
12 months   ki1101329-Keneba           1                    NA                 0.0073049   -0.1620316    0.1519649
12 months   ki1113344-GMS-Nepal        1                    NA                -0.0367280   -0.2210010    0.1197346
12 months   ki1126311-ZVITAMBO         1                    NA                -0.0119114   -0.0937453    0.0637996
12 months   ki1135781-COHORTS          1                    NA                 0.0896222    0.0302158    0.1453896
18 months   ki1017093b-PROVIDE         1                    NA                -0.0889930   -0.4070842    0.1571892
18 months   ki1066203-TanzaniaChild2   1                    NA                -0.0036973   -0.2327400    0.1827894
18 months   ki1101329-Keneba           1                    NA                 0.0078275   -0.1375900    0.1346563
18 months   ki1113344-GMS-Nepal        1                    NA                -0.0033245   -0.1299508    0.1091116
18 months   ki1126311-ZVITAMBO         1                    NA                -0.0122704   -0.0902405    0.0601237
18 months   ki1135781-COHORTS          1                    NA                 0.1500610    0.0884930    0.2074704
24 months   ki1017093b-PROVIDE         1                    NA                -0.1011905   -0.4069626    0.1381288
24 months   ki1066203-TanzaniaChild2   1                    NA                 0.0149551   -0.2347653    0.2141718
24 months   ki1101329-Keneba           1                    NA                 0.0932874   -0.0371136    0.2072924
24 months   ki1113344-GMS-Nepal        1                    NA                 0.0071807   -0.1022230    0.1057252
24 months   ki1126311-ZVITAMBO         1                    NA                -0.0633806   -0.1535528    0.0197429
24 months   ki1135781-COHORTS          1                    NA                 0.0970132    0.0500736    0.1416334


