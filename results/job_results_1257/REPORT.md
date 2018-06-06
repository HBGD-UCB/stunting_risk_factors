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
Birth       ki1000304b-SAS-CompFeed    INDIA                          Female       70     34     31      3
Birth       ki1000304b-SAS-CompFeed    INDIA                          Male         70     36     35      1
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
Birth       ki1119695-PROBIT           BELARUS                        Female     6779   3526   3524      2
Birth       ki1119695-PROBIT           BELARUS                        Male       6779   3253   3250      3
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female    13830   6736   6520    216
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male      13830   7094   6869    225
Birth       ki1135781-COHORTS          GUATEMALA                      Female      407    186    184      2
Birth       ki1135781-COHORTS          GUATEMALA                      Male        407    221    219      2
Birth       ki1135781-COHORTS          INDIA                          Female     6640   3195   3101     94
Birth       ki1135781-COHORTS          INDIA                          Male       6640   3445   3333    112
Birth       ki1135781-COHORTS          PHILIPPINES                    Female     3050   1433   1415     18
Birth       ki1135781-COHORTS          PHILIPPINES                    Male       3050   1617   1589     28
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female     9746   4798   4259    539
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male       9746   4948   4391    557
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female      224    108     99      9
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male        224    116    107      9
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
3 months    ki1000304b-SAS-CompFeed    INDIA                          Female      412    191    180     11
3 months    ki1000304b-SAS-CompFeed    INDIA                          Male        412    221    202     19
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
3 months    ki1119695-PROBIT           BELARUS                        Female     8057   4174   4168      6
3 months    ki1119695-PROBIT           BELARUS                        Male       8057   3883   3823     60
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female     9193   4493   4293    200
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male       9193   4700   4374    326
3 months    ki1135781-COHORTS          GUATEMALA                      Female      475    224    205     19
3 months    ki1135781-COHORTS          GUATEMALA                      Male        475    251    226     25
3 months    ki1135781-COHORTS          INDIA                          Female     7001   3383   3284     99
3 months    ki1135781-COHORTS          INDIA                          Male       7001   3618   3461    157
3 months    ki1135781-COHORTS          PHILIPPINES                    Female     2875   1353   1326     27
3 months    ki1135781-COHORTS          PHILIPPINES                    Male       2875   1522   1475     47
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Female    12305   6084   5659    425
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Male      12305   6221   5621    600
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Female      900    480    462     18
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Male        900    420    390     30
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female      411    189    177     12
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male        411    222    197     25
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
6 months    ki1119695-PROBIT           BELARUS                        Female     7665   3960   3938     22
6 months    ki1119695-PROBIT           BELARUS                        Male       7665   3705   3581    124
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female     8319   4115   3919    196
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male       8319   4204   3851    353
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female     1256    645    614     31
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male       1256    611    572     39
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
9 months    ki1000304b-SAS-CompFeed    INDIA                          Female      404    186    167     19
9 months    ki1000304b-SAS-CompFeed    INDIA                          Male        404    218    186     32
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
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Female      762    377    365     12
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Male        762    385    354     31
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
9 months    ki1119695-PROBIT           BELARUS                        Female     7483   3871   3862      9
9 months    ki1119695-PROBIT           BELARUS                        Male       7483   3612   3537     75
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
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Female     1281    661    623     38
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Male       1281    620    577     43
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
12 months   ki1000304b-SAS-CompFeed    INDIA                          Female      414    185    161     24
12 months   ki1000304b-SAS-CompFeed    INDIA                          Male        414    229    190     39
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
12 months   ki1119695-PROBIT           BELARUS                        Female     7736   4001   3989     12
12 months   ki1119695-PROBIT           BELARUS                        Male       7736   3735   3685     50
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
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Female     7208   3574   3260    314
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Male       7208   3634   3128    506
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Female     1277    667    618     49
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Male       1277    610    553     57
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
18 months   ki1000304b-SAS-CompFeed    INDIA                          Female      395    180    149     31
18 months   ki1000304b-SAS-CompFeed    INDIA                          Male        395    215    162     53
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
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female      611    301    264     37
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male        611    310    259     51
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
18 months   ki1119695-PROBIT           BELARUS                        Female      764    397    392      5
18 months   ki1119695-PROBIT           BELARUS                        Male        764    367    352     15
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female     1710    943    818    125
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male       1710    767    594    173
18 months   ki1135781-COHORTS          GUATEMALA                      Female      436    208    106    102
18 months   ki1135781-COHORTS          GUATEMALA                      Male        436    228    115    113
18 months   ki1135781-COHORTS          PHILIPPINES                    Female     2492   1191    926    265
18 months   ki1135781-COHORTS          PHILIPPINES                    Male       2492   1301    939    362
18 months   ki1148112-LCNI-5           MALAWI                         Female      725    371    340     31
18 months   ki1148112-LCNI-5           MALAWI                         Male        725    354    289     65
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female     1232    635    565     70
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male       1232    597    518     79
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
24 months   ki1119695-PROBIT           BELARUS                        Female     1619    858    850      8
24 months   ki1119695-PROBIT           BELARUS                        Male       1619    761    738     23
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female     4293   2086   1791    295
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male       4293   2207   1835    372
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female     1251    645    590     55
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male       1251    606    563     43


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
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
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

```
## Warning: Removed 50 rows containing missing values (geom_errorbar).
```

