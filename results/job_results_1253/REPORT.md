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
Birth       ki1000304b-SAS-CompFeed    INDIA                          1        70     21     15      6
Birth       ki1000304b-SAS-CompFeed    INDIA                          2        70     13      9      4
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+       70     36     29      7
Birth       ki1101329-Keneba           GAMBIA                         1      1407    156    140     16
Birth       ki1101329-Keneba           GAMBIA                         2      1407    146    138      8
Birth       ki1101329-Keneba           GAMBIA                         3+     1407   1105   1054     51
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1     13829   5972   5332    640
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2     13829   4125   3718    407
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+    13829   3732   3347    385
Birth       ki1135781-COHORTS          GUATEMALA                      1       407     57     54      3
Birth       ki1135781-COHORTS          GUATEMALA                      2       407     70     66      4
Birth       ki1135781-COHORTS          GUATEMALA                      3+      407    280    268     12
Birth       ki1135781-COHORTS          INDIA                          1      4122    696    582    114
Birth       ki1135781-COHORTS          INDIA                          2      4122   1037    939     98
Birth       ki1135781-COHORTS          INDIA                          3+     4122   2389   2126    263
Birth       ki1135781-COHORTS          PHILIPPINES                    1      3050    675    629     46
Birth       ki1135781-COHORTS          PHILIPPINES                    2      3050    687    645     42
Birth       ki1135781-COHORTS          PHILIPPINES                    3+     3050   1688   1589     99
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1      9734   3136   1826   1310
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2      9734   3351   2300   1051
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+     9734   3247   2285    962
3 months    ki1000304b-SAS-CompFeed    INDIA                          1       412    114     85     29
3 months    ki1000304b-SAS-CompFeed    INDIA                          2       412     98     73     25
3 months    ki1000304b-SAS-CompFeed    INDIA                          3+      412    200    144     56
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        93     17     10      7
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        93     19     12      7
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+       93     57     35     22
3 months    ki1017093b-PROVIDE         BANGLADESH                     1       645    245    207     38
3 months    ki1017093b-PROVIDE         BANGLADESH                     2       645    227    199     28
3 months    ki1017093b-PROVIDE         BANGLADESH                     3+      645    173    161     12
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2263    793    746     47
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2263    740    698     42
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     2263    730    686     44
3 months    ki1101329-Keneba           GAMBIA                         1      1689    212    170     42
3 months    ki1101329-Keneba           GAMBIA                         2      1689    182    160     22
3 months    ki1101329-Keneba           GAMBIA                         3+     1689   1295   1130    165
3 months    ki1113344-GMS-Nepal        NEPAL                          1       571    156    124     32
3 months    ki1113344-GMS-Nepal        NEPAL                          2       571    148    129     19
3 months    ki1113344-GMS-Nepal        NEPAL                          3+      571    267    234     33
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9192   3667   2995    672
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      9192   2814   2342    472
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+     9192   2711   2218    493
3 months    ki1135781-COHORTS          GUATEMALA                      1       474     71     51     20
3 months    ki1135781-COHORTS          GUATEMALA                      2       474     77     54     23
3 months    ki1135781-COHORTS          GUATEMALA                      3+      474    326    217    109
3 months    ki1135781-COHORTS          INDIA                          1      4372    740    626    114
3 months    ki1135781-COHORTS          INDIA                          2      4372   1122    992    130
3 months    ki1135781-COHORTS          INDIA                          3+     4372   2510   2082    428
3 months    ki1135781-COHORTS          PHILIPPINES                    1      2875    614    536     78
3 months    ki1135781-COHORTS          PHILIPPINES                    2      2875    640    574     66
3 months    ki1135781-COHORTS          PHILIPPINES                    3+     2875   1621   1410    211
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1     12293   4549   3089   1460
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2     12293   4149   3180    969
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+    12293   3595   2621    974
6 months    ki1000304b-SAS-CompFeed    INDIA                          1       411    124     92     32
6 months    ki1000304b-SAS-CompFeed    INDIA                          2       411     90     64     26
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+      411    197    142     55
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        93     18     11      7
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        93     18     11      7
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+       93     57     26     31
6 months    ki1017093b-PROVIDE         BANGLADESH                     1       583    211    170     41
6 months    ki1017093b-PROVIDE         BANGLADESH                     2       583    212    179     33
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+      583    160    140     20
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2000    700    644     56
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2000    659    586     73
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     2000    641    577     64
6 months    ki1101329-Keneba           GAMBIA                         1      1623    194    175     19
6 months    ki1101329-Keneba           GAMBIA                         2      1623    164    150     14
6 months    ki1101329-Keneba           GAMBIA                         3+     1623   1265   1071    194
6 months    ki1113344-GMS-Nepal        NEPAL                          1       563    153    118     35
6 months    ki1113344-GMS-Nepal        NEPAL                          2       563    149    120     29
6 months    ki1113344-GMS-Nepal        NEPAL                          3+      563    261    206     55
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      8294   3302   2761    541
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      8294   2522   2133    389
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+     8294   2470   2021    449
6 months    ki1135781-COHORTS          GUATEMALA                      1       464     69     42     27
6 months    ki1135781-COHORTS          GUATEMALA                      2       464     77     50     27
6 months    ki1135781-COHORTS          GUATEMALA                      3+      464    318    161    157
6 months    ki1135781-COHORTS          INDIA                          1      4291    740    616    124
6 months    ki1135781-COHORTS          INDIA                          2      4291   1096    925    171
6 months    ki1135781-COHORTS          INDIA                          3+     4291   2455   1910    545
6 months    ki1135781-COHORTS          PHILIPPINES                    1      2708    574    474    100
6 months    ki1135781-COHORTS          PHILIPPINES                    2      2708    606    497    109
6 months    ki1135781-COHORTS          PHILIPPINES                    3+     2708   1528   1165    363
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1      8314   3214   2281    933
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2      8314   2822   2183    639
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+     8314   2278   1674    604
9 months    ki1000304b-SAS-CompFeed    INDIA                          1       404    117     72     45
9 months    ki1000304b-SAS-CompFeed    INDIA                          2       404     94     59     35
9 months    ki1000304b-SAS-CompFeed    INDIA                          3+      404    193    120     73
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        85     15      7      8
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        85     17      7     10
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+       85     53     14     39
9 months    ki1017093b-PROVIDE         BANGLADESH                     1       605    222    173     49
9 months    ki1017093b-PROVIDE         BANGLADESH                     2       605    222    175     47
9 months    ki1017093b-PROVIDE         BANGLADESH                     3+      605    161    128     33
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1764    620    545     75
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1764    575    477     98
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     1764    569    481     88
9 months    ki1101329-Keneba           GAMBIA                         1      1625    182    164     18
9 months    ki1101329-Keneba           GAMBIA                         2      1625    163    153     10
9 months    ki1101329-Keneba           GAMBIA                         3+     1625   1280   1017    263
9 months    ki1113344-GMS-Nepal        NEPAL                          1       551    153    107     46
9 months    ki1113344-GMS-Nepal        NEPAL                          2       551    143    106     37
9 months    ki1113344-GMS-Nepal        NEPAL                          3+      551    255    183     72
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      7674   3045   2476    569
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      7674   2359   1901    458
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+     7674   2270   1778    492
9 months    ki1135781-COHORTS          GUATEMALA                      1       453     69     28     41
9 months    ki1135781-COHORTS          GUATEMALA                      2       453     71     34     37
9 months    ki1135781-COHORTS          GUATEMALA                      3+      453    313    109    204
9 months    ki1135781-COHORTS          INDIA                          1      3769    646    498    148
9 months    ki1135781-COHORTS          INDIA                          2      3769    941    733    208
9 months    ki1135781-COHORTS          INDIA                          3+     3769   2182   1516    666
9 months    ki1135781-COHORTS          PHILIPPINES                    1      2712    580    469    111
9 months    ki1135781-COHORTS          PHILIPPINES                    2      2712    598    452    146
9 months    ki1135781-COHORTS          PHILIPPINES                    3+     2712   1534   1045    489
12 months   ki1000304b-SAS-CompFeed    INDIA                          1       414    126     77     49
12 months   ki1000304b-SAS-CompFeed    INDIA                          2       414     90     53     37
12 months   ki1000304b-SAS-CompFeed    INDIA                          3+      414    198    101     97
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        91     17      5     12
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        91     18      3     15
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+       91     56     11     45
12 months   ki1017093b-PROVIDE         BANGLADESH                     1       600    219    161     58
12 months   ki1017093b-PROVIDE         BANGLADESH                     2       600    222    166     56
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+      600    159    116     43
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1422    505    430     75
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1422    452    381     71
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     1422    465    378     87
12 months   ki1101329-Keneba           GAMBIA                         1      1530    164    132     32
12 months   ki1101329-Keneba           GAMBIA                         2      1530    154    133     21
12 months   ki1101329-Keneba           GAMBIA                         3+     1530   1212    880    332
12 months   ki1113344-GMS-Nepal        NEPAL                          1       558    155    112     43
12 months   ki1113344-GMS-Nepal        NEPAL                          2       558    140     95     45
12 months   ki1113344-GMS-Nepal        NEPAL                          3+      558    263    160    103
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      6748   2654   2046    608
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      6748   2068   1561    507
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+     6748   2026   1491    535
12 months   ki1135781-COHORTS          GUATEMALA                      1       533     89     31     58
12 months   ki1135781-COHORTS          GUATEMALA                      2       533     82     33     49
12 months   ki1135781-COHORTS          GUATEMALA                      3+      533    362     94    268
12 months   ki1135781-COHORTS          INDIA                          1      3415    584    405    179
12 months   ki1135781-COHORTS          INDIA                          2      3415    855    596    259
12 months   ki1135781-COHORTS          INDIA                          3+     3415   1976   1168    808
12 months   ki1135781-COHORTS          PHILIPPINES                    1      2585    554    403    151
12 months   ki1135781-COHORTS          PHILIPPINES                    2      2585    554    368    186
12 months   ki1135781-COHORTS          PHILIPPINES                    3+     2585   1477    814    663
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1      7203   2714   1630   1084
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2      7203   2488   1574    914
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+     7203   2001   1144    857
18 months   ki1000304b-SAS-CompFeed    INDIA                          1       395    121     68     53
18 months   ki1000304b-SAS-CompFeed    INDIA                          2       395     85     45     40
18 months   ki1000304b-SAS-CompFeed    INDIA                          3+      395    189     75    114
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        82     15      2     13
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        82     17      1     16
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+       82     50      7     43
18 months   ki1017093b-PROVIDE         BANGLADESH                     1       552    203    126     77
18 months   ki1017093b-PROVIDE         BANGLADESH                     2       552    205    128     77
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+      552    144     92     52
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       966    333    266     67
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2       966    321    233     88
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+      966    312    235     77
18 months   ki1101329-Keneba           GAMBIA                         1      1542    155    116     39
18 months   ki1101329-Keneba           GAMBIA                         2      1542    152    121     31
18 months   ki1101329-Keneba           GAMBIA                         3+     1542   1235    794    441
18 months   ki1113344-GMS-Nepal        NEPAL                          1       550    155     74     81
18 months   ki1113344-GMS-Nepal        NEPAL                          2       550    141     70     71
18 months   ki1113344-GMS-Nepal        NEPAL                          3+      550    254    114    140
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1709    640    350    290
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      1709    518    276    242
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+     1709    551    270    281
18 months   ki1135781-COHORTS          GUATEMALA                      1       436     77     17     60
18 months   ki1135781-COHORTS          GUATEMALA                      2       436     66     11     55
18 months   ki1135781-COHORTS          GUATEMALA                      3+      436    293     42    251
18 months   ki1135781-COHORTS          PHILIPPINES                    1      2492    529    275    254
18 months   ki1135781-COHORTS          PHILIPPINES                    2      2492    547    248    299
18 months   ki1135781-COHORTS          PHILIPPINES                    3+     2492   1416    505    911
24 months   ki1017093b-PROVIDE         BANGLADESH                     1       577    211    149     62
24 months   ki1017093b-PROVIDE         BANGLADESH                     2       577    213    138     75
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+      577    153    100     53
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1         6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2         6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+        6      4      3      1
24 months   ki1101329-Keneba           GAMBIA                         1      1376    137     95     42
24 months   ki1101329-Keneba           GAMBIA                         2      1376    139    104     35
24 months   ki1101329-Keneba           GAMBIA                         3+     1376   1100    711    389
24 months   ki1113344-GMS-Nepal        NEPAL                          1       499    136     82     54
24 months   ki1113344-GMS-Nepal        NEPAL                          2       499    130     68     62
24 months   ki1113344-GMS-Nepal        NEPAL                          3+      499    233    126    107
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1       456    177     64    113
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2       456    134     50     84
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+      456    145     44    101
24 months   ki1135781-COHORTS          GUATEMALA                      1       518     95     19     76
24 months   ki1135781-COHORTS          GUATEMALA                      2       518     78     11     67
24 months   ki1135781-COHORTS          GUATEMALA                      3+      518    345     55    290
24 months   ki1135781-COHORTS          INDIA                          1      3383    565    347    218
24 months   ki1135781-COHORTS          INDIA                          2      3383    850    492    358
24 months   ki1135781-COHORTS          INDIA                          3+     3383   1968    852   1116
24 months   ki1135781-COHORTS          PHILIPPINES                    1      2445    524    258    266
24 months   ki1135781-COHORTS          PHILIPPINES                    2      2445    544    227    317
24 months   ki1135781-COHORTS          PHILIPPINES                    3+     2445   1377    452    925
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1      4288   1599    827    772
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2      4288   1444    777    667
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+     4288   1245    619    626


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 30 rows containing missing values (geom_errorbar).
```

![](/tmp/2001e8f8-86b5-4138-9d6a-c77e690be314/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 83 rows containing missing values (geom_errorbar).
```

