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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A             n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  -------  ------  -----  -----  -----
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female      265    136    103     33
3 months    ki0047075b-MAL-ED          BANGLADESH                     Male        265    129     84     45
3 months    ki0047075b-MAL-ED          BRAZIL                         Female      233    113     94     19
3 months    ki0047075b-MAL-ED          BRAZIL                         Male        233    120    101     19
3 months    ki0047075b-MAL-ED          INDIA                          Female      251    138    108     30
3 months    ki0047075b-MAL-ED          INDIA                          Male        251    113     75     38
3 months    ki0047075b-MAL-ED          NEPAL                          Female      240    110     97     13
3 months    ki0047075b-MAL-ED          NEPAL                          Male        240    130    105     25
3 months    ki0047075b-MAL-ED          PERU                           Female      303    143    101     42
3 months    ki0047075b-MAL-ED          PERU                           Male        303    160    101     59
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female      314    159    122     37
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male        314    155    110     45
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      262    133     89     44
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        262    129     91     38
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female      362    182    122     60
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male        362    180    115     65
3 months    ki1000108-IRC              INDIA                          Female      410    185    132     53
3 months    ki1000108-IRC              INDIA                          Male        410    225    148     77
3 months    ki1000109-EE               PAKISTAN                       Female      379    185     77    108
3 months    ki1000109-EE               PAKISTAN                       Male        379    194     61    133
3 months    ki1000109-ResPak           PAKISTAN                       Female      276    132     65     67
3 months    ki1000109-ResPak           PAKISTAN                       Male        276    144     70     74
3 months    ki1000304b-SAS-CompFeed    INDIA                          Female      470    218    155     63
3 months    ki1000304b-SAS-CompFeed    INDIA                          Male        470    252    159     93
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female      629    297    242     55
3 months    ki1017093-NIH-Birth        BANGLADESH                     Male        629    332    247     85
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female      700    332    278     54
3 months    ki1017093b-PROVIDE         BANGLADESH                     Male        700    368    292     76
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female      758    381    319     62
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male        758    377    318     59
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female     2393   1181   1092     89
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male       2393   1212   1057    155
3 months    ki1101329-Keneba           GAMBIA                         Female     2296   1102    857    245
3 months    ki1101329-Keneba           GAMBIA                         Male       2296   1194    877    317
3 months    ki1113344-GMS-Nepal        NEPAL                          Female      593    281    240     41
3 months    ki1113344-GMS-Nepal        NEPAL                          Male        593    312    259     53
3 months    ki1114097-CMIN             BANGLADESH                     Female      269    115     63     52
3 months    ki1114097-CMIN             BANGLADESH                     Male        269    154     76     78
3 months    ki1114097-CMIN             BRAZIL                         Female      116     60     56      4
3 months    ki1114097-CMIN             BRAZIL                         Male        116     56     53      3
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female      563    290    247     43
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Male        563    273    229     44
3 months    ki1114097-CMIN             PERU                           Female      632    296    269     27
3 months    ki1114097-CMIN             PERU                           Male        632    336    309     27
3 months    ki1114097-CONTENT          PERU                           Female      215    106    101      5
3 months    ki1114097-CONTENT          PERU                           Male        215    109     79     30
3 months    ki1119695-PROBIT           BELARUS                        Female     8125   4217   4116    101
3 months    ki1119695-PROBIT           BELARUS                        Male       8125   3908   3407    501
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female    14031   6819   5488   1331
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male      14031   7212   5603   1609
3 months    ki1135781-COHORTS          GUATEMALA                      Female      515    237    172     65
3 months    ki1135781-COHORTS          GUATEMALA                      Male        515    278    201     77
3 months    ki1135781-COHORTS          INDIA                          Female     7176   3480   2901    579
3 months    ki1135781-COHORTS          INDIA                          Male       7176   3696   2937    759
3 months    ki1135781-COHORTS          PHILIPPINES                    Female     3056   1437   1269    168
3 months    ki1135781-COHORTS          PHILIPPINES                    Male       3056   1619   1345    274
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Female    13368   6601   4044   2557
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Male      13368   6767   3932   2835
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Female     1156    597    437    160
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Male       1156    559    403    156
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female      246    125     92     33
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male        246    121     70     51
6 months    ki0047075b-MAL-ED          BRAZIL                         Female      218    108     90     18
6 months    ki0047075b-MAL-ED          BRAZIL                         Male        218    110     88     22
6 months    ki0047075b-MAL-ED          INDIA                          Female      240    133     98     35
6 months    ki0047075b-MAL-ED          INDIA                          Male        240    107     58     49
6 months    ki0047075b-MAL-ED          NEPAL                          Female      238    110     94     16
6 months    ki0047075b-MAL-ED          NEPAL                          Male        238    128    103     25
6 months    ki0047075b-MAL-ED          PERU                           Female      282    129     82     47
6 months    ki0047075b-MAL-ED          PERU                           Male        282    153     75     78
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female      271    138     96     42
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male        271    133     71     62
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      253    129     73     56
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        253    124     76     48
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female      367    184    101     83
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male        367    183     78    105
6 months    ki1000108-IRC              INDIA                          Female      408    184    111     73
6 months    ki1000108-IRC              INDIA                          Male        408    224    124    100
6 months    ki1000109-EE               PAKISTAN                       Female      373    181     54    127
6 months    ki1000109-EE               PAKISTAN                       Male        373    192     42    150
6 months    ki1000109-ResPak           PAKISTAN                       Female      255    120     52     68
6 months    ki1000109-ResPak           PAKISTAN                       Male        255    135     52     83
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female      367    175    103     72
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male        367    192    106     86
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female      105     59     38     21
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male        105     46     24     22
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female      551    257    181     76
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male        551    294    169    125
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female      640    304    238     66
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male        640    336    239     97
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female      736    369    265    104
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male        736    367    245    122
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female     2234   1106    928    178
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male       2234   1128    859    269
6 months    ki1101329-Keneba           GAMBIA                         Female     2264   1088    770    318
6 months    ki1101329-Keneba           GAMBIA                         Male       2264   1176    763    413
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female      295    154    109     45
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male        295    141     93     48
6 months    ki1113344-GMS-Nepal        NEPAL                          Female      567    275    203     72
6 months    ki1113344-GMS-Nepal        NEPAL                          Male        567    292    202     90
6 months    ki1114097-CMIN             BANGLADESH                     Female      257    110     53     57
6 months    ki1114097-CMIN             BANGLADESH                     Male        257    147     60     87
6 months    ki1114097-CMIN             BRAZIL                         Female       91     48     43      5
6 months    ki1114097-CMIN             BRAZIL                         Male         91     43     33     10
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female      832    401    348     53
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male        832    431    360     71
6 months    ki1114097-CMIN             PERU                           Female      673    312    278     34
6 months    ki1114097-CMIN             PERU                           Male        673    361    308     53
6 months    ki1114097-CONTENT          PERU                           Female      215    106     99      7
6 months    ki1114097-CONTENT          PERU                           Male        215    109     68     41
6 months    ki1119695-PROBIT           BELARUS                        Female     7807   4042   3919    123
6 months    ki1119695-PROBIT           BELARUS                        Male       7807   3765   3074    691
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female     9102   4453   3257   1196
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male       9102   4649   3164   1485
6 months    ki1135781-COHORTS          GUATEMALA                      Female      141     71     45     26
6 months    ki1135781-COHORTS          GUATEMALA                      Male        141     70     45     25
6 months    ki1135781-COHORTS          PHILIPPINES                    Female     2806   1315   1042    273
6 months    ki1135781-COHORTS          PHILIPPINES                    Male       2806   1491   1063    428
6 months    ki1148112-LCNI-5           MALAWI                         Female      272    129     97     32
6 months    ki1148112-LCNI-5           MALAWI                         Male        272    143     78     65
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female     9600   4767   2813   1954
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male       9600   4833   2703   2130
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female     1181    615    421    194
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male       1181    566    373    193
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female      239    122     76     46
12 months   ki0047075b-MAL-ED          BANGLADESH                     Male        239    117     60     57
12 months   ki0047075b-MAL-ED          BRAZIL                         Female      207    101     82     19
12 months   ki0047075b-MAL-ED          BRAZIL                         Male        207    106     83     23
12 months   ki0047075b-MAL-ED          INDIA                          Female      235    129     77     52
12 months   ki0047075b-MAL-ED          INDIA                          Male        235    106     46     60
12 months   ki0047075b-MAL-ED          NEPAL                          Female      235    109     89     20
12 months   ki0047075b-MAL-ED          NEPAL                          Male        235    126     99     27
12 months   ki0047075b-MAL-ED          PERU                           Female      270    124     68     56
12 months   ki0047075b-MAL-ED          PERU                           Male        270    146     62     84
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female      259    129     79     50
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male        259    130     58     72
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      245    124     46     78
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        245    121     38     83
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female      372    186     68    118
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male        372    186     44    142
12 months   ki1000108-IRC              INDIA                          Female      408    183     97     86
12 months   ki1000108-IRC              INDIA                          Male        408    225    104    121
12 months   ki1000109-EE               PAKISTAN                       Female      373    182     35    147
12 months   ki1000109-EE               PAKISTAN                       Male        373    191     30    161
12 months   ki1000109-ResPak           PAKISTAN                       Female      230    106     40     66
12 months   ki1000109-ResPak           PAKISTAN                       Male        230    124     45     79
12 months   ki1000304b-SAS-CompFeed    INDIA                          Female      425    194     90    104
12 months   ki1000304b-SAS-CompFeed    INDIA                          Male        425    231     85    146
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female       99     55      9     46
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male         99     44      6     38
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female      541    246    132    114
12 months   ki1017093-NIH-Birth        BANGLADESH                     Male        541    295    133    162
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female      609    290    202     88
12 months   ki1017093b-PROVIDE         BANGLADESH                     Male        609    319    205    114
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female      729    368    239    129
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male        729    361    213    148
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female     1996    986    722    264
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male       1996   1010    641    369
12 months   ki1101329-Keneba           GAMBIA                         Female     2384   1150    723    427
12 months   ki1101329-Keneba           GAMBIA                         Male       2384   1234    690    544
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female      277    142     74     68
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Male        277    135     58     77
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female      796    399    324     75
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male        796    397    303     94
12 months   ki1113344-GMS-Nepal        NEPAL                          Female      582    282    161    121
12 months   ki1113344-GMS-Nepal        NEPAL                          Male        582    300    156    144
12 months   ki1114097-CMIN             BANGLADESH                     Female      252    108     31     77
12 months   ki1114097-CMIN             BANGLADESH                     Male        252    144     48     96
12 months   ki1114097-CMIN             BRAZIL                         Female      116     61     49     12
12 months   ki1114097-CMIN             BRAZIL                         Male        116     55     36     19
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female     1170    589    455    134
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Male       1170    581    426    155
12 months   ki1114097-CMIN             PERU                           Female      722    340    268     72
12 months   ki1114097-CMIN             PERU                           Male        722    382    270    112
12 months   ki1114097-CONTENT          PERU                           Female      215    106     99      7
12 months   ki1114097-CONTENT          PERU                           Male        215    109     62     47
12 months   ki1119695-PROBIT           BELARUS                        Female     7943   4119   3920    199
12 months   ki1119695-PROBIT           BELARUS                        Male       7943   3824   2866    958
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female    10186   5003   3334   1669
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male      10186   5183   3013   2170
12 months   ki1135781-COHORTS          GUATEMALA                      Female      562    265     83    182
12 months   ki1135781-COHORTS          GUATEMALA                      Male        562    297     72    225
12 months   ki1135781-COHORTS          INDIA                          Female     6949   3322   2128   1194
12 months   ki1135781-COHORTS          INDIA                          Male       6949   3627   2166   1461
12 months   ki1135781-COHORTS          PHILIPPINES                    Female     2762   1307    805    502
12 months   ki1135781-COHORTS          PHILIPPINES                    Male       2762   1455    745    710
12 months   ki1148112-LCNI-5           MALAWI                         Female      815    412    252    160
12 months   ki1148112-LCNI-5           MALAWI                         Male        815    403    176    227
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Female     8376   4148   2400   1748
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Male       8376   4228   2192   2036
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Female     1420    732    424    308
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Male       1420    688    379    309
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female      231    116     57     59
18 months   ki0047075b-MAL-ED          BANGLADESH                     Male        231    115     43     72
18 months   ki0047075b-MAL-ED          BRAZIL                         Female      194     93     74     19
18 months   ki0047075b-MAL-ED          BRAZIL                         Male        194    101     75     26
18 months   ki0047075b-MAL-ED          INDIA                          Female      229    124     60     64
18 months   ki0047075b-MAL-ED          INDIA                          Male        229    105     36     69
18 months   ki0047075b-MAL-ED          NEPAL                          Female      231    108     78     30
18 months   ki0047075b-MAL-ED          NEPAL                          Male        231    123     85     38
18 months   ki0047075b-MAL-ED          PERU                           Female      244    110     47     63
18 months   ki0047075b-MAL-ED          PERU                           Male        244    134     33    101
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female      253    126     68     58
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male        253    127     44     83
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      233    116     26     90
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        233    117     17    100
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female      373    187     33    154
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male        373    186     24    162
18 months   ki1000108-IRC              INDIA                          Female      409    184     86     98
18 months   ki1000108-IRC              INDIA                          Male        409    225     93    132
18 months   ki1000109-EE               PAKISTAN                       Female      363    178     16    162
18 months   ki1000109-EE               PAKISTAN                       Male        363    185     16    169
18 months   ki1000109-ResPak           PAKISTAN                       Female      184     83     27     56
18 months   ki1000109-ResPak           PAKISTAN                       Male        184    101     32     69
18 months   ki1000304b-SAS-CompFeed    INDIA                          Female      416    190     64    126
18 months   ki1000304b-SAS-CompFeed    INDIA                          Male        416    226     61    165
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female       93     51      5     46
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male         93     42      5     37
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female      497    227     86    141
18 months   ki1017093-NIH-Birth        BANGLADESH                     Male        497    270     88    182
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female      604    289    179    110
18 months   ki1017093b-PROVIDE         BANGLADESH                     Male        604    315    173    142
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female      715    362    211    151
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male        715    353    187    166
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female     1454    725    463    262
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male       1454    729    403    326
18 months   ki1101329-Keneba           GAMBIA                         Female     2284   1107    602    505
18 months   ki1101329-Keneba           GAMBIA                         Male       2284   1177    541    636
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Female      186     98     38     60
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Male        186     88     32     56
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female      124     63     45     18
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male        124     61     32     29
18 months   ki1113344-GMS-Nepal        NEPAL                          Female      574    277    105    172
18 months   ki1113344-GMS-Nepal        NEPAL                          Male        574    297    111    186
18 months   ki1114097-CMIN             BANGLADESH                     Female      249    108     19     89
18 months   ki1114097-CMIN             BANGLADESH                     Male        249    141     32    109
18 months   ki1114097-CMIN             BRAZIL                         Female      118     62     46     16
18 months   ki1114097-CMIN             BRAZIL                         Male        118     56     37     19
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female     1123    571    380    191
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Male       1123    552    327    225
18 months   ki1114097-CMIN             PERU                           Female      656    306    206    100
18 months   ki1114097-CMIN             PERU                           Male        656    350    203    147
18 months   ki1114097-CONTENT          PERU                           Female      214    105     96      9
18 months   ki1114097-CONTENT          PERU                           Male        214    109     58     51
18 months   ki1119695-PROBIT           BELARUS                        Female     7475   3890   3702    188
18 months   ki1119695-PROBIT           BELARUS                        Male       7475   3585   2603    982
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female     7284   3843   2213   1630
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male       7284   3441   1494   1947
18 months   ki1135781-COHORTS          GUATEMALA                      Female      452    212     37    175
18 months   ki1135781-COHORTS          GUATEMALA                      Male        452    240     40    200
18 months   ki1135781-COHORTS          PHILIPPINES                    Female     2632   1247    537    710
18 months   ki1135781-COHORTS          PHILIPPINES                    Male       2632   1385    472    913
18 months   ki1148112-LCNI-5           MALAWI                         Female      676    342    175    167
18 months   ki1148112-LCNI-5           MALAWI                         Male        676    334    126    208
18 months   kiGH5241-JiVitA-3          BANGLADESH                     Female     7332   3631   1779   1852
18 months   kiGH5241-JiVitA-3          BANGLADESH                     Male       7332   3701   1566   2135
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female     1373    711    334    377
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male       1373    662    287    375
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female      219    110     45     65
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male        219    109     38     71
24 months   ki0047075b-MAL-ED          BRAZIL                         Female      176     82     66     16
24 months   ki0047075b-MAL-ED          BRAZIL                         Male        176     94     70     24
24 months   ki0047075b-MAL-ED          INDIA                          Female      228    123     53     70
24 months   ki0047075b-MAL-ED          INDIA                          Male        228    105     33     72
24 months   ki0047075b-MAL-ED          NEPAL                          Female      229    107     70     37
24 months   ki0047075b-MAL-ED          NEPAL                          Male        229    122     79     43
24 months   ki0047075b-MAL-ED          PERU                           Female      218     99     37     62
24 months   ki0047075b-MAL-ED          PERU                           Male        218    119     24     95
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female      242    121     57     64
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male        242    121     36     85
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      228    115     16     99
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        228    113     11    102
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female      373    187     13    174
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male        373    186     15    171
24 months   ki1000108-IRC              INDIA                          Female      410    185     72    113
24 months   ki1000108-IRC              INDIA                          Male        410    225     75    150
24 months   ki1000109-EE               PAKISTAN                       Female      338    165     13    152
24 months   ki1000109-EE               PAKISTAN                       Male        338    173     14    159
24 months   ki1000304b-SAS-CompFeed    INDIA                          Female       43     16      6     10
24 months   ki1000304b-SAS-CompFeed    INDIA                          Male         43     27      7     20
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female        9      5      1      4
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male          9      4      0      4
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female      470    216     53    163
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male        470    254     62    192
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female      582    281    156    125
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male        582    301    146    155
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female      634    319    166    153
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male        634    315    150    165
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      960    470    284    186
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        960    490    260    230
24 months   ki1101329-Keneba           GAMBIA                         Female     2207   1071    503    568
24 months   ki1101329-Keneba           GAMBIA                         Male       2207   1136    442    694
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female      551    272    163    109
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male        551    279    157    122
24 months   ki1113344-GMS-Nepal        NEPAL                          Female      568    273     86    187
24 months   ki1113344-GMS-Nepal        NEPAL                          Male        568    295     90    205
24 months   ki1114097-CMIN             BANGLADESH                     Female      245    106     12     94
24 months   ki1114097-CMIN             BANGLADESH                     Male        245    139     19    120
24 months   ki1114097-CMIN             BRAZIL                         Female      119     62     43     19
24 months   ki1114097-CMIN             BRAZIL                         Male        119     57     36     21
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female     1067    528    303    225
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male       1067    539    271    268
24 months   ki1114097-CMIN             PERU                           Female      571    275    158    117
24 months   ki1114097-CMIN             PERU                           Male        571    296    153    143
24 months   ki1114097-CONTENT          PERU                           Female      197    100     91      9
24 months   ki1114097-CONTENT          PERU                           Male        197     97     49     48
24 months   ki1119695-PROBIT           BELARUS                        Female     2076   1070    978     92
24 months   ki1119695-PROBIT           BELARUS                        Male       2076   1006    670    336
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female     1879   1025    329    696
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male       1879    854    204    650
24 months   ki1135781-COHORTS          GUATEMALA                      Female      476    223     29    194
24 months   ki1135781-COHORTS          GUATEMALA                      Male        476    253     20    233
24 months   ki1135781-COHORTS          PHILIPPINES                    Female     2562   1218    332    886
24 months   ki1135781-COHORTS          PHILIPPINES                    Male       2562   1344    302   1042
24 months   ki1148112-LCNI-5           MALAWI                         Female      726    372    154    218
24 months   ki1148112-LCNI-5           MALAWI                         Male        726    354     98    256
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female        3      1      1      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male          3      2      1      1
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female     1196    618    257    361
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male       1196    578    227    351


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
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
## Warning: Removed 44 rows containing missing values (geom_errorbar).
```

![](/tmp/3e2c9dad-a923-408b-868d-252c58698e5f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 179 rows containing missing values (geom_errorbar).
```

