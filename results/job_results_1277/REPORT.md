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
Birth       ki1000304b-SAS-CompFeed    INDIA                          1        70     21     20      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          2        70     13     11      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+       70     36     35      1
Birth       ki1101329-Keneba           GAMBIA                         1      1407    156    153      3
Birth       ki1101329-Keneba           GAMBIA                         2      1407    146    144      2
Birth       ki1101329-Keneba           GAMBIA                         3+     1407   1105   1084     21
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1     13829   5972   5777    195
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2     13829   4125   4022    103
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+    13829   3732   3589    143
Birth       ki1135781-COHORTS          GUATEMALA                      1       407     57     56      1
Birth       ki1135781-COHORTS          GUATEMALA                      2       407     70     69      1
Birth       ki1135781-COHORTS          GUATEMALA                      3+      407    280    278      2
Birth       ki1135781-COHORTS          INDIA                          1      4122    696    674     22
Birth       ki1135781-COHORTS          INDIA                          2      4122   1037   1016     21
Birth       ki1135781-COHORTS          INDIA                          3+     4122   2389   2319     70
Birth       ki1135781-COHORTS          PHILIPPINES                    1      3050    675    661     14
Birth       ki1135781-COHORTS          PHILIPPINES                    2      3050    687    677     10
Birth       ki1135781-COHORTS          PHILIPPINES                    3+     3050   1688   1666     22
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1      9734   3136   2641    495
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2      9734   3351   3045    306
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+     9734   3247   2952    295
3 months    ki1000304b-SAS-CompFeed    INDIA                          1       412    114    106      8
3 months    ki1000304b-SAS-CompFeed    INDIA                          2       412     98     93      5
3 months    ki1000304b-SAS-CompFeed    INDIA                          3+      412    200    183     17
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        93     17     14      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        93     19     18      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+       93     57     49      8
3 months    ki1017093b-PROVIDE         BANGLADESH                     1       645    245    240      5
3 months    ki1017093b-PROVIDE         BANGLADESH                     2       645    227    224      3
3 months    ki1017093b-PROVIDE         BANGLADESH                     3+      645    173    171      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2263    793    782     11
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2263    740    733      7
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     2263    730    725      5
3 months    ki1101329-Keneba           GAMBIA                         1      1689    212    200     12
3 months    ki1101329-Keneba           GAMBIA                         2      1689    182    180      2
3 months    ki1101329-Keneba           GAMBIA                         3+     1689   1295   1258     37
3 months    ki1113344-GMS-Nepal        NEPAL                          1       571    156    149      7
3 months    ki1113344-GMS-Nepal        NEPAL                          2       571    148    142      6
3 months    ki1113344-GMS-Nepal        NEPAL                          3+      571    267    258      9
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9192   3667   3440    227
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      9192   2814   2674    140
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+     9192   2711   2552    159
3 months    ki1135781-COHORTS          GUATEMALA                      1       474     71     64      7
3 months    ki1135781-COHORTS          GUATEMALA                      2       474     77     71      6
3 months    ki1135781-COHORTS          GUATEMALA                      3+      474    326    295     31
3 months    ki1135781-COHORTS          INDIA                          1      4372    740    711     29
3 months    ki1135781-COHORTS          INDIA                          2      4372   1122   1089     33
3 months    ki1135781-COHORTS          INDIA                          3+     4372   2510   2410    100
3 months    ki1135781-COHORTS          PHILIPPINES                    1      2875    614    597     17
3 months    ki1135781-COHORTS          PHILIPPINES                    2      2875    640    626     14
3 months    ki1135781-COHORTS          PHILIPPINES                    3+     2875   1621   1578     43
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1     12293   4549   4028    521
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2     12293   4149   3913    236
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+    12293   3595   3327    268
6 months    ki1000304b-SAS-CompFeed    INDIA                          1       411    124    115      9
6 months    ki1000304b-SAS-CompFeed    INDIA                          2       411     90     81      9
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+      411    197    178     19
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        93     18     16      2
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        93     18     17      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+       93     57     47     10
6 months    ki1017093b-PROVIDE         BANGLADESH                     1       583    211    206      5
6 months    ki1017093b-PROVIDE         BANGLADESH                     2       583    212    207      5
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+      583    160    156      4
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2000    700    696      4
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2000    659    649     10
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     2000    641    637      4
6 months    ki1101329-Keneba           GAMBIA                         1      1623    194    190      4
6 months    ki1101329-Keneba           GAMBIA                         2      1623    164    159      5
6 months    ki1101329-Keneba           GAMBIA                         3+     1623   1265   1218     47
6 months    ki1113344-GMS-Nepal        NEPAL                          1       563    153    147      6
6 months    ki1113344-GMS-Nepal        NEPAL                          2       563    149    143      6
6 months    ki1113344-GMS-Nepal        NEPAL                          3+      563    261    253      8
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      8294   3302   3160    142
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      8294   2522   2430     92
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+     8294   2470   2358    112
6 months    ki1135781-COHORTS          GUATEMALA                      1       464     69     61      8
6 months    ki1135781-COHORTS          GUATEMALA                      2       464     77     68      9
6 months    ki1135781-COHORTS          GUATEMALA                      3+      464    318    263     55
6 months    ki1135781-COHORTS          INDIA                          1      4291    740    713     27
6 months    ki1135781-COHORTS          INDIA                          2      4291   1096   1056     40
6 months    ki1135781-COHORTS          INDIA                          3+     4291   2455   2314    141
6 months    ki1135781-COHORTS          PHILIPPINES                    1      2708    574    553     21
6 months    ki1135781-COHORTS          PHILIPPINES                    2      2708    606    584     22
6 months    ki1135781-COHORTS          PHILIPPINES                    3+     2708   1528   1439     89
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1      8314   3214   2950    264
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2      8314   2822   2672    150
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+     8314   2278   2144    134
9 months    ki1000304b-SAS-CompFeed    INDIA                          1       404    117    103     14
9 months    ki1000304b-SAS-CompFeed    INDIA                          2       404     94     80     14
9 months    ki1000304b-SAS-CompFeed    INDIA                          3+      404    193    170     23
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        85     15     13      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        85     17     12      5
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+       85     53     40     13
9 months    ki1017093b-PROVIDE         BANGLADESH                     1       605    222    213      9
9 months    ki1017093b-PROVIDE         BANGLADESH                     2       605    222    213      9
9 months    ki1017093b-PROVIDE         BANGLADESH                     3+      605    161    154      7
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1764    620    611      9
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1764    575    562     13
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     1764    569    557     12
9 months    ki1101329-Keneba           GAMBIA                         1      1625    182    176      6
9 months    ki1101329-Keneba           GAMBIA                         2      1625    163    160      3
9 months    ki1101329-Keneba           GAMBIA                         3+     1625   1280   1209     71
9 months    ki1113344-GMS-Nepal        NEPAL                          1       551    153    142     11
9 months    ki1113344-GMS-Nepal        NEPAL                          2       551    143    133     10
9 months    ki1113344-GMS-Nepal        NEPAL                          3+      551    255    241     14
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      7674   3045   2916    129
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      7674   2359   2244    115
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+     7674   2270   2145    125
9 months    ki1135781-COHORTS          GUATEMALA                      1       453     69     59     10
9 months    ki1135781-COHORTS          GUATEMALA                      2       453     71     54     17
9 months    ki1135781-COHORTS          GUATEMALA                      3+      453    313    225     88
9 months    ki1135781-COHORTS          INDIA                          1      3769    646    609     37
9 months    ki1135781-COHORTS          INDIA                          2      3769    941    892     49
9 months    ki1135781-COHORTS          INDIA                          3+     3769   2182   1964    218
9 months    ki1135781-COHORTS          PHILIPPINES                    1      2712    580    552     28
9 months    ki1135781-COHORTS          PHILIPPINES                    2      2712    598    567     31
9 months    ki1135781-COHORTS          PHILIPPINES                    3+     2712   1534   1397    137
12 months   ki1000304b-SAS-CompFeed    INDIA                          1       414    126    109     17
12 months   ki1000304b-SAS-CompFeed    INDIA                          2       414     90     77     13
12 months   ki1000304b-SAS-CompFeed    INDIA                          3+      414    198    165     33
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        91     17      8      9
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        91     18     11      7
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+       91     56     31     25
12 months   ki1017093b-PROVIDE         BANGLADESH                     1       600    219    206     13
12 months   ki1017093b-PROVIDE         BANGLADESH                     2       600    222    211     11
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+      600    159    147     12
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1422    505    494     11
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1422    452    443      9
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     1422    465    452     13
12 months   ki1101329-Keneba           GAMBIA                         1      1530    164    156      8
12 months   ki1101329-Keneba           GAMBIA                         2      1530    154    151      3
12 months   ki1101329-Keneba           GAMBIA                         3+     1530   1212   1115     97
12 months   ki1113344-GMS-Nepal        NEPAL                          1       558    155    143     12
12 months   ki1113344-GMS-Nepal        NEPAL                          2       558    140    128     12
12 months   ki1113344-GMS-Nepal        NEPAL                          3+      558    263    236     27
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      6748   2654   2476    178
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      6748   2068   1931    137
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+     6748   2026   1894    132
12 months   ki1135781-COHORTS          GUATEMALA                      1       533     89     67     22
12 months   ki1135781-COHORTS          GUATEMALA                      2       533     82     58     24
12 months   ki1135781-COHORTS          GUATEMALA                      3+      533    362    224    138
12 months   ki1135781-COHORTS          INDIA                          1      3415    584    536     48
12 months   ki1135781-COHORTS          INDIA                          2      3415    855    778     77
12 months   ki1135781-COHORTS          INDIA                          3+     3415   1976   1670    306
12 months   ki1135781-COHORTS          PHILIPPINES                    1      2585    554    505     49
12 months   ki1135781-COHORTS          PHILIPPINES                    2      2585    554    501     53
12 months   ki1135781-COHORTS          PHILIPPINES                    3+     2585   1477   1235    242
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1      7203   2714   2404    310
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2      7203   2488   2230    258
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+     7203   2001   1750    251
18 months   ki1000304b-SAS-CompFeed    INDIA                          1       395    121     97     24
18 months   ki1000304b-SAS-CompFeed    INDIA                          2       395     85     68     17
18 months   ki1000304b-SAS-CompFeed    INDIA                          3+      395    189    146     43
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        82     15      9      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        82     17     11      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+       82     50     27     23
18 months   ki1017093b-PROVIDE         BANGLADESH                     1       552    203    180     23
18 months   ki1017093b-PROVIDE         BANGLADESH                     2       552    205    185     20
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+      552    144    130     14
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       966    333    318     15
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2       966    321    308     13
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+      966    312    301     11
18 months   ki1101329-Keneba           GAMBIA                         1      1542    155    145     10
18 months   ki1101329-Keneba           GAMBIA                         2      1542    152    148      4
18 months   ki1101329-Keneba           GAMBIA                         3+     1542   1235   1105    130
18 months   ki1113344-GMS-Nepal        NEPAL                          1       550    155    126     29
18 months   ki1113344-GMS-Nepal        NEPAL                          2       550    141    124     17
18 months   ki1113344-GMS-Nepal        NEPAL                          3+      550    254    215     39
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1709    640    527    113
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      1709    518    445     73
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+     1709    551    439    112
18 months   ki1135781-COHORTS          GUATEMALA                      1       436     77     51     26
18 months   ki1135781-COHORTS          GUATEMALA                      2       436     66     32     34
18 months   ki1135781-COHORTS          GUATEMALA                      3+      436    293    138    155
18 months   ki1135781-COHORTS          PHILIPPINES                    1      2492    529    443     86
18 months   ki1135781-COHORTS          PHILIPPINES                    2      2492    547    425    122
18 months   ki1135781-COHORTS          PHILIPPINES                    3+     2492   1416    997    419
24 months   ki1017093b-PROVIDE         BANGLADESH                     1       577    211    193     18
24 months   ki1017093b-PROVIDE         BANGLADESH                     2       577    213    195     18
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+      577    153    140     13
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1         6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2         6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+        6      4      3      1
24 months   ki1101329-Keneba           GAMBIA                         1      1376    137    129      8
24 months   ki1101329-Keneba           GAMBIA                         2      1376    139    135      4
24 months   ki1101329-Keneba           GAMBIA                         3+     1376   1100    997    103
24 months   ki1113344-GMS-Nepal        NEPAL                          1       499    136    122     14
24 months   ki1113344-GMS-Nepal        NEPAL                          2       499    130    116     14
24 months   ki1113344-GMS-Nepal        NEPAL                          3+      499    233    207     26
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1       456    177    126     51
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2       456    134     97     37
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+      456    145    102     43
24 months   ki1135781-COHORTS          GUATEMALA                      1       518     95     58     37
24 months   ki1135781-COHORTS          GUATEMALA                      2       518     78     38     40
24 months   ki1135781-COHORTS          GUATEMALA                      3+      518    345    165    180
24 months   ki1135781-COHORTS          INDIA                          1      3383    565    476     89
24 months   ki1135781-COHORTS          INDIA                          2      3383    850    715    135
24 months   ki1135781-COHORTS          INDIA                          3+     3383   1968   1474    494
24 months   ki1135781-COHORTS          PHILIPPINES                    1      2445    524    431     93
24 months   ki1135781-COHORTS          PHILIPPINES                    2      2445    544    403    141
24 months   ki1135781-COHORTS          PHILIPPINES                    3+     2445   1377    922    455
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1      4288   1599   1353    246
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2      4288   1444   1245    199
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+     4288   1245   1024    221


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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA

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