![](/tmp/2001e8f8-86b5-4138-9d6a-c77e690be314/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/2001e8f8-86b5-4138-9d6a-c77e690be314/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/2001e8f8-86b5-4138-9d6a-c77e690be314/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.1025641   0.0549386   0.1501896
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                0.0547945   0.0178664   0.0917227
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                0.0461538   0.0337783   0.0585294
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1071668   0.0993213   0.1150123
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0986667   0.0895659   0.1077675
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1031618   0.0934027   0.1129209
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1637931   0.1362951   0.1912911
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.0945034   0.0766969   0.1123099
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.1100879   0.0975352   0.1226406
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0681481   0.0491344   0.0871619
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0611354   0.0432174   0.0790533
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0586493   0.0474384   0.0698602
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4177296          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3136377          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2962735          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2543860          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2551020          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2800000          NA          NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4117647   0.1765463   0.6469831
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3684211   0.1503465   0.5864956
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3859649   0.2588991   0.5130307
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1551020   0.1097379   0.2004662
3 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1233480   0.0805374   0.1661587
3 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0693642   0.0314746   0.1072537
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0592686   0.0428305   0.0757067
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0567568   0.0400824   0.0734311
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0602740   0.0430057   0.0775422
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1981132   0.1444444   0.2517820
3 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1208791   0.0735050   0.1682532
3 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1274131   0.1092474   0.1455789
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2051282   0.1417080   0.2685484
3 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1283784   0.0744388   0.1823180
3 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1235955   0.0840837   0.1631073
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1832561   0.1707336   0.1957785
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1677328   0.1539273   0.1815382
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1818517   0.1673312   0.1963722
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2816901   0.1769485   0.3864318
3 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2987013   0.1963646   0.4010380
3 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.3343558   0.2830905   0.3856211
3 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1540541   0.1280411   0.1800670
3 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1158645   0.0971346   0.1345945
3 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.1705179   0.1558033   0.1852326
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1270358   0.1006907   0.1533810
3 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1031250   0.0795592   0.1266908
3 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1301666   0.1137833   0.1465498
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3209497          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2335503          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2709318          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2580645          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2888889          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2791878          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3888889   0.1624598   0.6153180
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3888889   0.1624598   0.6153180
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.5438596   0.4138574   0.6738619
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1943128   0.1408793   0.2477463
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1556604   0.1068176   0.2045032
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1250000   0.0737115   0.1762885
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0800000   0.0598977   0.1001023
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1107739   0.0868055   0.1347423
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0998440   0.0766301   0.1230579
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0979381   0.0560997   0.1397766
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0853659   0.0425874   0.1281444
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1533597   0.1334968   0.1732225
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2287582   0.1621432   0.2953732
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1946309   0.1310034   0.2582583
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2107280   0.1612071   0.2602488
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1638401   0.1512148   0.1764654
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1542427   0.1401457   0.1683397
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1817814   0.1665712   0.1969916
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3913043   0.2760255   0.5065832
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.3506494   0.2439535   0.4573452
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4937107   0.4387011   0.5487203
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1675676   0.1406552   0.1944800
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1560219   0.1345361   0.1775077
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2219959   0.2055546   0.2384372
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1742160   0.1431812   0.2052509
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1798680   0.1492828   0.2104531
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2375654   0.2162222   0.2589086
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2902925          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2264352          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2651449          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3846154          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3723404          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3782383          NA          NA
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5333333   0.2793677   0.7872990
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.5882353   0.3528965   0.8235741
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.7358491   0.6164501   0.8552480
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2207207   0.1661199   0.2753215
9 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2117117   0.1579286   0.2654948
9 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2049689   0.1425624   0.2673755
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1209677   0.0952926   0.1466429
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1704348   0.1396921   0.2011775
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1546573   0.1249395   0.1843751
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0989011   0.0555168   0.1422854
9 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0613497   0.0244990   0.0982004
9 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.2054687   0.1833273   0.2276102
9 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3006536   0.2279299   0.3733773
9 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2587413   0.1868970   0.3305856
9 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2823529   0.2270531   0.3376528
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1868637   0.1730176   0.2007098
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1941501   0.1781873   0.2101128
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2167401   0.1997895   0.2336907
9 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5942029   0.4782116   0.7101942
9 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.5211268   0.4047997   0.6374538
9 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.6517572   0.5989200   0.7045944
9 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2291022   0.1966904   0.2615139
9 months    ki1135781-COHORTS          INDIA                          2                    NA                0.2210414   0.1945256   0.2475573
9 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.3052246   0.2859000   0.3245492
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1913793   0.1593584   0.2234003
9 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2441472   0.2097104   0.2785839
9 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.3187744   0.2954505   0.3420984
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3888889          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4111111          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4898990          NA          NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2648402   0.2063516   0.3233288
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2522523   0.1950743   0.3094302
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2704403   0.2013403   0.3395402
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1485149   0.1174886   0.1795411
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1570796   0.1235225   0.1906368
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1870968   0.1516377   0.2225558
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1951220   0.1344502   0.2557937
12 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1363636   0.0821455   0.1905818
12 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.2739274   0.2488116   0.2990432
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2774194   0.2068716   0.3479671
12 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.3214286   0.2439978   0.3988593
12 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.3916350   0.3325901   0.4506799
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2290882   0.2130987   0.2450776
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2451644   0.2266223   0.2637066
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2640671   0.2448700   0.2832643
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6516854   0.5526100   0.7507608
12 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.5975610   0.4913205   0.7038015
12 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7403315   0.6951225   0.7855404
12 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3065068   0.2691090   0.3439047
12 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3029240   0.2721180   0.3337300
12 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.4089069   0.3872269   0.4305868
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2725632   0.2354773   0.3096490
12 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.3357401   0.2964079   0.3750722
12 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.4488829   0.4235123   0.4742534
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3994105          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3673633          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4282859          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4380165          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4705882          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.6031746          NA          NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3793103   0.3125024   0.4461183
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3756098   0.3092566   0.4419629
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3611111   0.2825887   0.4396335
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2012012   0.1581203   0.2442821
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2741433   0.2253191   0.3229675
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2467949   0.1989296   0.2946601
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2516129   0.1832764   0.3199494
18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2039474   0.1398711   0.2680236
18 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3570850   0.3303538   0.3838162
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5225806   0.4438753   0.6012860
18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5035461   0.4209437   0.5861485
18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5511811   0.4899589   0.6124033
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4531250   0.4145471   0.4917029
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.4671815   0.4242038   0.5101591
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.5099819   0.4682293   0.5517344
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7792208   0.6864715   0.8719701
18 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8333333   0.7433197   0.9233470
18 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.8566553   0.8164848   0.8968257
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4801512   0.4375684   0.5227341
18 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5466179   0.5048911   0.5883448
18 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6433616   0.6184073   0.6683159
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2938389   0.2323226   0.3553551
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3521127   0.2879141   0.4163113
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3464052   0.2709437   0.4218667
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3065693   0.2293348   0.3838039
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2517986   0.1796156   0.3239815
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3536364   0.3253728   0.3818999
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3970588   0.3147438   0.4793739
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4769231   0.3909784   0.5628678
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4592275   0.3951763   0.5232786
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6384181   0.5675592   0.7092769
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.6268657   0.5448886   0.7088427
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.6965517   0.6216383   0.7714652
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8000000   0.7194870   0.8805130
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8589744   0.7816601   0.9362886
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.8405797   0.8019146   0.8792448
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3858407   0.3456956   0.4259858
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.4211765   0.3879788   0.4543742
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.5670732   0.5451791   0.5889672
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5076336   0.4648191   0.5504481
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5827206   0.5412747   0.6241664
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6717502   0.6469431   0.6965573
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4828018          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4619114          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.5028112          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0533049   0.0415629   0.0650470
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035505   0.0984723   0.1086287
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1152353   0.1054865   0.1249842
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3413807          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2669903          NA          NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3870968   0.2875654   0.4866281
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1209302   0.0957486   0.1461119
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0587715   0.0490791   0.0684640
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1355832   0.1192517   0.1519147
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1471103   0.1180314   0.1761893
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1780896   0.1702680   0.1859113
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3206751   0.2786132   0.3627370
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1537054   0.1430133   0.1643975
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1234783   0.1114506   0.1355059
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2768242          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2749392          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4838710   0.3817540   0.5859880
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965000   0.0835560   0.1094440
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1398645   0.1229849   0.1567440
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662648   0.1582516   0.1742780
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4547414   0.4093847   0.5000980
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1957586   0.1838852   0.2076319
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2617272          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3787129          NA          NA
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.6705882   0.5700790   0.7710975
9 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2132231   0.1805589   0.2458874
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1479592   0.1313853   0.1645330
9 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1790769   0.1604292   0.1977247
9 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2813067   0.2437292   0.3188843
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1979411   0.1890258   0.2068564
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6225166   0.5778273   0.6672058
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2711595   0.2569649   0.2853540
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2750737   0.2582642   0.2918832
12 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4420290          NA          NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2616667   0.2264673   0.2968661
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1638537   0.1446086   0.1830988
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2516340   0.2298826   0.2733853
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3422939   0.3028903   0.3816975
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2445169   0.2342613   0.2547725
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7035647   0.6647578   0.7423717
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3648609   0.3487131   0.3810087
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3868472   0.3680689   0.4056255
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3963626          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5240506          NA          NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3731884   0.3328048   0.4135720
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2401656   0.2132131   0.2671181
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3313878   0.3078860   0.3548897
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5309091   0.4891645   0.5726537
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4757168   0.4520324   0.4994011
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8394495   0.8049505   0.8739485
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5874799   0.5681478   0.6068121
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3386628   0.3136483   0.3636773
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6535088   0.6097853   0.6972322
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8359073   0.8039827   0.8678320
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5001478   0.4832966   0.5169990
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4815765          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                 0.5342466   0.2356709   1.2110933
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                 0.4500000   0.2632335   0.7692791
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9206833   0.8184046   1.0357442
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9626290   0.8541012   1.0849470
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.5769680   0.4482824   0.7425945
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.6721156   0.5486645   0.8233437
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.8970951   0.5985491   1.3445507
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.8606146   0.6136598   1.2069511
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7508152          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7092471          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0028149          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1006897          NA          NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.8947368   0.3930436   2.0368071
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 0.9373434   0.4847964   1.8123330
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7952701   0.5051251   1.2520752
3 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.4472163   0.2406700   0.8310234
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9576193   0.6393353   1.4343566
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0169630   0.6825422   1.5152377
3 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.6101518   0.3789033   0.9825335
3 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.6431329   0.4735342   0.8734743
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.6258446   0.3714623   1.0544313
3 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.6025281   0.3862177   0.9399883
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9152917   0.8224335   1.0186342
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9923367   0.8933396   1.1023043
3 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0603896   0.6395629   1.7581165
3 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.1869632   0.7938933   1.7746485
3 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          INDIA                          2                    1                 0.7521031   0.5953278   0.9501639
3 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.1068708   0.9156770   1.3379859
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.8117789   0.5962368   1.1052402
3 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.0246445   0.8039295   1.3059558
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7276850          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8441568          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1194444          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.0818528          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.0000000   0.4389277   2.2782796
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.3984962   0.7452718   2.6242663
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8010815   0.5278121   1.2158333
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.6432927   0.3925509   1.0541958
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3846737   0.9938839   1.9291200
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2480499   0.8862467   1.7575564
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.8716305   0.4511824   1.6838859
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.5658831   1.0020575   2.4469551
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8508150   0.5491611   1.3181671
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9211823   0.6336271   1.3392368
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9414220   0.8353462   1.0609676
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1095048   0.9902115   1.2431698
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8961039   0.5867081   1.3686570
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2617051   0.9208082   1.7288071
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.9310984   0.7535558   1.1504713
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.3248144   1.1100582   1.5811182
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0324422   0.8070727   1.3207447
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.3636257   1.1169864   1.6647248
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7800242          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9133715          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9680851          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.9834197          NA          NA
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.1029412   0.5921691   2.0542766
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.3797170   0.8342741   2.2817668
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9591837   0.6728334   1.3674013
9 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9286348   0.6272972   1.3747273
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.4089275   1.0663989   1.8614768
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2785003   0.9601946   1.7023247
9 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.6203136   0.2948401   1.3050767
9 months    ki1101329-Keneba           GAMBIA                         3+                   1                 2.0775174   1.3224257   3.2637586
9 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8605959   0.5954841   1.2437366
9 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9391304   0.6879522   1.2820164
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0389929   0.9301315   1.1605952
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1598832   1.0414195   1.2918226
9 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8770182   0.6519661   1.1797559
9 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0968597   0.8878804   1.3550262
9 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          INDIA                          2                    1                 0.9648160   0.8014740   1.1614475
9 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.3322640   1.1409782   1.5556190
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.2757239   1.0249836   1.5878024
9 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6656683   1.3876492   1.9993892
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0571429          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2597403          NA          NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9524697   0.6940825   1.3070472
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.0211451   0.7284770   1.4313935
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0576696   0.7844815   1.4259929
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2597849   0.9501585   1.6703087
12 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.6988636   0.4218744   1.1577153
12 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.4038779   1.0151735   1.9414150
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.1586379   0.8162460   1.6446534
12 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.4117075   1.0503960   1.8973016
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0701749   0.9655152   1.1861795
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1526878   1.0421824   1.2749103
12 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9169470   0.7256891   1.1586116
12 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.1360259   0.9643518   1.3382615
12 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          INDIA                          2                    1                 0.9883106   0.8431629   1.1584451
12 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.3340873   1.1679063   1.5239140
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.2317881   1.0293410   1.4740518
12 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6468948   1.4212777   1.9083268
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9197639          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0722950          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0743618          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3770590          NA          NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9902439   0.7716219   1.2708077
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9520202   0.7196436   1.2594324
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3625331   1.0313204   1.8001161
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2266073   0.9188370   1.6374673
18 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8105601   0.5350860   1.2278543
18 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.4191841   1.0707512   1.8810004
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9635759   0.7712073   1.2039286
18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0547293   0.8747179   1.2717859
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0310212   0.9095598   1.1687023
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1254772   1.0000920   1.2665823
18 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0694444   0.9106522   1.2559256
18 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0993743   0.9673539   1.2494123
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1384287   1.0127140   1.2797490
18 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.3399145   1.2162939   1.4760995
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.1983189   0.9078310   1.5817573
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1788952   0.8714866   1.5947392
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8213429   0.5607645   1.2030081
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1535281   0.8856088   1.5024999
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.2011396   0.9126383   1.5808414
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1565729   0.9008628   1.4848662
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9819046   0.8271365   1.1656319
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0910589   0.9348195   1.2734111
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0737179   0.9381070   1.2289326
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0507246   0.9406588   1.1736691
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0915812   0.9580037   1.2437839
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.4697080   1.3153272   1.6422085
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1479157   1.0280052   1.2818131
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.3232974   1.2068997   1.4509208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9567309          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0414445          NA          NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.0492592   -0.0928837   -0.0056347
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0036163   -0.0094624    0.0022299
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0485578   -0.0729674   -0.0241481
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0068367   -0.0233901    0.0097167
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0763489           NA           NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0126043           NA           NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0246679   -0.2368161    0.1874803
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0341718   -0.0677672   -0.0005764
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0004971   -0.0137175    0.0127234
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0625300   -0.1117641   -0.0132960
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0580179   -0.1096897   -0.0063460
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0051664   -0.0148036    0.0044707
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0389850   -0.0582436    0.1362135
3 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0003487   -0.0240537    0.0233564
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0035576   -0.0268444    0.0197292
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0441255           NA           NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0168747           NA           NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0949821   -0.1095944    0.2995585
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0330778   -0.0740790    0.0079234
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0165000   -0.0004935    0.0334935
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0419263    0.0017156    0.0821370
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0173905   -0.0736494    0.0388684
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0024247   -0.0074085    0.0122578
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0634370   -0.0433058    0.1701799
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0281910    0.0033828    0.0529991
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0370100    0.0088802    0.0651397
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0285653           NA           NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0059025           NA           NA
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1372549   -0.0904213    0.3649311
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0074976   -0.0506289    0.0356337
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0269914    0.0053001    0.0486827
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0801758    0.0376514    0.1227002
9 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0193469   -0.0806958    0.0420021
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0110774    0.0001662    0.0219886
9 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0283137   -0.0782347    0.1348620
9 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0420573    0.0121927    0.0719218
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0836944    0.0542100    0.1131789
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0531401           NA           NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0031735   -0.0496777    0.0433307
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0153389   -0.0101421    0.0408198
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0565120   -0.0014969    0.1145210
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0648746    0.0035179    0.1262312
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0154287    0.0027901    0.0280673
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0518793   -0.0378079    0.1415665
12 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0583541    0.0239884    0.0927198
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1142840    0.0805428    0.1480252
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0030478           NA           NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0860341           NA           NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0061219   -0.0591441    0.0469002
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0389644    0.0028698    0.0750591
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0797749    0.0143273    0.1452225
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0083284   -0.0583475    0.0750044
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0225918   -0.0079784    0.0531620
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0602288   -0.0219548    0.1424123
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1073287    0.0696832    0.1449742
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0354506   -0.0144444    0.0853456
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0320934   -0.0414121    0.1055990
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0498350   -0.0207982    0.1204682
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0150907   -0.0399988    0.0701802
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0359073   -0.0356736    0.1074883
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1143071    0.0774659    0.1511483
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1091353    0.0714673    0.1468034
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0012253           NA           NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.9241025   -1.9135260   -0.2706839
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0349227   -0.0929274    0.0200035
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.4213793   -0.6476006   -0.2262190
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1115072   -0.4166265    0.1278941
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2236473           NA           NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0472089           NA           NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0637255   -0.7808193    0.3646116
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2825746   -0.5877282   -0.0360700
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0084575   -0.2604616    0.1931635
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.4611930   -0.8704664   -0.1414721
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3943834   -0.7880254   -0.0874035
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0290102   -0.0845637    0.0236977
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1215715   -0.2404313    0.3779288
3 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0022683   -0.1689905    0.1406758
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0288113   -0.2357752    0.1434909
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1593988           NA           NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0613760           NA           NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1962963   -0.3618005    0.5256723
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2051528   -0.4863799    0.0228654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1709845   -0.0236909    0.3286384
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.2997638   -0.0530775    0.5343831
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0822760   -0.3838537    0.1535800
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0145832   -0.0463663    0.0719825
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1395013   -0.1306047    0.3450780
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.1440090    0.0076228    0.2616511
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1752150    0.0310883    0.2979027
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1091414           NA           NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0155857           NA           NA
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2046784   -0.2235627    0.4830371
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0351631   -0.2585242    0.1485562
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1824249    0.0230790    0.3157799
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.4477172    0.1563883    0.6384400
9 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0687750   -0.3106661    0.1284736
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0559631   -0.0007690    0.1094791
9 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0454826   -0.1420601    0.2022280
9 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.1551017    0.0375911    0.2582642
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3042618    0.1892674    0.4029454
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1202186           NA           NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0121281   -0.2064071    0.1508644
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0936132   -0.0757367    0.2363029
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2245803   -0.0433535    0.4237085
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1895288   -0.0108317    0.3501752
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0630988    0.0099866    0.1133617
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0737378   -0.0631787    0.1930222
12 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1599351    0.0602737    0.2490270
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2954242    0.2027228    0.3773469
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0076895           NA           NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1641714           NA           NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0164044   -0.1688954    0.1161930
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1622398   -0.0017536    0.2993865
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2407298    0.0154057    0.4144885
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0156871   -0.1182733    0.1336002
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0474900   -0.0190224    0.1096611
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0717479   -0.0319319    0.1650109
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1826934    0.1156309    0.2446705
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1076578   -0.0574140    0.2469604
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0947652   -0.1505017    0.2877455
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1115141   -0.0616652    0.2564443
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0230918   -0.0649916    0.1038900
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0429561   -0.0467747    0.1249951
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2285466    0.1510143    0.2989985
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1769469    0.1131073    0.2361912
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0025443           NA           NA
