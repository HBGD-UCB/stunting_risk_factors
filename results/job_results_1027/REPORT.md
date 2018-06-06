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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female      257    131    105     26
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male        257    126    105     21
Birth       ki0047075b-MAL-ED          BRAZIL                         Female      191     93     80     13
Birth       ki0047075b-MAL-ED          BRAZIL                         Male        191     98     90      8
Birth       ki0047075b-MAL-ED          INDIA                          Female      206    110     95     15
Birth       ki0047075b-MAL-ED          INDIA                          Male        206     96     78     18
Birth       ki0047075b-MAL-ED          NEPAL                          Female      173     84     78      6
Birth       ki0047075b-MAL-ED          NEPAL                          Male        173     89     77     12
Birth       ki0047075b-MAL-ED          PERU                           Female      287    134    119     15
Birth       ki0047075b-MAL-ED          PERU                           Male        287    153    134     19
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female      262    131    119     12
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male        262    131    115     16
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      123     61     51     10
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        123     62     54      8
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female       90     45     40      5
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male         90     45     34     11
Birth       ki1000108-IRC              INDIA                          Female      388    173    156     17
Birth       ki1000108-IRC              INDIA                          Male        388    215    187     28
Birth       ki1000109-EE               PAKISTAN                       Female        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       Male          2      2      1      1
Birth       ki1000109-ResPak           PAKISTAN                       Female        7      3      2      1
Birth       ki1000109-ResPak           PAKISTAN                       Male          7      4      3      1
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female       28     12     12      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male         28     16     15      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female       27     13      9      4
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male         27     14     13      1
Birth       ki1101329-Keneba           GAMBIA                         Female     1541    738    696     42
Birth       ki1101329-Keneba           GAMBIA                         Male       1541    803    763     40
Birth       ki1114097-CMIN             BANGLADESH                     Female       13      6      5      1
Birth       ki1114097-CMIN             BANGLADESH                     Male         13      7      2      5
Birth       ki1114097-CMIN             BRAZIL                         Female      115     59     56      3
Birth       ki1114097-CMIN             BRAZIL                         Male        115     56     54      2
Birth       ki1114097-CMIN             PERU                           Female       10      7      7      0
Birth       ki1114097-CMIN             PERU                           Male         10      3      3      0
Birth       ki1114097-CONTENT          PERU                           Female        2      2      2      0
Birth       ki1114097-CONTENT          PERU                           Male          2      0      0      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female    13830   6736   6071    665
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male      13830   7094   6327    767
Birth       ki1135781-COHORTS          GUATEMALA                      Female      407    186    178      8
Birth       ki1135781-COHORTS          GUATEMALA                      Male        407    221    210     11
Birth       ki1135781-COHORTS          INDIA                          Female     6640   3195   2845    350
Birth       ki1135781-COHORTS          INDIA                          Male       6640   3445   3003    442
Birth       ki1135781-COHORTS          PHILIPPINES                    Female     3050   1433   1360     73
Birth       ki1135781-COHORTS          PHILIPPINES                    Male       3050   1617   1503    114
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female      250    128    108     20
3 months    ki0047075b-MAL-ED          BANGLADESH                     Male        250    122     99     23
3 months    ki0047075b-MAL-ED          BRAZIL                         Female      225    110    106      4
3 months    ki0047075b-MAL-ED          BRAZIL                         Male        225    115    105     10
3 months    ki0047075b-MAL-ED          INDIA                          Female      241    134    123     11
3 months    ki0047075b-MAL-ED          INDIA                          Male        241    107     82     25
3 months    ki0047075b-MAL-ED          NEPAL                          Female      236    110    109      1
3 months    ki0047075b-MAL-ED          NEPAL                          Male        236    126    114     12
3 months    ki0047075b-MAL-ED          PERU                           Female      291    135    107     28
3 months    ki0047075b-MAL-ED          PERU                           Male        291    156    111     45
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female      281    144    120     24
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male        281    137    107     30
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      254    128    108     20
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        254    126    103     23
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female      362    183    148     35
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male        362    179    124     55
3 months    ki1000108-IRC              INDIA                          Female      407    182    145     37
3 months    ki1000108-IRC              INDIA                          Male        407    225    171     54
3 months    ki1000109-EE               PAKISTAN                       Female      376    182     84     98
3 months    ki1000109-EE               PAKISTAN                       Male        376    194     75    119
3 months    ki1000109-ResPak           PAKISTAN                       Female      260    124     74     50
3 months    ki1000109-ResPak           PAKISTAN                       Male        260    136     80     56
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       97     54     34     20
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         97     43     25     18
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female      570    269    226     43
3 months    ki1017093-NIH-Birth        BANGLADESH                     Male        570    301    214     87
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female      645    306    271     35
3 months    ki1017093b-PROVIDE         BANGLADESH                     Male        645    339    296     43
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female      728    370    299     71
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male        728    358    273     85
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female     2292   1143   1090     53
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male       2292   1149   1065     84
3 months    ki1101329-Keneba           GAMBIA                         Female     2190   1050    920    130
3 months    ki1101329-Keneba           GAMBIA                         Male       2190   1140    954    186
3 months    ki1112895-Guatemala BSC    GUATEMALA                      Female       23     11     10      1
3 months    ki1112895-Guatemala BSC    GUATEMALA                      Male         23     12      9      3
3 months    ki1113344-GMS-Nepal        NEPAL                          Female      571    274    240     34
3 months    ki1113344-GMS-Nepal        NEPAL                          Male        571    297    247     50
3 months    ki1114097-CMIN             BANGLADESH                     Female      256    110     69     41
3 months    ki1114097-CMIN             BANGLADESH                     Male        256    146     92     54
3 months    ki1114097-CMIN             BRAZIL                         Female       92     48     44      4
3 months    ki1114097-CMIN             BRAZIL                         Male         92     44     40      4
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female      507    256    225     31
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Male        507    251    222     29
3 months    ki1114097-CMIN             PERU                           Female      630    301    283     18
3 months    ki1114097-CMIN             PERU                           Male        630    329    308     21
3 months    ki1114097-CONTENT          PERU                           Female      215    106    104      2
3 months    ki1114097-CONTENT          PERU                           Male        215    109     91     18
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female     9193   4493   3811    682
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male       9193   4700   3745    955
3 months    ki1135781-COHORTS          GUATEMALA                      Female      475    224    155     69
3 months    ki1135781-COHORTS          GUATEMALA                      Male        475    251    167     84
3 months    ki1135781-COHORTS          INDIA                          Female     7001   3383   2946    437
3 months    ki1135781-COHORTS          INDIA                          Male       7001   3618   3016    602
3 months    ki1135781-COHORTS          PHILIPPINES                    Female     2875   1353   1221    132
3 months    ki1135781-COHORTS          PHILIPPINES                    Male       2875   1522   1299    223
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female      241    123    108     15
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male        241    118     88     30
6 months    ki0047075b-MAL-ED          BRAZIL                         Female      209    103    101      2
6 months    ki0047075b-MAL-ED          BRAZIL                         Male        209    106    102      4
6 months    ki0047075b-MAL-ED          INDIA                          Female      236    130    112     18
6 months    ki0047075b-MAL-ED          INDIA                          Male        236    106     78     28
6 months    ki0047075b-MAL-ED          NEPAL                          Female      236    110    108      2
6 months    ki0047075b-MAL-ED          NEPAL                          Male        236    126    116     10
6 months    ki0047075b-MAL-ED          PERU                           Female      273    126    109     17
6 months    ki0047075b-MAL-ED          PERU                           Male        273    147    104     43
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female      254    126    106     20
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male        254    128     98     30
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      247    126     96     30
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        247    121     93     28
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female      369    186    139     47
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male        369    183    119     64
6 months    ki1000108-IRC              INDIA                          Female      407    183    144     39
6 months    ki1000108-IRC              INDIA                          Male        407    224    163     61
6 months    ki1000109-EE               PAKISTAN                       Female      372    182     90     92
6 months    ki1000109-EE               PAKISTAN                       Male        372    190     89    101
6 months    ki1000109-ResPak           PAKISTAN                       Female      235    111     76     35
6 months    ki1000109-ResPak           PAKISTAN                       Male        235    124     76     48
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       96     55     28     27
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         96     41     20     21
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female      537    245    197     48
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male        537    292    196     96
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female      583    276    239     37
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male        583    307    250     57
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female      715    362    294     68
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male        715    353    271     82
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female     2029   1003    935     68
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male       2029   1026    897    129
6 months    ki1101329-Keneba           GAMBIA                         Female     2089   1011    887    124
6 months    ki1101329-Keneba           GAMBIA                         Male       2089   1078    907    171
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female      299    153    114     39
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male        299    146     95     51
6 months    ki1113344-GMS-Nepal        NEPAL                          Female      563    273    219     54
6 months    ki1113344-GMS-Nepal        NEPAL                          Male        563    290    225     65
6 months    ki1114097-CMIN             BANGLADESH                     Female      243    106     75     31
6 months    ki1114097-CMIN             BANGLADESH                     Male        243    137     75     62
6 months    ki1114097-CMIN             BRAZIL                         Female      108     55     54      1
6 months    ki1114097-CMIN             BRAZIL                         Male        108     53     44      9
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female      848    420    391     29
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male        848    428    381     47
6 months    ki1114097-CMIN             PERU                           Female      637    292    274     18
6 months    ki1114097-CMIN             PERU                           Male        637    345    320     25
6 months    ki1114097-CONTENT          PERU                           Female      215    106    105      1
6 months    ki1114097-CONTENT          PERU                           Male        215    109     91     18
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female     8295   4031   3484    547
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male       8295   4264   3432    832
6 months    ki1135781-COHORTS          GUATEMALA                      Female      464    216    125     91
6 months    ki1135781-COHORTS          GUATEMALA                      Male        464    248    128    120
6 months    ki1135781-COHORTS          INDIA                          Female     6860   3287   2748    539
6 months    ki1135781-COHORTS          INDIA                          Male       6860   3573   2840    733
6 months    ki1135781-COHORTS          PHILIPPINES                    Female     2708   1276   1060    216
6 months    ki1135781-COHORTS          PHILIPPINES                    Male       2708   1432   1076    356
6 months    ki1148112-LCNI-5           MALAWI                         Female      839    420    298    122
6 months    ki1148112-LCNI-5           MALAWI                         Male        839    419    232    187
9 months    ki0047075b-MAL-ED          BANGLADESH                     Female      234    119     95     24
9 months    ki0047075b-MAL-ED          BANGLADESH                     Male        234    115     81     34
9 months    ki0047075b-MAL-ED          BRAZIL                         Female      199     96     95      1
9 months    ki0047075b-MAL-ED          BRAZIL                         Male        199    103    100      3
9 months    ki0047075b-MAL-ED          INDIA                          Female      232    126    103     23
9 months    ki0047075b-MAL-ED          INDIA                          Male        232    106     76     30
9 months    ki0047075b-MAL-ED          NEPAL                          Female      231    108     99      9
9 months    ki0047075b-MAL-ED          NEPAL                          Male        231    123    114      9
9 months    ki0047075b-MAL-ED          PERU                           Female      256    115     92     23
9 months    ki0047075b-MAL-ED          PERU                           Male        256    141    101     40
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female      250    125    107     18
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male        250    125     90     35
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      238    119     80     39
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        238    119     68     51
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female      366    183    129     54
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male        366    183    102     81
9 months    ki1000108-IRC              INDIA                          Female      407    183    132     51
9 months    ki1000108-IRC              INDIA                          Male        407    224    164     60
9 months    ki1000109-EE               PAKISTAN                       Female      366    179     72    107
9 months    ki1000109-EE               PAKISTAN                       Male        366    187     77    110
9 months    ki1000109-ResPak           PAKISTAN                       Female      211     99     67     32
9 months    ki1000109-ResPak           PAKISTAN                       Male        211    112     74     38
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       85     48     16     32
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         85     37     12     25
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female      507    233    157     76
9 months    ki1017093-NIH-Birth        BANGLADESH                     Male        507    274    169    105
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female      605    288    230     58
9 months    ki1017093b-PROVIDE         BANGLADESH                     Male        605    317    246     71
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female      706    358    271     87
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male        706    348    271     77
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female     1788    883    784     99
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male       1788    905    739    166
9 months    ki1101329-Keneba           GAMBIA                         Female     2067   1006    840    166
9 months    ki1101329-Keneba           GAMBIA                         Male       2067   1061    855    206
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female      238    123     85     38
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Male        238    115     57     58
9 months    ki1113344-GMS-Nepal        NEPAL                          Female      551    262    189     73
9 months    ki1113344-GMS-Nepal        NEPAL                          Male        551    289    207     82
9 months    ki1114097-CMIN             BANGLADESH                     Female      245    105     55     50
9 months    ki1114097-CMIN             BANGLADESH                     Male        245    140     79     61
9 months    ki1114097-CMIN             BRAZIL                         Female      110     58     52      6
9 months    ki1114097-CMIN             BRAZIL                         Male        110     52     41     11
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female      866    433    389     44
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Male        866    433    359     74
9 months    ki1114097-CMIN             PERU                           Female      625    290    260     30
9 months    ki1114097-CMIN             PERU                           Male        625    335    288     47
9 months    ki1114097-CONTENT          PERU                           Female      214    105    105      0
9 months    ki1114097-CONTENT          PERU                           Male        214    109     87     22
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female     7675   3852   3238    614
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male       7675   3823   2918    905
9 months    ki1135781-COHORTS          GUATEMALA                      Female      454    212     91    121
9 months    ki1135781-COHORTS          GUATEMALA                      Male        454    242     80    162
9 months    ki1135781-COHORTS          INDIA                          Female     5986   2858   2187    671
9 months    ki1135781-COHORTS          INDIA                          Male       5986   3128   2267    861
9 months    ki1135781-COHORTS          PHILIPPINES                    Female     2712   1283    990    293
9 months    ki1135781-COHORTS          PHILIPPINES                    Male       2712   1429    976    453
9 months    ki1148112-LCNI-5           MALAWI                         Female      664    329    247     82
9 months    ki1148112-LCNI-5           MALAWI                         Male        664    335    196    139
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female      233    118     84     34
12 months   ki0047075b-MAL-ED          BANGLADESH                     Male        233    115     74     41
12 months   ki0047075b-MAL-ED          BRAZIL                         Female      195     94     92      2
12 months   ki0047075b-MAL-ED          BRAZIL                         Male        195    101     97      4
12 months   ki0047075b-MAL-ED          INDIA                          Female      228    123     90     33
12 months   ki0047075b-MAL-ED          INDIA                          Male        228    105     63     42
12 months   ki0047075b-MAL-ED          NEPAL                          Female      231    108     94     14
12 months   ki0047075b-MAL-ED          NEPAL                          Male        231    123    111     12
12 months   ki0047075b-MAL-ED          PERU                           Female      246    112     83     29
12 months   ki0047075b-MAL-ED          PERU                           Male        246    134     94     40
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female      252    125    104     21
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male        252    127     88     39
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      231    114     58     56
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        231    117     48     69
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female      368    185    106     79
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male        368    183     79    104
12 months   ki1000108-IRC              INDIA                          Female      406    182    128     54
12 months   ki1000108-IRC              INDIA                          Male        406    224    159     65
12 months   ki1000109-EE               PAKISTAN                       Female      357    174     53    121
12 months   ki1000109-EE               PAKISTAN                       Male        357    183     49    134
12 months   ki1000109-ResPak           PAKISTAN                       Female      194     90     56     34
12 months   ki1000109-ResPak           PAKISTAN                       Male        194    104     74     30
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female       92     51     11     40
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male         92     41      8     33
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female      491    225    138     87
12 months   ki1017093-NIH-Birth        BANGLADESH                     Male        491    266    169     97
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female      600    287    213     74
12 months   ki1017093b-PROVIDE         BANGLADESH                     Male        600    313    230     83
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female      706    358    273     85
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male        706    348    262     86
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female     1444    708    608    100
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male       1444    736    597    139
12 months   ki1101329-Keneba           GAMBIA                         Female     1948    939    727    212
12 months   ki1101329-Keneba           GAMBIA                         Male       1948   1009    738    271
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female      201    105     60     45
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Male        201     96     41     55
12 months   ki1113344-GMS-Nepal        NEPAL                          Female      558    268    181     87
12 months   ki1113344-GMS-Nepal        NEPAL                          Male        558    290    186    104
12 months   ki1114097-CMIN             BANGLADESH                     Female      242    105     48     57
12 months   ki1114097-CMIN             BANGLADESH                     Male        242    137     65     72
12 months   ki1114097-CMIN             BRAZIL                         Female      115     60     50     10
12 months   ki1114097-CMIN             BRAZIL                         Male        115     55     41     14
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female      620    303    250     53
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Male        620    317    246     71
12 months   ki1114097-CMIN             PERU                           Female      601    276    230     46
12 months   ki1114097-CMIN             PERU                           Male        601    325    256     69
12 months   ki1114097-CONTENT          PERU                           Female      215    106    106      0
12 months   ki1114097-CONTENT          PERU                           Male        215    109     83     26
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female     6749   3478   2844    634
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male       6749   3271   2255   1016
12 months   ki1135781-COHORTS          GUATEMALA                      Female      534    253     81    172
12 months   ki1135781-COHORTS          GUATEMALA                      Male        534    281     77    204
12 months   ki1135781-COHORTS          INDIA                          Female     5357   2570   1749    821
12 months   ki1135781-COHORTS          INDIA                          Male       5357   2787   1812    975
12 months   ki1135781-COHORTS          PHILIPPINES                    Female     2585   1224    807    417
12 months   ki1135781-COHORTS          PHILIPPINES                    Male       2585   1361    778    583
12 months   ki1148112-LCNI-5           MALAWI                         Female      626    317    219     98
12 months   ki1148112-LCNI-5           MALAWI                         Male        626    309    160    149
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female      221    112     63     49
18 months   ki0047075b-MAL-ED          BANGLADESH                     Male        221    109     53     56
18 months   ki0047075b-MAL-ED          BRAZIL                         Female      180     84     83      1
18 months   ki0047075b-MAL-ED          BRAZIL                         Male        180     96     90      6
18 months   ki0047075b-MAL-ED          INDIA                          Female      228    123     76     47
18 months   ki0047075b-MAL-ED          INDIA                          Male        228    105     48     57
18 months   ki0047075b-MAL-ED          NEPAL                          Female      229    107     88     19
18 months   ki0047075b-MAL-ED          NEPAL                          Male        229    122     96     26
18 months   ki0047075b-MAL-ED          PERU                           Female      222    101     64     37
18 months   ki0047075b-MAL-ED          PERU                           Male        222    121     59     62
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female      241    120     90     30
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male        241    121     69     52
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      225    113     38     75
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        225    112     31     81
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female      369    185     70    115
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male        369    184     45    139
18 months   ki1000108-IRC              INDIA                          Female      405    184    118     66
18 months   ki1000108-IRC              INDIA                          Male        405    221    143     78
18 months   ki1000109-EE               PAKISTAN                       Female      350    172     24    148
18 months   ki1000109-EE               PAKISTAN                       Male        350    178     29    149
18 months   ki1000109-ResPak           PAKISTAN                       Female        9      3      2      1
18 months   ki1000109-ResPak           PAKISTAN                       Male          9      6      5      1
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female       84     49      6     43
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male         84     35      4     31
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female      463    214     87    127
18 months   ki1017093-NIH-Birth        BANGLADESH                     Male        463    249    104    145
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female      552    265    171     94
18 months   ki1017093b-PROVIDE         BANGLADESH                     Male        552    287    175    112
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female      634    320    227     93
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male        634    314    216     98
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      980    479    383     96
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        980    501    361    140
18 months   ki1101329-Keneba           GAMBIA                         Female     1923    933    659    274
18 months   ki1101329-Keneba           GAMBIA                         Male       1923    990    644    346
18 months   ki1113344-GMS-Nepal        NEPAL                          Female      550    267    124    143
18 months   ki1113344-GMS-Nepal        NEPAL                          Male        550    283    134    149
18 months   ki1114097-CMIN             BANGLADESH                     Female      237    103     25     78
18 months   ki1114097-CMIN             BANGLADESH                     Male        237    134     41     93
18 months   ki1114097-CMIN             BRAZIL                         Female      115     61     47     14
18 months   ki1114097-CMIN             BRAZIL                         Male        115     54     40     14
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female      754    380    288     92
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Male        754    374    254    120
18 months   ki1114097-CMIN             PERU                           Female      489    233    165     68
18 months   ki1114097-CMIN             PERU                           Male        489    256    170     86
18 months   ki1114097-CONTENT          PERU                           Female      200    102     99      3
18 months   ki1114097-CONTENT          PERU                           Male        200     98     74     24
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female     1710    943    565    378
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male       1710    767    332    435
18 months   ki1135781-COHORTS          GUATEMALA                      Female      436    208     34    174
18 months   ki1135781-COHORTS          GUATEMALA                      Male        436    228     36    192
18 months   ki1135781-COHORTS          PHILIPPINES                    Female     2492   1191    521    670
18 months   ki1135781-COHORTS          PHILIPPINES                    Male       2492   1301    507    794
18 months   ki1148112-LCNI-5           MALAWI                         Female      725    371    230    141
18 months   ki1148112-LCNI-5           MALAWI                         Male        725    354    162    192
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female      212    104     60     44
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male        212    108     54     54
24 months   ki0047075b-MAL-ED          BRAZIL                         Female      169     79     79      0
24 months   ki0047075b-MAL-ED          BRAZIL                         Male        169     90     84      6
24 months   ki0047075b-MAL-ED          INDIA                          Female      227    122     80     42
24 months   ki0047075b-MAL-ED          INDIA                          Male        227    105     52     53
24 months   ki0047075b-MAL-ED          NEPAL                          Female      228    106     81     25
24 months   ki0047075b-MAL-ED          NEPAL                          Male        228    122     98     24
24 months   ki0047075b-MAL-ED          PERU                           Female      201     91     67     24
24 months   ki0047075b-MAL-ED          PERU                           Male        201    110     60     50
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female      238    118     89     29
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male        238    120     65     55
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      214    106     33     73
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        214    108     28     80
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female      372    186     58    128
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male        372    186     48    138
24 months   ki1000108-IRC              INDIA                          Female      409    185    108     77
24 months   ki1000108-IRC              INDIA                          Male        409    224    131     93
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female      429    195     90    105
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male        429    234    101    133
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female      577    278    188     90
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male        577    299    199    100
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female      514    260    183     77
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male        514    254    199     55
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female        6      3      3      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male          6      3      2      1
24 months   ki1101329-Keneba           GAMBIA                         Female     1725    822    558    264
24 months   ki1101329-Keneba           GAMBIA                         Male       1725    903    590    313
24 months   ki1113344-GMS-Nepal        NEPAL                          Female      499    233    128    105
24 months   ki1113344-GMS-Nepal        NEPAL                          Male        499    266    148    118
24 months   ki1114097-CMIN             BANGLADESH                     Female      242    104     28     76
24 months   ki1114097-CMIN             BANGLADESH                     Male        242    138     49     89
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female      551    272    193     79
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male        551    279    171    108
24 months   ki1114097-CMIN             PERU                           Female      429    199    141     58
24 months   ki1114097-CMIN             PERU                           Male        429    230    151     79
24 months   ki1114097-CONTENT          PERU                           Female      164     83     80      3
24 months   ki1114097-CONTENT          PERU                           Male        164     81     63     18
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female      457    267    110    157
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male        457    190     49    141
24 months   ki1135781-COHORTS          GUATEMALA                      Female      522    247     43    204
24 months   ki1135781-COHORTS          GUATEMALA                      Male        522    275     44    231
24 months   ki1135781-COHORTS          INDIA                          Female     5340   2545   1382   1163
24 months   ki1135781-COHORTS          INDIA                          Male       5340   2795   1490   1305
24 months   ki1135781-COHORTS          PHILIPPINES                    Female     2445   1158    458    700
24 months   ki1135781-COHORTS          PHILIPPINES                    Male       2445   1287    479    808
24 months   ki1148112-LCNI-5           MALAWI                         Female      579    294    174    120
24 months   ki1148112-LCNI-5           MALAWI                         Male        579    285    149    136


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8a7fa668-43e7-4e9f-973c-bbdfe0f3a817/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 160 rows containing missing values (geom_errorbar).
```

![](/tmp/8a7fa668-43e7-4e9f-973c-bbdfe0f3a817/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/8a7fa668-43e7-4e9f-973c-bbdfe0f3a817/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8a7fa668-43e7-4e9f-973c-bbdfe0f3a817/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1984733   0.1300397   0.2669068
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1666667   0.1014673   0.2318660
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               NA                0.1397849   0.0691239   0.2104460
Birth       ki0047075b-MAL-ED          BRAZIL                         Male                 NA                0.0816327   0.0272807   0.1359846
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                0.1363636   0.0720766   0.2006506
Birth       ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1875000   0.1092325   0.2657675
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                0.0714286   0.0161940   0.1266631
Birth       ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1348315   0.0636679   0.2059951
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                0.1119403   0.0584632   0.1654174
Birth       ki0047075b-MAL-ED          PERU                           Male                 NA                0.1241830   0.0718352   0.1765308
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.0916031   0.0421110   0.1410951
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1221374   0.0659576   0.1783172
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1639344   0.0706496   0.2572193
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1290323   0.0452456   0.2128190
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1111111   0.0187752   0.2034470
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.2444444   0.1181770   0.3707119
Birth       ki1000108-IRC              INDIA                          Female               NA                0.0982659   0.0538513   0.1426805
Birth       ki1000108-IRC              INDIA                          Male                 NA                0.1302326   0.0851871   0.1752780
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                0.0569106   0.0401907   0.0736305
Birth       ki1101329-Keneba           GAMBIA                         Male                 NA                0.0498132   0.0347607   0.0648657
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0987233   0.0915996   0.1058469
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1081195   0.1008931   0.1153460
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0430108   0.0138185   0.0722030
Birth       ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0497738   0.0210660   0.0784816
Birth       ki1135781-COHORTS          INDIA                          Female               NA                0.1095462   0.0987156   0.1203767
Birth       ki1135781-COHORTS          INDIA                          Male                 NA                0.1283019   0.1171336   0.1394702
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0509421   0.0395558   0.0623283
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0705009   0.0580217   0.0829801
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1562500   0.0932225   0.2192775
3 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1885246   0.1189805   0.2580687
3 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.0820896   0.0355156   0.1286635
3 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.2336449   0.1533011   0.3139886
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                0.2074074   0.1388955   0.2759193
3 months    ki0047075b-MAL-ED          PERU                           Male                 NA                0.2884615   0.2172457   0.3596774
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.1666667   0.1056884   0.2276449
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.2189781   0.1496046   0.2883516
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1562500   0.0932245   0.2192755
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1825397   0.1149576   0.2501217
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1912568   0.1341961   0.2483175
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.3072626   0.2395824   0.3749427
3 months    ki1000108-IRC              INDIA                          Female               NA                0.2032967   0.1447557   0.2618377
3 months    ki1000108-IRC              INDIA                          Male                 NA                0.2400000   0.1841268   0.2958732
3 months    ki1000109-EE               PAKISTAN                       Female               NA                0.5384615   0.4659392   0.6109839
3 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.6134021   0.5447857   0.6820185
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.4032258   0.3167184   0.4897332
3 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.4117647   0.3288912   0.4946382
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.3703704   0.2409025   0.4998383
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.4186047   0.2703863   0.5668230
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1598513   0.1160195   0.2036831
3 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.2890365   0.2377804   0.3402927
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1143791   0.0786911   0.1500670
3 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1268437   0.0913896   0.1622977
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1918919   0.1517397   0.2320440
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.2374302   0.1933226   0.2815377
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0463692   0.0341758   0.0585626
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0731070   0.0580522   0.0881619
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.1238095   0.1038831   0.1437359
3 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.1631579   0.1417033   0.1846125
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1240876   0.0850172   0.1631580
3 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1683502   0.1257582   0.2109421
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.3727273   0.2821904   0.4632641
3 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.3698630   0.2914010   0.4483250
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.1210938   0.0810911   0.1610964
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1155378   0.0759518   0.1551239
3 months    ki1114097-CMIN             PERU                           Female               NA                0.0598007   0.0329921   0.0866092
3 months    ki1114097-CMIN             PERU                           Male                 NA                0.0638298   0.0373945   0.0902651
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1517917   0.1412992   0.1622842
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.2031915   0.1916874   0.2146956
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.3080357   0.2475122   0.3685592
3 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.3346614   0.2762237   0.3930990
3 months    ki1135781-COHORTS          INDIA                          Female               NA                0.1291753   0.1178726   0.1404780
3 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.1663903   0.1542539   0.1785267
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0975610   0.0817477   0.1133742
3 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.1465177   0.1287489   0.1642866
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1219512   0.0640016   0.1799009
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.2542373   0.1755092   0.3329654
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.1384615   0.0789638   0.1979593
6 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.2641509   0.1800429   0.3482590
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                0.1349206   0.0751584   0.1946829
6 months    ki0047075b-MAL-ED          PERU                           Male                 NA                0.2925170   0.2188421   0.3661920
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.1587302   0.0947984   0.2226619
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.2343750   0.1608452   0.3079048
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2380952   0.1635758   0.3126147
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2314050   0.1561090   0.3067009
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2526882   0.1901530   0.3152233
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.3497268   0.2805398   0.4189137
6 months    ki1000108-IRC              INDIA                          Female               NA                0.2131148   0.1537103   0.2725192
6 months    ki1000108-IRC              INDIA                          Male                 NA                0.2723214   0.2139542   0.3306886
6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.5054945   0.4327600   0.5782290
6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.5315789   0.4605300   0.6026279
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.3153153   0.2286929   0.4019378
6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.3870968   0.3011818   0.4730118
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.4909091   0.3580966   0.6237215
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.5121951   0.3583900   0.6660002
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.1959184   0.1461724   0.2456643
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.3287671   0.2748357   0.3826986
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.1340580   0.0938273   0.1742886
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1856678   0.1421345   0.2292010
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.1878453   0.1475813   0.2281093
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.2322946   0.1882106   0.2763787
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0677966   0.0522347   0.0833586
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1257310   0.1054390   0.1460230
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.1226508   0.1024254   0.1428763
6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.1586271   0.1368136   0.1804406
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.2549020   0.1857311   0.3240728
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.3493151   0.2718523   0.4267779
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1978022   0.1505079   0.2450965
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.2241379   0.1760999   0.2721759
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.2924528   0.2056775   0.3792282
6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.4525547   0.3690350   0.5360745
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0690476   0.0447861   0.0933091
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1098131   0.0801750   0.1394512
6 months    ki1114097-CMIN             PERU                           Female               NA                0.0616438   0.0340364   0.0892513
6 months    ki1114097-CMIN             PERU                           Male                 NA                0.0724638   0.0450855   0.0998420
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1356983   0.1251256   0.1462711
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.1951220   0.1832264   0.2070175
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.4212963   0.3553771   0.4872155
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.4838710   0.4216073   0.5461346
6 months    ki1135781-COHORTS          INDIA                          Female               NA                0.1639793   0.1513208   0.1766378
6 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.2051497   0.1919081   0.2183914
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.1692790   0.1486996   0.1898584
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2486034   0.2262138   0.2709929
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                0.2904762   0.2470331   0.3339193
6 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                0.4463007   0.3986740   0.4939275
9 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.2016807   0.1294328   0.2739285
9 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.2956522   0.2120701   0.3792343
9 months    ki0047075b-MAL-ED          INDIA                          Female               NA                0.1825397   0.1149450   0.2501344
9 months    ki0047075b-MAL-ED          INDIA                          Male                 NA                0.2830189   0.1970790   0.3689587
9 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                0.0833333   0.0310945   0.1355722
9 months    ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.0731707   0.0270489   0.1192925
9 months    ki0047075b-MAL-ED          PERU                           Female               NA                0.2000000   0.1267498   0.2732502
9 months    ki0047075b-MAL-ED          PERU                           Male                 NA                0.2836879   0.2091358   0.3582401
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.1440000   0.0823289   0.2056711
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.2800000   0.2011306   0.3588694
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.3277311   0.2432189   0.4122433
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.4285714   0.3394707   0.5176722
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2950820   0.2289126   0.3612514
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.4426230   0.3705606   0.5146853
9 months    ki1000108-IRC              INDIA                          Female               NA                0.2786885   0.2136489   0.3437281
9 months    ki1000108-IRC              INDIA                          Male                 NA                0.2678571   0.2097930   0.3259213
9 months    ki1000109-EE               PAKISTAN                       Female               NA                0.5977654   0.5258336   0.6696971
9 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.5882353   0.5176000   0.6588705
9 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.3232323   0.2308818   0.4155828
9 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.3392857   0.2513915   0.4271799
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.6666667   0.5325166   0.8008168
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.6756757   0.5239441   0.8274072
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.3261803   0.2659244   0.3864362
9 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.3832117   0.3255896   0.4408338
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.2013889   0.1550339   0.2477439
9 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.2239748   0.1780428   0.2699067
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.2430168   0.1985561   0.2874774
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.2212644   0.1776211   0.2649076
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1121178   0.0913015   0.1329341
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1834254   0.1582038   0.2086470
9 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.1650099   0.1420670   0.1879529
9 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.1941565   0.1703499   0.2179630
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.3089431   0.2271143   0.3907719
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.5043478   0.4127749   0.5959207
9 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.2786260   0.2242905   0.3329614
9 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.2837370   0.2317149   0.3357591
9 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.4761905   0.3804670   0.5719140
9 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.4357143   0.3534100   0.5180186
9 months    ki1114097-CMIN             BRAZIL                         Female               NA                0.1034483   0.0247135   0.1821830
9 months    ki1114097-CMIN             BRAZIL                         Male                 NA                0.2115385   0.1000283   0.3230486
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.1016166   0.0731413   0.1300919
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1709007   0.1354251   0.2063763
9 months    ki1114097-CMIN             PERU                           Female               NA                0.1034483   0.0683694   0.1385272
9 months    ki1114097-CMIN             PERU                           Male                 NA                0.1402985   0.1030787   0.1775183
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1593977   0.1478374   0.1709580
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.2367251   0.2232498   0.2502003
9 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.5707547   0.5040531   0.6374564
9 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.6694215   0.6100871   0.7287559
9 months    ki1135781-COHORTS          INDIA                          Female               NA                0.2347796   0.2192386   0.2503205
9 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.2752558   0.2596022   0.2909093
9 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.2283710   0.2053968   0.2513452
9 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.3170049   0.2928751   0.3411347
9 months    ki1148112-LCNI-5           MALAWI                         Female               NA                0.2492401   0.2024626   0.2960176
9 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                0.4149254   0.3621242   0.4677265
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.2881356   0.2062442   0.3700270
12 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.3565217   0.2687928   0.4442507
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.2682927   0.1898192   0.3467662
12 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.4000000   0.3060896   0.4939104
12 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1296296   0.0661430   0.1931163
12 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.0975610   0.0450095   0.1501124
12 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.2589286   0.1776374   0.3402198
12 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.2985075   0.2208704   0.3761446
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.1680000   0.1023291   0.2336709
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.3070866   0.2267008   0.3874725
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.4912281   0.3992592   0.5831969
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.5897436   0.5004220   0.6790652
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.4270270   0.3556517   0.4984023
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.5683060   0.4964451   0.6401669
12 months   ki1000108-IRC              INDIA                          Female               NA                0.2967033   0.2302558   0.3631508
12 months   ki1000108-IRC              INDIA                          Male                 NA                0.2901786   0.2306717   0.3496854
12 months   ki1000109-EE               PAKISTAN                       Female               NA                0.6954023   0.6269223   0.7638823
12 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.7322404   0.6679967   0.7964842
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.3777778   0.2773532   0.4782024
12 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.2884615   0.2011650   0.3757580
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.7843137   0.6708146   0.8978128
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.8048780   0.6829096   0.9268465
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.3866667   0.3229701   0.4503633
12 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.3646617   0.3067591   0.4225642
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.2578397   0.2071881   0.3084913
12 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.2651757   0.2162320   0.3141194
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.2374302   0.1933217   0.2815387
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.2471264   0.2017754   0.2924774
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1412429   0.1155804   0.1669055
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1888587   0.1605724   0.2171450
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.2257721   0.1990238   0.2525204
12 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.2685828   0.2412278   0.2959377
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.4285714   0.3336795   0.5234633
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.5729167   0.4737199   0.6721134
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.3246269   0.2685176   0.3807361
12 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.3586207   0.3033730   0.4138683
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.5428571   0.4473752   0.6383391
12 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.5255474   0.4417580   0.6093369
12 months   ki1114097-CMIN             BRAZIL                         Female               NA                0.1666667   0.0719552   0.2613782
12 months   ki1114097-CMIN             BRAZIL                         Male                 NA                0.2545455   0.1389192   0.3701717
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.1749175   0.1321078   0.2177272
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.2239748   0.1780437   0.2699058
12 months   ki1114097-CMIN             PERU                           Female               NA                0.1666667   0.1226630   0.2106703
12 months   ki1114097-CMIN             PERU                           Male                 NA                0.2123077   0.1678109   0.2568045
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1822887   0.1694566   0.1951207
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.3106084   0.2947492   0.3264675
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.6798419   0.6223004   0.7373834
12 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.7259786   0.6737804   0.7781769
12 months   ki1135781-COHORTS          INDIA                          Female               NA                0.3194553   0.3014269   0.3374836
12 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.3498385   0.3321307   0.3675463
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.3406863   0.3141301   0.3672424
12 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.4283615   0.4020668   0.4546562
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.3091483   0.2582338   0.3600628
12 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.4822006   0.4264422   0.5379591
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.4375000   0.3454181   0.5295819
18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.5137615   0.4197188   0.6078042
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.3821138   0.2960540   0.4681737
18 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.5428571   0.4473630   0.6383513
18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.1775701   0.1050028   0.2501374
18 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.2131148   0.1402897   0.2859398
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.3663366   0.2721613   0.4605120
18 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.5123967   0.4231335   0.6016598
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.2500000   0.1723644   0.3276356
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.4297521   0.3413629   0.5181413
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.6637168   0.5764156   0.7510180
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.7232143   0.6401696   0.8062589
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.6216216   0.5516410   0.6916022
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.7554348   0.6932442   0.8176253
18 months   ki1000108-IRC              INDIA                          Female               NA                0.3586957   0.2893098   0.4280815
18 months   ki1000108-IRC              INDIA                          Male                 NA                0.3529412   0.2898583   0.4160241
18 months   ki1000109-EE               PAKISTAN                       Female               NA                0.8604651   0.8086074   0.9123228
18 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.8370787   0.7827497   0.8914076
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.5934579   0.5275772   0.6593387
18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.5823293   0.5210069   0.6436517
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.3547170   0.2970622   0.4123717
18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.3902439   0.3337571   0.4467307
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.2906250   0.2408375   0.3404125
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.3121019   0.2608115   0.3633923
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2004175   0.1645500   0.2362851
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.2794411   0.2401286   0.3187536
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.2936763   0.2644444   0.3229082
18 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.3494949   0.3197859   0.3792040
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.5355805   0.4757042   0.5954569
18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.5265018   0.4682768   0.5847267
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.7572816   0.6743103   0.8402528
18 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.6940299   0.6158414   0.7722183
18 months   ki1114097-CMIN             BRAZIL                         Female               NA                0.2295082   0.1235187   0.3354977
18 months   ki1114097-CMIN             BRAZIL                         Male                 NA                0.2592593   0.1418647   0.3766538
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.2421053   0.1990079   0.2852027
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.3208556   0.2735147   0.3681965
18 months   ki1114097-CMIN             PERU                           Female               NA                0.2918455   0.2334129   0.3502781
18 months   ki1114097-CMIN             PERU                           Male                 NA                0.3359375   0.2780205   0.3938545
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.4008484   0.3695604   0.4321363
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.5671447   0.5320699   0.6022196
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.8365385   0.7862271   0.8868498
18 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.8421053   0.7947197   0.8894909
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.5625525   0.5343736   0.5907314
18 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.6102998   0.5837944   0.6368051
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.3800539   0.3306273   0.4294805
18 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.5423729   0.4904390   0.5943068
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.4230769   0.3279011   0.5182528
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.5000000   0.4054780   0.5945220
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.3442623   0.2597662   0.4287584
24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.5047619   0.4089185   0.6006054
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                0.2358491   0.1548544   0.3168437
24 months   ki0047075b-MAL-ED          NEPAL                          Male                 NA                0.1967213   0.1260275   0.2674151
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.2637363   0.1729726   0.3544999
24 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.4545455   0.3612624   0.5478285
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.2457627   0.1679172   0.3236082
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.4583333   0.3689969   0.5476698
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.6886792   0.6003255   0.7770330
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.7407407   0.6578982   0.8235833
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.6881720   0.6215095   0.7548346
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.7419355   0.6789670   0.8049040
24 months   ki1000108-IRC              INDIA                          Female               NA                0.4162162   0.3450983   0.4873342
24 months   ki1000108-IRC              INDIA                          Male                 NA                0.4151786   0.3505708   0.4797863
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.5384615   0.4684098   0.6085133
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.5683761   0.5048404   0.6319117
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.3237410   0.2686910   0.3787911
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.3344482   0.2809247   0.3879717
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.2961538   0.2406041   0.3517036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.2165354   0.1658331   0.2672378
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.3211679   0.2892389   0.3530969
24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.3466224   0.3155739   0.3776709
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.4506438   0.3866925   0.5145951
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.4436090   0.3838459   0.5033721
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.7307692   0.6453446   0.8161939
24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.6449275   0.5649217   0.7249334
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.2904412   0.2364427   0.3444396
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.3870968   0.3298902   0.4443034
24 months   ki1114097-CMIN             PERU                           Female               NA                0.2914573   0.2282454   0.3546692
24 months   ki1114097-CMIN             PERU                           Male                 NA                0.3434783   0.2820363   0.4049202
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.5880150   0.5289129   0.6471171
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.7421053   0.6798321   0.8043784
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.8259109   0.7785775   0.8732444
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.8400000   0.7966292   0.8833708
24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.4569745   0.4376191   0.4763298
24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.4669052   0.4484076   0.4854027
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.6044905   0.5763225   0.6326585
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.6278166   0.6014021   0.6542311
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.4081633   0.3519333   0.4643932
24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.4771930   0.4191541   0.5352318


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1828794   0.1809316   0.1848271
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1099476   0.1058147   0.1140806
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1601942   0.1567022   0.1636861
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1040462   0.0993106   0.1087819
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1184669   0.1177590   0.1191748
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1068702   0.1050180   0.1087224
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463415   0.1432449   0.1494380
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1777778   0.1639274   0.1916282
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.1143963   0.1175625
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0532122   0.0530351   0.0533893
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035430   0.1034647   0.1036213
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0466830   0.0463553   0.0470108
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1192771   0.1190517   0.1195025
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0609650   0.0616580
3 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1720000   0.1699962   0.1740038
3 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1493776   0.1398509   0.1589043
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2508591   0.2462069   0.2555113
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1921708   0.1891081   0.1952335
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1692913   0.1676717   0.1709110
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2486188   0.2426358   0.2546018
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.2235872   0.2218121   0.2253623
3 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5771277   0.5733371   0.5809182
3 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4076923   0.4071729   0.4082117
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3917526   0.3869594   0.3965458
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2280702   0.2227712   0.2333691
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1209302   0.1204495   0.1214109
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2142857   0.2126308   0.2159406
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0597731   0.0592257   0.0603206
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1442922   0.1434688   0.1451157
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1471103   0.1452950   0.1489257
3 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3710938   0.3709197   0.3712678
3 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1183432   0.1181012   0.1185852
3 months    ki1114097-CMIN             PERU                           NA                   NA                0.0619048   0.0617475   0.0620620
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1780703   0.1775450   0.1785955
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3221053   0.3209087   0.3233018
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1484074   0.1479717   0.1488430
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1234783   0.1225849   0.1243716
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1867220   0.1783557   0.1950883
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1949153   0.1869220   0.2029085
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.2104436   0.2291169
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1921900   0.2015108
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.2343999   0.2352357
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2958559   0.3057701
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2428353   0.2485652
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5188172   0.5174904   0.5201440
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3531915   0.3486000   0.3577830
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.5000000   0.4978827   0.5021173
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2625547   0.2737582
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1591415   0.1633285
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.2081602   0.2114203
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0958315   0.0983528
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1412159   0.1404447   0.1419871
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3010033   0.2956451   0.3063616
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.2102795   0.2124558
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3827160   0.3727127   0.3927194
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0896226   0.0882500   0.0909953
6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0675039   0.0670849   0.0679229
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662447   0.1656055   0.1668839
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4547414   0.4518983   0.4575845
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1854227   0.1849360   0.1859095
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.2097344   0.2127176
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3630205   0.3735707
9 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2478632   0.2418311   0.2538954
9 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2284483   0.2219937   0.2349029
9 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0779221   0.0772668   0.0785774
9 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2460938   0.2409845   0.2512030
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2120000   0.2035539   0.2204461
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3781513   0.3717321   0.3845704
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3688525   0.3612844   0.3764205
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.2727273   0.2722032   0.2732514
9 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5928962   0.5924075   0.5933849
9 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3317536   0.3306700   0.3328371
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.6705882   0.6696330   0.6715434
9 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3570020   0.3545255   0.3594784
9 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2132231   0.2123236   0.2141227
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2322946   0.2314919   0.2330974
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1482103   0.1465573   0.1498632
9 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1799710   0.1793428   0.1805992
9 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4033613   0.3909296   0.4157931
9 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2813067   0.2810934   0.2815200
9 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.4530612   0.4505479   0.4555745
9 months    ki1114097-CMIN             BRAZIL                         NA                   NA                0.1545455   0.1444146   0.1646763
9 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1362587   0.1339501   0.1385672
9 months    ki1114097-CMIN             PERU                           NA                   NA                0.1232000   0.1217581   0.1246419
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1979153   0.1970503   0.1987804
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6233480   0.6188150   0.6278811
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2559305   0.2554183   0.2564427
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2750737   0.2734079   0.2767395
9 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3328313   0.3265257   0.3391369
12 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3218884   0.3174889   0.3262879
12 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3289474   0.3204074   0.3374874
12 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1125541   0.1104863   0.1146220
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2804878   0.2780197   0.2829559
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2380952   0.2294922   0.2466983
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5411255   0.5347602   0.5474909
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4972826   0.4900556   0.5045096
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.2931034   0.2927874   0.2934195
12 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7142857   0.7123730   0.7161984
12 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3298969   0.3236129   0.3361809
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7934783   0.7913782   0.7955783
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3747454   0.3737746   0.3757162
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2616667   0.2613732   0.2619601
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2422096   0.2418518   0.2425675
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1655125   0.1642843   0.1667406
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2479466   0.2469964   0.2488968
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4975124   0.4875200   0.5075048
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3422939   0.3408835   0.3437043
12 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5330579   0.5319748   0.5341410
12 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.2086957   0.2006374   0.2167539
12 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.2000000   0.1980682   0.2019318
12 months   ki1114097-CMIN             PERU                           NA                   NA                0.1913478   0.1895278   0.1931677
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2444807   0.2429506   0.2460108
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7041199   0.7021641   0.7060756
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3352623   0.3348558   0.3356688
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3868472   0.3851593   0.3885351
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3945687   0.3877857   0.4013517
18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4751131   0.4700750   0.4801513
18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4561404   0.4457176   0.4665631
18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1965066   0.1942046   0.1988085
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4459459   0.4363567   0.4555352
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3402490   0.3288784   0.3516195
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6933333   0.6894376   0.6972291
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6883469   0.6815111   0.6951827
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.3555556   0.3552762   0.3558349
18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8485714   0.8473448   0.8497980
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5874730   0.5869671   0.5879789
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3731884   0.3717064   0.3746704
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3012618   0.3004253   0.3020983
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2408163   0.2383419   0.2432907
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3224129   0.3211657   0.3236601
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5309091   0.5305295   0.5312886
18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7215190   0.7175187   0.7255192
18 months   ki1114097-CMIN             BRAZIL                         NA                   NA                0.2434783   0.2407527   0.2462039
18 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.2811671   0.2783548   0.2839794
18 months   ki1114097-CMIN             PERU                           NA                   NA                0.3149284   0.3129746   0.3168823
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4754386   0.4715174   0.4793598
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8394495   0.8391883   0.8397108
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5874799   0.5865433   0.5884165
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4593103   0.4534002   0.4652205
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4622642   0.4570755   0.4674528
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4185022   0.4080690   0.4289354
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2149123   0.2123735   0.2174510
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3549962   0.3813222
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.3394101   0.3664722
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7149533   0.7114576   0.7184489
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.7123184   0.7177891
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.4155978   0.4156980
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5533674   0.5561897
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.3288525   0.3297263
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2533647   0.2602540
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3344928   0.3338926   0.3350929
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4465855   0.4472020
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6818182   0.6764531   0.6871833
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3393829   0.3353444   0.3434215
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.3193473   0.3168896   0.3218051
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6520788   0.6451084   0.6590492
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8333333   0.8327293   0.8339374
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4621723   0.4620392   0.4623053
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.6163072   0.6172307
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4421416   0.4393282   0.4449551


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            0.8397436   0.4985161   1.4145366
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Male                 Female            0.5839874   0.2531335   1.3472787
Birth       ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Male                 Female            1.3750000   0.7325470   2.5808925
Birth       ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.8876404   0.7401458   4.8141683
Birth       ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          PERU                           Male                 Female            1.1093682   0.5866501   2.0978394
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.3333333   0.6558091   2.7108160
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.7870968   0.3319399   1.8663662
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            2.2000000   0.8269410   5.8528967
Birth       ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Male                 Female            1.3253078   0.7501365   2.3414947
Birth       ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         Male                 Female            0.8752891   0.5742687   1.3340986
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.0951777   0.9925880   1.2083707
Birth       ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.1572398   0.4749017   2.8199600
Birth       ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Male                 Female            1.1712129   1.0266626   1.3361154
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3839429   1.0406261   1.8405245
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.2065574   0.6984826   2.0842048
3 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            2.8462192   1.4660354   5.5257629
3 months    ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          PERU                           Male                 Female            1.3907967   0.9207997   2.1006909
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.3138686   0.8097794   2.1317543
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.1682540   0.6757002   2.0198565
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.6065443   1.1087545   2.3278233
3 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1000108-IRC              INDIA                          Male                 Female            1.1805405   0.8151996   1.7096132
3 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.1391753   0.9562122   1.3571468
3 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.0211765   0.7609321   1.3704264
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.1302326   0.6871960   1.8588957
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.8081589   1.3044202   2.5064303
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.1089760   0.7294498   1.6859663
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.2373121   0.9353182   1.6368134
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.5766294   1.1289505   2.2018326
3 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.3178138   1.0705173   1.6222373
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.3567043   0.9058754   2.0318981
3 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9923154   0.7187713   1.3699626
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            0.9541190   0.5927950   1.5356793
3 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1114097-CMIN             PERU                           Male                 Female            1.0673759   0.5797725   1.9650661
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.3386208   1.2242011   1.4637346
3 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0864369   0.8353048   1.4130711
3 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.2880968   1.1494142   1.4435121
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.5018068   1.2265869   1.8387802
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            2.0847458   1.1823047   3.6760110
6 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            1.9077568   1.1175167   3.2568068
6 months    ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           Male                 Female            2.1680672   1.3025083   3.6088181
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.4765625   0.8861928   2.4602286
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            0.9719008   0.6187953   1.5265002
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.3840251   1.0081960   1.8999535
6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Male                 Female            1.2778159   0.8990043   1.8162468
6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.0516018   0.8640952   1.2797969
6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.2276498   0.8623711   1.7476513
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.0433604   0.6964644   1.5630390
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.6780822   1.2403074   2.2703725
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.3849811   0.9463452   2.0269269
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.2366272   0.9287662   1.6465359
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.8545322   1.4007866   2.4552558
6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.2933225   1.0434142   1.6030863
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.3703899   0.9652653   1.9455463
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.1331418   0.8219281   1.5621929
6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.5474453   1.0910909   2.1946722
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.5903964   1.0211381   2.4770016
6 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             PERU                           Male                 Female            1.1755233   0.6542781   2.1120304
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.4379097   1.3024669   1.5874370
6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.1485289   0.9379095   1.4064455
6 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.2510708   1.1313083   1.3835116
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.4686013   1.2623998   1.7084840
6 months    ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            1.5364451   1.2785725   1.8463275
9 months    ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.4659420   0.9288150   2.3136859
9 months    ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          INDIA                          Male                 Female            1.5504512   0.9604655   2.5028477
9 months    ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          NEPAL                          Male                 Female            0.8780488   0.3609452   2.1359741
9 months    ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          PERU                           Male                 Female            1.4184397   0.9037327   2.2262901
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.9444444   1.1645992   3.2464938
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3076923   0.9389654   1.8212163
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.5000000   1.1369562   1.9789681
9 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1000108-IRC              INDIA                          Male                 Female            0.9611345   0.6989601   1.3216482
9 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1000109-EE               PAKISTAN                       Male                 Female            0.9840572   0.8302155   1.1664063
9 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.0496652   0.7137680   1.5436345
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.0135135   0.7496818   1.3701941
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.1748463   0.9258384   1.4908259
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.1121505   0.8171062   1.5137308
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.9104902   0.6957239   1.1915537
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.6360065   1.2985134   2.0612165
9 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.1766349   0.9775324   1.4162904
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.6324943   1.1841018   2.2506828
9 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0183438   0.7791987   1.3308854
9 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9150000   0.6944218   1.2056433
9 months    ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1114097-CMIN             BRAZIL                         Male                 Female            2.0448718   0.8101869   5.1611556
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.6818182   1.1866602   2.3835908
9 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1114097-CMIN             PERU                           Male                 Female            1.3562189   0.8817562   2.0859844
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.4851222   1.3543216   1.6285555
9 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.1728707   1.0128605   1.3581591
9 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.1724008   1.0744252   1.2793108
9 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3881136   1.2235954   1.5747520
9 months    ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.0000000
9 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            1.6647616   1.3270086   2.0884801
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.2373402   0.8496171   1.8020008
12 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.4909091   1.0246224   2.1693942
12 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            0.7526133   0.3634119   1.5586358
12 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.1528564   0.7668640   1.7331337
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.8278965   1.1419240   2.9259441
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.2005495   0.9436163   1.5274418
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.3308432   1.0792072   1.6411525
12 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          Male                 Female            0.9780093   0.7218814   1.3250128
12 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1000109-EE               PAKISTAN                       Male                 Female            1.0529739   0.9228656   1.2014252
12 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            0.7635747   0.5104075   1.1423153
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.0262195   0.8322247   1.2654353
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            0.9430905   0.7502171   1.1855497
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.0284518   0.7854520   1.3466297
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.0408384   0.8016330   1.3514221
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3371196   1.0565953   1.6921225
12 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.1896189   1.0175497   1.3907853
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            1.3368056   1.0092507   1.7706692
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.1047166   0.8763897   1.3925298
12 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9681137   0.7635334   1.2275091
12 months   ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             BRAZIL                         Male                 Female            1.5272727   0.7378422   3.1613288
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.2804595   0.9304539   1.7621255
12 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             PERU                           Male                 Female            1.2738462   0.9093221   1.7844986
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.7039368   1.5620203   1.8587470
12 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0678639   0.9556189   1.1932931
12 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.0951097   1.0151596   1.1813563
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.2573489   1.1385870   1.3884983
12 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.0000000
12 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.5597715   1.2754591   1.9074599
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.1743119   0.8884709   1.5521145
18 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.4206687   1.0675330   1.8906203
18 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            1.2001726   0.7045151   2.0445468
18 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.3987045   1.0253222   1.9080579
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.7190083   1.1844411   2.4948387
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.0896429   0.9150710   1.2975185
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.2152647   1.0570639   1.3971418
18 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          Male                 Female            0.9839572   0.7561275   1.2804345
18 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1000109-EE               PAKISTAN                       Male                 Female            0.9728211   0.8903645   1.0629141
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            0.9812478   0.8420274   1.1434868
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.1001557   0.8849756   1.3676564
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.0738990   0.8469649   1.3616374
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3942947   1.1104321   1.7507219
18 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.1900686   1.0440580   1.3564986
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9830488   0.8400036   1.1504532
18 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9164753   0.7831971   1.0724338
18 months   ki1114097-CMIN             BRAZIL                         Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             BRAZIL                         Male                 Female            1.1296296   0.5916295   2.1568620
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.3252732   1.0517017   1.6700069
18 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             PERU                           Male                 Female            1.1510800   0.8838077   1.4991780
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.4148610   1.2807501   1.5630151
18 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0066546   0.9270672   1.0930743
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.0848762   1.0152845   1.1592379
18 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.4270946   1.2142678   1.6772239
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.1818182   0.8809175   1.5854995
24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            1.4662132   1.0750513   1.9997009
24 months   ki0047075b-MAL-ED          NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Male                 Female            0.8340984   0.5073924   1.3711677
24 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.7234848   1.1544895   2.5729122
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.8649425   1.2857113   2.7051257
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.0755961   0.9072637   1.2751607
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.0781250   0.9478437   1.2263135
24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Male                 Female            0.9975070   0.7916738   1.2568561
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.0555556   0.8891782   1.2530644
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.0330732   0.8179369   1.3047954
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.7311586   0.5416464   0.9869777
24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.0792560   0.9440794   1.2337877
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            0.9843895   0.8094442   1.1971459
24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.8825324   0.7442243   1.0465441
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.3327889   1.0510341   1.6900747
24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             PERU                           Male                 Female            1.1784858   0.8896706   1.5610595
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.2620516   1.1071655   1.4386054
24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0170588   0.9415539   1.0986186
24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.0217315   0.9641609   1.0827397
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.0385881   0.9753883   1.1058828
24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.1691228   0.9728586   1.4049813


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0155939   -0.0840552   0.0528674
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.0298373   -0.1006191   0.0409445
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0238305   -0.0405512   0.0882123
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0326177   -0.0228195   0.0880549
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                 0.0065266   -0.0469552   0.0600084
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0152672   -0.0342595   0.0647939
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0175930   -0.1109292   0.0757433
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0666667   -0.0267022   0.1600356
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.0177135   -0.0267294   0.0621563
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.0036984   -0.0204192   0.0130225
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0048197   -0.0023043   0.0119438
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0036723   -0.0255218   0.0328664
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0097309   -0.0011019   0.0205638
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0103694   -0.0010221   0.0217609
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0157500   -0.0473094   0.0788094
3 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0672880    0.0197498   0.1148263
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0434517   -0.0252179   0.1121213
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0255042   -0.0355509   0.0865592
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0130413   -0.0500050   0.0760877
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0573620   -0.0000115   0.1147355
3 months    ki1000108-IRC              INDIA                          Female               NA                 0.0202905   -0.0382774   0.0788584
3 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0386661   -0.0339552   0.1112875
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0044665   -0.0820424   0.0909755
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0213822   -0.1081744   0.1509388
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0682189    0.0240679   0.1123698
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0065511   -0.0291400   0.0422423
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0223938   -0.0177924   0.0625801
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0134039    0.0011982   0.0256096
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0204827    0.0005393   0.0404261
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0230227   -0.0160898   0.0621353
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0016335   -0.0921706   0.0889035
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.0027506   -0.0427540   0.0372528
3 months    ki1114097-CMIN             PERU                           Female               NA                 0.0021041   -0.0247049   0.0289131
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0262786    0.0157730   0.0367842
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0140695   -0.0464658   0.0746049
3 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0192321    0.0079210   0.0305432
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0259173    0.0100788   0.0417558
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0647708    0.0062203   0.1233212
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0564537   -0.0035785   0.1164860
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0848596    0.0243724   0.1453468
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0381202   -0.0259812   0.1022217
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0032774   -0.0777980   0.0712432
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0481248   -0.0146065   0.1108562
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0325855   -0.0268880   0.0920590
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0133227   -0.0594239   0.0860693
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0378762   -0.0488679   0.1246202
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0090909   -0.1237384   0.1419202
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0722381    0.0221777   0.1222984
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0271770   -0.0131081   0.0674621
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0219449   -0.0183521   0.0622419
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0292956    0.0136826   0.0449085
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0185651   -0.0016751   0.0388052
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0461014   -0.0232767   0.1154795
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0135655   -0.0337414   0.0608723
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0902632    0.0029132   0.1776132
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0205750   -0.0037253   0.0448753
6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0058601   -0.0217506   0.0334707
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0305464    0.0199543   0.0411384
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0334451   -0.0325354   0.0994255
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0214434    0.0087756   0.0341113
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0419470    0.0213136   0.0625804
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0778194    0.0340572   0.1215816
9 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0461826   -0.0263167   0.1186818
9 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0459086   -0.0219936   0.1138108
9 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0054113   -0.0576542   0.0468317
9 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0460938   -0.0273345   0.1195220
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0680000    0.0057532   0.1302468
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0504202   -0.0343354   0.1351758
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0737705    0.0071697   0.1403713
9 months    ki1000108-IRC              INDIA                          Female               NA                -0.0059613   -0.0710029   0.0590804
9 months    ki1000109-EE               PAKISTAN                       Female               NA                -0.0048692   -0.0768026   0.0670642
9 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0085212   -0.0838356   0.1008781
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0039216   -0.1302319   0.1380751
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0308217   -0.0294851   0.0911285
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0118343   -0.0345295   0.0581980
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0107221   -0.0551900   0.0337457
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0360925    0.0152107   0.0569744
9 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0149610   -0.0079905   0.0379126
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0944183    0.0116505   0.1771860
9 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0026808   -0.0516551   0.0570166
9 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0231293   -0.1188858   0.0726272
9 months    ki1114097-CMIN             BRAZIL                         Female               NA                 0.0510972   -0.0282867   0.1304810
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0346420    0.0060733   0.0632108
9 months    ki1114097-CMIN             PERU                           Female               NA                 0.0197517   -0.0153568   0.0548603
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0385176    0.0269250   0.0501102
9 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0525933   -0.0142622   0.1194488
9 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0211509    0.0056016   0.0367003
9 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0467027    0.0236683   0.0697372
9 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0835912    0.0363906   0.1307918
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0337528   -0.0482566   0.1157623
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0606547   -0.0182822   0.1395915
12 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0170755   -0.0805958   0.0464448
12 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0215592   -0.0597694   0.1028879
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0700952    0.0038632   0.1363272
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0498975   -0.0422914   0.1420864
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0702556   -0.0014846   0.1419958
12 months   ki1000108-IRC              INDIA                          Female               NA                -0.0035998   -0.0700481   0.0628484
12 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0188834   -0.0496233   0.0873902
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                -0.0478809   -0.1485019   0.0527401
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0091645   -0.1043540   0.1226831
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0119212   -0.0756252   0.0517827
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0038269   -0.0468255   0.0544794
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0047795   -0.0393305   0.0488894
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0242695   -0.0014224   0.0499615
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0221745   -0.0045907   0.0489397
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0689410   -0.0264755   0.1643576
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0176670   -0.0384599   0.0737940
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0097993   -0.1052874   0.0856888
12 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0420290   -0.0530247   0.1370827
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0250825   -0.0177708   0.0679358
12 months   ki1114097-CMIN             PERU                           Female               NA                 0.0246811   -0.0193602   0.0687224
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0621920    0.0492691   0.0751149
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0242780   -0.0332968   0.0818527
12 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0158070   -0.0022259   0.0338399
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0461609    0.0195512   0.0727706
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0854204    0.0340561   0.1367848
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0376131   -0.0546065   0.1298327
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0740265   -0.0126622   0.1607152
18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0189365   -0.0536673   0.0915402
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0796093   -0.0150530   0.1742716
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0902490    0.0117851   0.1687128
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0296165   -0.0577715   0.1170046
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0667253   -0.0035884   0.1370389
18 months   ki1000108-IRC              INDIA                          Female               NA                -0.0031401   -0.0725265   0.0662464
18 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0118937   -0.0637659   0.0399785
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0059849   -0.0718676   0.0598977
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0184714   -0.0392024   0.0761452
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0106368   -0.0391577   0.0604314
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0403988    0.0044460   0.0763516
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0287366   -0.0005219   0.0579950
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0046714   -0.0645490   0.0552061
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0357626   -0.1188302   0.0473051
18 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0139701   -0.0920545   0.1199946
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0390618   -0.0041272   0.0822509
18 months   ki1114097-CMIN             PERU                           Female               NA                 0.0230829   -0.0353823   0.0815482
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0745902    0.0430575   0.1061230
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0029111   -0.0474009   0.0532231
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0249275   -0.0032670   0.0531219
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0792564    0.0294778   0.1290351
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0391872   -0.0561299   0.1345044
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0742399   -0.0108979   0.1593777
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0209368   -0.1019712   0.0600976
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1044229    0.0127098   0.1961361
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1071785    0.0281658   0.1861912
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0262740   -0.0621488   0.1146969
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0268817   -0.0398370   0.0936004
24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0005683   -0.0716863   0.0705497
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0163170   -0.0537489   0.0863830
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0055484   -0.0495034   0.0606002
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0393445   -0.0950009   0.0163119
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0133249   -0.0186098   0.0452595
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0037500   -0.0677020   0.0602021
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0489510   -0.1345440   0.0366419
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0489418   -0.0052075   0.1030910
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0278900   -0.0353696   0.0911497
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0640638    0.0045521   0.1235755
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0074224   -0.0399149   0.0547597
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0051978   -0.0141580   0.0245536
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0122784   -0.0158934   0.0404502
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0339784   -0.0223219   0.0902786


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female               NA                -0.0852688   -0.5323338   0.2313631
Birth       ki0047075b-MAL-ED          BRAZIL                         Female               NA                -0.2713774   -1.1106480   0.2341686
Birth       ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1487603   -0.3646256   0.4690053
Birth       ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.3134921   -0.4895659   0.6836037
Birth       ki0047075b-MAL-ED          PERU                           Female               NA                 0.0550922   -0.5236341   0.4139992
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1428571   -0.4716963   0.5007843
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.1202186   -0.9797184   0.3661272
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3750000   -0.4400292   0.7287381
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.1527296   -0.3316981   0.4609385
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.0695023   -0.4347704   0.2027748
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0465482   -0.0247976   0.1129270
Birth       ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0786644   -0.8163439   0.5326549
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0815826   -0.0138774   0.1680548
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1691265   -0.0390506   0.3355947
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0915698   -0.3600307   0.3932155
3 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.4504561    0.0273572   0.6895072
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.1732116   -0.1510089   0.4061044
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1327160   -0.2508551   0.3986662
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0770349   -0.3816979   0.3834654
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.2307225   -0.0377048   0.4297146
3 months    ki1000108-IRC              INDIA                          Female               NA                 0.0907499   -0.2128012   0.3183254
3 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0669975   -0.0676896   0.1846941
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0109556   -0.2257171   0.2019293
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0545809   -0.3413150   0.3336261
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2991135    0.0770896   0.4677253
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0541730   -0.2921977   0.3076997
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1045045   -0.1040751   0.2736797
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2242466   -0.0092446   0.4037190
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.1419530   -0.0079805   0.2695844
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.1564998   -0.1559333   0.3844865
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0044019   -0.2805587   0.2122007
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.0232422   -0.4237969   0.2646250
3 months    ki1114097-CMIN             PERU                           Female               NA                 0.0339893   -0.5124409   0.3829995
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1475743    0.0865092   0.2045573
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0436800   -0.1639909   0.2142997
3 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.1295898    0.0499516   0.2025523
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.2098935    0.0707153   0.3282271
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.3468835   -0.0526336   0.5947676
6 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.2896321   -0.0938307   0.5386649
6 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.3861111    0.0420553   0.6065957
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1936508   -0.2071076   0.4613578
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                -0.0139573   -0.3865899   0.2585339
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1599826   -0.0764784   0.3445021
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.1326230   -0.1464914   0.3437867
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0256790   -0.1251273   0.1562720
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1072398   -0.1753748   0.3219007
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0181818   -0.2868892   0.2509325
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.2693878    0.0573904   0.4337059
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1685553   -0.1227591   0.3842845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1046041   -0.1095986   0.2774559
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3017293    0.1212394   0.4451482
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.1314657   -0.0243361   0.2635701
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.1531590   -0.1114922   0.3547957
6 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0641795   -0.1886556   0.2632349
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.2358491   -0.0292956   0.4326929
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.2295739   -0.0951546   0.4580160
6 months    ki1114097-CMIN             PERU                           Female               NA                 0.0868111   -0.4291572   0.4164995
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1837435    0.1175192   0.2449981
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0735475   -0.0835036   0.2078344
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.1156462    0.0446309   0.1813826
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1985882    0.0948049   0.2904725
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.2112960    0.0834344   0.3213209
9 months    ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1863228   -0.1651655   0.4317798
9 months    ki0047075b-MAL-ED          INDIA                          Female               NA                 0.2009584   -0.1583952   0.4488345
9 months    ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0694444   -1.0018296   0.4286670
9 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.1873016   -0.1728586   0.4368641
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.3207547   -0.0443007   0.5581980
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1333333   -0.1222412   0.3307044
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.2000000   -0.0020360   0.3613004
9 months    ki1000108-IRC              INDIA                          Female               NA                -0.0218579   -0.2904715   0.1908434
9 months    ki1000109-EE               PAKISTAN                       Female               NA                -0.0082125   -0.1371400   0.1060972
9 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0256854   -0.2965501   0.2678348
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0058480   -0.2157548   0.1870578
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0863349   -0.0991871   0.2405443
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0555017   -0.1890013   0.2497258
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0461575   -0.2562229   0.1287808
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2435223    0.0888819   0.3719162
9 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0831303   -0.0536854   0.2021811
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.2340786    0.0000218   0.4133516
9 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0095297   -0.2037457   0.1850177
9 months    ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0510511   -0.2851643   0.1404147
9 months    ki1114097-CMIN             BRAZIL                         Female               NA                 0.3306288   -0.4369228   0.6881824
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.2542373    0.0125341   0.4367785
9 months    ki1114097-CMIN             PERU                           Female               NA                 0.1603224   -0.1788752   0.4019228
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1946165    0.1339219   0.2510577
9 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0843723   -0.0293693   0.1855459
9 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0826433    0.0198356   0.1414263
9 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1697826    0.0817499   0.2493757
9 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.2511519    0.0956916   0.3798868
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1048588   -0.1897770   0.3265311
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1843902   -0.0939805   0.3919277
12 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.1517094   -0.8801395   0.2945021
12 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0768634   -0.2637678   0.3256821
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.2944000   -0.0448337   0.5234922
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0922105   -0.0951034   0.2474850
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1412790   -0.0155843   0.2739137
12 months   ki1000108-IRC              INDIA                          Female               NA                -0.0122818   -0.2663797   0.1908315
12 months   ki1000109-EE               PAKISTAN                       Female               NA                 0.0264368   -0.0743537   0.1177716
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                -0.1451389   -0.4948671   0.1227694
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0115498   -0.1423854   0.1447424
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0318116   -0.2166109   0.1249173
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0146253   -0.1992735   0.1903737
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0197328   -0.1803965   0.1859313
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1466326   -0.0235505   0.2885198
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0894326   -0.0251607   0.1912166
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.1385714   -0.0759030   0.3102918
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0516137   -0.1273819   0.2021899
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0183832   -0.2142369   0.1458798
12 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.2013889   -0.4115637   0.5481751
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1254125   -0.1173167   0.3154106
12 months   ki1114097-CMIN             PERU                           Female               NA                 0.1289855   -0.1343918   0.3312132
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2543841    0.1997835   0.3052591
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0344799   -0.0508473   0.1128786
12 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0471482   -0.0081850   0.0994445
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1193260    0.0478158   0.1854656
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.2164906    0.0753913   0.3360576
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0791667   -0.1368526   0.2541390
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1622889   -0.0505298   0.3319944
18 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                 0.0963655   -0.3600289   0.3996045
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.1785179   -0.0632454   0.3653084
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.2652439   -0.0041272   0.4623525
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0427161   -0.0919864   0.1608024
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0969355   -0.0111147   0.1934392
18 months   ki1000108-IRC              INDIA                          Female               NA                -0.0088315   -0.2241342   0.1686034
18 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0140161   -0.0770256   0.0453071
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0101876   -0.1287954   0.0959575
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0494962   -0.1183145   0.1921258
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0353076   -0.1449813   0.1872082
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1677577    0.0043633   0.3043373
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0891298   -0.0062776   0.1754914
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0087989   -0.1281282   0.0979081
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0495657   -0.1712613   0.0594857
18 months   ki1114097-CMIN             BRAZIL                         Female               NA                 0.0573770   -0.4960945   0.4060950
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1389275   -0.0291314   0.2795421
18 months   ki1114097-CMIN             PERU                           Female               NA                 0.0732958   -0.1322341   0.2415167
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.1568872    0.0880459   0.2205319
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0034678   -0.0583057   0.0616356
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0424312   -0.0067817   0.0892385
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.1725553    0.0570354   0.2739232
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0847724   -0.1464365   0.2693520
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.1773943   -0.0527709   0.3572389
24 months   ki0047075b-MAL-ED          NEPAL                          Female               NA                -0.0974201   -0.5474098   0.2217118
24 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.2836353   -0.0125096   0.4931619
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.3036723    0.0419666   0.4938879
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0367493   -0.0952099   0.1528090
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0375940   -0.0603783   0.1265142
24 months   ki1000108-IRC              INDIA                          Female               NA                -0.0013672   -0.1879560   0.1559146
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0294118   -0.1054671   0.1478340
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0168497   -0.1653896   0.1705910
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.1532051   -0.3917954   0.0444845
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0398361   -0.0605422   0.1307137
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                -0.0083912   -0.1621467   0.1250219
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0717949   -0.2050199   0.0467010
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.1442081   -0.0310433   0.2896711
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0873345   -0.1338658   0.2653819
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0982455    0.0023322   0.1849379
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0089069   -0.0495573   0.0641144
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0112465   -0.0315331   0.0522520
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0199076   -0.0268496   0.0645358
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0768495   -0.0596591   0.1957726
