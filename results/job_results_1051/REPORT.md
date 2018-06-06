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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Female      257    131    126      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     Male        257    126    122      4
Birth       ki0047075b-MAL-ED          BRAZIL                         Female      191     93     87      6
Birth       ki0047075b-MAL-ED          BRAZIL                         Male        191     98     96      2
Birth       ki0047075b-MAL-ED          INDIA                          Female      206    110    107      3
Birth       ki0047075b-MAL-ED          INDIA                          Male        206     96     92      4
Birth       ki0047075b-MAL-ED          NEPAL                          Female      173     84     83      1
Birth       ki0047075b-MAL-ED          NEPAL                          Male        173     89     84      5
Birth       ki0047075b-MAL-ED          PERU                           Female      287    134    129      5
Birth       ki0047075b-MAL-ED          PERU                           Male        287    153    150      3
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Female      262    131    129      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Male        262    131    131      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      123     61     58      3
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        123     62     59      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Female       90     45     44      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Male         90     45     43      2
Birth       ki1000108-IRC              INDIA                          Female      388    173    166      7
Birth       ki1000108-IRC              INDIA                          Male        388    215    206      9
Birth       ki1000109-EE               PAKISTAN                       Female        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       Male          2      2      2      0
Birth       ki1000109-ResPak           PAKISTAN                       Female        7      3      3      0
Birth       ki1000109-ResPak           PAKISTAN                       Male          7      4      4      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     Female       28     12     12      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     Male         28     16     16      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Female       27     13     12      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Male         27     14     14      0
Birth       ki1101329-Keneba           GAMBIA                         Female     1541    738    722     16
Birth       ki1101329-Keneba           GAMBIA                         Male       1541    803    790     13
Birth       ki1114097-CMIN             BANGLADESH                     Female       13      6      5      1
Birth       ki1114097-CMIN             BANGLADESH                     Male         13      7      3      4
Birth       ki1114097-CMIN             BRAZIL                         Female      115     59     58      1
Birth       ki1114097-CMIN             BRAZIL                         Male        115     56     54      2
Birth       ki1114097-CMIN             PERU                           Female       10      7      7      0
Birth       ki1114097-CMIN             PERU                           Male         10      3      3      0
Birth       ki1114097-CONTENT          PERU                           Female        2      2      2      0
Birth       ki1114097-CONTENT          PERU                           Male          2      0      0      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female    13830   6736   6520    216
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male      13830   7094   6869    225
Birth       ki1135781-COHORTS          GUATEMALA                      Female      407    186    184      2
Birth       ki1135781-COHORTS          GUATEMALA                      Male        407    221    219      2
Birth       ki1135781-COHORTS          INDIA                          Female     6640   3195   3101     94
Birth       ki1135781-COHORTS          INDIA                          Male       6640   3445   3333    112
Birth       ki1135781-COHORTS          PHILIPPINES                    Female     3050   1433   1415     18
Birth       ki1135781-COHORTS          PHILIPPINES                    Male       3050   1617   1589     28
3 months    ki0047075b-MAL-ED          BANGLADESH                     Female      250    128    125      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     Male        250    122    118      4
3 months    ki0047075b-MAL-ED          BRAZIL                         Female      225    110    110      0
3 months    ki0047075b-MAL-ED          BRAZIL                         Male        225    115    114      1
3 months    ki0047075b-MAL-ED          INDIA                          Female      241    134    132      2
3 months    ki0047075b-MAL-ED          INDIA                          Male        241    107     97     10
3 months    ki0047075b-MAL-ED          NEPAL                          Female      236    110    110      0
3 months    ki0047075b-MAL-ED          NEPAL                          Male        236    126    123      3
3 months    ki0047075b-MAL-ED          PERU                           Female      291    135    130      5
3 months    ki0047075b-MAL-ED          PERU                           Male        291    156    141     15
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female      281    144    138      6
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male        281    137    133      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      254    128    122      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        254    126    119      7
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female      362    183    172     11
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male        362    179    157     22
3 months    ki1000108-IRC              INDIA                          Female      407    182    169     13
3 months    ki1000108-IRC              INDIA                          Male        407    225    202     23
3 months    ki1000109-EE               PAKISTAN                       Female      376    182    132     50
3 months    ki1000109-EE               PAKISTAN                       Male        376    194    122     72
3 months    ki1000109-ResPak           PAKISTAN                       Female      260    124    105     19
3 months    ki1000109-ResPak           PAKISTAN                       Male        260    136    100     36
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       97     54     48      6
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         97     43     36      7
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female      570    269    256     13
3 months    ki1017093-NIH-Birth        BANGLADESH                     Male        570    301    281     20
3 months    ki1017093b-PROVIDE         BANGLADESH                     Female      645    306    303      3
3 months    ki1017093b-PROVIDE         BANGLADESH                     Male        645    339    332      7
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female      728    370    356     14
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male        728    358    339     19
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female     2292   1143   1135      8
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male       2292   1149   1132     17
3 months    ki1101329-Keneba           GAMBIA                         Female     2190   1050   1025     25
3 months    ki1101329-Keneba           GAMBIA                         Male       2190   1140   1093     47
3 months    ki1112895-Guatemala BSC    GUATEMALA                      Female       23     11     10      1
3 months    ki1112895-Guatemala BSC    GUATEMALA                      Male         23     12     11      1
3 months    ki1113344-GMS-Nepal        NEPAL                          Female      571    274    267      7
3 months    ki1113344-GMS-Nepal        NEPAL                          Male        571    297    282     15
3 months    ki1114097-CMIN             BANGLADESH                     Female      256    110     96     14
3 months    ki1114097-CMIN             BANGLADESH                     Male        256    146    127     19
3 months    ki1114097-CMIN             BRAZIL                         Female       92     48     47      1
3 months    ki1114097-CMIN             BRAZIL                         Male         92     44     42      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female      507    256    245     11
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Male        507    251    244      7
3 months    ki1114097-CMIN             PERU                           Female      630    301    297      4
3 months    ki1114097-CMIN             PERU                           Male        630    329    325      4
3 months    ki1114097-CONTENT          PERU                           Female      215    106    106      0
3 months    ki1114097-CONTENT          PERU                           Male        215    109    106      3
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female     9193   4493   4293    200
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male       9193   4700   4374    326
3 months    ki1135781-COHORTS          GUATEMALA                      Female      475    224    205     19
3 months    ki1135781-COHORTS          GUATEMALA                      Male        475    251    226     25
3 months    ki1135781-COHORTS          INDIA                          Female     7001   3383   3284     99
3 months    ki1135781-COHORTS          INDIA                          Male       7001   3618   3461    157
3 months    ki1135781-COHORTS          PHILIPPINES                    Female     2875   1353   1326     27
3 months    ki1135781-COHORTS          PHILIPPINES                    Male       2875   1522   1475     47
6 months    ki0047075b-MAL-ED          BANGLADESH                     Female      241    123    120      3
6 months    ki0047075b-MAL-ED          BANGLADESH                     Male        241    118    113      5
6 months    ki0047075b-MAL-ED          BRAZIL                         Female      209    103    103      0
6 months    ki0047075b-MAL-ED          BRAZIL                         Male        209    106    106      0
6 months    ki0047075b-MAL-ED          INDIA                          Female      236    130    127      3
6 months    ki0047075b-MAL-ED          INDIA                          Male        236    106    100      6
6 months    ki0047075b-MAL-ED          NEPAL                          Female      236    110    110      0
6 months    ki0047075b-MAL-ED          NEPAL                          Male        236    126    125      1
6 months    ki0047075b-MAL-ED          PERU                           Female      273    126    123      3
6 months    ki0047075b-MAL-ED          PERU                           Male        273    147    138      9
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female      254    126    123      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male        254    128    125      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      247    126    123      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        247    121    110     11
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female      369    186    172     14
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male        369    183    155     28
6 months    ki1000108-IRC              INDIA                          Female      407    183    171     12
6 months    ki1000108-IRC              INDIA                          Male        407    224    207     17
6 months    ki1000109-EE               PAKISTAN                       Female      372    182    140     42
6 months    ki1000109-EE               PAKISTAN                       Male        372    190    138     52
6 months    ki1000109-ResPak           PAKISTAN                       Female      235    111     96     15
6 months    ki1000109-ResPak           PAKISTAN                       Male        235    124     95     29
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       96     55     48      7
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         96     41     33      8
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female      537    245    231     14
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male        537    292    271     21
6 months    ki1017093b-PROVIDE         BANGLADESH                     Female      583    276    274      2
6 months    ki1017093b-PROVIDE         BANGLADESH                     Male        583    307    295     12
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female      715    362    354      8
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male        715    353    338     15
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female     2029   1003    996      7
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male       2029   1026   1014     12
6 months    ki1101329-Keneba           GAMBIA                         Female     2089   1011    986     25
6 months    ki1101329-Keneba           GAMBIA                         Male       2089   1078   1033     45
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female      299    153    146      7
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male        299    146    126     20
6 months    ki1113344-GMS-Nepal        NEPAL                          Female      563    273    269      4
6 months    ki1113344-GMS-Nepal        NEPAL                          Male        563    290    274     16
6 months    ki1114097-CMIN             BANGLADESH                     Female      243    106     96     10
6 months    ki1114097-CMIN             BANGLADESH                     Male        243    137    119     18
6 months    ki1114097-CMIN             BRAZIL                         Female      108     55     54      1
6 months    ki1114097-CMIN             BRAZIL                         Male        108     53     51      2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Female      848    420    419      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  Male        848    428    411     17
6 months    ki1114097-CMIN             PERU                           Female      637    292    291      1
6 months    ki1114097-CMIN             PERU                           Male        637    345    338      7
6 months    ki1114097-CONTENT          PERU                           Female      215    106    106      0
6 months    ki1114097-CONTENT          PERU                           Male        215    109    105      4
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female     8295   4031   3910    121
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male       8295   4264   4039    225
6 months    ki1135781-COHORTS          GUATEMALA                      Female      464    216    190     26
6 months    ki1135781-COHORTS          GUATEMALA                      Male        464    248    202     46
6 months    ki1135781-COHORTS          INDIA                          Female     6860   3287   3171    116
6 months    ki1135781-COHORTS          INDIA                          Male       6860   3573   3378    195
6 months    ki1135781-COHORTS          PHILIPPINES                    Female     2708   1276   1233     43
6 months    ki1135781-COHORTS          PHILIPPINES                    Male       2708   1432   1343     89
6 months    ki1148112-LCNI-5           MALAWI                         Female      839    420    404     16
6 months    ki1148112-LCNI-5           MALAWI                         Male        839    419    364     55
9 months    ki0047075b-MAL-ED          BANGLADESH                     Female      234    119    116      3
9 months    ki0047075b-MAL-ED          BANGLADESH                     Male        234    115    107      8
9 months    ki0047075b-MAL-ED          BRAZIL                         Female      199     96     96      0
9 months    ki0047075b-MAL-ED          BRAZIL                         Male        199    103    103      0
9 months    ki0047075b-MAL-ED          INDIA                          Female      232    126    125      1
9 months    ki0047075b-MAL-ED          INDIA                          Male        232    106     97      9
9 months    ki0047075b-MAL-ED          NEPAL                          Female      231    108    108      0
9 months    ki0047075b-MAL-ED          NEPAL                          Male        231    123    122      1
9 months    ki0047075b-MAL-ED          PERU                           Female      256    115    112      3
9 months    ki0047075b-MAL-ED          PERU                           Male        256    141    132      9
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Female      250    125    123      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Male        250    125    118      7
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      238    119    111      8
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        238    119     98     21
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female      366    183    169     14
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male        366    183    150     33
9 months    ki1000108-IRC              INDIA                          Female      407    183    168     15
9 months    ki1000108-IRC              INDIA                          Male        407    224    205     19
9 months    ki1000109-EE               PAKISTAN                       Female      366    179    134     45
9 months    ki1000109-EE               PAKISTAN                       Male        366    187    137     50
9 months    ki1000109-ResPak           PAKISTAN                       Female      211     99     86     13
9 months    ki1000109-ResPak           PAKISTAN                       Male        211    112     92     20
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female       85     48     37     11
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male         85     37     28      9
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female      507    233    219     14
9 months    ki1017093-NIH-Birth        BANGLADESH                     Male        507    274    243     31
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female      605    288    283      5
9 months    ki1017093b-PROVIDE         BANGLADESH                     Male        605    317    297     20
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female      706    358    348     10
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male        706    348    330     18
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female     1788    883    876      7
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male       1788    905    877     28
9 months    ki1101329-Keneba           GAMBIA                         Female     2067   1006    971     35
9 months    ki1101329-Keneba           GAMBIA                         Male       2067   1061    998     63
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female      238    123    115      8
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Male        238    115     93     22
9 months    ki1113344-GMS-Nepal        NEPAL                          Female      551    262    253      9
9 months    ki1113344-GMS-Nepal        NEPAL                          Male        551    289    263     26
9 months    ki1114097-CMIN             BANGLADESH                     Female      245    105     89     16
9 months    ki1114097-CMIN             BANGLADESH                     Male        245    140    116     24
9 months    ki1114097-CMIN             BRAZIL                         Female      110     58     55      3
9 months    ki1114097-CMIN             BRAZIL                         Male        110     52     47      5
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female      866    433    424      9
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Male        866    433    409     24
9 months    ki1114097-CMIN             PERU                           Female      625    290    285      5
9 months    ki1114097-CMIN             PERU                           Male        625    335    330      5
9 months    ki1114097-CONTENT          PERU                           Female      214    105    105      0
9 months    ki1114097-CONTENT          PERU                           Male        214    109    104      5
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female     7675   3852   3735    117
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male       7675   3823   3571    252
9 months    ki1135781-COHORTS          GUATEMALA                      Female      454    212    170     42
9 months    ki1135781-COHORTS          GUATEMALA                      Male        454    242    169     73
9 months    ki1135781-COHORTS          INDIA                          Female     5986   2858   2693    165
9 months    ki1135781-COHORTS          INDIA                          Male       5986   3128   2847    281
9 months    ki1135781-COHORTS          PHILIPPINES                    Female     2712   1283   1222     61
9 months    ki1135781-COHORTS          PHILIPPINES                    Male       2712   1429   1294    135
9 months    ki1148112-LCNI-5           MALAWI                         Female      664    329    315     14
9 months    ki1148112-LCNI-5           MALAWI                         Male        664    335    302     33
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female      233    118    113      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     Male        233    115    103     12
12 months   ki0047075b-MAL-ED          BRAZIL                         Female      195     94     94      0
12 months   ki0047075b-MAL-ED          BRAZIL                         Male        195    101    101      0
12 months   ki0047075b-MAL-ED          INDIA                          Female      228    123    117      6
12 months   ki0047075b-MAL-ED          INDIA                          Male        228    105     93     12
12 months   ki0047075b-MAL-ED          NEPAL                          Female      231    108    108      0
12 months   ki0047075b-MAL-ED          NEPAL                          Male        231    123    118      5
12 months   ki0047075b-MAL-ED          PERU                           Female      246    112    108      4
12 months   ki0047075b-MAL-ED          PERU                           Male        246    134    125      9
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female      252    125    121      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male        252    127    119      8
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      231    114    100     14
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        231    117     94     23
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female      368    185    157     28
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male        368    183    128     55
12 months   ki1000108-IRC              INDIA                          Female      406    182    168     14
12 months   ki1000108-IRC              INDIA                          Male        406    224    204     20
12 months   ki1000109-EE               PAKISTAN                       Female      357    174    111     63
12 months   ki1000109-EE               PAKISTAN                       Male        357    183    126     57
12 months   ki1000109-ResPak           PAKISTAN                       Female      194     90     83      7
12 months   ki1000109-ResPak           PAKISTAN                       Male        194    104     88     16
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female       92     51     30     21
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male         92     41     21     20
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female      491    225    205     20
12 months   ki1017093-NIH-Birth        BANGLADESH                     Male        491    266    238     28
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female      600    287    273     14
12 months   ki1017093b-PROVIDE         BANGLADESH                     Male        600    313    291     22
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female      706    358    340     18
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male        706    348    325     23
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female     1444    708    696     12
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male       1444    736    714     22
12 months   ki1101329-Keneba           GAMBIA                         Female     1948    939    888     51
12 months   ki1101329-Keneba           GAMBIA                         Male       1948   1009    932     77
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female      201    105     96      9
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Male        201     96     70     26
12 months   ki1113344-GMS-Nepal        NEPAL                          Female      558    268    248     20
12 months   ki1113344-GMS-Nepal        NEPAL                          Male        558    290    259     31
12 months   ki1114097-CMIN             BANGLADESH                     Female      242    105     87     18
12 months   ki1114097-CMIN             BANGLADESH                     Male        242    137    111     26
12 months   ki1114097-CMIN             BRAZIL                         Female      115     60     57      3
12 months   ki1114097-CMIN             BRAZIL                         Male        115     55     50      5
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female      620    303    284     19
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Male        620    317    297     20
12 months   ki1114097-CMIN             PERU                           Female      601    276    266     10
12 months   ki1114097-CMIN             PERU                           Male        601    325    312     13
12 months   ki1114097-CONTENT          PERU                           Female      215    106    106      0
12 months   ki1114097-CONTENT          PERU                           Male        215    109    106      3
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female     6749   3478   3330    148
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male       6749   3271   2972    299
12 months   ki1135781-COHORTS          GUATEMALA                      Female      534    253    172     81
12 months   ki1135781-COHORTS          GUATEMALA                      Male        534    281    178    103
12 months   ki1135781-COHORTS          INDIA                          Female     5357   2570   2327    243
12 months   ki1135781-COHORTS          INDIA                          Male       5357   2787   2448    339
12 months   ki1135781-COHORTS          PHILIPPINES                    Female     2585   1224   1101    123
12 months   ki1135781-COHORTS          PHILIPPINES                    Male       2585   1361   1140    221
12 months   ki1148112-LCNI-5           MALAWI                         Female      626    317    300     17
12 months   ki1148112-LCNI-5           MALAWI                         Male        626    309    259     50
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female      221    112    101     11
18 months   ki0047075b-MAL-ED          BANGLADESH                     Male        221    109     89     20
18 months   ki0047075b-MAL-ED          BRAZIL                         Female      180     84     84      0
18 months   ki0047075b-MAL-ED          BRAZIL                         Male        180     96     96      0
18 months   ki0047075b-MAL-ED          INDIA                          Female      228    123    113     10
18 months   ki0047075b-MAL-ED          INDIA                          Male        228    105     83     22
18 months   ki0047075b-MAL-ED          NEPAL                          Female      229    107    106      1
18 months   ki0047075b-MAL-ED          NEPAL                          Male        229    122    116      6
18 months   ki0047075b-MAL-ED          PERU                           Female      222    101     95      6
18 months   ki0047075b-MAL-ED          PERU                           Male        222    121    107     14
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female      241    120    112      8
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male        241    121    103     18
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      225    113     88     25
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        225    112     68     44
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female      369    185    140     45
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male        369    184    120     64
18 months   ki1000108-IRC              INDIA                          Female      405    184    169     15
18 months   ki1000108-IRC              INDIA                          Male        405    221    202     19
18 months   ki1000109-EE               PAKISTAN                       Female      350    172     87     85
18 months   ki1000109-EE               PAKISTAN                       Male        350    178     92     86
18 months   ki1000109-ResPak           PAKISTAN                       Female        9      3      3      0
18 months   ki1000109-ResPak           PAKISTAN                       Male          9      6      5      1
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female       84     49     29     20
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male         84     35     18     17
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female      463    214    169     45
18 months   ki1017093-NIH-Birth        BANGLADESH                     Male        463    249    193     56
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female      552    265    241     24
18 months   ki1017093b-PROVIDE         BANGLADESH                     Male        552    287    254     33
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female      634    320    300     20
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male        634    314    292     22
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      980    479    472      7
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        980    501    468     33
18 months   ki1101329-Keneba           GAMBIA                         Female     1923    933    875     58
18 months   ki1101329-Keneba           GAMBIA                         Male       1923    990    879    111
18 months   ki1113344-GMS-Nepal        NEPAL                          Female      550    267    229     38
18 months   ki1113344-GMS-Nepal        NEPAL                          Male        550    283    236     47
18 months   ki1114097-CMIN             BANGLADESH                     Female      237    103     73     30
18 months   ki1114097-CMIN             BANGLADESH                     Male        237    134     97     37
18 months   ki1114097-CMIN             BRAZIL                         Female      115     61     57      4
18 months   ki1114097-CMIN             BRAZIL                         Male        115     54     50      4
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female      754    380    346     34
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Male        754    374    335     39
18 months   ki1114097-CMIN             PERU                           Female      489    233    218     15
18 months   ki1114097-CMIN             PERU                           Male        489    256    238     18
18 months   ki1114097-CONTENT          PERU                           Female      200    102    102      0
18 months   ki1114097-CONTENT          PERU                           Male        200     98     93      5
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female     1710    943    818    125
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male       1710    767    594    173
18 months   ki1135781-COHORTS          GUATEMALA                      Female      436    208    106    102
18 months   ki1135781-COHORTS          GUATEMALA                      Male        436    228    115    113
18 months   ki1135781-COHORTS          PHILIPPINES                    Female     2492   1191    926    265
18 months   ki1135781-COHORTS          PHILIPPINES                    Male       2492   1301    939    362
18 months   ki1148112-LCNI-5           MALAWI                         Female      725    371    340     31
18 months   ki1148112-LCNI-5           MALAWI                         Male        725    354    289     65
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female      212    104     93     11
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male        212    108     93     15
24 months   ki0047075b-MAL-ED          BRAZIL                         Female      169     79     79      0
24 months   ki0047075b-MAL-ED          BRAZIL                         Male        169     90     89      1
24 months   ki0047075b-MAL-ED          INDIA                          Female      227    122    112     10
24 months   ki0047075b-MAL-ED          INDIA                          Male        227    105     87     18
24 months   ki0047075b-MAL-ED          NEPAL                          Female      228    106    106      0
24 months   ki0047075b-MAL-ED          NEPAL                          Male        228    122    115      7
24 months   ki0047075b-MAL-ED          PERU                           Female      201     91     87      4
24 months   ki0047075b-MAL-ED          PERU                           Male        201    110     99     11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female      238    118    107     11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male        238    120    105     15
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female      214    106     76     30
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male        214    108     69     39
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female      372    186    137     49
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male        372    186    112     74
24 months   ki1000108-IRC              INDIA                          Female      409    185    171     14
24 months   ki1000108-IRC              INDIA                          Male        409    224    197     27
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female      429    195    152     43
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male        429    234    184     50
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female      577    278    258     20
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male        577    299    270     29
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female      514    260    241     19
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male        514    254    238     16
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female        6      3      3      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male          6      3      2      1
24 months   ki1101329-Keneba           GAMBIA                         Female     1725    822    763     59
24 months   ki1101329-Keneba           GAMBIA                         Male       1725    903    825     78
24 months   ki1113344-GMS-Nepal        NEPAL                          Female      499    233    209     24
24 months   ki1113344-GMS-Nepal        NEPAL                          Male        499    266    236     30
24 months   ki1114097-CMIN             BANGLADESH                     Female      242    104     76     28
24 months   ki1114097-CMIN             BANGLADESH                     Male        242    138     98     40
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female      551    272    246     26
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male        551    279    250     29
24 months   ki1114097-CMIN             PERU                           Female      429    199    189     10
24 months   ki1114097-CMIN             PERU                           Male        429    230    210     20
24 months   ki1114097-CONTENT          PERU                           Female      164     83     83      0
24 months   ki1114097-CONTENT          PERU                           Male        164     81     78      3
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female      457    267    215     52
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male        457    190    111     79
24 months   ki1135781-COHORTS          GUATEMALA                      Female      522    247    120    127
24 months   ki1135781-COHORTS          GUATEMALA                      Male        522    275    143    132
24 months   ki1135781-COHORTS          INDIA                          Female     5340   2545   2105    440
24 months   ki1135781-COHORTS          INDIA                          Male       5340   2795   2266    529
24 months   ki1135781-COHORTS          PHILIPPINES                    Female     2445   1158    840    318
24 months   ki1135781-COHORTS          PHILIPPINES                    Male       2445   1287    916    371
24 months   ki1148112-LCNI-5           MALAWI                         Female      579    294    271     23
24 months   ki1148112-LCNI-5           MALAWI                         Male        579    285    241     44


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/74bcff1f-2cb2-4023-bcd8-ac7b7060404a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 124 rows containing missing values (geom_errorbar).
```

![](/tmp/74bcff1f-2cb2-4023-bcd8-ac7b7060404a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/74bcff1f-2cb2-4023-bcd8-ac7b7060404a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/74bcff1f-2cb2-4023-bcd8-ac7b7060404a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               NA                0.0404624   0.0110628   0.0698621
Birth       ki1000108-IRC              INDIA                          Male                 NA                0.0418605   0.0150561   0.0686648
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                0.0216802   0.0111695   0.0321910
Birth       ki1101329-Keneba           GAMBIA                         Male                 NA                0.0161893   0.0074575   0.0249210
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0320665   0.0278591   0.0362739
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0317169   0.0276388   0.0357951
Birth       ki1135781-COHORTS          INDIA                          Female               NA                0.0294210   0.0235611   0.0352809
Birth       ki1135781-COHORTS          INDIA                          Male                 NA                0.0325109   0.0265881   0.0384336
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0125611   0.0067939   0.0183283
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0173160   0.0109569   0.0236751
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                0.0370370   0.0051252   0.0689489
3 months    ki0047075b-MAL-ED          PERU                           Male                 NA                0.0961538   0.0498130   0.1424947
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0468750   0.0101852   0.0835648
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0555556   0.0154808   0.0956304
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0601093   0.0256241   0.0945945
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1229050   0.0747402   0.1710699
3 months    ki1000108-IRC              INDIA                          Female               NA                0.0714286   0.0339666   0.1088905
3 months    ki1000108-IRC              INDIA                          Male                 NA                0.1022222   0.0625900   0.1418544
3 months    ki1000109-EE               PAKISTAN                       Female               NA                0.2747253   0.2097884   0.3396621
3 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.3711340   0.3030618   0.4392062
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.1532258   0.0897039   0.2167478
3 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.2647059   0.1904163   0.3389954
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1111111   0.0268545   0.1953677
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1627907   0.0518743   0.2737071
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0483271   0.0226768   0.0739774
3 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.0664452   0.0382842   0.0946062
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0378378   0.0183828   0.0572929
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0530726   0.0298346   0.0763106
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0069991   0.0021650   0.0118332
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0147955   0.0078130   0.0217780
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.0238095   0.0145860   0.0330330
3 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.0412281   0.0296843   0.0527719
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.0255474   0.0068489   0.0442460
3 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.0505051   0.0255784   0.0754317
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.1272727   0.0648693   0.1896762
3 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1301370   0.0754546   0.1848194
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0429688   0.0181033   0.0678342
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0278884   0.0074988   0.0482781
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0445137   0.0384831   0.0505443
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0693617   0.0620977   0.0766257
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0848214   0.0482967   0.1213462
3 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0996016   0.0625148   0.1366884
3 months    ki1135781-COHORTS          INDIA                          Female               NA                0.0292640   0.0235840   0.0349439
3 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.0433941   0.0367548   0.0500335
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0199557   0.0125027   0.0274086
3 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0308804   0.0221879   0.0395730
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0752688   0.0373027   0.1132349
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1530055   0.1007772   0.2052337
6 months    ki1000108-IRC              INDIA                          Female               NA                0.0655738   0.0296655   0.1014820
6 months    ki1000108-IRC              INDIA                          Male                 NA                0.0758929   0.0411696   0.1106161
6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.2307692   0.1694758   0.2920627
6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.2736842   0.2102033   0.3371652
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.1351351   0.0714012   0.1988691
6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.2338710   0.1592085   0.3085334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.1272727   0.0387311   0.2158144
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.1951220   0.0731814   0.3170625
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0571429   0.0280508   0.0862349
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.0719178   0.0422577   0.1015779
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0220994   0.0069452   0.0372537
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0424929   0.0214360   0.0635498
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0069791   0.0018258   0.0121323
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0116959   0.0051156   0.0182762
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.0247280   0.0151531   0.0343029
6 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.0417440   0.0298019   0.0536861
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.0457516   0.0125879   0.0789154
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.1369863   0.0811204   0.1928522
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.0943396   0.0385799   0.1500993
6 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1313869   0.0747013   0.1880724
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0300174   0.0247495   0.0352852
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0527674   0.0460565   0.0594782
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.1203704   0.0769294   0.1638113
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.1854839   0.1370562   0.2339116
6 months    ki1135781-COHORTS          INDIA                          Female               NA                0.0352905   0.0289823   0.0415988
6 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.0545760   0.0471273   0.0620246
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0336991   0.0237960   0.0436021
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0621508   0.0496440   0.0746577
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                0.0380952   0.0197770   0.0564135
6 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1312649   0.0989117   0.1636182
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0672269   0.0221402   0.1123136
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1764706   0.1078326   0.2451086
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0765027   0.0379395   0.1150659
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1803279   0.1245492   0.2361065
9 months    ki1000108-IRC              INDIA                          Female               NA                0.0819672   0.0421743   0.1217601
9 months    ki1000108-IRC              INDIA                          Male                 NA                0.0848214   0.0482902   0.1213526
9 months    ki1000109-EE               PAKISTAN                       Female               NA                0.2513966   0.1877579   0.3150353
9 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.2673797   0.2038575   0.3309018
9 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.1313131   0.0646251   0.1980011
9 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1785714   0.1074727   0.2496701
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.2291667   0.1095606   0.3487727
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.2432432   0.1041790   0.3823075
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0600858   0.0295416   0.0906301
9 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1131387   0.0755952   0.1506822
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0173611   0.0022639   0.0324583
9 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0630915   0.0363052   0.0898777
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0279330   0.0108517   0.0450143
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0517241   0.0284389   0.0750094
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0079275   0.0020765   0.0137785
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0309392   0.0196549   0.0422235
9 months    ki1101329-Keneba           GAMBIA                         Female               NA                0.0347913   0.0234646   0.0461179
9 months    ki1101329-Keneba           GAMBIA                         Male                 NA                0.0593779   0.0451541   0.0736017
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.0650407   0.0213691   0.1087122
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.1913043   0.1192652   0.2633435
9 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.0343511   0.0122776   0.0564247
9 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.0899654   0.0569467   0.1229841
9 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.1523810   0.0834987   0.2212632
9 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1714286   0.1088712   0.2339860
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0207852   0.0073399   0.0342305
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0554273   0.0338630   0.0769915
9 months    ki1114097-CMIN             PERU                           Female               NA                0.0172414   0.0022478   0.0322350
9 months    ki1114097-CMIN             PERU                           Male                 NA                0.0149254   0.0019305   0.0279202
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0303738   0.0249540   0.0357937
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0659168   0.0580506   0.0737830
9 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.1981132   0.1444011   0.2518253
9 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.3016529   0.2437622   0.3595436
9 months    ki1135781-COHORTS          INDIA                          Female               NA                0.0577327   0.0491810   0.0662844
9 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.0898338   0.0798123   0.0998552
9 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0475448   0.0358985   0.0591911
9 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0944717   0.0793042   0.1096392
9 months    ki1148112-LCNI-5           MALAWI                         Female               NA                0.0425532   0.0207259   0.0643805
9 months    ki1148112-LCNI-5           MALAWI                         Male                 NA                0.0985075   0.0665723   0.1304426
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.0423729   0.0059493   0.0787965
12 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1043478   0.0483534   0.1603422
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.0487805   0.0106288   0.0869322
12 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1142857   0.0532968   0.1752746
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.1228070   0.0624265   0.1831875
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.1965812   0.1244141   0.2687483
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.1513514   0.0996371   0.2030656
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.3005464   0.2340270   0.3670659
12 months   ki1000108-IRC              INDIA                          Female               NA                0.0769231   0.0381621   0.1156841
12 months   ki1000108-IRC              INDIA                          Male                 NA                0.0892857   0.0518969   0.1266745
12 months   ki1000109-EE               PAKISTAN                       Female               NA                0.3620690   0.2905592   0.4335787
12 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.3114754   0.2442856   0.3786652
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                0.0777778   0.0223031   0.1332524
12 months   ki1000109-ResPak           PAKISTAN                       Male                 NA                0.1538462   0.0843243   0.2233681
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.4117647   0.2759533   0.5475761
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.4878049   0.3339646   0.6416452
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.0888889   0.0516661   0.1261117
12 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.1052632   0.0683454   0.1421810
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0487805   0.0238384   0.0737226
12 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0702875   0.0419442   0.0986309
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0502793   0.0276273   0.0729314
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0660920   0.0399708   0.0922131
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0169492   0.0074378   0.0264605
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0298913   0.0175846   0.0421980
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.0543131   0.0398136   0.0688126
12 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.0763132   0.0599271   0.0926993
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                0.0857143   0.0320353   0.1393932
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 NA                0.2708333   0.1817165   0.3599502
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.0746269   0.0431366   0.1061171
12 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1068966   0.0713030   0.1424901
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.1714286   0.0991917   0.2436655
12 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1897810   0.1239827   0.2555793
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0627063   0.0353869   0.0900256
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0630915   0.0363058   0.0898772
12 months   ki1114097-CMIN             PERU                           Female               NA                0.0362319   0.0141677   0.0582960
12 months   ki1114097-CMIN             PERU                           Male                 NA                0.0400000   0.0186777   0.0613223
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0425532   0.0358445   0.0492619
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0914094   0.0815325   0.1012862
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.3201581   0.2626166   0.3776996
12 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.3665480   0.3101552   0.4229409
12 months   ki1135781-COHORTS          INDIA                          Female               NA                0.0945525   0.0832392   0.1058659
12 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1216362   0.1094998   0.1337725
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.1004902   0.0836438   0.1173366
12 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.1623806   0.1427834   0.1819778
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.0536278   0.0288084   0.0784472
12 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1618123   0.1207170   0.2029076
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.0982143   0.0429731   0.1534555
18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1834862   0.1106574   0.2563150
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.0813008   0.0328965   0.1297051
18 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.2095238   0.1315104   0.2875372
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                0.0594059   0.0132015   0.1056104
18 months   ki0047075b-MAL-ED          PERU                           Male                 NA                0.1157025   0.0585801   0.1728249
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.0666667   0.0219434   0.1113899
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1487603   0.0852232   0.2122975
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2212389   0.1445365   0.2979413
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.3928571   0.3022069   0.4835074
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2432432   0.1813348   0.3051517
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.3478261   0.2789147   0.4167375
18 months   ki1000108-IRC              INDIA                          Female               NA                0.0815217   0.0419352   0.1211082
18 months   ki1000108-IRC              INDIA                          Male                 NA                0.0859729   0.0489688   0.1229769
18 months   ki1000109-EE               PAKISTAN                       Female               NA                0.4941860   0.4193612   0.5690109
18 months   ki1000109-EE               PAKISTAN                       Male                 NA                0.4831461   0.4096300   0.5566622
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                0.4081633   0.2697210   0.5466055
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 NA                0.4857143   0.3191402   0.6522883
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.2102804   0.1556233   0.2649375
18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.2248996   0.1729848   0.2768144
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0905660   0.0559811   0.1251510
18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.1149826   0.0780429   0.1519222
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0625000   0.0359575   0.0890425
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0700637   0.0418084   0.0983189
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0146138   0.0038618   0.0253657
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0658683   0.0441366   0.0875999
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.0621651   0.0466677   0.0776624
18 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.1121212   0.0924621   0.1317803
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1423221   0.1003765   0.1842676
18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1660777   0.1226799   0.2094756
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.2912621   0.2033331   0.3791912
18 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.2761194   0.2002624   0.3519764
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0894737   0.0607567   0.1181906
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1042781   0.0732837   0.1352725
18 months   ki1114097-CMIN             PERU                           Female               NA                0.0643777   0.0328325   0.0959228
18 months   ki1114097-CMIN             PERU                           Male                 NA                0.0703125   0.0389611   0.1016639
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1325557   0.1109066   0.1542047
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.2255541   0.1959673   0.2551409
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.4903846   0.4223696   0.5583996
18 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.4956140   0.4306411   0.5605870
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.2225021   0.1988758   0.2461284
18 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2782475   0.2538915   0.3026035
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.0835580   0.0553801   0.1117358
18 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1836158   0.1432561   0.2239756
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                0.1057692   0.0465227   0.1650157
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 NA                0.1388889   0.0735117   0.2042661
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                0.0819672   0.0331834   0.1307511
24 months   ki0047075b-MAL-ED          INDIA                          Male                 NA                0.1714286   0.0991818   0.2436754
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                0.0932203   0.0406516   0.1457891
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 NA                0.1250000   0.0657033   0.1842967
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                0.2830189   0.1970633   0.3689744
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.3611111   0.2703110   0.4519112
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.2634409   0.2000507   0.3268310
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.3978495   0.3274145   0.4682844
24 months   ki1000108-IRC              INDIA                          Female               NA                0.0756757   0.0375178   0.1138335
24 months   ki1000108-IRC              INDIA                          Male                 NA                0.1205357   0.0778461   0.1632254
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                0.2205128   0.1622544   0.2787713
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 NA                0.2136752   0.1610947   0.2662557
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                0.0719424   0.0415418   0.1023431
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 NA                0.0969900   0.0634163   0.1305636
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                0.0730769   0.0414107   0.1047431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 NA                0.0629921   0.0330854   0.0928989
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                0.0717762   0.0541258   0.0894266
24 months   ki1101329-Keneba           GAMBIA                         Male                 NA                0.0863787   0.0680507   0.1047068
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1030043   0.0639356   0.1420730
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1127820   0.0747299   0.1508340
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.2692308   0.1838061   0.3546554
24 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.2898551   0.2140023   0.3657079
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0955882   0.0606144   0.1305621
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1039427   0.0680996   0.1397857
24 months   ki1114097-CMIN             PERU                           Female               NA                0.0502513   0.0198630   0.0806395
24 months   ki1114097-CMIN             PERU                           Male                 NA                0.0869565   0.0504989   0.1234141
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1947566   0.1472036   0.2423095
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.4157895   0.3456329   0.4859461
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.5141700   0.4517805   0.5765595
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.4800000   0.4208955   0.5391045
24 months   ki1135781-COHORTS          INDIA                          Female               NA                0.1728880   0.1581950   0.1875810
24 months   ki1135781-COHORTS          INDIA                          Male                 NA                0.1892665   0.1747430   0.2037901
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.2746114   0.2488999   0.3003229
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2882673   0.2635157   0.3130189
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.0782313   0.0475092   0.1089534
24 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1543860   0.1124013   0.1963707


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.0412371   0.0411679   0.0413063
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0188189   0.0186819   0.0189559
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0318872   0.0318843   0.0318901
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0310241   0.0309870   0.0310612
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0150820   0.0149977   0.0151662
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.0687285   0.0653354   0.0721216
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0511811   0.0506463   0.0517159
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0911602   0.0879215   0.0943989
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.0884521   0.0869628   0.0899414
3 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.3244681   0.3195917   0.3293445
3 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2115385   0.2047573   0.2183196
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1340206   0.1288850   0.1391562
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0578947   0.0571516   0.0586379
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0453297   0.0447760   0.0458833
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0109075   0.0107479   0.0110671
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0328767   0.0325122   0.0332412
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0385289   0.0375053   0.0395525
3 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1289063   0.1287322   0.1290803
3 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0355030   0.0348460   0.0361599
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0572174   0.0569635   0.0574714
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0926316   0.0919674   0.0932958
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0365662   0.0364008   0.0367316
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0257391   0.0255398   0.0259385
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1138211   0.1098501   0.1177922
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0712531   0.0707537   0.0717524
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2526882   0.2505052   0.2548711
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1872340   0.1809184   0.1935497
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1562500   0.1495011   0.1629989
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0651769   0.0645539   0.0657999
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0314200   0.0329157
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0093642   0.0092616   0.0094669
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0335089   0.0331441   0.0338736
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0903010   0.0851231   0.0954789
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1152263   0.1129116   0.1175411
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417119   0.0414672   0.0419566
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1551724   0.1522140   0.1581309
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0453353   0.0451073   0.0455633
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0482095   0.0492795
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0846246   0.0814705   0.0877786
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1218487   0.1148946   0.1288028
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1284153   0.1230896   0.1337410
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.0835381   0.0834000   0.0836762
9 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2595628   0.2587432   0.2603825
9 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1563981   0.1532083   0.1595879
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.2352941   0.2338016   0.2367866
9 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0887574   0.0864537   0.0910611
9 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0413223   0.0395009   0.0431437
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0396601   0.0387821   0.0405381
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0195749   0.0190415   0.0201084
9 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0474117   0.0468818   0.0479416
9 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1260504   0.1180174   0.1340834
9 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0635209   0.0611997   0.0658420
9 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1632653   0.1620826   0.1644480
9 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0381062   0.0369519   0.0392605
9 months    ki1114097-CMIN             PERU                           NA                   NA                0.0160000   0.0159094   0.0160906
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0480782   0.0476806   0.0484758
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2533040   0.2485470   0.2580609
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0745072   0.0741010   0.0749134
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0722714   0.0713894   0.0731533
9 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0707831   0.0686536   0.0729126
12 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0729614   0.0689743   0.0769484
12 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0789474   0.0747000   0.0831948
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1601732   0.1554064   0.1649399
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2255435   0.2179116   0.2331754
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.0837438   0.0831451   0.0843426
12 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3361345   0.3335075   0.3387614
12 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1185567   0.1132048   0.1239086
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4456522   0.4378868   0.4534175
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0977597   0.0970373   0.0984820
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0591396   0.0608604
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0580737   0.0574901   0.0586572
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0235457   0.0232119   0.0238795
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0657084   0.0652201   0.0661967
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1741294   0.1613144   0.1869443
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0913978   0.0900590   0.0927367
12 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1818182   0.1806698   0.1829665
12 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0629032   0.0628881   0.0629184
12 months   ki1114097-CMIN             PERU                           NA                   NA                0.0382696   0.0381193   0.0384198
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0662320   0.0656495   0.0668146
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3445693   0.3426028   0.3465357
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1086429   0.1082805   0.1090053
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1330754   0.1318840   0.1342669
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1070288   0.1027883   0.1112692
18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1402715   0.1346381   0.1459049
18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1403509   0.1320368   0.1486649
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0900901   0.0863941   0.0937861
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1078838   0.1026908   0.1130768
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3066667   0.2954296   0.3179037
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2953930   0.2900503   0.3007356
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.0839506   0.0837345   0.0841667
18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4885714   0.4879924   0.4891505
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4404762   0.4322509   0.4487014
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2181425   0.2174779   0.2188072
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1032609   0.1022423   0.1042794
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0662461   0.0659515   0.0665407
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0408163   0.0392114   0.0424212
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0878835   0.0867673   0.0889997
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1545455   0.1535523   0.1555386
18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2827004   0.2817427   0.2836581
18 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0968170   0.0962883   0.0973457
18 months   ki1114097-CMIN             PERU                           NA                   NA                0.0674847   0.0672217   0.0677476
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1742690   0.1720761   0.1764619
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4931193   0.4928738   0.4933647
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2516051   0.2505116   0.2526986
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1324138   0.1287706   0.1360570
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1226415   0.1204075   0.1248755
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1233480   0.1175326   0.1291634
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1092437   0.1072208   0.1112666
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3224299   0.3171865   0.3276734
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3306452   0.3238067   0.3374836
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1002445   0.0980780   0.1024110
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2167832   0.2164607   0.2171058
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0849220   0.0838999   0.0859441
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0680934   0.0676571   0.0685297
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0794203   0.0790760   0.0797646
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1082164   0.1077880   0.1086449
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2809917   0.2797027   0.2822808
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0998185   0.0994694   0.1001676
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0699301   0.0681959   0.0716642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2866521   0.2766535   0.2966507
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4961686   0.4947036   0.4976335
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1814607   0.1812412   0.1816801
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2817996   0.2815293   0.2820699
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1157168   0.1126129   0.1188206


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA                          Male                 Female            1.0345515   0.3927774    2.724945
Birth       ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA                         Male                 Female            0.7467310   0.3615816    1.542134
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            0.9890988   0.8231077    1.188564
Birth       ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          Male                 Female            1.1050242   0.8436171    1.447432
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.3785474   0.7657469    2.481751
3 months    ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          PERU                           Male                 Female            2.5961538   0.9673288    6.967657
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.1851852   0.4088045    3.436029
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            2.0446927   1.0206804    4.096060
3 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1000108-IRC              INDIA                          Male                 Female            1.4311111   0.7454539    2.747425
3 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.3509278   1.0016064    1.822079
3 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.7275542   1.0471575    2.850042
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.4651163   0.5286082    4.060787
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.3749042   0.6970951    2.711770
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.4026337   0.7139163    2.755759
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            2.1139033   0.9157834    4.879524
3 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.7315789   1.0736358    2.792721
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.9769120   0.8177188    4.779370
3 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.0225049   0.5360786    1.950304
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            0.6490402   0.2554621    1.648985
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.5582106   1.3129836    1.849239
3 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.1742504   0.6645532    2.074874
3 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.4828523   1.1581453    1.898597
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.5474522   0.9694099    2.470171
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            2.0327869   1.1055630    3.737664
6 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          Male                 Female            1.1573661   0.5669775    2.362521
6 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.1859649   0.8335417    1.687393
6 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.7306452   0.9791926    3.058778
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.5331010   0.6017747    3.905779
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.2585616   0.6536222    2.423384
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.9228045   0.8250949    4.480912
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.6758563   0.6623364    4.240284
6 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.6881262   1.0430949    2.732033
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            2.9941291   1.3033526    6.878268
6 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.3927007   0.6699697    2.895079
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.7578943   1.4153618    2.183323
6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.5409429   0.9870449    2.405671
6 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.5464764   1.2350118    1.936491
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.8442900   1.2916635    2.633353
6 months    ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            3.4457041   2.0072916    5.914874
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            2.6250000   1.2089987    5.699448
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            2.3571429   1.3047826    4.258274
9 months    ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1000108-IRC              INDIA                          Male                 Female            1.0348214   0.5407762    1.980219
9 months    ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1000109-EE               PAKISTAN                       Male                 Female            1.0635769   0.7516206    1.505009
9 months    ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1000109-ResPak           PAKISTAN                       Male                 Female            1.3598901   0.7132528    2.592771
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.0614251   0.4894372    2.301875
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.8829510   1.0261102    3.455286
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            3.6340692   1.3807771    9.564512
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.8517241   0.8665548    3.956913
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            3.9027624   1.7133039    8.890165
9 months    ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1101329-Keneba           GAMBIA                         Male                 Female            1.7066918   1.1392437    2.556781
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            2.9413043   1.3620845    6.351494
9 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female            2.6189927   1.2495437    5.489302
9 months    ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1114097-CMIN             BANGLADESH                     Male                 Female            1.1250000   0.6292863    2.011207
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            2.6666667   1.2535451    5.672801
9 months    ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1114097-CMIN             PERU                           Male                 Female            0.8656716   0.2528862    2.963338
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            2.1701845   1.7509314    2.689826
9 months    ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.5226289   1.0922841    2.122524
9 months    ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          INDIA                          Male                 Female            1.5560296   1.2926617    1.873056
9 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.9870022   1.4825241    2.663146
9 months    ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
9 months    ki1148112-LCNI-5           MALAWI                         Male                 Female            2.3149252   1.2618452    4.246859
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            2.4626085   0.8939364    6.783973
12 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            2.3428571   0.9089592    6.038752
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.6007326   0.8666305    2.956675
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.9857533   1.3216675    2.983516
12 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1000108-IRC              INDIA                          Male                 Female            1.1607143   0.6028139    2.234948
12 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1000109-EE               PAKISTAN                       Male                 Female            0.8602654   0.6421156    1.152529
12 months   ki1000109-ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1000109-ResPak           PAKISTAN                       Male                 Female            1.9780220   0.8502269    4.601796
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.1846690   0.7506043    1.869748
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.1842105   0.6858147    2.044801
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.4408946   0.7513171    2.763383
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.3144955   0.7219074    2.393518
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.7635868   0.8792766    3.537270
12 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.4050603   0.9974847    1.979173
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female            3.1597222   1.5574463    6.410394
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.4324138   0.8368087    2.451945
12 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.1070560   0.6414801    1.910539
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.0061431   0.5476069    1.848633
12 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1114097-CMIN             PERU                           Male                 Female            1.1040000   0.4914588    2.479996
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            2.1481197   1.7744041    2.600545
12 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.1448970   0.9036902    1.450485
12 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.2864401   1.1008528    1.503315
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.6158850   1.3143179    1.986646
12 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
12 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            3.0173234   1.7797214    5.115543
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.8682235   0.9385534    3.718764
18 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            2.5771429   1.2769417    5.201228
18 months   ki0047075b-MAL-ED          PERU                           Female               Female            1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          PERU                           Male                 Female            1.9476584   0.7752209    4.893280
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            2.2314050   1.0073842    4.942671
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.7757143   1.1708619    2.693026
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.4299517   1.0357299    1.974223
18 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1000108-IRC              INDIA                          Male                 Female            1.0546003   0.5511606    2.017891
18 months   ki1000109-EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1000109-EE               PAKISTAN                       Male                 Female            0.9776603   0.7887931    1.211749
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female            1.1900000   0.7346267    1.927646
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            1.0695225   0.7554689    1.514131
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.2695993   0.7707921    2.091203
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            1.1210191   0.6241198    2.013530
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            4.5072712   2.0124735   10.094788
18 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.8036050   1.3297727    2.446276
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.1669146   0.7870048    1.730218
18 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            0.9480100   0.6302927    1.425882
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.1654608   0.7525209    1.804998
18 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1114097-CMIN             PERU                           Male                 Female            1.0921875   0.5630847    2.118462
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            1.7015802   1.3799969    2.098103
18 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            1.0106639   0.8350691    1.223182
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.2505388   1.0897644    1.435032
18 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
18 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            2.1974667   1.4692757    3.286558
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female            1.3131313   0.6317544    2.729405
24 months   ki0047075b-MAL-ED          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female            2.0914286   1.0086172    4.336703
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female            1.3409090   0.6417466    2.801786
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.2759259   0.8601761    1.892621
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female            1.5102041   1.1202028    2.035985
24 months   ki1000108-IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          Male                 Female            1.5927934   0.8601118    2.949606
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female            0.9689922   0.6753373    1.390336
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female            1.3481605   0.7807438    2.327955
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female            0.8619975   0.4532586    1.639328
24 months   ki1101329-Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         Male                 Female            1.2034461   0.8696998    1.665267
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female            1.0949248   0.6590517    1.819069
24 months   ki1114097-CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female            1.0766046   0.7135702    1.624335
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female            1.0874000   0.6577158    1.797796
24 months   ki1114097-CMIN             PERU                           Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             PERU                           Male                 Female            1.7304348   0.8290479    3.611859
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female            2.1349190   1.5866639    2.872618
24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female            0.9335433   0.7853371    1.109719
24 months   ki1135781-COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          Male                 Female            1.0947349   0.9762946    1.227544
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female            1.0497280   0.9244950    1.191925
24 months   ki1148112-LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female            1.9734554   1.2239819    3.181849


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.0007747   -0.0286251   0.0301744
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.0028613   -0.0133729   0.0076504
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0001793   -0.0043867   0.0040281
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0016031   -0.0042569   0.0074631
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0025209   -0.0032469   0.0082887
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0316915   -0.0004002   0.0637832
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0043061   -0.0323876   0.0409998
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0310509   -0.0035860   0.0656879
3 months    ki1000108-IRC              INDIA                          Female               NA                 0.0170235   -0.0204680   0.0545150
3 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0497428   -0.0153769   0.1148625
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0583127   -0.0055702   0.1221955
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0229095   -0.0615035   0.1073225
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0095676   -0.0160935   0.0352287
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0074918   -0.0119711   0.0269548
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0039084   -0.0009284   0.0087451
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0090672   -0.0001635   0.0182979
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0129815   -0.0057451   0.0317080
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0016335   -0.0607702   0.0640372
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.0074658   -0.0323399   0.0174083
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0127038    0.0066678   0.0187397
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0078102   -0.0287207   0.0443410
3 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0073022    0.0016199   0.0129846
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0057835   -0.0016722   0.0132391
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0385523    0.0003791   0.0767255
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0056793   -0.0302324   0.0415910
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0219189   -0.0394134   0.0832513
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0520989   -0.0119472   0.1161450
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0289773   -0.0598212   0.1177757
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0080341   -0.0210646   0.0371327
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0100684   -0.0051044   0.0252411
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0023852   -0.0027691   0.0075394
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0087809   -0.0008010   0.0183627
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0445494    0.0109838   0.0781149
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0208867   -0.0349210   0.0766944
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0116945    0.0064209   0.0169681
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0348020   -0.0087395   0.0783436
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0100447    0.0037324   0.0163571
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0150454    0.0051279   0.0249629
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0465293    0.0279415   0.0651171
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0546218    0.0090020   0.1002417
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0519126    0.0129834   0.0908418
9 months    ki1000108-IRC              INDIA                          Female               NA                 0.0015709   -0.0382223   0.0413640
9 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0081662   -0.0554778   0.0718102
9 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0250850   -0.0416793   0.0918492
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0061275   -0.1134879   0.1257428
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0286716   -0.0019594   0.0593025
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0239612    0.0087545   0.0391679
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0117271   -0.0053768   0.0288309
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0116474    0.0057722   0.0175227
9 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0126205    0.0012815   0.0239595
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0610098    0.0166056   0.1054140
9 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0291697    0.0069745   0.0513650
9 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0108844   -0.0580080   0.0797767
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0173210    0.0038262   0.0308158
9 months    ki1114097-CMIN             PERU                           Female               NA                -0.0012414   -0.0162353   0.0137525
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0177043    0.0122700   0.0231387
9 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0551908    0.0012684   0.1091131
9 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0167745    0.0082132   0.0253358
9 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0247266    0.0130469   0.0364062
9 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0282299    0.0062990   0.0501609
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0305885   -0.0060527   0.0672297
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0301669   -0.0082205   0.0685542
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0373661   -0.0232022   0.0979345
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0741921    0.0219178   0.1264665
12 months   ki1000108-IRC              INDIA                          Female               NA                 0.0068208   -0.0319449   0.0455864
12 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0259345   -0.0974925   0.0456234
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0407789   -0.0149533   0.0965111
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0338875   -0.1021458   0.1699207
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0088708   -0.0283590   0.0461006
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0112195   -0.0137374   0.0361764
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0077943   -0.0148652   0.0304539
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0065966   -0.0029207   0.0161138
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0113953   -0.0031124   0.0259030
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0884151    0.0332276   0.1436025
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0167710   -0.0147477   0.0482897
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0103896   -0.0618564   0.0826357
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0001970   -0.0271224   0.0275163
12 months   ki1114097-CMIN             PERU                           Female               NA                 0.0020377   -0.0200270   0.0241023
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0236788    0.0169449   0.0304128
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0244112   -0.0331639   0.0819863
12 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0140904    0.0027712   0.0254095
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0325852    0.0156968   0.0494737
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0534010    0.0282220   0.0785800
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0420572   -0.0134705   0.0975849
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0590501    0.0099369   0.1081632
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0306841   -0.0156679   0.0770362
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0412172   -0.0038066   0.0862409
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0854277    0.0079066   0.1629489
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0521497   -0.0099889   0.1142883
18 months   ki1000108-IRC              INDIA                          Female               NA                 0.0024289   -0.0371582   0.0420160
18 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0056146   -0.0804417   0.0692125
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0323129   -0.1063734   0.1709993
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0078622   -0.0467990   0.0625233
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0126948   -0.0219051   0.0472948
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0037461   -0.0227981   0.0302902
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0262025    0.0153315   0.0370736
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0257185    0.0101810   0.0412559
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0122234   -0.0297340   0.0541807
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0085617   -0.0964960   0.0793726
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0073433   -0.0213785   0.0360651
18 months   ki1114097-CMIN             PERU                           Female               NA                 0.0031070   -0.0284393   0.0346532
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0417133    0.0199535   0.0634732
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0027347   -0.0652808   0.0707501
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0291030    0.0054514   0.0527546
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0488558    0.0204435   0.0772682
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0168723   -0.0424163   0.0761609
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0413808   -0.0077484   0.0905100
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0160234   -0.0365843   0.0686310
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0394110   -0.0467043   0.1255263
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0672043    0.0034464   0.1309622
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0245688   -0.0136505   0.0627882
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0037296   -0.0619890   0.0545297
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0129796   -0.0174382   0.0433974
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0049835   -0.0366528   0.0266857
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0076441   -0.0100096   0.0252979
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0052121   -0.0338589   0.0442832
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0117610   -0.0736734   0.0971953
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0042303   -0.0307453   0.0392059
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0196788   -0.0107589   0.0501165
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0918955    0.0433027   0.1404883
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0180015   -0.0804082   0.0444052
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0085727   -0.0061219   0.0232673
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0071882   -0.0185247   0.0329011
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0374855    0.0066070   0.0683640


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.0187861   -1.0291740   0.5255308
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.1520419   -0.8708600   0.2905934
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0056232   -0.1466163   0.1180328
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0516736   -0.1573361   0.2229371
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1671471   -0.3182016   0.4737952
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.4611111   -0.2773487   0.7726531
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0841346   -1.0035076   0.5813296
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3406193   -0.1715797   0.6288917
3 months    ki1000108-IRC              INDIA                          Female               NA                 0.1924603   -0.3647540   0.5221701
3 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.1533057   -0.0729715   0.3318637
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.2756598   -0.0977995   0.5220724
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.1709402   -0.7714777   0.6119961
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1652585   -0.4194736   0.5091185
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1652744   -0.3960723   0.5009092
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3583202   -0.2803871   0.6784153
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.2757937   -0.0670163   0.5084660
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.3369277   -0.3792292   0.6812242
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0126722   -0.6121384   0.3953272
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.2102865   -1.1594198   0.3216727
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2220260    0.1090896   0.3206459
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0843141   -0.4085849   0.4047355
3 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.1996991    0.0282151   0.3409225
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.2246959   -0.1264353   0.4663728
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3387097   -0.0964194   0.6011518
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0797060   -0.5913514   0.4677851
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0867430   -0.1912551   0.2998660
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.2782555   -0.1580666   0.5501855
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.1854545   -0.6354185   0.5943031
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1232653   -0.4588509   0.4731033
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.3129954   -0.3643956   0.6540774
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2547095   -0.5596934   0.6438673
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.2620461   -0.0870718   0.4990432
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.4933430   -0.0483406   0.7551356
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.1812668   -0.4790455   0.5467861
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2803640    0.1422282   0.3962544
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2242798   -0.1134173   0.4595542
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.2215656    0.0691421   0.3490305
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.3086587    0.0723030   0.4847964
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.5498323    0.2708232   0.7220826
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.4482759   -0.0815351   0.7185487
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.4042553    0.0120903   0.6407448
9 months    ki1000108-IRC              INDIA                          Female               NA                 0.0188042   -0.5943933   0.3961684
9 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0314613   -0.2475647   0.2480814
9 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1603918   -0.3957673   0.4949431
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0260417   -0.6414323   0.4220932
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.3230329   -0.1262264   0.5930797
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.5798611   -0.0035522   0.8241081
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.2956903   -0.2987133   0.6180434
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.5950170    0.1523998   0.8064993
9 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.2661886   -0.0163803   0.4701991
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.4840108   -0.0128804   0.7371409
9 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.4592148   -0.0293118   0.7158795
9 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0666667   -0.4668319   0.4061275
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.4545455   -0.0423133   0.7145574
9 months    ki1114097-CMIN             PERU                           Female               NA                -0.0775862   -1.5711967   0.5483846
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.3682408    0.2446832   0.4715863
9 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2178835   -0.0263577   0.4040029
9 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.2251394    0.1013364   0.3318869
9 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.3421350    0.1592805   0.4852191
9 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.3988230   -0.0049704   0.6403737
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.4192422   -0.3742545   0.7545727
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.3821138   -0.3532462   0.7178759
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2332859   -0.2547402   0.5314962
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3289482    0.0540392   0.5239650
12 months   ki1000108-IRC              INDIA                          Female               NA                 0.0814480   -0.5204209   0.4450630
12 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0771552   -0.3125622   0.1160318
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.3439614   -0.3406266   0.6789660
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0760402   -0.2855685   0.3359344
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0907407   -0.3822279   0.4018697
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1869919   -0.3559464   0.5125307
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1342145   -0.3586854   0.4483016
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2801595   -0.2619085   0.5893757
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1734225   -0.0796134   0.3671528
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.5077551    0.0752344   0.7379822
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.1834943   -0.2454567   0.4647092
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0571429   -0.4370449   0.3813836
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0031311   -0.5411611   0.3551955
12 months   ki1114097-CMIN             PERU                           Female               NA                 0.0532451   -0.7406659   0.4850564
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.3575134    0.2476168   0.4513580
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0708455   -0.1121985   0.2237644
12 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.1296943    0.0190297   0.2278747
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.2448629    0.1068272   0.3615659
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.4989406    0.2027037   0.6851102
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.2998272   -0.2305478   0.6016067
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.4207317   -0.0537164   0.6815540
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.3405941   -0.4368313   0.6973784
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.3820513   -0.2107298   0.6846029
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2785687   -0.0223540   0.4909169
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1765435   -0.0628031   0.3619885
18 months   ki1000108-IRC              INDIA                          Female               NA                 0.0289322   -0.5781326   0.4024757
18 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0114919   -0.1768499   0.1306318
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0733591   -0.3014876   0.3402447
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0360415   -0.2501152   0.2566957
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1229394   -0.2850834   0.4014122
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0565476   -0.4426672   0.3830161
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.6419624    0.2519818   0.8286259
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.2926426    0.0920834   0.4488981
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0790923   -0.2366391   0.3142130
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0302855   -0.3933971   0.2382013
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0758472   -0.2739507   0.3295985
18 months   ki1114097-CMIN             PERU                           Female               NA                 0.0460398   -0.5571909   0.4155886
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2393617    0.1039802   0.3542882
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0055456   -0.1424066   0.1343367
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1156695    0.0165129   0.2048289
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.3689634    0.1148924   0.5501030
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1375740   -0.5104971   0.5075935
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.3354801   -0.2072402   0.6342180
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1466753   -0.5002144   0.5146274
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1222313   -0.1897847   0.3524225
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.2032520   -0.0143967   0.3742021
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.2450890   -0.2504914   0.5442666
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0172043   -0.3247947   0.2189698
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1528410   -0.2928810   0.4448999
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0731868   -0.6553413   0.3042341
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0962491   -0.1557455   0.2932998
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0481640   -0.3908982   0.3486283
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0418552   -0.3159624   0.3023802
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0423797   -0.3807034   0.3358192
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.2814070   -0.3162343   0.6076870
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.3205821    0.1305320   0.4690907
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0362809   -0.1700125   0.0821652
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0472425   -0.0372772   0.1248753
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0255082   -0.0701453   0.1126118
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.3239415   -0.0021503   0.5439256