![](/tmp/32391f28-00ae-4bef-912a-7fbdc52f23c3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 174 rows containing missing values (geom_errorbar).
```

![](/tmp/32391f28-00ae-4bef-912a-7fbdc52f23c3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 25 rows containing missing values (geom_errorbar).
```

![](/tmp/32391f28-00ae-4bef-912a-7fbdc52f23c3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 25 rows containing missing values (geom_errorbar).
```

![](/tmp/32391f28-00ae-4bef-912a-7fbdc52f23c3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.1123385          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.1125707          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0833333          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0775862          NA          NA
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
3 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0575916          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.0859729          NA          NA
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
3 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0014375          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.0154520          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.0445137   0.0384831   0.0505443
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.0693617   0.0620977   0.0766257
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                0.0848214   0.0482967   0.1213462
3 months    ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.0996016   0.0625148   0.1366884
3 months    ki1135781-COHORTS          INDIA                          Female               NA                0.0292640   0.0235840   0.0349439
3 months    ki1135781-COHORTS          INDIA                          Male                 NA                0.0433941   0.0367548   0.0500335
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.0199557   0.0125027   0.0274086
3 months    ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.0308804   0.0221879   0.0395730
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0698554          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0964475          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0375000          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0714286          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                0.0752688   0.0373027   0.1132349
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 NA                0.1530055   0.1007772   0.2052337
6 months    ki1000108-IRC              INDIA                          Female               NA                0.0655738   0.0296655   0.1014820
6 months    ki1000108-IRC              INDIA                          Male                 NA                0.0758929   0.0411696   0.1106161
6 months    ki1000109-EE               PAKISTAN                       Female               NA                0.2307692   0.1694758   0.2920627
6 months    ki1000109-EE               PAKISTAN                       Male                 NA                0.2736842   0.2102033   0.3371652
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                0.1351351   0.0714012   0.1988691
6 months    ki1000109-ResPak           PAKISTAN                       Male                 NA                0.2338710   0.1592085   0.3085334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.0634921          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.1126126          NA          NA
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
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0055556          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.0334683          NA          NA
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0476306          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.0839676          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0480620          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0638298          NA          NA
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
9 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.1021505          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.1467890          NA          NA
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
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0318302          NA          NA
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.0805195          NA          NA
9 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.0343511   0.0122776   0.0564247
9 months    ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.0899654   0.0569467   0.1229841
9 months    ki1114097-CMIN             BANGLADESH                     Female               NA                0.1523810   0.0834987   0.2212632
9 months    ki1114097-CMIN             BANGLADESH                     Male                 NA                0.1714286   0.1088712   0.2339860
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0207852   0.0073399   0.0342305
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.0554273   0.0338630   0.0769915
9 months    ki1114097-CMIN             PERU                           Female               NA                0.0172414   0.0022478   0.0322350
9 months    ki1114097-CMIN             PERU                           Male                 NA                0.0149254   0.0019305   0.0279202
9 months    ki1119695-PROBIT           BELARUS                        Female               NA                0.0023250          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        Male                 NA                0.0207641          NA          NA
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
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0574887          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0693548          NA          NA
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
12 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.1297297          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.1703057          NA          NA
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
12 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0029993          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0133869          NA          NA
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
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.0878567          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.1392405          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0734633          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0934426          NA          NA
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
18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                0.1722222          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 NA                0.2465116          NA          NA
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
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                0.1229236          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.1645161          NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                0.1423221   0.1003765   0.1842676
18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 NA                0.1660777   0.1226799   0.2094756
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                0.2912621   0.2033331   0.3791912
18 months   ki1114097-CMIN             BANGLADESH                     Male                 NA                0.2761194   0.2002624   0.3519764
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                0.0894737   0.0607567   0.1181906
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 NA                0.1042781   0.0732837   0.1352725
18 months   ki1114097-CMIN             PERU                           Female               NA                0.0643777   0.0328325   0.0959228
18 months   ki1114097-CMIN             PERU                           Male                 NA                0.0703125   0.0389611   0.1016639
18 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0125945          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0408719          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                0.1325557   0.1109066   0.1542047
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 NA                0.2255541   0.1959673   0.2551409
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                0.4903846   0.4223696   0.5583996
18 months   ki1135781-COHORTS          GUATEMALA                      Male                 NA                0.4956140   0.4306411   0.5605870
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                0.2225021   0.1988758   0.2461284
18 months   ki1135781-COHORTS          PHILIPPINES                    Male                 NA                0.2782475   0.2538915   0.3026035
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                0.0835580   0.0553801   0.1117358
18 months   ki1148112-LCNI-5           MALAWI                         Male                 NA                0.1836158   0.1432561   0.2239756
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.1102362          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.1323283          NA          NA
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
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                0.0093240          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        Male                 NA                0.0302234          NA          NA
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                0.1414190          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 NA                0.1685546          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                0.0852713          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 NA                0.0709571          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.0412371   0.0214268   0.0610475
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0188189   0.0120322   0.0256057
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0318872   0.0289588   0.0348156
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0310241   0.0268535   0.0351947
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1124564          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0803571          NA          NA
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.0687285   0.0396109   0.0978461
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0511811   0.0240271   0.0783351
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0911602   0.0614681   0.1208523
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.0884521   0.0608318   0.1160724
3 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.3244681   0.2770830   0.3718531
3 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2115385   0.1618011   0.2612759
3 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0728155          NA          NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1340206   0.0658728   0.2021685
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0578947   0.0387053   0.0770841
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0453297   0.0302080   0.0604513
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0109075   0.0066543   0.0151607
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0328767   0.0254069   0.0403465
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0385289   0.0227284   0.0543294
3 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1289063   0.0877773   0.1700352
3 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0355030   0.0193796   0.0516263
3 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0081916          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0572174   0.0524694   0.0619655
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0926316   0.0665322   0.1187310
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0365662   0.0321693   0.0409631
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0257391   0.0199497   0.0315286
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0832995          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0533333          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1872340   0.1372518   0.2372162
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0900243          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1562500   0.0832365   0.2292635
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0093642   0.0051724   0.0135561
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0335089   0.0257898   0.0412279
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0903010   0.0577597   0.1228423
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1152263   0.0749980   0.1554547
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0190476          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417119   0.0374091   0.0460146
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1551724   0.1221925   0.1881523
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0453353   0.0404119   0.0502586
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0846246   0.0657805   0.1034686
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0659935          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0557325          NA          NA
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1218487   0.0802031   0.1634943
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1284153   0.0940939   0.1627367
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.0835381   0.0566237   0.1104525
9 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2595628   0.2145883   0.3045374
9 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1563981   0.1072708   0.2055254
9 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1262376          NA          NA
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.2352941   0.1445829   0.3260054
9 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0887574   0.0639779   0.1135369
9 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0413223   0.0254493   0.0571953
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0396601   0.0252541   0.0540660
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0195749   0.0131519   0.0259980
9 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0474117   0.0382478   0.0565756
9 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1260504   0.0837943   0.1683065
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0564304          NA          NA
9 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0635209   0.0431376   0.0839041
9 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1632653   0.1168892   0.2096414
9 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0381062   0.0253477   0.0508648
9 months    ki1114097-CMIN             PERU                           NA                   NA                0.0160000   0.0061551   0.0258449
9 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0112254          NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0480782   0.0432917   0.0528646
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2533040   0.2132549   0.2933530
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0745072   0.0678544   0.0811599
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0722714   0.0625243   0.0820185
9 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0707831   0.0512616   0.0903047
9 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0632319          NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0729614   0.0394957   0.1064270
12 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0789474   0.0438684   0.1140263
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1601732   0.1127736   0.2075727
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2255435   0.1827844   0.2683026
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.0837438   0.0567661   0.1107216
12 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3361345   0.2870640   0.3852049
12 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1185567   0.0729499   0.1641635
12 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1521739          NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4456522   0.3435308   0.5477735
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0977597   0.0714636   0.1240558
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0409816   0.0790184
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0580737   0.0408093   0.0753381
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0235457   0.0157223   0.0313691
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0657084   0.0547027   0.0767141
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1741294   0.1215730   0.2266857
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0913978   0.0674660   0.1153296
12 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1818182   0.1331233   0.2305130
12 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0629032   0.0437769   0.0820295
12 months   ki1114097-CMIN             PERU                           NA                   NA                0.0382696   0.0229189   0.0536202
12 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0080145          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0662320   0.0602985   0.0721656
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3445693   0.3042246   0.3849140
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1086429   0.1003089   0.1169769
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1330754   0.1199794   0.1461715
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1070288   0.0827919   0.1312657
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1137625          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0830070          NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1402715   0.0943832   0.1861598
18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1403509   0.0951649   0.1855368
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0900901   0.0523425   0.1278377
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1078838   0.0686346   0.1471331
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3066667   0.2462818   0.3670516
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2953930   0.2487810   0.3420050
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.0839506   0.0569092   0.1109920
18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4885714   0.4361279   0.5410150
18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2126582          NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4404762   0.3336742   0.5472782
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2181425   0.1804842   0.2558009
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1032609   0.0778527   0.1286690
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0662461   0.0468710   0.0856211
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0408163   0.0284220   0.0532107
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0878835   0.0752259   0.1005411
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1440262          NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1545455   0.1243087   0.1847822
18 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2827004   0.2252484   0.3401525
18 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0968170   0.0756960   0.1179380
18 months   ki1114097-CMIN             PERU                           NA                   NA                0.0674847   0.0452276   0.0897418
18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0261780          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1742690   0.1562842   0.1922538
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4931193   0.4461372   0.5401014
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2516051   0.2345645   0.2686458
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1324138   0.1077249   0.1571027
18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1209416          NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1226415   0.0783812   0.1669018
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1233480   0.0804760   0.1662200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1092437   0.0695290   0.1489584
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3224299   0.2596598   0.3852000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0794203   0.0666566   0.0921840
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.2809917   0.2242434   0.3377401
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0998185   0.0747668   0.1248702
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.0699301   0.0457690   0.0940911
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0191476          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2866521   0.2451477   0.3281565
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4961686   0.4532361   0.5391011
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1814607   0.1711228   0.1917985
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1157168   0.0896385   0.1417950
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1553692          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0783373          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level      estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               Female             1.0000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA                          Male                 Female             1.0345515   0.3927774    2.724945
Birth       ki1101329-Keneba           GAMBIA                         Female               Female             1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba           GAMBIA                         Male                 Female             0.7467310   0.3615816    1.542134
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             0.9890988   0.8231077    1.188564
Birth       ki1135781-COHORTS          INDIA                          Female               Female             1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          Male                 Female             1.1050242   0.8436171    1.447432
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               Female             1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Male                 Female             1.3785474   0.7657469    2.481751
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             1.0000000          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             1.0020675          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             1.0000000          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.9310345          NA          NA
3 months    ki0047075b-MAL-ED          PERU                           Female               Female             1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          PERU                           Male                 Female             2.5961538   0.9673288    6.967657
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             1.1851852   0.4088045    3.436029
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             2.0446927   1.0206804    4.096060
3 months    ki1000108-IRC              INDIA                          Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1000108-IRC              INDIA                          Male                 Female             1.4311111   0.7454539    2.747425
3 months    ki1000109-EE               PAKISTAN                       Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1000109-EE               PAKISTAN                       Male                 Female             1.3509278   1.0016064    1.822079
3 months    ki1000109-ResPak           PAKISTAN                       Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1000109-ResPak           PAKISTAN                       Male                 Female             1.7275542   1.0471575    2.850042
3 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female             1.0000000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             1.4928013          NA          NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female             1.4651163   0.5286082    4.060787
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             1.3749042   0.6970951    2.711770
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             1.4026337   0.7139163    2.755759
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female             2.1139033   0.9157834    4.879524
3 months    ki1101329-Keneba           GAMBIA                         Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1101329-Keneba           GAMBIA                         Male                 Female             1.7315789   1.0736358    2.792721
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female             1.9769120   0.8177188    4.779370
3 months    ki1114097-CMIN             BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1114097-CMIN             BANGLADESH                     Male                 Female             1.0225049   0.5360786    1.950304
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female             0.6490402   0.2554621    1.648985
3 months    ki1119695-PROBIT           BELARUS                        Female               Female             1.0000000          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        Male                 Female            10.7494206          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             1.5582106   1.3129836    1.849239
3 months    ki1135781-COHORTS          GUATEMALA                      Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female             1.1742504   0.6645532    2.074874
3 months    ki1135781-COHORTS          INDIA                          Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          INDIA                          Male                 Female             1.4828523   1.1581453    1.898597
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female             1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female             1.5474522   0.9694099    2.470171
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             1.3806746          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             1.0000000          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             1.9047619          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             2.0327869   1.1055630    3.737664
6 months    ki1000108-IRC              INDIA                          Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          Male                 Female             1.1573661   0.5669775    2.362521
6 months    ki1000109-EE               PAKISTAN                       Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       Male                 Female             1.1859649   0.8335417    1.687393
6 months    ki1000109-ResPak           PAKISTAN                       Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       Male                 Female             1.7306452   0.9791926    3.058778
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female             1.0000000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             1.7736486          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female             1.5331010   0.6017747    3.905779
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             1.2585616   0.6536222    2.423384
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             1.9228045   0.8250949    4.480912
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female             1.6758563   0.6623364    4.240284
6 months    ki1101329-Keneba           GAMBIA                         Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         Male                 Female             1.6881262   1.0430949    2.732033
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female             2.9941291   1.3033526    6.878268
6 months    ki1114097-CMIN             BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1114097-CMIN             BANGLADESH                     Male                 Female             1.3927007   0.6699697    2.895079
6 months    ki1119695-PROBIT           BELARUS                        Female               Female             1.0000000          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        Male                 Female             6.0242915          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             1.7578943   1.4153618    2.183323
6 months    ki1135781-COHORTS          GUATEMALA                      Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female             1.5409429   0.9870449    2.405671
6 months    ki1135781-COHORTS          INDIA                          Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          Male                 Female             1.5464764   1.2350118    1.936491
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female             1.8442900   1.2916635    2.633353
6 months    ki1148112-LCNI-5           MALAWI                         Female               Female             1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5           MALAWI                         Male                 Female             3.4457041   2.0072916    5.914874
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             1.7628922          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             1.0000000          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             1.3280714          NA          NA
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             1.0000000   1.0000000    1.000000
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             2.6250000   1.2089987    5.699448
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             2.3571429   1.3047826    4.258274
9 months    ki1000108-IRC              INDIA                          Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1000108-IRC              INDIA                          Male                 Female             1.0348214   0.5407762    1.980219
9 months    ki1000109-EE               PAKISTAN                       Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1000109-EE               PAKISTAN                       Male                 Female             1.0635769   0.7516206    1.505009
9 months    ki1000109-ResPak           PAKISTAN                       Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1000109-ResPak           PAKISTAN                       Male                 Female             1.3598901   0.7132528    2.592771
9 months    ki1000304b-SAS-CompFeed    INDIA                          Female               Female             1.0000000          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             1.4369869          NA          NA
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female             1.0614251   0.4894372    2.301875
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             1.8829510   1.0261102    3.455286
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             3.6340692   1.3807771    9.564512
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             1.8517241   0.8665548    3.956913
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female             3.9027624   1.7133039    8.890165
9 months    ki1101329-Keneba           GAMBIA                         Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1101329-Keneba           GAMBIA                         Male                 Female             1.7066918   1.1392437    2.556781
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female             2.9413043   1.3620845    6.351494
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female             1.0000000          NA          NA
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female             2.5296537          NA          NA
9 months    ki1113344-GMS-Nepal        NEPAL                          Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1113344-GMS-Nepal        NEPAL                          Male                 Female             2.6189927   1.2495437    5.489302
9 months    ki1114097-CMIN             BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1114097-CMIN             BANGLADESH                     Male                 Female             1.1250000   0.6292863    2.011207
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female             2.6666667   1.2535451    5.672801
9 months    ki1114097-CMIN             PERU                           Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1114097-CMIN             PERU                           Male                 Female             0.8656716   0.2528862    2.963338
9 months    ki1119695-PROBIT           BELARUS                        Female               Female             1.0000000          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        Male                 Female             8.9308776          NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             2.1701845   1.7509314    2.689826
9 months    ki1135781-COHORTS          GUATEMALA                      Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          GUATEMALA                      Male                 Female             1.5226289   1.0922841    2.122524
9 months    ki1135781-COHORTS          INDIA                          Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          INDIA                          Male                 Female             1.5560296   1.2926617    1.873056
9 months    ki1135781-COHORTS          PHILIPPINES                    Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          PHILIPPINES                    Male                 Female             1.9870022   1.4825241    2.663146
9 months    ki1148112-LCNI-5           MALAWI                         Female               Female             1.0000000   1.0000000    1.000000
9 months    ki1148112-LCNI-5           MALAWI                         Male                 Female             2.3149252   1.2618452    4.246859
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             1.0000000          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             1.2064092          NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             2.4626085   0.8939364    6.783973
12 months   ki0047075b-MAL-ED          INDIA                          Female               Female             1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          INDIA                          Male                 Female             2.3428571   0.9089592    6.038752
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             1.6007326   0.8666305    2.956675
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             1.9857533   1.3216675    2.983516
12 months   ki1000108-IRC              INDIA                          Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1000108-IRC              INDIA                          Male                 Female             1.1607143   0.6028139    2.234948
12 months   ki1000109-EE               PAKISTAN                       Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1000109-EE               PAKISTAN                       Male                 Female             0.8602654   0.6421156    1.152529
12 months   ki1000109-ResPak           PAKISTAN                       Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1000109-ResPak           PAKISTAN                       Male                 Female             1.9780220   0.8502269    4.601796
12 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female             1.0000000          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             1.3127729          NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female             1.1846690   0.7506043    1.869748
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             1.1842105   0.6858147    2.044801
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             1.4408946   0.7513171    2.763383
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             1.3144955   0.7219074    2.393518
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female             1.7635868   0.8792766    3.537270
12 months   ki1101329-Keneba           GAMBIA                         Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1101329-Keneba           GAMBIA                         Male                 Female             1.4050603   0.9974847    1.979173
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Male                 Female             3.1597222   1.5574463    6.410394
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female             1.4324138   0.8368087    2.451945
12 months   ki1114097-CMIN             BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1114097-CMIN             BANGLADESH                     Male                 Female             1.1070560   0.6414801    1.910539
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female             1.0061431   0.5476069    1.848633
12 months   ki1114097-CMIN             PERU                           Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1114097-CMIN             PERU                           Male                 Female             1.1040000   0.4914588    2.479996
12 months   ki1119695-PROBIT           BELARUS                        Female               Female             1.0000000          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        Male                 Female             4.4634092          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             2.1481197   1.7744041    2.600545
12 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female             1.1448970   0.9036902    1.450485
12 months   ki1135781-COHORTS          INDIA                          Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          INDIA                          Male                 Female             1.2864401   1.1008528    1.503315
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female             1.6158850   1.3143179    1.986646
12 months   ki1148112-LCNI-5           MALAWI                         Female               Female             1.0000000   1.0000000    1.000000
12 months   ki1148112-LCNI-5           MALAWI                         Male                 Female             3.0173234   1.7797214    5.115543
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             1.5848585          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             1.0000000          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             1.2719639          NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             1.8682235   0.9385534    3.718764
18 months   ki0047075b-MAL-ED          INDIA                          Female               Female             1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          INDIA                          Male                 Female             2.5771429   1.2769417    5.201228
18 months   ki0047075b-MAL-ED          PERU                           Female               Female             1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          PERU                           Male                 Female             1.9476584   0.7752209    4.893280
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             2.2314050   1.0073842    4.942671
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             1.7757143   1.1708619    2.693026
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             1.4299517   1.0357299    1.974223
18 months   ki1000108-IRC              INDIA                          Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1000108-IRC              INDIA                          Male                 Female             1.0546003   0.5511606    2.017891
18 months   ki1000109-EE               PAKISTAN                       Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1000109-EE               PAKISTAN                       Male                 Female             0.9776603   0.7887931    1.211749
18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               Female             1.0000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          Male                 Female             1.4313578          NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Male                 Female             1.1900000   0.7346267    1.927646
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             1.0695225   0.7554689    1.514131
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             1.2695993   0.7707921    2.091203
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             1.1210191   0.6241198    2.013530
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female             4.5072712   2.0124735   10.094788
18 months   ki1101329-Keneba           GAMBIA                         Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1101329-Keneba           GAMBIA                         Male                 Female             1.8036050   1.3297727    2.446276
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               Female             1.0000000          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Male                 Female             1.3383609          NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female             1.1669146   0.7870048    1.730218
18 months   ki1114097-CMIN             BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1114097-CMIN             BANGLADESH                     Male                 Female             0.9480100   0.6302927    1.425882
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female             1.1654608   0.7525209    1.804998
18 months   ki1114097-CMIN             PERU                           Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1114097-CMIN             PERU                           Male                 Female             1.0921875   0.5630847    2.118462
18 months   ki1119695-PROBIT           BELARUS                        Female               Female             1.0000000          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        Male                 Female             3.2452316          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             1.7015802   1.3799969    2.098103
18 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female             1.0106639   0.8350691    1.223182
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female             1.2505388   1.0897644    1.435032
18 months   ki1148112-LCNI-5           MALAWI                         Female               Female             1.0000000   1.0000000    1.000000
18 months   ki1148112-LCNI-5           MALAWI                         Male                 Female             2.1974667   1.4692757    3.286558
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             1.0000000          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             1.2004068          NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Male                 Female             1.3131313   0.6317544    2.729405
24 months   ki0047075b-MAL-ED          INDIA                          Female               Female             1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Male                 Female             2.0914286   1.0086172    4.336703
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               Female             1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Male                 Female             1.3409090   0.6417466    2.801786
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               Female             1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male                 Female             1.2759259   0.8601761    1.892621
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Male                 Female             1.5102041   1.1202028    2.035985
24 months   ki1000108-IRC              INDIA                          Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          Male                 Female             1.5927934   0.8601118    2.949606
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Male                 Female             0.9689922   0.6753373    1.390336
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Male                 Female             1.3481605   0.7807438    2.327955
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Male                 Female             0.8619975   0.4532586    1.639328
24 months   ki1101329-Keneba           GAMBIA                         Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         Male                 Female             1.2034461   0.8696998    1.665267
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Male                 Female             1.0949248   0.6590517    1.819069
24 months   ki1114097-CMIN             BANGLADESH                     Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     Male                 Female             1.0766046   0.7135702    1.624335
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Male                 Female             1.0874000   0.6577158    1.797796
24 months   ki1114097-CMIN             PERU                           Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1114097-CMIN             PERU                           Male                 Female             1.7304348   0.8290479    3.611859
24 months   ki1119695-PROBIT           BELARUS                        Female               Female             1.0000000          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        Male                 Female             3.2414586          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Male                 Female             2.1349190   1.5866639    2.872618
24 months   ki1135781-COHORTS          GUATEMALA                      Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Male                 Female             0.9335433   0.7853371    1.109719
24 months   ki1135781-COHORTS          INDIA                          Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          Male                 Female             1.0947349   0.9762946    1.227544
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Male                 Female             1.0497280   0.9244950    1.191925
24 months   ki1148112-LCNI-5           MALAWI                         Female               Female             1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         Male                 Female             1.9734554   1.2239819    3.181849
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               Female             1.0000000          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Male                 Female             1.1918810          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               Female             1.0000000          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Male                 Female             0.8321332          NA          NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.0007747   -0.0212710   0.0228204
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.0028613   -0.0099830   0.0042605
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0001793   -0.0031849   0.0028263
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0016031   -0.0027197   0.0059260
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0025209   -0.0020312   0.0070730
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0001179           NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0029762           NA          NA
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.0316915    0.0013381   0.0620448
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0043061   -0.0226520   0.0312643
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0310509    0.0015809   0.0605209
3 months    ki1000108-IRC              INDIA                          Female               NA                 0.0170235   -0.0131618   0.0472088
3 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0497428    0.0009584   0.0985273
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0583127    0.0067371   0.1098883
3 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0152239           NA          NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0229095   -0.0390507   0.0848697
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0095676   -0.0105612   0.0296964
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0074918   -0.0074221   0.0224058
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0039084   -0.0003520   0.0081688
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0090672    0.0013669   0.0167675
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0129815   -0.0032586   0.0292215
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0016335   -0.0456868   0.0489538
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.0074658   -0.0233989   0.0084674
3 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0067542           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0127038    0.0078703   0.0175373
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0078102   -0.0197036   0.0353239
3 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0073022    0.0027838   0.0118206
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0057835   -0.0002814   0.0118484
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0134441           NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0158333           NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0385523    0.0062848   0.0708199
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0056793   -0.0218167   0.0331753
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0219189   -0.0232039   0.0670418
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0520989   -0.0000828   0.1042806
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0265323           NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0289773   -0.0357351   0.0936897
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0080341   -0.0145656   0.0306337
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0100684   -0.0027617   0.0228985
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0023852   -0.0018425   0.0066128
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0087809    0.0008737   0.0166880
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0445494    0.0124061   0.0766926
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0208867   -0.0240016   0.0657750
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0134921           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0116945    0.0073021   0.0160869
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0348020   -0.0000952   0.0696993
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0100447    0.0049557   0.0151338
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0150454    0.0065926   0.0234982
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0465293    0.0276959   0.0653627
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0183629           NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0076705           NA          NA
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0546218    0.0129763   0.0962674
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0519126    0.0175912   0.0862340
9 months    ki1000108-IRC              INDIA                          Female               NA                 0.0015709   -0.0281596   0.0313013
9 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0081662   -0.0377820   0.0541144
9 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0250850   -0.0267561   0.0769260
9 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0240871           NA          NA
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0061275   -0.0737300   0.0859849
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0286716    0.0024138   0.0549293
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0239612    0.0077477   0.0401747
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0117271   -0.0025347   0.0259889
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0116474    0.0051916   0.0181032
9 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.0126205    0.0032722   0.0219687
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0610098    0.0195192   0.1025004
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0246002           NA          NA
9 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0291697    0.0082090   0.0501305
9 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0108844   -0.0422999   0.0640686
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0173210    0.0045625   0.0300796
9 months    ki1114097-CMIN             PERU                           Female               NA                -0.0012414   -0.0118767   0.0093939
9 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.0089005           NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0177043    0.0129295   0.0224792
9 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0551908    0.0128285   0.0975530
9 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.0167745    0.0098783   0.0236707
9 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0247266    0.0146118   0.0348413
9 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0282299    0.0085984   0.0478615
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0057432           NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0305885   -0.0026210   0.0637980
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0301669   -0.0032340   0.0635678
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0373661   -0.0105302   0.0852625
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0741921    0.0316033   0.1167809
12 months   ki1000108-IRC              INDIA                          Female               NA                 0.0068208   -0.0228983   0.0365398
12 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0259345   -0.0763014   0.0244323
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.0407789   -0.0072009   0.0887588
12 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0224442           NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0338875   -0.0578944   0.1256693
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0088708   -0.0195401   0.0372817
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0112195   -0.0084949   0.0309339
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0077943   -0.0092583   0.0248469
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0065966   -0.0013382   0.0145313
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0113953    0.0000516   0.0227390
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.0884151    0.0371008   0.1397293
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0167710   -0.0079642   0.0415061
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0103896   -0.0449385   0.0657177
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0001970   -0.0193650   0.0197589
12 months   ki1114097-CMIN             PERU                           Female               NA                 0.0020377   -0.0145555   0.0186308
12 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0050152           NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0236788    0.0178628   0.0294949
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0244112   -0.0180306   0.0668530
12 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0140904    0.0054509   0.0227298
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0325852    0.0189270   0.0462435
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0534010    0.0293270   0.0774749
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0259057           NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0095438           NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0420572   -0.0033775   0.0874919
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0590501    0.0159595   0.1021406
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.0306841   -0.0095304   0.0708987
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0412172    0.0018623   0.0805720
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0854277    0.0252597   0.1455957
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0521497    0.0056493   0.0986502
18 months   ki1000108-IRC              INDIA                          Female               NA                 0.0024289   -0.0271414   0.0319992
18 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0056146   -0.0589654   0.0477361
18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.0404360           NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0323129   -0.0583088   0.1229347
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0078622   -0.0326838   0.0484082
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0126948   -0.0136347   0.0390244
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0037461   -0.0154561   0.0229483
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0262025    0.0137039   0.0387012
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0257185    0.0127827   0.0386542
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0211026           NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0122234   -0.0188482   0.0432950
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0085617   -0.0742278   0.0571044
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0073433   -0.0136218   0.0283084
18 months   ki1114097-CMIN             PERU                           Female               NA                 0.0031070   -0.0201778   0.0263918
18 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0135836           NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0417133    0.0251237   0.0583030
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0027347   -0.0464540   0.0519233
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0291030    0.0113541   0.0468519
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0488558    0.0245469   0.0731648
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0107053           NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.0168723   -0.0281300   0.0618745
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.0413808    0.0006404   0.0821212
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.0160234   -0.0239827   0.0560294
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0394110   -0.0239067   0.1027288
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.0672043    0.0193335   0.1150751
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.0245688   -0.0068646   0.0560022
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0037296   -0.0465369   0.0390777
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.0129796   -0.0105130   0.0364721
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0049835   -0.0265120   0.0165449
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0076441   -0.0056803   0.0209686
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0052121   -0.0238630   0.0342873
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0117610   -0.0533975   0.0769194
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0042303   -0.0211297   0.0295902
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.0196788   -0.0058258   0.0451834
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.0098236           NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.0918955    0.0552675   0.1285235
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0180015   -0.0633004   0.0272975
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0085727   -0.0022430   0.0193883
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0071882   -0.0115999   0.0259763
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.0374855    0.0116901   0.0632809
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0139502           NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0069340           NA          NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Female               NA                 0.0187861   -0.6918250   0.4309218
Birth       ki1101329-Keneba           GAMBIA                         Female               NA                -0.1520419   -0.5947466   0.1677672
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                -0.0056232   -0.1044369   0.0843497
Birth       ki1135781-COHORTS          INDIA                          Female               NA                 0.0516736   -0.0982336   0.1811187
Birth       ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1671471   -0.1912679   0.4177263
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0010486           NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0370370           NA          NA
3 months    ki0047075b-MAL-ED          PERU                           Female               NA                 0.4611111   -0.1318281   0.7434228
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0841346   -0.6247552   0.4837318
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3406193   -0.0492668   0.5856317
3 months    ki1000108-IRC              INDIA                          Female               NA                 0.1924603   -0.2254016   0.4678313
3 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.1533057   -0.0108504   0.2908038
3 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.2756598   -0.0067763   0.4788627
3 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.2090750           NA          NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.1709402   -0.4373532   0.5218015
3 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1652585   -0.2601286   0.4470459
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1652744   -0.2316718   0.4342918
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.3583202   -0.1335454   0.6367565
3 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.2757937    0.0104108   0.4700075
3 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.3369277   -0.2111924   0.6369983
3 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0126722   -0.4319443   0.3192359
3 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                -0.2102865   -0.7400900   0.1582083
3 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.8245198           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2220260    0.1348411   0.3004249
3 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0843141   -0.2654738   0.3374176
3 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.1996991    0.0686583   0.3123023
3 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.2246959   -0.0435617   0.4239952
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.1613949           NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.2968750           NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3387097    0.0060127   0.5600498
6 months    ki1000108-IRC              INDIA                          Female               NA                 0.0797060   -0.3983647   0.3943347
6 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0867430   -0.1101822   0.2487375
6 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.2782555   -0.0521068   0.5048838
6 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.2947233           NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.1854545   -0.3437931   0.5062601
6 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.1232653   -0.2991140   0.4083170
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.3129954   -0.1934420   0.6045260
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2547095   -0.3396652   0.5853756
6 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.2620461   -0.0058231   0.4585768
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.4933430    0.0593408   0.7271049
6 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.1812668   -0.3110833   0.4887251
6 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.7083333           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2803640    0.1713436   0.3750414
6 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2242798   -0.0317512   0.4167763
6 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.2215656    0.1035989   0.3240078
6 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.3086587    0.1207890   0.4563844
6 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.5498323    0.3147039   0.7042870
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.2782530           NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1376301           NA          NA
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.4482759    0.0299406   0.6862053
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.4042553    0.0957318   0.6075150
9 months    ki1000108-IRC              INDIA                          Female               NA                 0.0188042   -0.4101343   0.3172671
9 months    ki1000109-EE               PAKISTAN                       Female               NA                 0.0314613   -0.1627372   0.1932252
9 months    ki1000109-ResPak           PAKISTAN                       Female               NA                 0.1603918   -0.2421161   0.4324670
9 months    ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1908075           NA          NA
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0260417   -0.3799140   0.3125696
9 months    ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.3230329   -0.0292933   0.5547581
9 months    ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.5798611    0.0876676   0.8065215
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.2956903   -0.1481090   0.5679399
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.5950170    0.2170902   0.7905107
9 months    ki1101329-Keneba           GAMBIA                         Female               NA                 0.2661886    0.0482235   0.4342378
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.4840108    0.0892956   0.7076496
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.4359386           NA          NA
9 months    ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.4592148    0.0618049   0.6882859
9 months    ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0666667   -0.3226715   0.3414003
9 months    ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.4545455    0.0547599   0.6852433
9 months    ki1114097-CMIN             PERU                           Female               NA                -0.0775862   -0.9937807   0.4175929
9 months    ki1119695-PROBIT           BELARUS                        Female               NA                 0.7928830           NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.3682408    0.2683213   0.4545150
9 months    ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.2178835    0.0334893   0.3670984
9 months    ki1135781-COHORTS          INDIA                          Female               NA                 0.2251394    0.1289999   0.3106672
9 months    ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.3421350    0.1947943   0.4625145
9 months    ki1148112-LCNI-5           MALAWI                         Female               NA                 0.3988230    0.0784998   0.6077984
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0908276           NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.4192422   -0.1900114   0.7165745
12 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.3821138   -0.1642244   0.6720707
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2332859   -0.1240603   0.4770294
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.3289482    0.1192903   0.4886959
12 months   ki1000108-IRC              INDIA                          Female               NA                 0.0814480   -0.3505487   0.3752629
12 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0771552   -0.2379634   0.0627645
12 months   ki1000109-ResPak           PAKISTAN                       Female               NA                 0.3439614   -0.1824281   0.6360145
12 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1474903           NA          NA
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0760402   -0.1551141   0.2609373
12 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0907407   -0.2505600   0.3388942
12 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1869919   -0.2106949   0.4540473
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.1342145   -0.2119506   0.3815057
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2801595   -0.1295891   0.5412754
12 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.1734225   -0.0158918   0.3274576
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Female               NA                 0.5077551    0.1631634   0.7104512
12 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.1834943   -0.1323953   0.4112643
12 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0571429   -0.3016978   0.3170614
12 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0031311   -0.3618228   0.2702812
12 months   ki1114097-CMIN             PERU                           Female               NA                 0.0532451   -0.4959208   0.4008073
12 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.6257710           NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.3575134    0.2696714   0.4347900
12 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0708455   -0.0608578   0.1861981
12 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.1296943    0.0469651   0.2052422
12 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.2448629    0.1374381   0.3389089
12 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.4989406    0.2555268   0.6627676
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.2277178           NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.1149755           NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.2998272   -0.0936440   0.5517353
18 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.4207317    0.0578559   0.6438424
18 months   ki0047075b-MAL-ED          PERU                           Female               NA                 0.3405941   -0.2582883   0.6544383
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.3820513   -0.0739301   0.6444269
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2785687    0.0567573   0.4482192
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.1765435    0.0039970   0.3191983
18 months   ki1000108-IRC              INDIA                          Female               NA                 0.0289322   -0.3955179   0.3242848
18 months   ki1000109-EE               PAKISTAN                       Female               NA                -0.0114919   -0.1268088   0.0920236
18 months   ki1000304b-SAS-CompFeed    INDIA                          Female               NA                 0.1901455           NA          NA
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Female               NA                 0.0733591   -0.1574446   0.2581387
18 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                 0.0360415   -0.1688986   0.2050499
18 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1229394   -0.1710559   0.3431268
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                 0.0565476   -0.2822194   0.3058111
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.6419624    0.3028371   0.8161249
18 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.2926426    0.1355277   0.4212023
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.1465192           NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0790923   -0.1451024   0.2593929
18 months   ki1114097-CMIN             BANGLADESH                     Female               NA                -0.0302855   -0.2908161   0.1776612
18 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0758472   -0.1675277   0.2684898
18 months   ki1114097-CMIN             PERU                           Female               NA                 0.0460398   -0.3692396   0.3353683
18 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.5188917           NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.2393617    0.1404442   0.3268959
18 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                 0.0055456   -0.0993801   0.1004571
18 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.1156695    0.0424281   0.1833089
18 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.3689634    0.1701049   0.5201716
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                 0.0885166           NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     Female               NA                 0.1375740   -0.3158776   0.4347661
24 months   ki0047075b-MAL-ED          INDIA                          Female               NA                 0.3354801   -0.0644825   0.5851630
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Female               NA                 0.1466753   -0.3059463   0.4424250
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1222313   -0.0975496   0.2980018
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Female               NA                 0.2032520    0.0452483   0.3351074
24 months   ki1000108-IRC              INDIA                          Female               NA                 0.2450890   -0.1333731   0.4971730
24 months   ki1017093-NIH-Birth        BANGLADESH                     Female               NA                -0.0172043   -0.2351267   0.1622684
24 months   ki1017093b-PROVIDE         BANGLADESH                     Female               NA                 0.1528410   -0.1707534   0.3869944
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Female               NA                -0.0731868   -0.4398645   0.2001123
24 months   ki1101329-Keneba           GAMBIA                         Female               NA                 0.0962491   -0.0873786   0.2488673
24 months   ki1113344-GMS-Nepal        NEPAL                          Female               NA                 0.0481640   -0.2619862   0.2820907
24 months   ki1114097-CMIN             BANGLADESH                     Female               NA                 0.0418552   -0.2204509   0.2477850
24 months   ki1114097-CMIN             GUINEA-BISSAU                  Female               NA                 0.0423797   -0.2483430   0.2653969
24 months   ki1114097-CMIN             PERU                           Female               NA                 0.2814070   -0.1743712   0.5602959
24 months   ki1119695-PROBIT           BELARUS                        Female               NA                 0.5130461           NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Female               NA                 0.3205821    0.1846750   0.4338348
24 months   ki1135781-COHORTS          GUATEMALA                      Female               NA                -0.0362809   -0.1317822   0.0511618
24 months   ki1135781-COHORTS          INDIA                          Female               NA                 0.0472425   -0.0142270   0.1049865
24 months   ki1135781-COHORTS          PHILIPPINES                    Female               NA                 0.0255082   -0.0434923   0.0899460
24 months   ki1148112-LCNI-5           MALAWI                         Female               NA                 0.3239415    0.0737703   0.5065424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Female               NA                 0.0897876           NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Female               NA                -0.0885145           NA          NA