![](/tmp/eee2fe5c-9b59-4c30-96a4-5b2637bc9696/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 72 rows containing missing values (geom_errorbar).
```

![](/tmp/eee2fe5c-9b59-4c30-96a4-5b2637bc9696/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/eee2fe5c-9b59-4c30-96a4-5b2637bc9696/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/eee2fe5c-9b59-4c30-96a4-5b2637bc9696/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0326524   0.0281447   0.0371601
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0249697   0.0202079   0.0297315
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0383173   0.0321583   0.0444762
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.0316092   0.0186096   0.0446087
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.0202507   0.0116766   0.0288248
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.0293010   0.0225374   0.0360645
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0207407   0.0099878   0.0314937
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0145560   0.0055987   0.0235134
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0130332   0.0076218   0.0184446
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1578444          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0913160          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0908531          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0701754          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0510204          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0850000          NA          NA
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0138714   0.0057293   0.0220134
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0094595   0.0024836   0.0164353
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0068493   0.0008650   0.0128336
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0448718   0.0123568   0.0773868
3 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0405405   0.0087384   0.0723427
3 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0337079   0.0120412   0.0553746
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0619035   0.0541034   0.0697035
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0497512   0.0417173   0.0577852
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0586499   0.0498046   0.0674953
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0985915   0.0291758   0.1680073
3 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0779221   0.0179878   0.1378564
3 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0950920   0.0632154   0.1269686
3 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0391892   0.0252067   0.0531717
3 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0294118   0.0195244   0.0392991
3 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.0398406   0.0321883   0.0474930
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0276873   0.0147071   0.0406675
3 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0218750   0.0105404   0.0332096
3 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0265268   0.0187027   0.0343510
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1145307          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0568812          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0745480          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0725806          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1000000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0964467          NA          NA
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0392157   0.0084312   0.0700001
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0402685   0.0086749   0.0718620
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0306513   0.0097209   0.0515818
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0430042   0.0360844   0.0499241
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0364790   0.0291616   0.0437963
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0453441   0.0371385   0.0535497
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1159420   0.0403192   0.1915648
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1168831   0.0450448   0.1887214
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1729560   0.1313424   0.2145696
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0364865   0.0229758   0.0499972
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0364964   0.0253932   0.0475995
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.0574338   0.0482290   0.0666386
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0365854   0.0212239   0.0519468
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0363036   0.0214087   0.0511985
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0582461   0.0465007   0.0699915
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0821406          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0531538          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0588235          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1196581          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1489362          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1191710          NA          NA
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0405405   0.0145755   0.0665056
9 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0405405   0.0145755   0.0665056
9 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0434783   0.0119516   0.0750049
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0145161   0.0050988   0.0239334
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0226087   0.0104550   0.0347624
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0210896   0.0092804   0.0328988
9 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0718954   0.0309273   0.1128635
9 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0699301   0.0280927   0.1117674
9 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0549020   0.0269183   0.0828856
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0423645   0.0352100   0.0495191
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0487495   0.0400590   0.0574400
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0550661   0.0456817   0.0644505
9 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1449275   0.0617741   0.2280810
9 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2394366   0.1400651   0.3388081
9 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2811502   0.2312911   0.3310092
9 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0572755   0.0393544   0.0751967
9 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0520723   0.0378751   0.0662694
9 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.0999083   0.0873242   0.1124925
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0482759   0.0308283   0.0657234
9 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0518395   0.0340670   0.0696120
9 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0893090   0.0750349   0.1035831
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1349206          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1444444          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1666667          NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5294118   0.2908283   0.7679953
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3888889   0.1624327   0.6153450
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4464286   0.3155055   0.5773517
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0593607   0.0280387   0.0906827
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0495495   0.0209790   0.0781201
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0754717   0.0343791   0.1165643
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0217822   0.0090465   0.0345179
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0199115   0.0070285   0.0327945
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0279570   0.0129683   0.0429456
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0774194   0.0353081   0.1195307
12 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0857143   0.0393011   0.1321274
12 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1026616   0.0659467   0.1393765
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0670686   0.0575513   0.0765859
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0662476   0.0555273   0.0769679
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0651530   0.0544057   0.0759003
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2471910   0.1574854   0.3368966
12 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2926829   0.1941107   0.3912552
12 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.3812155   0.3311364   0.4312946
12 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0821918   0.0599128   0.1044708
12 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0900585   0.0708675   0.1092495
12 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1548583   0.1389050   0.1708116
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0884477   0.0647987   0.1120966
12 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0956679   0.0711702   0.1201655
12 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1638456   0.1449656   0.1827257
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1142225          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1036977          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1254373          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1983471          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2275132          NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4000000   0.1505563   0.6494437
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3529412   0.1243755   0.5815069
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4600000   0.3210037   0.5989963
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1133005   0.0696592   0.1569418
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0975610   0.0569062   0.1382158
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0972222   0.0487901   0.1456544
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0450450   0.0227573   0.0673328
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0404984   0.0189229   0.0620740
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0352564   0.0147816   0.0557313
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1870968   0.1256456   0.2485479
18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1205674   0.0667714   0.1743634
18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1535433   0.1091677   0.1979189
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1765625   0.1470130   0.2061120
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1409266   0.1109542   0.1708991
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2032668   0.1696552   0.2368784
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3376623   0.2319118   0.4434128
18 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.5151515   0.3944410   0.6358621
18 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.5290102   0.4717899   0.5862306
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1625709   0.1311222   0.1940196
18 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2230347   0.1881425   0.2579270
18 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2959040   0.2721249   0.3196830
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0853081   0.0475842   0.1230319
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0845070   0.0471211   0.1218930
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0849673   0.0407469   0.1291878
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1029412   0.0518178   0.1540645
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1076923   0.0543512   0.1610334
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1115880   0.0711191   0.1520569
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2881356   0.2213419   0.3549293
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2761194   0.2003394   0.3518994
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2965517   0.2221287   0.3709747
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3894737   0.2913221   0.4876252
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.5128205   0.4017887   0.6238524
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.5217391   0.4689776   0.5745006
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.1575221   0.1274795   0.1875648
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1588235   0.1342479   0.1833991
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.2510163   0.2318566   0.2701759
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1774809   0.1447604   0.2102014
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2591912   0.2223613   0.2960211
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.3304285   0.3055796   0.3552774
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1538462          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1378116          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1775100          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0318895   0.0289609   0.0348181
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0274139   0.0224285   0.0323992
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1125950          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0728155          NA          NA
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0101635   0.0060301   0.0142969
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0385289   0.0227284   0.0543294
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0572237   0.0524751   0.0619722
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0928270   0.0666753   0.1189787
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0370540   0.0314541   0.0426538
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0257391   0.0199497   0.0315286
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0833808          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0900243          NA          NA
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0355240   0.0202206   0.0508273
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417169   0.0374137   0.0460201
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1551724   0.1221925   0.1881523
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0484735   0.0420469   0.0549002
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0659129          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1262376          NA          NA
9 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0413223   0.0254493   0.0571953
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0192744   0.0128566   0.0256922
9 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0635209   0.0431376   0.0839041
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0480844   0.0432974   0.0528715
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2538631   0.2137406   0.2939856
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0806580   0.0719633   0.0893527
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0722714   0.0625243   0.0820185
12 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1521739          NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4505495   0.3477567   0.5533422
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0409816   0.0790184
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0232068   0.0153786   0.0310349
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0913978   0.0674660   0.1153296
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0662418   0.0603075   0.0721762
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3452158   0.3048153   0.3856163
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1262079   0.1150685   0.1373474
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1330754   0.1199794   0.1461715
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1137026          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2126582          NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4268293   0.3191146   0.5345439
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1032609   0.0778527   0.1286690
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0403727   0.0279539   0.0527915
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1545455   0.1243087   0.1847822
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1743710   0.1563767   0.1923652
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4931193   0.4461372   0.5401014
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2516051   0.2345645   0.2686458
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2872807   0.2457035   0.3288579
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4961390   0.4530407   0.5392373
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2122377   0.1984570   0.2260183
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2817996   0.2639639   0.2996353
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1553172          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7647130   0.6043028   0.9677035
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1734905   0.9494248   1.4504361
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.6406592   0.3550449   1.1560348
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.9269759   0.5784298   1.4855465
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7018091   0.3138795   1.5691883
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.6283852   0.3234162   1.2209285
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.5785193          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.5755865          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7270408          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2112500          NA          NA
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6819410   0.2657124   1.7501766
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.4937734   0.1723469   1.4146595
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9034749   0.3105468   2.6284827
3 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.7512039   0.2851597   1.9789164
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8036908   0.6548387   0.9863787
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9474421   0.7783994   1.1531952
3 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.7903525   0.2785873   2.2422313
3 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9645048   0.4422221   2.1036252
3 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          INDIA                          2                    1                 0.7505071   0.4596810   1.2253299
3 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.0166232   0.6779221   1.5245448
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7900735   0.3928247   1.5890452
3 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9580869   0.5506266   1.6670654
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.4966458          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.6508998          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.3777778          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3288212          NA          NA
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0268456   0.3384542   3.1153756
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.7816092   0.2761410   2.2123227
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8482648   0.6559191   1.0970153
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0544107   0.8276422   1.3433123
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0081169   0.4114290   2.4701702
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.4917453   0.7443365   2.9896478
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 1.0002703   0.6194218   1.6152817
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.5741118   1.0514846   2.3565043
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9922992   0.5516806   1.7848331
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.5920593   0.9992361   2.5365907
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.6471071          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7161319          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.2446809          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.9959289          NA          NA
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0000000   0.4042335   2.4738176
9 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.0724638   0.4075840   2.8219420
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.5574879   0.6706871   3.6168409
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.4528412   0.6166451   3.4229540
9 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9726637   0.4257361   2.2222092
9 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.7636364   0.3555139   1.6402749
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1507142   0.9001633   1.4710031
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2998155   1.0225476   1.6522657
9 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.6521127   0.8137751   3.3540917
9 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.9399361   1.0640845   3.5367043
9 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          INDIA                          2                    1                 0.9091536   0.6003419   1.3768158
9 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.7443456   1.2449368   2.4440932
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0738175   0.6525066   1.7671606
9 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.8499720   1.2460685   2.7465557
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0705882          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2352941          NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.7345679   0.3517606   1.5339693
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 0.8432540   0.4925468   1.4436745
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8347193   0.3820298   1.8238273
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.2714078   0.5956628   2.7137468
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9141191   0.3821851   2.1864111
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2834800   0.5805926   2.8373093
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.1071429   0.5138981   2.3852304
12 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.3260456   0.6915825   2.5425702
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9877589   0.7964871   1.2249635
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9714387   0.7814766   1.2075770
12 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1840355   0.7216822   1.9426002
12 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.5421899   1.0483927   2.2685674
12 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0957115   0.7761644   1.5468163
12 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.8841093   1.4098422   2.5179186
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0816327   0.7469569   1.5662607
12 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.8524588   1.3845331   2.4785276
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9078571          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0981832          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0083333          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1470459          NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.8823529   0.3590815   2.1681616
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.1500000   0.5751080   2.2995680
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8610817   0.4882007   1.5187640
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8580918   0.4571477   1.6106865
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8990654   0.4345368   1.8601845
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.7826923   0.3649649   1.6785374
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.6444118   0.3702936   1.1214524
18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.8206625   0.5298611   1.2710631
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7981686   0.6089196   1.0462352
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1512455   0.9098949   1.4566147
18 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.5256410   1.0317690   2.2559125
18 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.5666842   1.1248220   2.1821225
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3719230   1.0697497   1.7594514
18 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.8201534   1.4761643   2.2443020
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9906103   0.5299638   1.8516525
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9960058   0.5031125   1.9717807
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0461538   0.5187748   2.1096587
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0839975   0.5860828   2.0049225
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9582968   0.6690848   1.3725206
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0292089   0.7313588   1.4483602
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.3167013   0.9444848   1.8356063
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.3396005   1.0210462   1.7575398
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0082617   0.7887012   1.2889440
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.5935302   1.2976112   1.9569333
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.4603890   1.1571231   1.8431367
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.8617690   1.5256469   2.2719437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8957756          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1538153          NA          NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0007629   -0.0041313   0.0026055
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0041953   -0.0158904   0.0074997
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0056588   -0.0147781   0.0034606
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0452494           NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0026401           NA          NA
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0037079   -0.0097838   0.0023681
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0063429   -0.0333467   0.0206609
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0046798   -0.0105829   0.0012233
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0057645   -0.0694743   0.0579452
3 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0021352   -0.0148113   0.0105409
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0019482   -0.0133516   0.0094553
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0311499           NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0174437           NA          NA
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0036917   -0.0295140   0.0221306
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0012873   -0.0066047   0.0040301
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0392304   -0.0322233   0.1106841
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0119871   -0.0006968   0.0246710
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0121591   -0.0020444   0.0263626
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0162277           NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0065795           NA          NA
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0007818   -0.0199875   0.0215510
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0047582   -0.0034596   0.0129760
9 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0083746   -0.0424592   0.0257101
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0057199   -0.0000664   0.0115062
9 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1089356    0.0288237   0.1890475
9 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0233825    0.0064511   0.0403138
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0239955    0.0075877   0.0404033
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0172533           NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0788623   -0.2938526   0.1361280
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0006393   -0.0243925   0.0256710
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0014246   -0.0089809   0.0118301
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0139785   -0.0229118   0.0508688
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0008267   -0.0082123   0.0065588
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0980247    0.0144072   0.1816423
12 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0440161    0.0227870   0.0652453
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0446278    0.0224679   0.0667877
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0005199           NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0143111           NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0268293   -0.1991362   0.2527947
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0100396   -0.0439412   0.0238620
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0046724   -0.0222364   0.0128916
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0325513   -0.0831683   0.0180656
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0021915   -0.0254935   0.0211104
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1554569    0.0582949   0.2526190
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0890342    0.0597169   0.1183516
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0003860   -0.0303952   0.0296231
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0052753   -0.0386949   0.0492454
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0008549   -0.0530718   0.0513620
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1066653    0.0174600   0.1958706
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0547155    0.0265910   0.0828401
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1043187    0.0738254   0.1348119
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0014710           NA          NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0239223   -0.1351665   0.0764202
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.1530363   -0.6680434   0.2029627
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.3752013   -1.1203069   0.1080637
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.4018771           NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0362573           NA          NA
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3648226   -1.0870059   0.1074578
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1646270   -1.1205233   0.3603673
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0817807   -0.1898040   0.0164351
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0620999   -1.0264434   0.4433320
3 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0576243   -0.4613911   0.2345861
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0756889   -0.6234289   0.2872453
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.3735858           NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1937663           NA          NA
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1039216   -1.1301455   0.4279063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0308589   -0.1664975   0.0890079
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2528180   -0.3795947   0.5953298
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.2472908   -0.0629283   0.4669715
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2494457   -0.1025563   0.4890676
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2461993           NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0521200           NA          NA
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0189189   -0.6374810   0.4121946
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2468691   -0.3129746   0.5679991
9 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1318394   -0.8160834   0.2946026
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1189555   -0.0093768   0.2309716
9 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.4291115    0.0155301   0.6689450
9 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.2898963    0.0484028   0.4701043
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3320197    0.0672296   0.5216425
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1133787           NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1750359   -0.7659835   0.2181641
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0106545   -0.5082724   0.3510426
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0613861   -0.5126585   0.4175844
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1529412   -0.3614693   0.4729895
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0124804   -0.1303392   0.0930894
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2839521   -0.0034882   0.4890577
12 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3487589    0.1598061   0.4952177
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3353570    0.1494828   0.4806098
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0045727           NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0672963           NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0628571   -0.6488770   0.4673728
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0972258   -0.4790637   0.1860361
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1157311   -0.6458324   0.2436314
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2106262   -0.5848351   0.0752251
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0125682   -0.1554176   0.1126201
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.3152522    0.0859286   0.4870427
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3538650    0.2278538   0.4593117
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0045459   -0.4280475   0.2933621
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0487473   -0.4579228   0.3793349
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0029758   -0.2022498   0.1632683
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2149908    0.0122698   0.3761055
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2578031    0.1134822   0.3786293
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3701875    0.2536575   0.4685230
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0094710           NA          NA
