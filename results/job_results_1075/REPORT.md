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
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female    14031   6819   5488   1331
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male      14031   7212   5603   1609
3 months    ki1135781-COHORTS          GUATEMALA                      Female      515    237    172     65
3 months    ki1135781-COHORTS          GUATEMALA                      Male        515    278    201     77
3 months    ki1135781-COHORTS          INDIA                          Female     7176   3480   2901    579
3 months    ki1135781-COHORTS          INDIA                          Male       7176   3696   2937    759
3 months    ki1135781-COHORTS          PHILIPPINES                    Female     3056   1437   1269    168
3 months    ki1135781-COHORTS          PHILIPPINES                    Male       3056   1619   1345    274
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female     9102   4453   3257   1196
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male       9102   4649   3164   1485
6 months    ki1135781-COHORTS          GUATEMALA                      Female      141     71     45     26
6 months    ki1135781-COHORTS          GUATEMALA                      Male        141     70     45     25
6 months    ki1135781-COHORTS          PHILIPPINES                    Female     2806   1315   1042    273
6 months    ki1135781-COHORTS          PHILIPPINES                    Male       2806   1491   1063    428
6 months    ki1148112-LCNI-5           MALAWI                         Female      272    129     97     32
6 months    ki1148112-LCNI-5           MALAWI                         Male        272    143     78     65
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
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female     7284   3843   2213   1630
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male       7284   3441   1494   1947
18 months   ki1135781-COHORTS          GUATEMALA                      Female      452    212     37    175
18 months   ki1135781-COHORTS          GUATEMALA                      Male        452    240     40    200
18 months   ki1135781-COHORTS          PHILIPPINES                    Female     2632   1247    537    710
18 months   ki1135781-COHORTS          PHILIPPINES                    Male       2632   1385    472    913
18 months   ki1148112-LCNI-5           MALAWI                         Female      676    342    175    167
18 months   ki1148112-LCNI-5           MALAWI                         Male        676    334    126    208
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
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female     1879   1025    329    696
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male       1879    854    204    650
24 months   ki1135781-COHORTS          GUATEMALA                      Female      476    223     29    194
24 months   ki1135781-COHORTS          GUATEMALA                      Male        476    253     20    233
24 months   ki1135781-COHORTS          PHILIPPINES                    Female     2562   1218    332    886
24 months   ki1135781-COHORTS          PHILIPPINES                    Male       2562   1344    302   1042
24 months   ki1148112-LCNI-5           MALAWI                         Female      726    372    154    218
24 months   ki1148112-LCNI-5           MALAWI                         Male        726    354     98    256


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
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/48604dbf-3af2-46b2-accf-5af235643697/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 135 rows containing missing values (geom_errorbar).
```

![](/tmp/48604dbf-3af2-46b2-accf-5af235643697/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/48604dbf-3af2-46b2-accf-5af235643697/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/48604dbf-3af2-46b2-accf-5af235643697/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1951899   0.1857823   0.2045975
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.2231004   0.2134916   0.2327092
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.2742616   0.2174066   0.3311166
3 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.2769784   0.2243226   0.3296342
3 months    ki1135781-COHORTS          INDIA                          Female               NA                0.1663793   0.1540050   0.1787537
3 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.2053571   0.1923329   0.2183814
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.1169102   0.1002945   0.1335260
3 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.1692403   0.1509725   0.1875080
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.2685830   0.2555643   0.2816017
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.3194235   0.3060202   0.3328269
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.3661972   0.2537369   0.4786574
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.3571429   0.2444950   0.4697907
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.2076046   0.1856789   0.2295302
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2870557   0.2640890   0.3100223
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                0.2480620   0.1733958   0.3227282
6 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                0.4545455   0.3727841   0.5363068
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
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.4241478   0.4085215   0.4397741
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.5658239   0.5492620   0.5823858
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.8254717   0.7743218   0.8766216
18 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.8333333   0.7861317   0.8805350
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.5693665   0.5418782   0.5968547
18 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.6592058   0.6342390   0.6841725
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.4883041   0.4352880   0.5413202
18 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.6227545   0.5707349   0.6747741
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
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.6790244   0.6504366   0.7076122
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.7611241   0.7325187   0.7897296
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.8699552   0.8257628   0.9141475
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.9209486   0.8876660   0.9542312
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.7274220   0.7024100   0.7524340
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.7752976   0.7529788   0.7976164
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.5860215   0.5359349   0.6361081
24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.7231638   0.6765220   0.7698057


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2943396   0.2879371   0.3007421
3 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1630901   0.1624594   0.1637209
3 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2709163   0.2635841   0.2782486
3 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1583333   0.1536509   0.1630158
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.3333333   0.3291082   0.3375585
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2611465   0.2579552   0.2643378
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3129771   0.3107782   0.3151760
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3453039   0.3436822   0.3469255
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.3170732   0.3143853   0.3197611
3 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.6358839   0.6307550   0.6410128
3 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5108696   0.5104968   0.5112423
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2225755   0.2198096   0.2253414
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1857143   0.1840903   0.1873383
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1596306   0.1594087   0.1598525
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1019641   0.1009116   0.1030165
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2447735   0.2438911   0.2456559
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1585160   0.1575521   0.1594799
3 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4832714   0.4800541   0.4864887
3 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1545293   0.1539964   0.1550622
3 months    ki1114097-CMIN             PERU                           NA                   NA                0.0854430   0.0850202   0.0858658
3 months    ki1114097-CONTENT          PERU                           NA                   NA                0.1627907   0.1475144   0.1780670
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2095360   0.2093052   0.2097669
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2757282   0.2756111   0.2758452
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1864548   0.1860041   0.1869056
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1446335   0.1437073   0.1455597
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3414634   0.3316046   0.3513222
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1834862   0.1812688   0.1857037
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3500000   0.3377252   0.3622748
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1722689   0.1691042   0.1754336
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4432624   0.4347894   0.4517354
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3837638   0.3741147   0.3934130
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4110672   0.4081656   0.4139688
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5122616   0.5059772   0.5185460
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4240196   0.4216175   0.4264217
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.7426273   0.7385850   0.7466697
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5921569   0.5892014   0.5951123
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4095238   0.3978591   0.4211886
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3647913   0.3593942   0.3701884
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2546875   0.2519158   0.2574592
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3070652   0.3052368   0.3088936
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2000895   0.1984817   0.2016974
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3228799   0.3216672   0.3240925
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3152542   0.3125011   0.3180074
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2857143   0.2838038   0.2876248
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5603113   0.5558470   0.5647756
6 months    ki1114097-CMIN             BRAZIL                         NA                   NA                0.1648352   0.1515925   0.1780779
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1490385   0.1479322   0.1501447
6 months    ki1114097-CMIN             PERU                           NA                   NA                0.1292719   0.1278452   0.1306986
6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2232558   0.2024836   0.2440281
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2945506   0.2940285   0.2950728
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3617021   0.3609522   0.3624520
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2498218   0.2483546   0.2512890
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3566176   0.3443420   0.3688932
12 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4309623   0.4239681   0.4379566
12 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2028986   0.2009284   0.2048687
12 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4765957   0.4662076   0.4869839
12 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2000000   0.1980320   0.2019680
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5185185   0.5111502   0.5258868
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4710425   0.4608995   0.4811854
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6571429   0.6535723   0.6607135
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6989247   0.6923598   0.7054897
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.5073529   0.5040754   0.5106305
12 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8257373   0.8239473   0.8275273
12 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.6304348   0.6295015   0.6313680
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8484848   0.8458018   0.8511679
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5101664   0.5065655   0.5137672
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3316913   0.3295508   0.3338318
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3799726   0.3778142   0.3821310
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3171343   0.3149931   0.3192755
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4072987   0.4059035   0.4086938
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5234657   0.5180702   0.5288612
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4553265   0.4532571   0.4573958
12 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6865079   0.6836736   0.6893423
12 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.2672414   0.2536678   0.2808150
12 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.2470085   0.2458828   0.2481343
12 months   ki1114097-CMIN             PERU                           NA                   NA                0.2548476   0.2518808   0.2578145
12 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2511628   0.2267034   0.2756222
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3768898   0.3760638   0.3777158
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7241993   0.7212754   0.7271232
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3820694   0.3815597   0.3825790
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4388125   0.4368777   0.4407472
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4748466   0.4688386   0.4808547
18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5670996   0.5595092   0.5746899
18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2319588   0.2282145   0.2357030
18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5807860   0.5716657   0.5899064
18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2943723   0.2923627   0.2963819
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6721311   0.6608073   0.6834549
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5573123   0.5453839   0.5692406
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8154506   0.8103783   0.8205230
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8471850   0.8447747   0.8495953
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.5623472   0.5597377   0.5649567
18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.9118457   0.9116706   0.9120209
18 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.6793478   0.6787372   0.6799584
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8924731   0.8903368   0.8946095
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6498994   0.6475791   0.6522197
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4172185   0.4144208   0.4200163
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4433566   0.4414083   0.4453049
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4044017   0.4021956   0.4066077
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4995622   0.4978367   0.5012877
18 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.6236559   0.6219207   0.6253911
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6236934   0.6234756   0.6239112
18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7951807   0.7920335   0.7983279
18 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.2966102   0.2892611   0.3039592
18 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3704363   0.3682978   0.3725749
18 months   ki1114097-CMIN             PERU                           NA                   NA                0.3765244   0.3729636   0.3800852
18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2803738   0.2547163   0.3060314
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4910763   0.4894519   0.4927007
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8296460   0.8292839   0.8300081
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6166413   0.6149273   0.6183554
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5547337   0.5496627   0.5598048
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6210046   0.6169912   0.6250179
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2272727   0.2228237   0.2317217
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6228070   0.6152460   0.6303680
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3493450   0.3489134   0.3497766
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7201835   0.7087856   0.7315814
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6157025   0.6047467   0.6266583
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8815789   0.8788612   0.8842967
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9249330   0.9243676   0.9254983
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.6387697   0.6441571
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.9201183   0.9200043   0.9202324
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7553191   0.7552616   0.7553767
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4810997   0.4782509   0.4839484
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.5015773   0.4998563   0.5032983
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4333333   0.4310034   0.4356633
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5718169   0.5701366   0.5734973
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6901408   0.6897323   0.6905494
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.8734694   0.8720096   0.8749292
24 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.3361345   0.3305488   0.3417201
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.4620431   0.4599097   0.4641765
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.4553415   0.4529766   0.4577064
24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2893401   0.2610047   0.3176755
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7163385   0.7144896   0.7181873
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8970588   0.8947705   0.8993472
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7525371   0.7516111   0.7534631
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6528926   0.6479027   0.6578824


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
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.1429914   1.0714490    1.219311
3 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0099059   0.7622985    1.337940
3 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.2342709   1.1193365    1.361007
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.4476088   1.2110005    1.730446
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.1892918   1.1154376    1.268036
6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            0.9752747   0.6279710    1.514657
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3827040   1.2111193    1.578598
6 months    ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            1.8323864   1.2904228    2.601969
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
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.3340253   1.2727082    1.398297
18 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0095238   0.9282324    1.097934
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.1577882   1.0888800    1.231057
18 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.2753415   1.1120747    1.462578
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
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.1209084   1.0594009    1.185987
24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0586162   0.9946349    1.126713
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.0658155   1.0190757    1.114699
24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.2340227   1.1087193    1.373487


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0516926   -0.0207740   0.1241592
3 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0050515   -0.0741587   0.0640557
3 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0535250   -0.0158192   0.1228692
3 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0401515   -0.0204833   0.1007863
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0396270   -0.0352657   0.1145197
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0284421   -0.0374201   0.0943043
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0178500   -0.0979967   0.0622968
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0156335   -0.0527764   0.0840435
3 months    ki1000108-IRC              INDIA                          Female               NA                 0.0305867   -0.0346984   0.0958718
3 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0521001   -0.0192094   0.1234097
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0032938   -0.0821486   0.0887362
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0373903   -0.0069089   0.0816896
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0230637   -0.0166951   0.0628225
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0030991   -0.0401881   0.0339900
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0266042    0.0115094   0.0416990
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0224505   -0.0021206   0.0470215
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0126085   -0.0287125   0.0539295
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0310975   -0.0600936   0.1222886
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0062534   -0.0346874   0.0471943
3 months    ki1114097-CMIN             PERU                           Female               NA                -0.0057732   -0.0386015   0.0270551
3 months    ki1114097-CONTENT          PERU                           Female               NA                 0.1156209    0.0723799   0.1588619
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0143461    0.0049357   0.0237565
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0014666   -0.0553886   0.0583217
3 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0200755    0.0076930   0.0324581
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0277233    0.0110818   0.0443648
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0774634   -0.0005933   0.1555202
6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0168196   -0.0536633   0.0873024
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0868421    0.0108506   0.1628336
6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0268144   -0.0392848   0.0929135
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0789213   -0.0047028   0.1625455
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0794160    0.0019014   0.1569306
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0230413   -0.1087901   0.0627074
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0611746   -0.0110960   0.1334452
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0272805   -0.0435348   0.0980958
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0409699   -0.0258964   0.1078361
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0254902   -0.0633943   0.1143746
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0535916   -0.0697193   0.1769025
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0690714    0.0129657   0.1251772
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0375822   -0.0088813   0.0840457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0252224   -0.0207489   0.0711937
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0391492    0.0174277   0.0608707
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0306004    0.0035424   0.0576585
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0230464   -0.0489551   0.0950480
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0238961   -0.0281442   0.0759364
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0421295   -0.0515350   0.1357939
6 months    ki1114097-CMIN             BRAZIL                         Female               NA                 0.0606685   -0.0272318   0.1485688
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0168689   -0.0163176   0.0500554
6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0202976   -0.0143338   0.0549289
6 months    ki1114097-CONTENT          PERU                           Female               NA                 0.1572181    0.1054773   0.2089588
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0259677    0.0129385   0.0389968
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0044951   -0.1169578   0.1079677
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0422172    0.0202426   0.0641919
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1085556    0.0328870   0.1842242
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0539132   -0.0325498   0.1403761
12 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0147797   -0.0616471   0.0912065
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0734950   -0.0119662   0.1589562
12 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0165138   -0.0563318   0.0893593
12 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0669056   -0.0211578   0.1549690
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0834456   -0.0013997   0.1682909
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0281106   -0.0571623   0.1133835
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0645161   -0.0050982   0.1341304
12 months   ki1000108-IRC              INDIA                          Female               NA                 0.0374076   -0.0350667   0.1098819
12 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0180450   -0.0393176   0.0754075
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0077933   -0.0846892   0.1002758
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0121212   -0.0861827   0.1104251
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0467517   -0.0157237   0.1092271
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0282430   -0.0247574   0.0812435
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0294291   -0.0194016   0.0782598
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0493858    0.0216583   0.0771133
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0359943    0.0080292   0.0639594
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0445925   -0.0378977   0.1270826
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0262484   -0.0316053   0.0841022
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0264550   -0.1119894   0.0590793
12 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0705201   -0.0305847   0.1716248
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0195043   -0.0143847   0.0533933
12 months   ki1114097-CMIN             PERU                           Female               NA                 0.0430829   -0.0004757   0.0866416
12 months   ki1114097-CONTENT          PERU                           Female               NA                 0.1851251    0.1317970   0.2384531
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0432900    0.0301982   0.0563819
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0374068   -0.0185604   0.0933741
12 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0226473    0.0063213   0.0389733
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0547268    0.0282827   0.0811709
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0864971    0.0390253   0.1339689
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0584789   -0.0330096   0.1499674
18 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0276577   -0.0545834   0.1098988
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0646570   -0.0239654   0.1532794
18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0165945   -0.0680863   0.1012753
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0994039    0.0060804   0.1927274
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0969948    0.0089819   0.1850077
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0395886   -0.0366311   0.1158082
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0236556   -0.0311099   0.0784211
18 months   ki1000108-IRC              INDIA                          Female               NA                 0.0297385   -0.0424884   0.1019654
18 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0017334   -0.0403430   0.0438098
18 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0046490   -0.0964154   0.1057134
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0094877   -0.0915703   0.0725950
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0287540   -0.0344578   0.0919658
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0365957   -0.0194994   0.0926908
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0262296   -0.0246376   0.0770967
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0430223    0.0079719   0.0780728
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0433743    0.0139765   0.0727721
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0114110   -0.0853314   0.1081534
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0027548   -0.0544285   0.0599380
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0288934   -0.1009167   0.0431300
18 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0385457   -0.0710834   0.1481747
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0359355   -0.0028400   0.0747110
18 months   ki1114097-CMIN             PERU                           Female               NA                 0.0497270   -0.0029867   0.1024408
18 months   ki1114097-CONTENT          PERU                           Female               NA                 0.1946595    0.1351712   0.2541479
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0669285    0.0512180   0.0826391
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0041743   -0.0469769   0.0553255
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0472749    0.0197332   0.0748165
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0664296    0.0131716   0.1196877
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0300955   -0.0620826   0.1222736
24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0321508   -0.0539836   0.1182852
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0537013   -0.0343305   0.1417331
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0035506   -0.0867681   0.0938693
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0939209   -0.0022759   0.1901176
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0867769   -0.0030184   0.1765721
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0207094   -0.0427407   0.0841595
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0055483   -0.0420545   0.0309579
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0306526   -0.0397428   0.1010480
24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0010938   -0.0422619   0.0400743
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0006895   -0.0567568   0.0581358
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0362598   -0.0219639   0.0944835
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0219535   -0.0329397   0.0768466
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0375887   -0.0067054   0.0818827
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0414715    0.0115278   0.0714152
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0051592   -0.0499938   0.0603121
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0133231   -0.0737817   0.0471356
24 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0296828   -0.0856927   0.1450583
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0359067   -0.0063472   0.0781607
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0298870   -0.0286467   0.0884206
24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.1993401    0.1363711   0.2623091
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0373141    0.0086666   0.0659616
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0271037   -0.0171479   0.0713552
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0251151    0.0000860   0.0501442
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0668711    0.0165365   0.1172056


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1756222   -0.1108775   0.3882325
3 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0309735   -0.5550542   0.3164828
3 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1975703   -0.1032239   0.4163529
3 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.2535885   -0.2459617   0.5528513
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.1188811   -0.1369376   0.3171389
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1089124   -0.1825209   0.3285217
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0570328   -0.3468091   0.1703959
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0452747   -0.1748887   0.2241815
3 months    ki1000108-IRC              INDIA                          Female               NA                 0.0964657   -0.1347420   0.2805640
3 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0819334   -0.0372942   0.1874569
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0064475   -0.1757027   0.1603773
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1679894   -0.0567119   0.3449098
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1241891   -0.1182785   0.3140843
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0194139   -0.2803667   0.1883538
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2609174    0.0972081   0.3949402
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0917194   -0.0144081   0.1867438
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0795412   -0.2217757   0.3065466
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0643478   -0.1447034   0.2352211
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0404677   -0.2646576   0.2719751
3 months    ki1114097-CMIN             PERU                           Female               NA                -0.0675676   -0.5300224   0.2551086
3 months    ki1114097-CONTENT          PERU                           Female               NA                 0.7102426    0.3133946   0.8777182
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0684661    0.0224570   0.1123098
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0053188   -0.2238106   0.1915492
3 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.1076697    0.0387351   0.1716608
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1916795    0.0680989   0.2988719
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.2268571   -0.0381371   0.4242091
6 months    ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0916667   -0.3864084   0.4048872
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.2481203   -0.0019486   0.4357764
6 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.1556541   -0.3298801   0.4639216
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.1780465   -0.0336204   0.3463678
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.2069398   -0.0223476   0.3848037
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0560525   -0.2866980   0.1332490
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1194207   -0.0334503   0.2496785
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0643378   -0.1184903   0.2172808
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0551688   -0.0392818   0.1410357
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0430464   -0.1194610   0.1819632
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.1308632   -0.2285206   0.3851151
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1893451    0.0202794   0.3292359
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1475622   -0.0557533   0.3117234
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0821402   -0.0804514   0.2202642
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1956584    0.0795529   0.2971184
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0947735    0.0069864   0.1747997
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0731043   -0.1858568   0.2755149
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0836364   -0.1178435   0.2488016
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0751894   -0.1080037   0.2280941
6 months    ki1114097-CMIN             BRAZIL                         Female               NA                 0.3680556   -0.4609943   0.7266562
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1131848   -0.1399017   0.3100798
6 months    ki1114097-CMIN             PERU                           Female               NA                 0.1570144   -0.1582501   0.3864670
6 months    ki1114097-CONTENT          PERU                           Female               NA                 0.7042060    0.3901216   0.8565384
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0881603    0.0428421   0.1313328
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0124275   -0.3763856   0.2552890
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1689894    0.0762716   0.2524009
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.3044034    0.0582593   0.4862125
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1250995   -0.1002019   0.3042632
12 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.0728430   -0.3918272   0.3823802
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1542082   -0.0450672   0.3154854
12 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0825688   -0.3645265   0.3831707
12 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1290323   -0.0583195   0.2832176
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1771508   -0.0236890   0.3385875
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0427770   -0.0961819   0.1641206
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0923077   -0.0128774   0.1865696
12 months   ki1000108-IRC              INDIA                          Female               NA                 0.0737309   -0.0806964   0.2060912
12 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0218531   -0.0501398   0.0889106
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0123617   -0.1457890   0.1486833
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0142857   -0.1086547   0.1235930
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0916402   -0.0394186   0.2061739
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0851485   -0.0894182   0.2317429
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0774506   -0.0604204   0.1973961
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1557252    0.0636893   0.2387143
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0883733    0.0170771   0.1544980
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0851870   -0.0867191   0.2298996
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0576475   -0.0783662   0.1765059
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0385356   -0.1709169   0.0788789
12 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.2638815   -0.2280882   0.5587692
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0789621   -0.0689676   0.2064204
12 months   ki1114097-CMIN             PERU                           Female               NA                 0.1690537   -0.0205642   0.3234411
12 months   ki1114097-CONTENT          PERU                           Female               NA                 0.7370720    0.4575761   0.8725514
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1148612    0.0794496   0.1489105
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0516527   -0.0288536   0.1258595
12 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0592754    0.0155622   0.1010476
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1247156    0.0623702   0.1829155
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1821580    0.0761180   0.2760271
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1031192   -0.0734977   0.2506783
18 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.1192354   -0.3171763   0.4110535
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1113267   -0.0549454   0.2513923
18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0563725   -0.2799455   0.3043198
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1478936   -0.0025763   0.2757805
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1740403    0.0005675   0.3174032
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0485481   -0.0496449   0.1375552
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0279226   -0.0389157   0.0904608
18 months   ki1000108-IRC              INDIA                          Female               NA                 0.0528828   -0.0846617   0.1729854
18 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0019009   -0.0453265   0.0469947
18 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0068434   -0.1536432   0.1450042
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                -0.0106308   -0.1069185   0.0772812
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0442438   -0.0581353   0.1367173
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0877135   -0.0571167   0.2127013
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0591613   -0.0628485   0.1671651
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1063852    0.0154085   0.1889556
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0868246    0.0260579   0.1437999
18 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0182970   -0.1497508   0.1617829
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0044168   -0.0916224   0.0920067
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0363356   -0.1309933   0.0503998
18 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.1299539   -0.3302559   0.4309515
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0970085   -0.0139421   0.1958183
18 months   ki1114097-CMIN             PERU                           Female               NA                 0.1320685   -0.0197636   0.2612943
18 months   ki1114097-CONTENT          PERU                           Female               NA                 0.6942857    0.4243717   0.8376362
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1362895    0.1037427   0.1676544
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0050314   -0.0585731   0.0648143
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0766651    0.0309166   0.1202539
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1197505    0.0184221   0.2106188
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0484626   -0.1121594   0.1858869
24 months   ki0047075b-MAL-ED          BRAZIL                         Female               NA                 0.1414634   -0.3347687   0.4477807
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0862247   -0.0665400   0.2171083
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0101636   -0.2852796   0.2376941
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1304124   -0.0136982   0.2540358
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1409396   -0.0176761   0.2748334
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0234912   -0.0511975   0.0928732
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                -0.0059986   -0.0462522   0.0327063
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0477854   -0.0685220   0.1514329
24 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0011887   -0.0469457   0.0425684
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0009129   -0.0781125   0.0741457
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0753686   -0.0539068   0.1887867
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0437689   -0.0721758   0.1471753
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0867430   -0.0213875   0.1834262
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0725258    0.0186656   0.1234299
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0074755   -0.0757453   0.0842583
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0152530   -0.0868844   0.0516575
24 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0883065   -0.3283833   0.3742882
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0777130   -0.0184057   0.1647598
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0656364   -0.0721600   0.1857229
24 months   ki1114097-CONTENT          PERU                           Female               NA                 0.6889474    0.4145347   0.8347404
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0520900    0.0112517   0.0912416
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0302139   -0.0203877   0.0783062
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0333739   -0.0004630   0.0660664
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1024228    0.0220006   0.1762317