![](/tmp/3e2c9dad-a923-408b-868d-252c58698e5f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 22 rows containing missing values (geom_errorbar).
```

![](/tmp/3e2c9dad-a923-408b-868d-252c58698e5f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 22 rows containing missing values (geom_errorbar).
```

![](/tmp/3e2c9dad-a923-408b-868d-252c58698e5f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.2426471   0.1704638   0.3148303
3 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.3488372   0.2664366   0.4312378
3 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.1681416   0.0990373   0.2372459
3 months    ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.1583333   0.0928776   0.2237891
3 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.2173913   0.1484358   0.2863468
3 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.3362832   0.2490022   0.4235642
3 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1181818   0.0577281   0.1786356
3 months    ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1923077   0.1244179   0.2601975
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                0.2937063   0.2189329   0.3684797
3 months    ki0047075b-MAL-ED          PERU                           Male                 NA                0.3687500   0.2938688   0.4436312
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.2327044   0.1669196   0.2984892
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.2903226   0.2187501   0.3618950
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.3308271   0.2507105   0.4109436
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2945736   0.2157591   0.3733882
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.3296703   0.2612796   0.3980611
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.3611111   0.2908450   0.4313772
3 months    ki1000108-IRC              INDIA                          Female               NA                0.2864865   0.2212567   0.3517162
3 months    ki1000108-IRC              INDIA                          Male                 NA                0.3422222   0.2801524   0.4042921
3 months    ki1000109-EE               PAKISTAN                       Female               NA                0.5837838   0.5126589   0.6549086
3 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.6855670   0.6201471   0.7509869
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.5075758   0.4221341   0.5930174
3 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.5138889   0.4321069   0.5956708
3 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.2889908          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.3690476          NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1851852   0.1409724   0.2293980
3 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.2560241   0.2090407   0.3030075
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1626506   0.1229250   0.2023762
3 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.2065217   0.1651327   0.2479107
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1627297   0.1256412   0.1998181
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.1564987   0.1197990   0.1931984
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0753599   0.0603018   0.0904180
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1278878   0.1090821   0.1466934
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.2223230   0.1977678   0.2468783
3 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.2654941   0.2404408   0.2905475
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1459075   0.1045977   0.1872172
3 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1698718   0.1281685   0.2115751
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.4521739   0.3610396   0.5433082
3 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.5064935   0.4273838   0.5856032
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.1482759   0.1073385   0.1892132
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1611722   0.1175171   0.2048272
3 months    ki1114097-CMIN             PERU                           Female               NA                0.0912162   0.0583906   0.1240418
3 months    ki1114097-CMIN             PERU                           Male                 NA                0.0803571   0.0512671   0.1094472
3 months    ki1114097-CONTENT          PERU                           Female               NA                0.0471698   0.0067171   0.0876225
3 months    ki1114097-CONTENT          PERU                           Male                 NA                0.2752294   0.1911877   0.3592711
3 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0239507          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.1281986          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1951899   0.1857823   0.2045975
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.2231004   0.2134916   0.2327092
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.2742616   0.2174066   0.3311166
3 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.2769784   0.2243226   0.3296342
3 months    ki1135781-COHORTS          INDIA                          Female               NA                0.1663793   0.1540050   0.1787537
3 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.2053571   0.1923329   0.2183814
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.1169102   0.1002945   0.1335260
3 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.1692403   0.1509725   0.1875080
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.3873656          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.4189449          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.2680067          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.2790698          NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.2640000   0.1865684   0.3414316
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.4214876   0.3333241   0.5096511
6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.1666667   0.0962187   0.2371146
6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.2000000   0.1250779   0.2749221
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.2631579   0.1881643   0.3381515
6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.4579439   0.3633439   0.5525439
6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1454545   0.0794312   0.2114779
6 months    ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1953125   0.1264891   0.2641359
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                0.3643411   0.2811473   0.4475348
6 months    ki0047075b-MAL-ED          PERU                           Male                 NA                0.5098039   0.4304515   0.5891564
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.3043478   0.2274361   0.3812595
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.4661654   0.3812281   0.5511027
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.4341085   0.3484089   0.5198082
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.3870968   0.3011948   0.4729987
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.4510870   0.3790901   0.5230838
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.5737705   0.5020231   0.6455178
6 months    ki1000108-IRC              INDIA                          Female               NA                0.3967391   0.3259646   0.4675137
6 months    ki1000108-IRC              INDIA                          Male                 NA                0.4464286   0.3812478   0.5116094
6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.7016575   0.6349135   0.7684014
6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.7812500   0.7226970   0.8398030
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.5666667   0.4778314   0.6555020
6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.6148148   0.5325638   0.6970659
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.4114286          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.4479167          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.3559322   0.2331743   0.4786901
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.4782609   0.3332147   0.6233070
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.2957198   0.2398742   0.3515654
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.4251701   0.3686087   0.4817314
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.2171053   0.1707245   0.2634860
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.2886905   0.2401992   0.3371817
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.2818428   0.2359079   0.3277778
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.3324251   0.2841962   0.3806539
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1609403   0.1392784   0.1826022
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2384752   0.2136007   0.2633497
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.2922794   0.2652486   0.3193103
6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.3511905   0.3239026   0.3784784
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.2922078   0.2202589   0.3641566
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.3404255   0.2620792   0.4187719
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.2618182   0.2098130   0.3138234
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.3082192   0.2552096   0.3612287
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.5181818   0.4246238   0.6117398
6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.5918367   0.5122292   0.6714442
6 months    ki1114097-CMIN             BRAZIL                         Female               NA                0.1041667   0.0172696   0.1910637
6 months    ki1114097-CMIN             BRAZIL                         Male                 NA                0.2325581   0.1055879   0.3595283
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.1321696   0.0990015   0.1653376
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1647332   0.1296924   0.1997740
6 months    ki1114097-CMIN             PERU                           Female               NA                0.1089744   0.0743724   0.1435763
6 months    ki1114097-CMIN             PERU                           Male                 NA                0.1468144   0.1102782   0.1833506
6 months    ki1114097-CONTENT          PERU                           Female               NA                0.0660377   0.0186497   0.1134257
6 months    ki1114097-CONTENT          PERU                           Male                 NA                0.3761468   0.2849946   0.4672990
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0304305          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.1835325          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.2685830   0.2555643   0.2816017
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.3194235   0.3060202   0.3328269
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.3661972   0.2537369   0.4786574
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.3571429   0.2444950   0.4697907
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.2076046   0.1856789   0.2295302
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2870557   0.2640890   0.3100223
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                0.2480620   0.1733958   0.3227282
6 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                0.4545455   0.3727841   0.5363068
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.4099014          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.4407200          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.3154472          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.3409894          NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.3770492   0.2908696   0.4632288
12 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.4871795   0.3964198   0.5779391
12 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.1881188   0.1117174   0.2645202
12 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.2169811   0.1383230   0.2956393
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.4031008   0.3182733   0.4879283
12 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.5660377   0.4714859   0.6605895
12 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1834862   0.1106673   0.2563052
12 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.2142857   0.1424868   0.2860846
12 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.4516129   0.3638583   0.5393675
12 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.5753425   0.4950157   0.6556692
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.3875969   0.3033601   0.4718337
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.5538462   0.4682305   0.6394618
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.6290323   0.5438342   0.7142304
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.6859504   0.6030820   0.7688188
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.6344086   0.5651045   0.7037127
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.7634409   0.7022856   0.8245961
12 months   ki1000108-IRC              INDIA                          Female               NA                0.4699454   0.3975452   0.5423455
12 months   ki1000108-IRC              INDIA                          Male                 NA                0.5377778   0.4725524   0.6030031
12 months   ki1000109-EE               PAKISTAN                       Female               NA                0.8076923   0.7503577   0.8650269
12 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.8429319   0.7912600   0.8946039
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.6226415   0.5301637   0.7151193
12 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.6370968   0.5522800   0.7219135
12 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.5360825          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.6320346          NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.8363636   0.7380964   0.9346309
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.8636364   0.7617207   0.9655521
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.4634146   0.4010431   0.5257862
12 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.5491525   0.4923196   0.6059855
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.3034483   0.2504911   0.3564055
12 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.3573668   0.3047350   0.4099986
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.3505435   0.3017605   0.3993264
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.4099723   0.3592024   0.4607422
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2677485   0.2401038   0.2953932
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.3653465   0.3356424   0.3950507
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.3713043   0.3433741   0.3992346
12 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.4408428   0.4131357   0.4685498
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.4788732   0.3965597   0.5611868
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.5703704   0.4867153   0.6540254
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.1879699          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.2367758          NA          NA
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.4290780   0.3712613   0.4868947
12 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.4800000   0.4234174   0.5365826
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.7129630   0.6274756   0.7984504
12 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.6666667   0.5895188   0.7438145
12 months   ki1114097-CMIN             BRAZIL                         Female               NA                0.1967213   0.0965318   0.2969108
12 months   ki1114097-CMIN             BRAZIL                         Male                 NA                0.3454545   0.2192392   0.4716699
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.2275042   0.1936340   0.2613745
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.2667814   0.2308031   0.3027597
12 months   ki1114097-CMIN             PERU                           Female               NA                0.2117647   0.1683072   0.2552222
12 months   ki1114097-CMIN             PERU                           Male                 NA                0.2931937   0.2475117   0.3388757
12 months   ki1114097-CONTENT          PERU                           Female               NA                0.0660377   0.0186497   0.1134257
12 months   ki1114097-CONTENT          PERU                           Male                 NA                0.4311927   0.3380035   0.5243818
12 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0483127          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.2505230          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.3335998   0.3205341   0.3466656
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.4186764   0.4052449   0.4321080
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.6867925   0.6309016   0.7426833
12 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.7575758   0.7087940   0.8063575
12 months   ki1135781-COHORTS          INDIA                          Female               NA                0.3594220   0.3431040   0.3757401
12 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.4028122   0.3868493   0.4187752
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.3840857   0.3577125   0.4104589
12 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.4879725   0.4622840   0.5136611
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.3883495   0.3412595   0.4354396
12 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.5632754   0.5148218   0.6117291
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.4214079          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.4815516          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.4207650          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.4491279          NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.5086207   0.4174476   0.5997938
18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.6260870   0.5374645   0.7147094
18 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.2043011   0.1221452   0.2864569
18 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.2574257   0.1719377   0.3429138
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.5161290   0.4279772   0.6042809
18 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.6571429   0.5661536   0.7481321
18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.2777778   0.1931209   0.3624347
18 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.3089431   0.2271091   0.3907771
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.5727273   0.4800934   0.6653612
18 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.7537313   0.6806342   0.8268285
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.4603175   0.3731166   0.5475183
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.6535433   0.5706217   0.7364649
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.7758621   0.6998114   0.8519127
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.8547009   0.7907086   0.9186932
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.8235294   0.7688170   0.8782418
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.8709677   0.8227258   0.9192097
18 months   ki1000108-IRC              INDIA                          Female               NA                0.5326087   0.4604290   0.6047884
18 months   ki1000108-IRC              INDIA                          Male                 NA                0.5866667   0.5222446   0.6510887
18 months   ki1000109-EE               PAKISTAN                       Female               NA                0.9101124   0.8680363   0.9521884
18 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.9135135   0.8729540   0.9540730
18 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.6746988   0.5736363   0.7757613
18 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.6831683   0.5921877   0.7741489
18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.6631579          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.7300885          NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.9019608   0.8199059   0.9840156
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.8809524   0.7824816   0.9794232
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.6211454   0.5579762   0.6843146
18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.6740741   0.6181090   0.7300391
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.3806228   0.3245976   0.4366481
18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.4507937   0.3958004   0.5057869
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.4171271   0.3662972   0.4679569
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.4702550   0.4181517   0.5223582
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.3613793   0.3263984   0.3963603
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.4471879   0.4110829   0.4832929
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.4561879   0.4268408   0.4855350
18 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.5403568   0.5118791   0.5688346
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.6122449   0.5155181   0.7089717
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.6363636   0.5355861   0.7371412
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.2857143          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.4754098          NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.6209386   0.5637558   0.6781215
18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.6262626   0.5711933   0.6813320
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.8240741   0.7521196   0.8960286
18 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.7730496   0.7037739   0.8423254
18 months   ki1114097-CMIN             BRAZIL                         Female               NA                0.2580645   0.1486821   0.3674469
18 months   ki1114097-CMIN             BRAZIL                         Male                 NA                0.3392857   0.2147506   0.4638208
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.3345009   0.2957844   0.3732174
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.4076087   0.3665979   0.4486195
18 months   ki1114097-CMIN             PERU                           Female               NA                0.3267974   0.2742040   0.3793907
18 months   ki1114097-CMIN             PERU                           Male                 NA                0.4200000   0.3682531   0.4717469
18 months   ki1114097-CONTENT          PERU                           Female               NA                0.0857143   0.0320435   0.1393851
18 months   ki1114097-CONTENT          PERU                           Male                 NA                0.4678899   0.3739988   0.5617810
18 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0483290          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.2739191          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.4241478   0.4085215   0.4397741
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.5658239   0.5492620   0.5823858
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.8254717   0.7743218   0.8766216
18 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.8333333   0.7861317   0.8805350
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.5693665   0.5418782   0.5968547
18 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.6592058   0.6342390   0.6841725
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.4883041   0.4352880   0.5413202
18 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.6227545   0.5707349   0.6747741
18 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.5100523          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.5768711          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.5302391          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.5664653          NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.5909091   0.4988184   0.6829998
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.6513761   0.5617111   0.7410412
24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.1951220   0.1091025   0.2811414
24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.2553191   0.1669200   0.3437183
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.5691057   0.4813992   0.6568122
24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.6857143   0.5967242   0.7747044
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.3457944   0.2554767   0.4361120
24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.3524590   0.2675006   0.4374174
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.6262626   0.5307435   0.7217818
24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.7983193   0.7260601   0.8705786
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.5289256   0.4398012   0.6180500
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.7024793   0.6208531   0.7841056
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.8608696   0.7974777   0.9242614
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.9026549   0.8478800   0.9574297
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.9304813   0.8939794   0.9669831
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.9193548   0.8801712   0.9585385
24 months   ki1000108-IRC              INDIA                          Female               NA                0.6108108   0.5404669   0.6811547
24 months   ki1000108-IRC              INDIA                          Male                 NA                0.6666667   0.6049957   0.7283376
24 months   ki1000109-EE               PAKISTAN                       Female               NA                0.9212121   0.8800442   0.9623801
24 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.9190751   0.8783760   0.9597743
24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.6250000          NA          NA
24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.7407407          NA          NA
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.7546296   0.6971834   0.8120759
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.7559055   0.7030237   0.8087873
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.4448399   0.3866859   0.5029938
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.5149502   0.4584416   0.5714587
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.4796238   0.4247577   0.5344900
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.5238095   0.4686129   0.5790062
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.3957447   0.3515120   0.4399774
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.4693878   0.4251767   0.5135988
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.5303455   0.5004490   0.5602420
24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.6109155   0.5825579   0.6392731
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.4007353          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.4372760          NA          NA
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.6849817   0.6298303   0.7401331
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.6949153   0.6423261   0.7475044
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.8867925   0.8263514   0.9472335
24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.8633094   0.8060849   0.9205338
24 months   ki1114097-CMIN             BRAZIL                         Female               NA                0.3064516   0.1912114   0.4216918
24 months   ki1114097-CMIN             BRAZIL                         Male                 NA                0.3684211   0.2426649   0.4941772
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.4261364   0.3839363   0.4683365
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.4972171   0.4549871   0.5394470
24 months   ki1114097-CMIN             PERU                           Female               NA                0.4254545   0.3669687   0.4839404
24 months   ki1114097-CMIN             PERU                           Male                 NA                0.4831081   0.4261304   0.5400858
24 months   ki1114097-CONTENT          PERU                           Female               NA                0.0900000   0.0337665   0.1462335
24 months   ki1114097-CONTENT          PERU                           Male                 NA                0.4948454   0.3950951   0.5945957
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0859813          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.3339960          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.6790244   0.6504366   0.7076122
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.7611241   0.7325187   0.7897296
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.8699552   0.8257628   0.9141475
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.9209486   0.8876660   0.9542312
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.7274220   0.7024100   0.7524340
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.7752976   0.7529788   0.7976164
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.5860215   0.5359349   0.6361081
24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.7231638   0.6765220   0.7698057
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.5841424          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.6072664          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2943396   0.2393642   0.3493150
3 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1630901   0.1155503   0.2106299
3 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2709163   0.2158249   0.3260078
3 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1583333   0.1120521   0.2046146
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.3333333   0.2801668   0.3864999
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2611465   0.2124837   0.3098093
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3129771   0.2567210   0.3692332
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3453039   0.2962566   0.3943512
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.3170732   0.2719756   0.3621708
3 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.6358839   0.5873762   0.6843916
3 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5108696   0.4517884   0.5699507
3 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3319149          NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2225755   0.1900416   0.2551094
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1857143   0.1568859   0.2145427
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1596306   0.1335394   0.1857218
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1019641   0.0898375   0.1140906
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2447735   0.2271830   0.2623640
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1585160   0.1290957   0.1879363
3 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4832714   0.4234430   0.5430998
3 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1545293   0.1246456   0.1844130
3 months    ki1114097-CMIN             PERU                           NA                   NA                0.0854430   0.0636320   0.1072541
3 months    ki1114097-CONTENT          PERU                           NA                   NA                0.1627907   0.1133285   0.2122529
3 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0740923          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2095360   0.2028018   0.2162703
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2757282   0.2370952   0.3143611
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1864548   0.1774430   0.1954667
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1446335   0.1321610   0.1571060
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4033513          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2733564          NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3414634   0.2820852   0.4008416
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1834862   0.1319869   0.2349856
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3500000   0.2895300   0.4104700
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1722689   0.1241936   0.2203442
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4432624   0.3851792   0.5013456
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3837638   0.3257580   0.4417697
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4110672   0.3503185   0.4718159
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5122616   0.4610525   0.5634707
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4240196   0.3760078   0.4720314
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.7426273   0.6982007   0.7870540
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5921569   0.5317208   0.6525929
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4305177          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4095238   0.3150150   0.5040326
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3647913   0.3245616   0.4050210
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2546875   0.2209066   0.2884684
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3070652   0.2737175   0.3404129
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2000895   0.1834961   0.2166830
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3228799   0.3036153   0.3421444
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3152542   0.2621451   0.3683634
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2857143   0.2484972   0.3229313
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5603113   0.4995096   0.6211129
6 months    ki1114097-CMIN             BRAZIL                         NA                   NA                0.1648352   0.0881806   0.2414897
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1490385   0.1248253   0.1732516
6 months    ki1114097-CMIN             PERU                           NA                   NA                0.1292719   0.1039056   0.1546382
6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2232558   0.1674626   0.2790491
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.1042654          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2945506   0.2851855   0.3039158
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3617021   0.2821098   0.4412945
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2498218   0.2338012   0.2658424
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3566176   0.2995882   0.4136471
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4254167          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3276884          NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4309623   0.3680480   0.4938767
12 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2028986   0.1479811   0.2578160
12 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4765957   0.4126025   0.5405890
12 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2000000   0.1487493   0.2512507
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5185185   0.4588090   0.5782281
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4710425   0.4101339   0.5319511
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6571429   0.5975849   0.7167008
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6989247   0.6522466   0.7456029
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.5073529   0.4587823   0.5559236
12 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8257373   0.7871894   0.8642851
12 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.6304348   0.5679181   0.6929515
12 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5882353          NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8484848   0.7774968   0.9194729
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5101664   0.4680034   0.5523294
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3316913   0.2942672   0.3691154
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3799726   0.3447141   0.4152311
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3171343   0.2967138   0.3375547
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4072987   0.3875717   0.4270256
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5234657   0.4645427   0.5823887
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2123116          NA          NA
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4553265   0.4148326   0.4958204
12 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6865079   0.6291165   0.7438994
12 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.2672414   0.1863632   0.3481196
12 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.2470085   0.2222861   0.2717310
12 months   ki1114097-CMIN             PERU                           NA                   NA                0.2548476   0.2230391   0.2866562
12 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2511628   0.1930579   0.3092677
12 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1456628          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3768898   0.3674784   0.3863013
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7241993   0.6872170   0.7611815
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3820694   0.3706443   0.3934944
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4388125   0.4203024   0.4573225
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4748466   0.4405418   0.5091515
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4517670          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4345070          NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5670996   0.5030660   0.6311332
18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2319588   0.1724108   0.2915068
18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5807860   0.5167379   0.6448342
18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2943723   0.2354716   0.3532730
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6721311   0.6131080   0.7311543
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5573123   0.4959861   0.6186384
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8154506   0.7655324   0.8653689
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8471850   0.8106214   0.8837486
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.5623472   0.5142095   0.6104849
18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.9118457   0.8826395   0.9410520
18 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.6793478   0.6117262   0.7469695
18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6995192          NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8924731   0.8291722   0.9557741
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6498994   0.6079209   0.6918779
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4172185   0.3778614   0.4565757
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4433566   0.4069178   0.4797954
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4044017   0.3791669   0.4296364
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4995622   0.4790522   0.5200721
18 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.6236559   0.5538444   0.6934675
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3790323          NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6236934   0.5840266   0.6633602
18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7951807   0.7449533   0.8454081
18 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.2966102   0.2138453   0.3793751
18 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3704363   0.3421792   0.3986935
18 months   ki1114097-CMIN             PERU                           NA                   NA                0.3765244   0.3394193   0.4136295
18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2803738   0.2200512   0.3406965
18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1565217          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4910763   0.4795950   0.5025577
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8296460   0.7949498   0.8643423
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6166413   0.5980630   0.6352197
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5547337   0.5172409   0.5922266
18 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5437807          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5477058          NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6210046   0.5566048   0.6854043
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2272727   0.1651836   0.2893619
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6228070   0.5597558   0.6858583
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3493450   0.2874603   0.4112297
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7201835   0.6604557   0.7799113
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6157025   0.5542897   0.6771153
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8815789   0.8395469   0.9236110
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9249330   0.8981563   0.9517096
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.9201183   0.8911730   0.9490637
24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6976744          NA          NA
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7553191   0.7164122   0.7942261
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4810997   0.4404722   0.5217271
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.5015773   0.4626267   0.5405279
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4333333   0.4019706   0.4646960
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5718169   0.5511684   0.5924654
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.4192377          NA          NA
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6901408   0.6520774   0.7282042
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8734694   0.8317561   0.9151827
24 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.3361345   0.2509023   0.4213666
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.4620431   0.4321146   0.4919716
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.4553415   0.4144586   0.4962244
24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2893401   0.2258574   0.3528228
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2061657          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7163385   0.6959512   0.7367258
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8970588   0.8697309   0.9243867
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7525371   0.7358238   0.7692504
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6528926   0.6182403   0.6875448
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5953177          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.4376321   0.9832792    2.101932
3 months    ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          BRAZIL                         Male                 Female            0.9416667   0.5256916    1.686799
3 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            1.5469027   1.0267563    2.330551
3 months    ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.6272189   0.8740199    3.029498
3 months    ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          PERU                           Male                 Female            1.2555060   0.9065446    1.738795
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.2476024   0.8573857    1.815416
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.8904158   0.6206776    1.277379
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.0953704   0.8242061    1.455748
3 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1000108-IRC              INDIA                          Male                 Female            1.1945493   0.8928564    1.598183
3 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.1743509   1.0059773    1.370906
3 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.0124378   0.8030884    1.276361
3 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.2770219          NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.3825301   1.0230496    1.868325
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.2697262   0.9257633    1.741487
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.9617096   0.6934642    1.333717
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.6970278   1.3241710    2.174873
3 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.1941818   1.0327143    1.380895
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.1642433   0.8003819    1.693520
3 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.1201299   0.8680210    1.445461
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.0869750   0.7383257    1.600262
3 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1114097-CMIN             PERU                           Male                 Female            0.8809524   0.5287727    1.467695
3 months    ki1114097-CONTENT          PERU                           Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1114097-CONTENT          PERU                           Male                 Female            5.8348623   2.3478840   14.500554
3 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        Male                 Female            5.3526075          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.1429914   1.0714490    1.219311
3 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0099059   0.7622985    1.337940
3 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.2342709   1.1193365    1.361007
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.4476088   1.2110005    1.730446
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0815233          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.0412791          NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.5965440   1.1135943    2.288942
6 months    ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Male                 Female            1.2000000   0.6821692    2.110913
6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            1.7401869   1.2238725    2.474319
6 months    ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.3427734   0.7558624    2.385408
6 months    ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           Male                 Female            1.3992491   1.0614010    1.844636
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.5316864   1.1216757    2.091570
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.8917051   0.6625657    1.200089
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.2719731   1.0385350    1.557883
6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          Male                 Female            1.1252446   0.8935775    1.416973
6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.1134350   0.9864409    1.256778
6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.0849673   0.8829012    1.333279
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.0886863          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.3436853   0.8488671    2.126941
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.4377462   1.1411970    1.811356
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.3297258   1.0133020    1.744959
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.1794697   0.9482513    1.467068
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.4817615   1.2497578    1.756834
6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.2015574   1.0648427    1.355825
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.1650118   0.8316835    1.631934
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.1772260   0.9052161    1.530973
6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.1421411   0.9118840    1.430540
6 months    ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1114097-CMIN             BRAZIL                         Male                 Female            2.2325581   0.8237861    6.050498
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.2463774   0.8969715    1.731891
6 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1114097-CMIN             PERU                           Male                 Female            1.3472381   0.8999918    2.016741
6 months    ki1114097-CONTENT          PERU                           Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1114097-CONTENT          PERU                           Male                 Female            5.6959371   2.6707256   12.147897
6 months    ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        Male                 Female            6.0312074          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.1892918   1.1154376    1.268036
6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            0.9752747   0.6279710    1.514657
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3827040   1.2111193    1.578598
6 months    ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            1.8323864   1.2904228    2.601969
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.0751855          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.0809715          NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.2920847   0.9621244    1.735205
12 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            1.1534260   0.6692134    1.987993
12 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.4042090   1.0733646    1.837030
12 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.1678571   0.6947383    1.963171
12 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.2739726   1.0028738    1.618355
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.4289231   1.0944160    1.865672
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.0904853   0.9094916    1.307498
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.2033898   1.0509328    1.377964
12 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1000108-IRC              INDIA                          Male                 Female            1.1443411   0.9405923    1.392225
12 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.0436300   0.9501973    1.146250
12 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            1.0232160   0.8381931    1.249081
12 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.1789877          NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.0326087   0.8742084    1.219710
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.1850134   0.9999736    1.404294
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.1776860   0.9372496    1.479802
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.1695334   0.9707556    1.409014
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3645140   1.1964758    1.556152
12 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.1872815   1.0764227    1.309557
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.1910675   0.9501747    1.493033
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.2596474          NA          NA
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.1186777   0.9353032    1.338004
12 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9350649   0.7915372    1.104618
12 months   ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1114097-CMIN             BRAZIL                         Male                 Female            1.7560606   0.9382665    3.286645
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.1726437   0.9592370    1.433528
12 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1114097-CMIN             PERU                           Male                 Female            1.3845259   1.0700397    1.791440
12 months   ki1114097-CONTENT          PERU                           Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1114097-CONTENT          PERU                           Male                 Female            6.5294889   3.0860768   13.815024
12 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        Male                 Female            5.1854486          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.2550259   1.1930684    1.320201
12 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.1030636   0.9943339    1.223683
12 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.1207222   1.0551785    1.190337
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.2704782   1.1651741    1.385299
12 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.4504342   1.2500613    1.682925
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.1427208          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.0674079          NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.2309506   0.9795927    1.546806
18 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            1.2600313   0.7479702    2.122650
18 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.2732143   1.0219122    1.586315
18 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.1121951   0.7427077    1.665498
18 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.3160389   1.0898477    1.589175
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.4197665   1.1303089    1.783351
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.1016144   0.9737825    1.246227
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.0576037   0.9699688    1.153156
18 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1000108-IRC              INDIA                          Male                 Female            1.1014966   0.9251904    1.311400
18 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.0037371   0.9414172    1.070182
18 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            1.0125530   0.8286518    1.237267
18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.1009271          NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            0.9767081   0.8456183    1.128120
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.0852115   0.9516959    1.237458
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.1843579   0.9782650    1.433869
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.1273662   0.9561758    1.329206
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.2374475   1.0908978    1.403685
18 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.1845050   1.0899835    1.287223
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.0393939   0.8310570    1.299959
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.6639344          NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0085741   0.8879918    1.145531
18 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9380827   0.8277571    1.063113
18 months   ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1114097-CMIN             BRAZIL                         Male                 Female            1.3147321   0.7504638    2.303270
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.2185579   1.0453031    1.420529
18 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1114097-CMIN             PERU                           Male                 Female            1.2852000   1.0494139    1.573963
18 months   ki1114097-CONTENT          PERU                           Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1114097-CONTENT          PERU                           Male                 Female            5.4587156   2.8283260   10.535410
18 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        Male                 Female            5.6677942          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.3340253   1.2727082    1.398297
18 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0095238   0.9282324    1.097934
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.1577882   1.0888800    1.231057
18 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.2753415   1.1120747    1.462578
18 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female            1.0000000          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female            1.1310038          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.0683204          NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.1023289   0.8953779    1.357113
24 months   ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Male                 Female            1.3085106   0.7470172    2.292049
24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.2048980   0.9850312    1.473841
24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.0192734   0.7143885    1.454276
24 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.2747357   1.0675653    1.522109
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.3281250   1.0822985    1.629787
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.0485385   0.9531135    1.153517
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            0.9880423   0.9324348    1.046966
24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          Male                 Female            1.0914454   0.9415628    1.265187
24 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1000109-EE               PAKISTAN                       Male                 Female            0.9976803   0.9368468    1.062464
24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female            1.0000000          NA          NA
24 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female            1.1851852          NA          NA
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.0016907   0.9033012    1.110797
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.1576080   0.9759673    1.373054
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.0921257   0.9348162    1.275907
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.1860873   1.0247973    1.372762
24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.1519199   1.0708005    1.239184
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.0911841          NA          NA
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0145019   0.9083734    1.133030
24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9735191   0.8852264    1.070618
24 months   ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             BRAZIL                         Male                 Female            1.2022161   0.7234711    1.997763
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.1668027   1.0240906    1.329402
24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             PERU                           Male                 Female            1.1355105   0.9473899    1.360986
24 months   ki1114097-CONTENT          PERU                           Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1114097-CONTENT          PERU                           Male                 Female            5.4982818   2.8516763   10.601169
24 months   ki1119695-PROBIT           BELARUS                        Female               Female            1.0000000          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        Male                 Female            3.8845190          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.1209084   1.0594009    1.185987
24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0586162   0.9946349    1.126713
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.0658155   1.0190757    1.114699
24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.2340227   1.1087193    1.373487
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female            1.0000000          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female            1.0395863          NA          NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0516926   -0.0020165   0.1054016
3 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0050515   -0.0540770   0.0439740
3 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0535250    0.0029140   0.1041361
3 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0401515   -0.0093107   0.0896137
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0396270   -0.0164120   0.0956660
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0284421   -0.0196509   0.0765351
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0178500   -0.0732283   0.0375283
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0156335   -0.0331496   0.0644167
3 months    ki1000108-IRC              INDIA                          Female               NA                 0.0305867   -0.0188997   0.0800731
3 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0521001    0.0023696   0.1018307
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0032938   -0.0584151   0.0650027
3 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0429241           NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0373903    0.0032257   0.0715550
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0230637   -0.0071396   0.0532670
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0030991   -0.0290507   0.0228526
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0266042    0.0143571   0.0388513
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0224505    0.0041862   0.0407148
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0126085   -0.0182907   0.0435078
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0310975   -0.0380659   0.1002609
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0062534   -0.0227713   0.0352781
3 months    ki1114097-CMIN             PERU                           Female               NA                -0.0057732   -0.0290953   0.0175489
3 months    ki1114097-CONTENT          PERU                           Female               NA                 0.1156209    0.0659284   0.1653133
3 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0501416           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0143461    0.0074303   0.0212620
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0014666   -0.0403646   0.0432977
3 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0200755    0.0108115   0.0293396
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0277233    0.0146082   0.0408383
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0159857           NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0053497           NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0774634    0.0189119   0.1360149
6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0168196   -0.0351200   0.0687591
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0868421    0.0316393   0.1420449
6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0268144   -0.0245754   0.0782042
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0789213    0.0159714   0.1418713
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0794160    0.0223587   0.1364733
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0230413   -0.0825834   0.0365008
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0611746    0.0101036   0.1122456
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0272805   -0.0255987   0.0801597
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0409699   -0.0049115   0.0868512
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0254902   -0.0386716   0.0896520
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0190891           NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0535916   -0.0304689   0.1376521
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0690714    0.0263180   0.1118249
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0375822    0.0022452   0.0729193
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0252224   -0.0080392   0.0584840
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0391492    0.0224171   0.0558813
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0306004    0.0106124   0.0505885
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0230464   -0.0278698   0.0739627
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0238961   -0.0143948   0.0621871
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0421295   -0.0282766   0.1125355
6 months    ki1114097-CMIN             BRAZIL                         Female               NA                 0.0606685   -0.0132302   0.1345672
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0168689   -0.0081500   0.0418878
6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0202976   -0.0067325   0.0473276
6 months    ki1114097-CONTENT          PERU                           Female               NA                 0.1572181    0.1011447   0.2132914
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0738349           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0259677    0.0164096   0.0355257
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0044951   -0.0835219   0.0745318
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0422172    0.0252817   0.0591528
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1085556    0.0490635   0.1680478
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0155153           NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0122412           NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0539132   -0.0077540   0.1155803
12 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0147797   -0.0414068   0.0709663
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0734950    0.0152638   0.1317261
12 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0165138   -0.0383518   0.0713793
12 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0669056    0.0021545   0.1316568
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0834456    0.0223125   0.1445787
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0281106   -0.0306964   0.0869176
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0645161    0.0178380   0.1111943
12 months   ki1000108-IRC              INDIA                          Female               NA                 0.0374076   -0.0164320   0.0912472
12 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0180450   -0.0215183   0.0576082
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0077933   -0.0598649   0.0754515
12 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0521528           NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0121212   -0.0508578   0.0751003
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0467517    0.0005991   0.0929044
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0282430   -0.0109247   0.0674108
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0294291   -0.0055039   0.0643620
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0493858    0.0287415   0.0700300
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0359943    0.0155825   0.0564061
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0445925   -0.0128592   0.1020441
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0243416           NA          NA
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0262484   -0.0155025   0.0679994
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0264550   -0.0923170   0.0394069
12 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0705201   -0.0070820   0.1481221
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0195043   -0.0050590   0.0440676
12 months   ki1114097-CMIN             PERU                           Female               NA                 0.0430829    0.0095920   0.0765739
12 months   ki1114097-CONTENT          PERU                           Female               NA                 0.1851251    0.1267512   0.2434989
12 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0973502           NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0432900    0.0337196   0.0528604
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0374068   -0.0019067   0.0767204
12 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0226473    0.0107217   0.0345729
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0547268    0.0352359   0.0742176
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0864971    0.0525510   0.1204432
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0303590           NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0137420           NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0584789   -0.0052731   0.1222309
18 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0276577   -0.0341832   0.0894986
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0646570    0.0058571   0.1234569
18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0165945   -0.0461324   0.0793215
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0994039    0.0336181   0.1651896
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0969948    0.0354241   0.1585655
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0395886   -0.0105777   0.0897548
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0236556   -0.0127981   0.0601092
18 months   ki1000108-IRC              INDIA                          Female               NA                 0.0297385   -0.0235485   0.0830255
18 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0017334   -0.0280516   0.0315184
18 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0046490   -0.0699958   0.0792938
18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0363613           NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0094877   -0.0674137   0.0484384
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0287540   -0.0171528   0.0746608
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0365957   -0.0044421   0.0776335
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0262296   -0.0097602   0.0622194
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0430223    0.0177210   0.0683237
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0433743    0.0222306   0.0645179
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0114110   -0.0546998   0.0775218
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0933180           NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0027548   -0.0383231   0.0438326
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0288934   -0.0855410   0.0277543
18 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0385457   -0.0404586   0.1175499
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0359355    0.0081307   0.0637402
18 months   ki1114097-CMIN             PERU                           Female               NA                 0.0497270    0.0102008   0.0892532
18 months   ki1114097-CONTENT          PERU                           Female               NA                 0.1946595    0.1338922   0.2554269
18 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.1081927           NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0669285    0.0560499   0.0778072
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0041743   -0.0327838   0.0411324
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0472749    0.0276593   0.0668905
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0664296    0.0293830   0.1034762
18 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0337284           NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0174667           NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0300955   -0.0340029   0.0941939
24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0321508   -0.0338762   0.0981778
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0537013   -0.0043346   0.1117372
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0035506   -0.0625103   0.0696114
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0939209    0.0275547   0.1602870
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0867769    0.0253641   0.1481896
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0207094   -0.0209012   0.0623200
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0055483   -0.0322582   0.0211616
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0306526   -0.0207563   0.0820615
24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0010938   -0.0307239   0.0285364
24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0726744           NA          NA
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0006895   -0.0415072   0.0428862
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0362598   -0.0057736   0.0782932
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0219535   -0.0167526   0.0606595
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0375887    0.0055827   0.0695946
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0414715    0.0201951   0.0627479
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0185025           NA          NA
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0051592   -0.0344216   0.0447399
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0133231   -0.0605677   0.0339216
24 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0296828   -0.0522106   0.1115763
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0359067    0.0056731   0.0661404
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0298870   -0.0125066   0.0722805
24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.1993401    0.1362378   0.2624424
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.1201844           NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0373141    0.0188407   0.0557875
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0271037   -0.0023904   0.0565977
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0251151    0.0075054   0.0427248
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0668711    0.0331282   0.1006139
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0111753           NA          NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1756222   -0.0274709   0.3385712
3 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0309735   -0.3798813   0.2297118
3 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1975703   -0.0105718   0.3628425
3 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.2535885   -0.1246676   0.5046269
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.1188811   -0.0661909   0.2718279
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1089124   -0.0951513   0.2749522
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0570328   -0.2496317   0.1058818
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0452747   -0.1069904   0.1765960
3 months    ki1000108-IRC              INDIA                          Female               NA                 0.0964657   -0.0737819   0.2397206
3 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0819334   -0.0002995   0.1574061
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0064475   -0.1219967   0.1201876
3 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1293225           NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1679894    0.0006608   0.3073007
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1241891   -0.0536961   0.2720436
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0194139   -0.1956458   0.1308424
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2609174    0.1344660   0.3688947
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0917194    0.0140816   0.1632434
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0795412   -0.1371131   0.2549163
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0643478   -0.0904863   0.1971976
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0404677   -0.1668739   0.2109668
3 months    ki1114097-CMIN             PERU                           Female               NA                -0.0675676   -0.3780275   0.1729479
3 months    ki1114097-CONTENT          PERU                           Female               NA                 0.7102426    0.3641551   0.8679562
3 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.6767454           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0684661    0.0349073   0.1008580
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0053188   -0.1585735   0.1460269
3 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.1076697    0.0567457   0.1558445
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1916795    0.0969511   0.2764710
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0396323           NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0195704           NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.2268571    0.0360076   0.3799226
6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0916667   -0.2395280   0.3343680
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.2481203    0.0740064   0.3894957
6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.1556541   -0.1992235   0.4055153
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.1780465    0.0223224   0.3089669
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.2069398    0.0434602   0.3424796
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0560525   -0.2114326   0.0793984
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1194207    0.0131824   0.2142216
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0643378   -0.0691562   0.1811638
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0551688   -0.0090961   0.1153411
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0430464   -0.0718561   0.1456313
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0443400           NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.1308632   -0.1012435   0.3140493
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1893451    0.0633981   0.2983558
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1475622   -0.0024351   0.2751149
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0821402   -0.0327545   0.1842528
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1956584    0.1085829   0.2742282
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0947735    0.0307398   0.1545768
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0731043   -0.1032475   0.2212667
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0836364   -0.0605409   0.2082132
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0751894   -0.0598138   0.1929953
6 months    ki1114097-CMIN             BRAZIL                         Female               NA                 0.3680556   -0.2343514   0.6764667
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1131848   -0.0707837   0.2655461
6 months    ki1114097-CMIN             PERU                           Female               NA                 0.1570144   -0.0781080   0.3408595
6 months    ki1114097-CONTENT          PERU                           Female               NA                 0.7042060    0.4313484   0.8461376
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.7081440           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0881603    0.0551563   0.1200114
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0124275   -0.2562832   0.1840936
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1689894    0.0987779   0.2337310
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.3044034    0.1179498   0.4514432
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0364707           NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0373564           NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1250995   -0.0308046   0.2574238
12 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0728430   -0.2493750   0.3119599
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1542082    0.0216692   0.2687915
12 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0825688   -0.2365903   0.3193542
12 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1290323   -0.0061322   0.2460386
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1771508    0.0354749   0.2980164
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0427770   -0.0512744   0.1284141
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0923077    0.0220254   0.1575391
12 months   ki1000108-IRC              INDIA                          Female               NA                 0.0737309   -0.0389442   0.1741862
12 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0218531   -0.0273466   0.0686967
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0123617   -0.1010246   0.1140713
12 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0886598           NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0142857   -0.0629098   0.0858748
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0916402   -0.0037959   0.1780026
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0851485   -0.0408553   0.1958985
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0774506   -0.0192624   0.1649869
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1557252    0.0882338   0.2182206
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0883733    0.0368064   0.1371794
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0851870   -0.0318967   0.1889858
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1146505           NA          NA
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0576475   -0.0387473   0.1450970
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0385356   -0.1392545   0.0532789
12 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.2638815   -0.0845261   0.5003620
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0789621   -0.0259095   0.1731133
12 months   ki1114097-CMIN             PERU                           Female               NA                 0.1690537    0.0275347   0.2899780
12 months   ki1114097-CONTENT          PERU                           Female               NA                 0.7370720    0.4915383   0.8640386
12 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.6683252           NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1148612    0.0890886   0.1399046
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0516527   -0.0044861   0.1046540
12 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0592754    0.0275302   0.0899844
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1247156    0.0790313   0.1681338
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1821580    0.1068211   0.2511404
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0672007           NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0316267           NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1031192   -0.0175673   0.2094920
18 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.1192354   -0.1910019   0.3486607
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1113267    0.0028782   0.2079802
18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0563725   -0.1826123   0.2470628
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1478936    0.0417872   0.2422504
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1740403    0.0537985   0.2790019
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0485481   -0.0155691   0.1086173
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0279226   -0.0162453   0.0701708
18 months   ki1000108-IRC              INDIA                          Female               NA                 0.0528828   -0.0469489   0.1431951
18 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0019009   -0.0313051   0.0340378
18 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0068434   -0.1093499   0.1108666
18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0519805           NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0106308   -0.0777390   0.0522989
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0442438   -0.0292272   0.1124701
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0877135   -0.0162640   0.1810527
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0591613   -0.0256984   0.1370003
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1063852    0.0414975   0.1668801
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0868246    0.0433748   0.1283009
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0182970   -0.0936929   0.1188195
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.2462006           NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0044168   -0.0636743   0.0681491
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0363356   -0.1103585   0.0327526
18 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.1299539   -0.1807809   0.3589156
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0970085    0.0187163   0.1690541
18 months   ki1114097-CMIN             PERU                           Female               NA                 0.1320685    0.0204358   0.2309793
18 months   ki1114097-CONTENT          PERU                           Female               NA                 0.6942857    0.4613896   0.8264771
18 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.6912311           NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1362895    0.1136939   0.1583089
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0050314   -0.0405322   0.0485999
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0766651    0.0441298   0.1080930
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1197505    0.0497403   0.1846027
18 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0620257           NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0318906           NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0484626   -0.0608495   0.1465109
24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.1414634   -0.2024693   0.3870238
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0862247   -0.0127866   0.1755565
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0101636   -0.1982065   0.1822977
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1304124    0.0307734   0.2198082
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1409396    0.0332386   0.2366422
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0234912   -0.0250566   0.0697398
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0059986   -0.0353075   0.0224806
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0477854   -0.0360227   0.1248140
24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0011887   -0.0339153   0.0305019
24 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1041667           NA          NA
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0009129   -0.0565448   0.0552458
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0753686   -0.0164437   0.1588877
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0437689   -0.0366740   0.1179696
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0867430    0.0096996   0.1577927
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0725258    0.0344195   0.1091282
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0441336           NA          NA
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0074755   -0.0515709   0.0632064
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0152530   -0.0708756   0.0374804
24 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0883065   -0.1908807   0.3020416
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0777130    0.0097799   0.1409856
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0656364   -0.0323786   0.1543457
24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.6889474    0.4546462   0.8225854
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.5829505           NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0520900    0.0257820   0.0776876
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0302139   -0.0034397   0.0627389
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0333739    0.0096293   0.0565492
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1024228    0.0485084   0.1532822
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0187720           NA          NA
