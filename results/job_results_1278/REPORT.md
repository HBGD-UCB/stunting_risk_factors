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

**Intervention Variable:** meducyrs

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q4      207     59     58      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q1      207     40     37      3
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q2      207     28     28      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q3      207     80     77      3
Birth       ki0047075b-MAL-ED          BRAZIL                         Q4      190     65     62      3
Birth       ki0047075b-MAL-ED          BRAZIL                         Q1      190     40     39      1
Birth       ki0047075b-MAL-ED          BRAZIL                         Q2      190     36     34      2
Birth       ki0047075b-MAL-ED          BRAZIL                         Q3      190     49     47      2
Birth       ki0047075b-MAL-ED          INDIA                          Q4      183     51     49      2
Birth       ki0047075b-MAL-ED          INDIA                          Q1      183     27     26      1
Birth       ki0047075b-MAL-ED          INDIA                          Q2      183     43     42      1
Birth       ki0047075b-MAL-ED          INDIA                          Q3      183     62     61      1
Birth       ki0047075b-MAL-ED          NEPAL                          Q4      160     13     13      0
Birth       ki0047075b-MAL-ED          NEPAL                          Q1      160     21     20      1
Birth       ki0047075b-MAL-ED          NEPAL                          Q2      160     47     45      2
Birth       ki0047075b-MAL-ED          NEPAL                          Q3      160     79     76      3
Birth       ki0047075b-MAL-ED          PERU                           Q4      286     87     83      4
Birth       ki0047075b-MAL-ED          PERU                           Q1      286     60     60      0
Birth       ki0047075b-MAL-ED          PERU                           Q2      286     67     65      2
Birth       ki0047075b-MAL-ED          PERU                           Q3      286     72     70      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      262     72     72      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      262     51     51      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      262     82     80      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      262     57     57      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      107      2      2      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      107     15     15      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      107     20     19      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      107     70     67      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q4       90      7      7      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q1       90     15     15      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q2       90     25     23      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q3       90     43     42      1
Birth       ki1000108-IRC              INDIA                          Q4      388     10     10      0
Birth       ki1000108-IRC              INDIA                          Q1      388    176    169      7
Birth       ki1000108-IRC              INDIA                          Q2      388     99     93      6
Birth       ki1000108-IRC              INDIA                          Q3      388    103    100      3
Birth       ki1000109-EE               PAKISTAN                       Q4        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       Q1        2      2      2      0
Birth       ki1000109-EE               PAKISTAN                       Q2        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       Q3        2      0      0      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q4       70      0      0      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q1       70     29     27      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q2       70     29     27      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q3       70     12     12      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q4       28      1      1      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q1       28     14     14      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q2       28     10     10      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q3       28      3      3      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q4       27      7      7      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q1       27      9      9      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q2       27      3      3      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q3       27      8      7      1
Birth       ki1119695-PROBIT           BELARUS                        Q4     6779   1047   1047      0
Birth       ki1119695-PROBIT           BELARUS                        Q1     6779      7      7      0
Birth       ki1119695-PROBIT           BELARUS                        Q2     6779    195    195      0
Birth       ki1119695-PROBIT           BELARUS                        Q3     6779   5530   5525      5
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q4    13810   8697   8444    253
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q1    13810    208    197     11
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q2    13810    420    399     21
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q3    13810   4485   4329    156
Birth       ki1135781-COHORTS          GUATEMALA                      Q4      401      0      0      0
Birth       ki1135781-COHORTS          GUATEMALA                      Q1      401    296    292      4
Birth       ki1135781-COHORTS          GUATEMALA                      Q2      401     90     90      0
Birth       ki1135781-COHORTS          GUATEMALA                      Q3      401     15     15      0
Birth       ki1135781-COHORTS          INDIA                          Q4     5216   1758   1727     31
Birth       ki1135781-COHORTS          INDIA                          Q1     5216   1756   1683     73
Birth       ki1135781-COHORTS          INDIA                          Q2     5216    879    856     23
Birth       ki1135781-COHORTS          INDIA                          Q3     5216    823    801     22
Birth       ki1135781-COHORTS          PHILIPPINES                    Q4     3050    933    924      9
Birth       ki1135781-COHORTS          PHILIPPINES                    Q1     3050    638    625     13
Birth       ki1135781-COHORTS          PHILIPPINES                    Q2     3050    262    257      5
Birth       ki1135781-COHORTS          PHILIPPINES                    Q3     3050   1217   1198     19
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q4     9729    333    320     13
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q1     9729   3913   3428    485
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q2     9729   2291   2008    283
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q3     9729   3192   2877    315
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q4      104      0      0      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q1      104     99     95      4
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q2      104      1      1      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q3      104      4      2      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      203     60     60      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      203     41     37      4
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      203     25     25      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      203     77     75      2
3 months    ki0047075b-MAL-ED          BRAZIL                         Q4      224     76     76      0
3 months    ki0047075b-MAL-ED          BRAZIL                         Q1      224     47     47      0
3 months    ki0047075b-MAL-ED          BRAZIL                         Q2      224     42     41      1
3 months    ki0047075b-MAL-ED          BRAZIL                         Q3      224     59     59      0
3 months    ki0047075b-MAL-ED          INDIA                          Q4      210     60     58      2
3 months    ki0047075b-MAL-ED          INDIA                          Q1      210     33     32      1
3 months    ki0047075b-MAL-ED          INDIA                          Q2      210     51     49      2
3 months    ki0047075b-MAL-ED          INDIA                          Q3      210     66     63      3
3 months    ki0047075b-MAL-ED          NEPAL                          Q4      221     20     20      0
3 months    ki0047075b-MAL-ED          NEPAL                          Q1      221     30     30      0
3 months    ki0047075b-MAL-ED          NEPAL                          Q2      221     64     63      1
3 months    ki0047075b-MAL-ED          NEPAL                          Q3      221    107    105      2
3 months    ki0047075b-MAL-ED          PERU                           Q4      290     87     81      6
3 months    ki0047075b-MAL-ED          PERU                           Q1      290     63     59      4
3 months    ki0047075b-MAL-ED          PERU                           Q2      290     66     63      3
3 months    ki0047075b-MAL-ED          PERU                           Q3      290     74     67      7
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      281     82     80      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      281     57     53      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      281     81     78      3
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      281     61     60      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      210      3      3      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      210     30     29      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      210     33     30      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      210    144    139      5
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4      362     22     20      2
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1      362    103     95      8
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2      362    104     92     12
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3      362    133    122     11
3 months    ki1000108-IRC              INDIA                          Q4      407     11     10      1
3 months    ki1000108-IRC              INDIA                          Q1      407    181    164     17
3 months    ki1000108-IRC              INDIA                          Q2      407    103     90     13
3 months    ki1000108-IRC              INDIA                          Q3      407    112    107      5
3 months    ki1000109-EE               PAKISTAN                       Q4      373      4      2      2
3 months    ki1000109-EE               PAKISTAN                       Q1      373    325    217    108
3 months    ki1000109-EE               PAKISTAN                       Q2      373     33     24      9
3 months    ki1000109-EE               PAKISTAN                       Q3      373     11     10      1
3 months    ki1000304b-SAS-CompFeed    INDIA                          Q4      412     10     10      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          Q1      412    191    173     18
3 months    ki1000304b-SAS-CompFeed    INDIA                          Q2      412    127    117     10
3 months    ki1000304b-SAS-CompFeed    INDIA                          Q3      412     84     82      2
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4       97      2      2      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1       97     79     68     11
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2       97     12     10      2
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3       97      4      4      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     Q4      570     69     69      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     Q1      570    236    217     19
3 months    ki1017093-NIH-Birth        BANGLADESH                     Q2      570    171    163      8
3 months    ki1017093-NIH-Birth        BANGLADESH                     Q3      570     94     88      6
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      645     12     11      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      645    256    253      3
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      645    243    238      5
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      645    134    133      1
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      728    243    237      6
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      728    180    176      4
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      728     52     46      6
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      728    253    236     17
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     2284      5      5      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     2284     71     70      1
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     2284   2114   2092     22
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     2284     94     94      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4       21     11      9      2
3 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1       21      4      4      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2       21      4      4      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3       21      2      2      0
3 months    ki1113344-GMS-Nepal        NEPAL                          Q4      568     68     67      1
3 months    ki1113344-GMS-Nepal        NEPAL                          Q1      568    401    381     20
3 months    ki1113344-GMS-Nepal        NEPAL                          Q2      568     46     46      0
3 months    ki1113344-GMS-Nepal        NEPAL                          Q3      568     53     52      1
3 months    ki1119695-PROBIT           BELARUS                        Q4     8057   1267   1263      4
3 months    ki1119695-PROBIT           BELARUS                        Q1     8057      6      6      0
3 months    ki1119695-PROBIT           BELARUS                        Q2     8057    247    243      4
3 months    ki1119695-PROBIT           BELARUS                        Q3     8057   6537   6479     58
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     9178   5748   5435    313
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     9178    150    138     12
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     9178    278    256     22
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     9178   3002   2823    179
3 months    ki1135781-COHORTS          GUATEMALA                      Q4      469      0      0      0
3 months    ki1135781-COHORTS          GUATEMALA                      Q1      469    344    308     36
3 months    ki1135781-COHORTS          GUATEMALA                      Q2      469    110    104      6
3 months    ki1135781-COHORTS          GUATEMALA                      Q3      469     15     14      1
3 months    ki1135781-COHORTS          INDIA                          Q4     5536   1886   1865     21
3 months    ki1135781-COHORTS          INDIA                          Q1     5536   1872   1766    106
3 months    ki1135781-COHORTS          INDIA                          Q2     5536    916    879     37
3 months    ki1135781-COHORTS          INDIA                          Q3     5536    862    829     33
3 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2875    869    853     16
3 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2875    616    592     24
3 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2875    248    236     12
3 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2875   1142   1120     22
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4    12288    700    682     18
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1    12288   4408   3965    443
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2    12288   2756   2478    278
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3    12288   4424   4138    286
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4      399      4      4      0
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1      399    371    353     18
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2      399      8      7      1
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3      399     16     16      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      196     57     57      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      196     39     34      5
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      196     25     25      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      196     75     73      2
6 months    ki0047075b-MAL-ED          BRAZIL                         Q4      208     71     71      0
6 months    ki0047075b-MAL-ED          BRAZIL                         Q1      208     45     45      0
6 months    ki0047075b-MAL-ED          BRAZIL                         Q2      208     38     38      0
6 months    ki0047075b-MAL-ED          BRAZIL                         Q3      208     54     54      0
6 months    ki0047075b-MAL-ED          INDIA                          Q4      208     59     58      1
6 months    ki0047075b-MAL-ED          INDIA                          Q1      208     33     32      1
6 months    ki0047075b-MAL-ED          INDIA                          Q2      208     50     48      2
6 months    ki0047075b-MAL-ED          INDIA                          Q3      208     66     63      3
6 months    ki0047075b-MAL-ED          NEPAL                          Q4      221     20     20      0
6 months    ki0047075b-MAL-ED          NEPAL                          Q1      221     30     30      0
6 months    ki0047075b-MAL-ED          NEPAL                          Q2      221     63     63      0
6 months    ki0047075b-MAL-ED          NEPAL                          Q3      221    108    107      1
6 months    ki0047075b-MAL-ED          PERU                           Q4      272     81     80      1
6 months    ki0047075b-MAL-ED          PERU                           Q1      272     59     56      3
6 months    ki0047075b-MAL-ED          PERU                           Q2      272     62     58      4
6 months    ki0047075b-MAL-ED          PERU                           Q3      272     70     66      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      254     70     68      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      254     54     51      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      254     73     72      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      254     57     57      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      203      3      3      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      203     30     29      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      203     32     31      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      203    138    132      6
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4      369     22     20      2
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1      369    105     89     16
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2      369    107     94     13
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3      369    135    124     11
6 months    ki1000108-IRC              INDIA                          Q4      407     11     10      1
6 months    ki1000108-IRC              INDIA                          Q1      407    181    165     16
6 months    ki1000108-IRC              INDIA                          Q2      407    103     96      7
6 months    ki1000108-IRC              INDIA                          Q3      407    112    107      5
6 months    ki1000109-EE               PAKISTAN                       Q4      369      4      4      0
6 months    ki1000109-EE               PAKISTAN                       Q1      369    321    237     84
6 months    ki1000109-EE               PAKISTAN                       Q2      369     33     27      6
6 months    ki1000109-EE               PAKISTAN                       Q3      369     11      9      2
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q4      411     11     10      1
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q1      411    185    162     23
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q2      411    133    123     10
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q3      411     82     79      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4       96      2      2      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1       96     78     66     12
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2       96     12      9      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3       96      4      4      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4      537     68     68      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1      537    221    198     23
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2      537    161    152      9
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3      537     87     84      3
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      583     12     12      0
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      583    230    223      7
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      583    218    212      6
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      583    123    122      1
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      715    240    232      8
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      715    175    169      6
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      715     54     52      2
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      715    246    239      7
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     2021      4      4      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     2021     65     64      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     2021   1870   1853     17
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     2021     82     81      1
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4      277    117    103     14
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1      277     45     40      5
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2      277     81     77      4
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3      277     34     32      2
6 months    ki1113344-GMS-Nepal        NEPAL                          Q4      560     67     67      0
6 months    ki1113344-GMS-Nepal        NEPAL                          Q1      560    399    379     20
6 months    ki1113344-GMS-Nepal        NEPAL                          Q2      560     42     42      0
6 months    ki1113344-GMS-Nepal        NEPAL                          Q3      560     52     52      0
6 months    ki1119695-PROBIT           BELARUS                        Q4     7665   1211   1197     14
6 months    ki1119695-PROBIT           BELARUS                        Q1     7665      7      7      0
6 months    ki1119695-PROBIT           BELARUS                        Q2     7665    234    222     12
6 months    ki1119695-PROBIT           BELARUS                        Q3     7665   6213   6093    120
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     8282   5222   5027    195
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     8282    130    128      2
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     8282    246    234     12
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     8282   2684   2547    137
6 months    ki1135781-COHORTS          GUATEMALA                      Q4      459      1      1      0
6 months    ki1135781-COHORTS          GUATEMALA                      Q1      459    339    285     54
6 months    ki1135781-COHORTS          GUATEMALA                      Q2      459    101     88     13
6 months    ki1135781-COHORTS          GUATEMALA                      Q3      459     18     15      3
6 months    ki1135781-COHORTS          INDIA                          Q4     5413   1894   1870     24
6 months    ki1135781-COHORTS          INDIA                          Q1     5413   1777   1638    139
6 months    ki1135781-COHORTS          INDIA                          Q2     5413    893    841     52
6 months    ki1135781-COHORTS          INDIA                          Q3     5413    849    813     36
6 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2708    802    781     21
6 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2708    594    553     41
6 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2708    232    217     15
6 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2708   1080   1025     55
6 months    ki1148112-LCNI-5           MALAWI                         Q4      813      1      1      0
6 months    ki1148112-LCNI-5           MALAWI                         Q1      813    574    525     49
6 months    ki1148112-LCNI-5           MALAWI                         Q2      813    216    202     14
6 months    ki1148112-LCNI-5           MALAWI                         Q3      813     22     20      2
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4     8309    514    506      8
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1     8309   2746   2519    227
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2     8309   1906   1764    142
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3     8309   3143   2972    171
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4      545      6      5      1
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1      545    511    475     36
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2      545     11     10      1
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3      545     17     17      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      191     55     55      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      191     39     35      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      191     25     24      1
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      191     72     69      3
9 months    ki0047075b-MAL-ED          BRAZIL                         Q4      198     68     68      0
9 months    ki0047075b-MAL-ED          BRAZIL                         Q1      198     41     41      0
9 months    ki0047075b-MAL-ED          BRAZIL                         Q2      198     36     36      0
9 months    ki0047075b-MAL-ED          BRAZIL                         Q3      198     53     53      0
9 months    ki0047075b-MAL-ED          INDIA                          Q4      204     57     56      1
9 months    ki0047075b-MAL-ED          INDIA                          Q1      204     32     32      0
9 months    ki0047075b-MAL-ED          INDIA                          Q2      204     49     47      2
9 months    ki0047075b-MAL-ED          INDIA                          Q3      204     66     62      4
9 months    ki0047075b-MAL-ED          NEPAL                          Q4      216     20     20      0
9 months    ki0047075b-MAL-ED          NEPAL                          Q1      216     30     30      0
9 months    ki0047075b-MAL-ED          NEPAL                          Q2      216     62     62      0
9 months    ki0047075b-MAL-ED          NEPAL                          Q3      216    104    104      0
9 months    ki0047075b-MAL-ED          PERU                           Q4      255     76     73      3
9 months    ki0047075b-MAL-ED          PERU                           Q1      255     58     55      3
9 months    ki0047075b-MAL-ED          PERU                           Q2      255     55     53      2
9 months    ki0047075b-MAL-ED          PERU                           Q3      255     66     62      4
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      250     72     70      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      250     52     49      3
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      250     70     68      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      250     56     54      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      196      3      3      0
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      196     30     25      5
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      196     32     29      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      196    131    119     12
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4      366     22     19      3
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1      366    105     90     15
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2      366    107     91     16
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3      366    132    119     13
9 months    ki1000108-IRC              INDIA                          Q4      407     11     10      1
9 months    ki1000108-IRC              INDIA                          Q1      407    181    163     18
9 months    ki1000108-IRC              INDIA                          Q2      407    103     96      7
9 months    ki1000108-IRC              INDIA                          Q3      407    112    104      8
9 months    ki1000109-EE               PAKISTAN                       Q4      363      4      4      0
9 months    ki1000109-EE               PAKISTAN                       Q1      363    315    226     89
9 months    ki1000109-EE               PAKISTAN                       Q2      363     33     30      3
9 months    ki1000109-EE               PAKISTAN                       Q3      363     11     10      1
9 months    ki1000304b-SAS-CompFeed    INDIA                          Q4      404      9      9      0
9 months    ki1000304b-SAS-CompFeed    INDIA                          Q1      404    182    154     28
9 months    ki1000304b-SAS-CompFeed    INDIA                          Q2      404    132    115     17
9 months    ki1000304b-SAS-CompFeed    INDIA                          Q3      404     81     75      6
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4       85      2      2      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1       85     67     52     15
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2       85     12      8      4
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3       85      4      3      1
9 months    ki1017093-NIH-Birth        BANGLADESH                     Q4      507     67     63      4
9 months    ki1017093-NIH-Birth        BANGLADESH                     Q1      507    205    183     22
9 months    ki1017093-NIH-Birth        BANGLADESH                     Q2      507    154    141     13
9 months    ki1017093-NIH-Birth        BANGLADESH                     Q3      507     81     75      6
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      605     11     11      0
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      605    238    227     11
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      605    230    220     10
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      605    126    122      4
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      706    241    230     11
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      706    170    162      8
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      706     54     51      3
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      706    241    235      6
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     1781      4      4      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     1781     52     50      2
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     1781   1654   1623     31
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     1781     71     70      1
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4      232     98     83     15
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1      232     37     29      8
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2      232     67     62      5
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3      232     30     28      2
9 months    ki1113344-GMS-Nepal        NEPAL                          Q4      549     65     63      2
9 months    ki1113344-GMS-Nepal        NEPAL                          Q1      549    392    361     31
9 months    ki1113344-GMS-Nepal        NEPAL                          Q2      549     42     42      0
9 months    ki1113344-GMS-Nepal        NEPAL                          Q3      549     50     48      2
9 months    ki1119695-PROBIT           BELARUS                        Q4     7483   1177   1175      2
9 months    ki1119695-PROBIT           BELARUS                        Q1     7483      5      5      0
9 months    ki1119695-PROBIT           BELARUS                        Q2     7483    222    212     10
9 months    ki1119695-PROBIT           BELARUS                        Q3     7483   6079   6007     72
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     7663   4822   4630    192
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     7663    126    117      9
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     7663    244    218     26
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     7663   2471   2329    142
9 months    ki1135781-COHORTS          GUATEMALA                      Q4      452      1      1      0
9 months    ki1135781-COHORTS          GUATEMALA                      Q1      452    329    244     85
9 months    ki1135781-COHORTS          GUATEMALA                      Q2      452    104     78     26
9 months    ki1135781-COHORTS          GUATEMALA                      Q3      452     18     14      4
9 months    ki1135781-COHORTS          INDIA                          Q4     4744   1649   1605     44
9 months    ki1135781-COHORTS          INDIA                          Q1     4744   1557   1335    222
9 months    ki1135781-COHORTS          INDIA                          Q2     4744    787    720     67
9 months    ki1135781-COHORTS          INDIA                          Q3     4744    751    708     43
9 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2712    807    780     27
9 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2712    593    530     63
9 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2712    233    210     23
9 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2712   1079    996     83
9 months    ki1148112-LCNI-5           MALAWI                         Q4      655      1      1      0
9 months    ki1148112-LCNI-5           MALAWI                         Q1      655    466    432     34
9 months    ki1148112-LCNI-5           MALAWI                         Q2      655    171    161     10
9 months    ki1148112-LCNI-5           MALAWI                         Q3      655     17     15      2
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4      558      6      5      1
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1      558    521    485     36
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2      558     12     11      1
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3      558     19     19      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      189     54     54      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      189     39     34      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      189     25     24      1
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      189     71     67      4
12 months   ki0047075b-MAL-ED          BRAZIL                         Q4      194     67     67      0
12 months   ki0047075b-MAL-ED          BRAZIL                         Q1      194     40     40      0
12 months   ki0047075b-MAL-ED          BRAZIL                         Q2      194     36     36      0
12 months   ki0047075b-MAL-ED          BRAZIL                         Q3      194     51     51      0
12 months   ki0047075b-MAL-ED          INDIA                          Q4      200     56     54      2
12 months   ki0047075b-MAL-ED          INDIA                          Q1      200     32     31      1
12 months   ki0047075b-MAL-ED          INDIA                          Q2      200     49     44      5
12 months   ki0047075b-MAL-ED          INDIA                          Q3      200     63     57      6
12 months   ki0047075b-MAL-ED          NEPAL                          Q4      216     20     20      0
12 months   ki0047075b-MAL-ED          NEPAL                          Q1      216     30     30      0
12 months   ki0047075b-MAL-ED          NEPAL                          Q2      216     62     61      1
12 months   ki0047075b-MAL-ED          NEPAL                          Q3      216    104    102      2
12 months   ki0047075b-MAL-ED          PERU                           Q4      245     73     69      4
12 months   ki0047075b-MAL-ED          PERU                           Q1      245     57     54      3
12 months   ki0047075b-MAL-ED          PERU                           Q2      245     52     49      3
12 months   ki0047075b-MAL-ED          PERU                           Q3      245     63     60      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      252     71     69      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      252     54     51      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      252     72     67      5
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      252     55     53      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      191      3      3      0
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      191     29     24      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      191     30     26      4
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      191    129    112     17
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4      368     22     17      5
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1      368    106     82     24
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2      368    107     82     25
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3      368    133    104     29
12 months   ki1000108-IRC              INDIA                          Q4      406     11     10      1
12 months   ki1000108-IRC              INDIA                          Q1      406    181    164     17
12 months   ki1000108-IRC              INDIA                          Q2      406    102     92     10
12 months   ki1000108-IRC              INDIA                          Q3      406    112    106      6
12 months   ki1000109-EE               PAKISTAN                       Q4      354      4      4      0
12 months   ki1000109-EE               PAKISTAN                       Q1      354    308    197    111
12 months   ki1000109-EE               PAKISTAN                       Q2      354     32     28      4
12 months   ki1000109-EE               PAKISTAN                       Q3      354     10      6      4
12 months   ki1000304b-SAS-CompFeed    INDIA                          Q4      414     10     10      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          Q1      414    184    149     35
12 months   ki1000304b-SAS-CompFeed    INDIA                          Q2      414    136    117     19
12 months   ki1000304b-SAS-CompFeed    INDIA                          Q3      414     84     75      9
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4       92      2      1      1
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1       92     74     43     31
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2       92     11      4      7
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3       92      5      3      2
12 months   ki1017093-NIH-Birth        BANGLADESH                     Q4      491     66     62      4
12 months   ki1017093-NIH-Birth        BANGLADESH                     Q1      491    202    174     28
12 months   ki1017093-NIH-Birth        BANGLADESH                     Q2      491    145    132     13
12 months   ki1017093-NIH-Birth        BANGLADESH                     Q3      491     78     75      3
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      600     11     11      0
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      600    231    212     19
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      600    232    220     12
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      600    126    121      5
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      706    240    226     14
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      706    174    165      9
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      706     53     50      3
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      706    239    224     15
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     1439      4      4      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     1439     42     41      1
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     1439   1336   1304     32
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     1439     57     57      0
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4      200     88     72     16
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1      200     31     23      8
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2      200     54     47      7
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3      200     27     23      4
12 months   ki1113344-GMS-Nepal        NEPAL                          Q4      555     65     65      0
12 months   ki1113344-GMS-Nepal        NEPAL                          Q1      555    394    347     47
12 months   ki1113344-GMS-Nepal        NEPAL                          Q2      555     44     43      1
12 months   ki1113344-GMS-Nepal        NEPAL                          Q3      555     52     49      3
12 months   ki1119695-PROBIT           BELARUS                        Q4     7736   1221   1218      3
12 months   ki1119695-PROBIT           BELARUS                        Q1     7736      5      5      0
12 months   ki1119695-PROBIT           BELARUS                        Q2     7736    237    232      5
12 months   ki1119695-PROBIT           BELARUS                        Q3     7736   6273   6219     54
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     6742   4202   3957    245
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     6742    119    105     14
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     6742    223    204     19
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     6742   2198   2029    169
12 months   ki1135781-COHORTS          GUATEMALA                      Q4      525      2      2      0
12 months   ki1135781-COHORTS          GUATEMALA                      Q1      525    383    253    130
12 months   ki1135781-COHORTS          GUATEMALA                      Q2      525    120     80     40
12 months   ki1135781-COHORTS          GUATEMALA                      Q3      525     20     10     10
12 months   ki1135781-COHORTS          INDIA                          Q4     4253   1521   1464     57
12 months   ki1135781-COHORTS          INDIA                          Q1     4253   1340   1043    297
12 months   ki1135781-COHORTS          INDIA                          Q2     4253    708    620     88
12 months   ki1135781-COHORTS          INDIA                          Q3     4253    684    627     57
12 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2585    773    715     58
12 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2585    564    460    104
12 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2585    219    184     35
12 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2585   1029    882    147
12 months   ki1148112-LCNI-5           MALAWI                         Q4      619      1      1      0
12 months   ki1148112-LCNI-5           MALAWI                         Q1      619    431    382     49
12 months   ki1148112-LCNI-5           MALAWI                         Q2      619    169    154     15
12 months   ki1148112-LCNI-5           MALAWI                         Q3      619     18     16      2
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4     7200    424    411     13
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1     7200   2412   2058    354
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2     7200   1628   1434    194
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3     7200   2736   2478    258
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4      552      6      5      1
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1      552    517    467     50
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2      552     11      8      3
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3      552     18     18      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      180     54     54      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      180     37     29      8
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      180     23     21      2
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      180     66     57      9
18 months   ki0047075b-MAL-ED          BRAZIL                         Q4      179     66     66      0
18 months   ki0047075b-MAL-ED          BRAZIL                         Q1      179     35     35      0
18 months   ki0047075b-MAL-ED          BRAZIL                         Q2      179     29     29      0
18 months   ki0047075b-MAL-ED          BRAZIL                         Q3      179     49     49      0
18 months   ki0047075b-MAL-ED          INDIA                          Q4      200     56     53      3
18 months   ki0047075b-MAL-ED          INDIA                          Q1      200     31     27      4
18 months   ki0047075b-MAL-ED          INDIA                          Q2      200     49     43      6
18 months   ki0047075b-MAL-ED          INDIA                          Q3      200     64     53     11
18 months   ki0047075b-MAL-ED          NEPAL                          Q4      214     19     19      0
18 months   ki0047075b-MAL-ED          NEPAL                          Q1      214     30     30      0
18 months   ki0047075b-MAL-ED          NEPAL                          Q2      214     61     58      3
18 months   ki0047075b-MAL-ED          NEPAL                          Q3      214    104    102      2
18 months   ki0047075b-MAL-ED          PERU                           Q4      221     69     64      5
18 months   ki0047075b-MAL-ED          PERU                           Q1      221     50     43      7
18 months   ki0047075b-MAL-ED          PERU                           Q2      221     50     45      5
18 months   ki0047075b-MAL-ED          PERU                           Q3      221     52     49      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      241     68     65      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      241     54     47      7
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      241     68     60      8
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      241     51     43      8
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      185      3      2      1
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      185     30     19     11
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      185     28     18     10
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      185    124     95     29
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4      369     20     16      4
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1      369    106     70     36
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2      369    108     76     32
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3      369    135     98     37
18 months   ki1000108-IRC              INDIA                          Q4      405     11     10      1
18 months   ki1000108-IRC              INDIA                          Q1      405    180    161     19
18 months   ki1000108-IRC              INDIA                          Q2      405    102     97      5
18 months   ki1000108-IRC              INDIA                          Q3      405    112    103      9
18 months   ki1000109-EE               PAKISTAN                       Q4      347      4      4      0
18 months   ki1000109-EE               PAKISTAN                       Q1      347    303    146    157
18 months   ki1000109-EE               PAKISTAN                       Q2      347     30     22      8
18 months   ki1000109-EE               PAKISTAN                       Q3      347     10      7      3
18 months   ki1000304b-SAS-CompFeed    INDIA                          Q4      395     11     11      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          Q1      395    172    120     52
18 months   ki1000304b-SAS-CompFeed    INDIA                          Q2      395    127    101     26
18 months   ki1000304b-SAS-CompFeed    INDIA                          Q3      395     85     79      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4       84      2      1      1
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1       84     66     37     29
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2       84     12      6      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3       84      4      3      1
18 months   ki1017093-NIH-Birth        BANGLADESH                     Q4      463     60     55      5
18 months   ki1017093-NIH-Birth        BANGLADESH                     Q1      463    190    135     55
18 months   ki1017093-NIH-Birth        BANGLADESH                     Q2      463    135    104     31
18 months   ki1017093-NIH-Birth        BANGLADESH                     Q3      463     78     68     10
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      552     10     10      0
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      552    213    182     31
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      552    213    193     20
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      552    116    110      6
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      634    219    211      8
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      634    149    134     15
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      634     46     43      3
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      634    220    204     16
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4      977      3      3      0
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1      977     29     27      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2      977    908    871     37
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3      977     37     36      1
18 months   ki1113344-GMS-Nepal        NEPAL                          Q4      547     65     61      4
18 months   ki1113344-GMS-Nepal        NEPAL                          Q1      547    388    324     64
18 months   ki1113344-GMS-Nepal        NEPAL                          Q2      547     41     37      4
18 months   ki1113344-GMS-Nepal        NEPAL                          Q3      547     53     40     13
18 months   ki1119695-PROBIT           BELARUS                        Q4      764    132    129      3
18 months   ki1119695-PROBIT           BELARUS                        Q1      764      0      0      0
18 months   ki1119695-PROBIT           BELARUS                        Q2      764     21     20      1
18 months   ki1119695-PROBIT           BELARUS                        Q3      764    611    595     16
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     1708    947    794    153
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     1708     38     28     10
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     1708     63     43     20
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     1708    660    546    114
18 months   ki1135781-COHORTS          GUATEMALA                      Q4      432      1      0      1
18 months   ki1135781-COHORTS          GUATEMALA                      Q1      432    322    162    160
18 months   ki1135781-COHORTS          GUATEMALA                      Q2      432     90     47     43
18 months   ki1135781-COHORTS          GUATEMALA                      Q3      432     19     10      9
18 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2492    748    642    106
18 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2492    546    354    192
18 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2492    215    151     64
18 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2492    983    718    265
18 months   ki1148112-LCNI-5           MALAWI                         Q4      717      1      1      0
18 months   ki1148112-LCNI-5           MALAWI                         Q1      717    503    429     74
18 months   ki1148112-LCNI-5           MALAWI                         Q2      717    192    174     18
18 months   ki1148112-LCNI-5           MALAWI                         Q3      717     21     20      1
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4      537      6      5      1
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1      537    504    440     64
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2      537     12      9      3
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3      537     15     12      3
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      171     51     49      2
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      171     36     32      4
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      171     23     21      2
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      171     61     54      7
24 months   ki0047075b-MAL-ED          BRAZIL                         Q4      168     62     62      0
24 months   ki0047075b-MAL-ED          BRAZIL                         Q1      168     34     34      0
24 months   ki0047075b-MAL-ED          BRAZIL                         Q2      168     25     24      1
24 months   ki0047075b-MAL-ED          BRAZIL                         Q3      168     47     47      0
24 months   ki0047075b-MAL-ED          INDIA                          Q4      199     55     53      2
24 months   ki0047075b-MAL-ED          INDIA                          Q1      199     31     28      3
24 months   ki0047075b-MAL-ED          INDIA                          Q2      199     49     43      6
24 months   ki0047075b-MAL-ED          INDIA                          Q3      199     64     55      9
24 months   ki0047075b-MAL-ED          NEPAL                          Q4      213     18     18      0
24 months   ki0047075b-MAL-ED          NEPAL                          Q1      213     30     30      0
24 months   ki0047075b-MAL-ED          NEPAL                          Q2      213     61     59      2
24 months   ki0047075b-MAL-ED          NEPAL                          Q3      213    104    101      3
24 months   ki0047075b-MAL-ED          PERU                           Q4      200     59     56      3
24 months   ki0047075b-MAL-ED          PERU                           Q1      200     45     40      5
24 months   ki0047075b-MAL-ED          PERU                           Q2      200     49     45      4
24 months   ki0047075b-MAL-ED          PERU                           Q3      200     47     44      3
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      238     67     63      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      238     53     47      6
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      238     67     56     11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      238     51     46      5
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      175      3      3      0
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      175     27     16     11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      175     27     16     11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      175    118     89     29
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4      372     22     16      6
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1      372    105     66     39
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2      372    109     76     33
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3      372    136     91     45
24 months   ki1000108-IRC              INDIA                          Q4      409     11     10      1
24 months   ki1000108-IRC              INDIA                          Q1      409    181    163     18
24 months   ki1000108-IRC              INDIA                          Q2      409    104     94     10
24 months   ki1000108-IRC              INDIA                          Q3      409    113    101     12
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4      429     59     52      7
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1      429    175    122     53
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2      429    124     96     28
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3      429     71     66      5
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      577     11     11      0
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      577    225    195     30
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      577    217    204     13
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      577    124    118      6
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      514    191    185      6
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      514    112    101     11
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      514     34     32      2
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      514    177    161     16
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4        6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1        6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2        6      5      4      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3        6      1      1      0
24 months   ki1113344-GMS-Nepal        NEPAL                          Q4      496     58     56      2
24 months   ki1113344-GMS-Nepal        NEPAL                          Q1      496    350    306     44
24 months   ki1113344-GMS-Nepal        NEPAL                          Q2      496     38     36      2
24 months   ki1113344-GMS-Nepal        NEPAL                          Q3      496     50     44      6
24 months   ki1119695-PROBIT           BELARUS                        Q4     1619    256    255      1
24 months   ki1119695-PROBIT           BELARUS                        Q1     1619      0      0      0
24 months   ki1119695-PROBIT           BELARUS                        Q2     1619     30     27      3
24 months   ki1119695-PROBIT           BELARUS                        Q3     1619   1333   1306     27
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4      457    256    188     68
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1      457     10      5      5
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2      457     27     17     10
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3      457    164    116     48
24 months   ki1135781-COHORTS          GUATEMALA                      Q4      513      3      3      0
24 months   ki1135781-COHORTS          GUATEMALA                      Q1      513    379    189    190
24 months   ki1135781-COHORTS          GUATEMALA                      Q2      513    110     56     54
24 months   ki1135781-COHORTS          GUATEMALA                      Q3      513     21     11     10
24 months   ki1135781-COHORTS          INDIA                          Q4     4201   1534   1443     91
24 months   ki1135781-COHORTS          INDIA                          Q1     4201   1274    820    454
24 months   ki1135781-COHORTS          INDIA                          Q2     4201    705    547    158
24 months   ki1135781-COHORTS          INDIA                          Q3     4201    688    570    118
24 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2445    730    625    105
24 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2445    534    320    214
24 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2445    210    139     71
24 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2445    971    672    299
24 months   ki1148112-LCNI-5           MALAWI                         Q4      572      1      1      0
24 months   ki1148112-LCNI-5           MALAWI                         Q1      572    397    345     52
24 months   ki1148112-LCNI-5           MALAWI                         Q2      572    156    144     12
24 months   ki1148112-LCNI-5           MALAWI                         Q3      572     18     17      1
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4     4287    217    208      9
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1     4287   1503   1210    293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2     4287    997    824    173
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3     4287   1570   1380    190
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4      544      5      5      0
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1      544    507    457     50
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2      544     13     10      3
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3      544     19     19      0


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
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 20 rows containing missing values (geom_errorbar).
```

![](/tmp/dcc9b758-93ca-4efc-8e8d-a36f49b0f4b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 43 rows containing missing values (geom_errorbar).
```

![](/tmp/dcc9b758-93ca-4efc-8e8d-a36f49b0f4b0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 5 rows containing missing values (geom_errorbar).
```

![](/tmp/dcc9b758-93ca-4efc-8e8d-a36f49b0f4b0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 5 rows containing missing values (geom_errorbar).
```

![](/tmp/dcc9b758-93ca-4efc-8e8d-a36f49b0f4b0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                0.0290905   0.0255583   0.0326227
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Q1                   NA                0.0528846   0.0224689   0.0833003
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Q2                   NA                0.0500000   0.0291558   0.0708442
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Q3                   NA                0.0347826   0.0294200   0.0401452
Birth       ki1135781-COHORTS          INDIA         Q4                   NA                0.0176337   0.0114807   0.0237867
Birth       ki1135781-COHORTS          INDIA         Q1                   NA                0.0415718   0.0322348   0.0509087
Birth       ki1135781-COHORTS          INDIA         Q2                   NA                0.0261661   0.0156123   0.0367199
Birth       ki1135781-COHORTS          INDIA         Q3                   NA                0.0267315   0.0157106   0.0377524
Birth       ki1135781-COHORTS          PHILIPPINES   Q4                   NA                0.0096463   0.0033736   0.0159190
Birth       ki1135781-COHORTS          PHILIPPINES   Q1                   NA                0.0203762   0.0094114   0.0313410
Birth       ki1135781-COHORTS          PHILIPPINES   Q2                   NA                0.0190840   0.0025141   0.0356538
Birth       ki1135781-COHORTS          PHILIPPINES   Q3                   NA                0.0156122   0.0086461   0.0225782
Birth       kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                0.0390390          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH    Q1                   NA                0.1239458          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH    Q2                   NA                0.1235268          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH    Q3                   NA                0.0986842          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                0.0544537   0.0485874   0.0603201
3 months    ki1126311-ZVITAMBO         ZIMBABWE      Q1                   NA                0.0800000   0.0365825   0.1234175
3 months    ki1126311-ZVITAMBO         ZIMBABWE      Q2                   NA                0.0791367   0.0474019   0.1108715
3 months    ki1126311-ZVITAMBO         ZIMBABWE      Q3                   NA                0.0596269   0.0511559   0.0680980
3 months    ki1135781-COHORTS          INDIA         Q4                   NA                0.0111347   0.0063985   0.0158708
3 months    ki1135781-COHORTS          INDIA         Q1                   NA                0.0566239   0.0461532   0.0670947
3 months    ki1135781-COHORTS          INDIA         Q2                   NA                0.0403930   0.0276422   0.0531439
3 months    ki1135781-COHORTS          INDIA         Q3                   NA                0.0382831   0.0254727   0.0510934
3 months    ki1135781-COHORTS          PHILIPPINES   Q4                   NA                0.0184120   0.0094722   0.0273518
3 months    ki1135781-COHORTS          PHILIPPINES   Q1                   NA                0.0389610   0.0236777   0.0542444
3 months    ki1135781-COHORTS          PHILIPPINES   Q2                   NA                0.0483871   0.0216759   0.0750983
3 months    ki1135781-COHORTS          PHILIPPINES   Q3                   NA                0.0192644   0.0112910   0.0272379
3 months    kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                0.0257143          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH    Q1                   NA                0.1004991          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH    Q2                   NA                0.1008708          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH    Q3                   NA                0.0646474          NA          NA
6 months    ki1135781-COHORTS          INDIA         Q4                   NA                0.0126716   0.0076338   0.0177094
6 months    ki1135781-COHORTS          INDIA         Q1                   NA                0.0782217   0.0657358   0.0907077
6 months    ki1135781-COHORTS          INDIA         Q2                   NA                0.0582307   0.0428700   0.0735914
6 months    ki1135781-COHORTS          INDIA         Q3                   NA                0.0424028   0.0288471   0.0559586
6 months    ki1135781-COHORTS          PHILIPPINES   Q4                   NA                0.0261845   0.0151310   0.0372381
6 months    ki1135781-COHORTS          PHILIPPINES   Q1                   NA                0.0690236   0.0486342   0.0894129
6 months    ki1135781-COHORTS          PHILIPPINES   Q2                   NA                0.0646552   0.0330053   0.0963050
6 months    ki1135781-COHORTS          PHILIPPINES   Q3                   NA                0.0509259   0.0378119   0.0640399
6 months    kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                0.0155642          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH    Q1                   NA                0.0826657          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH    Q2                   NA                0.0745016          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH    Q3                   NA                0.0544066          NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                0.0398175   0.0342983   0.0453367
9 months    ki1126311-ZVITAMBO         ZIMBABWE      Q1                   NA                0.0714286   0.0264573   0.1163998
9 months    ki1126311-ZVITAMBO         ZIMBABWE      Q2                   NA                0.1065574   0.0678399   0.1452748
9 months    ki1126311-ZVITAMBO         ZIMBABWE      Q3                   NA                0.0574666   0.0482897   0.0666435
9 months    ki1135781-COHORTS          INDIA         Q4                   NA                0.0266828   0.0189038   0.0344619
9 months    ki1135781-COHORTS          INDIA         Q1                   NA                0.1425819   0.1252128   0.1599510
9 months    ki1135781-COHORTS          INDIA         Q2                   NA                0.0851334   0.0656334   0.1046335
9 months    ki1135781-COHORTS          INDIA         Q3                   NA                0.0572570   0.0406388   0.0738752
9 months    ki1135781-COHORTS          PHILIPPINES   Q4                   NA                0.0334572   0.0210480   0.0458665
9 months    ki1135781-COHORTS          PHILIPPINES   Q1                   NA                0.1062395   0.0814336   0.1310453
9 months    ki1135781-COHORTS          PHILIPPINES   Q2                   NA                0.0987124   0.0604064   0.1370185
9 months    ki1135781-COHORTS          PHILIPPINES   Q3                   NA                0.0769231   0.0610206   0.0928256
12 months   ki1000108-CMC-V-BCS-2002   INDIA         Q4                   NA                0.2272727   0.0519192   0.4026262
12 months   ki1000108-CMC-V-BCS-2002   INDIA         Q1                   NA                0.2264151   0.1466353   0.3061949
12 months   ki1000108-CMC-V-BCS-2002   INDIA         Q2                   NA                0.2336449   0.1533588   0.3139309
12 months   ki1000108-CMC-V-BCS-2002   INDIA         Q3                   NA                0.2180451   0.1477739   0.2883163
12 months   ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                0.0583056   0.0512202   0.0653909
12 months   ki1126311-ZVITAMBO         ZIMBABWE      Q1                   NA                0.1176471   0.0597551   0.1755391
12 months   ki1126311-ZVITAMBO         ZIMBABWE      Q2                   NA                0.0852018   0.0485568   0.1218468
12 months   ki1126311-ZVITAMBO         ZIMBABWE      Q3                   NA                0.0768881   0.0657497   0.0880265
12 months   ki1135781-COHORTS          INDIA         Q4                   NA                0.0374753   0.0279295   0.0470212
12 months   ki1135781-COHORTS          INDIA         Q1                   NA                0.2216418   0.1994004   0.2438832
12 months   ki1135781-COHORTS          INDIA         Q2                   NA                0.1242938   0.0999893   0.1485983
12 months   ki1135781-COHORTS          INDIA         Q3                   NA                0.0833333   0.0626183   0.1040484
12 months   ki1135781-COHORTS          PHILIPPINES   Q4                   NA                0.0750323   0.0564573   0.0936074
12 months   ki1135781-COHORTS          PHILIPPINES   Q1                   NA                0.1843972   0.1523854   0.2164089
12 months   ki1135781-COHORTS          PHILIPPINES   Q2                   NA                0.1598174   0.1112763   0.2083584
12 months   ki1135781-COHORTS          PHILIPPINES   Q3                   NA                0.1428571   0.1214725   0.1642418
12 months   kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                0.0306604          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH    Q1                   NA                0.1467662          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH    Q2                   NA                0.1191646          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH    Q3                   NA                0.0942982          NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH    Q4                   NA                0.0833334   0.0133239   0.1533429
18 months   ki1017093-NIH-Birth        BANGLADESH    Q1                   NA                0.2894737   0.2249179   0.3540295
18 months   ki1017093-NIH-Birth        BANGLADESH    Q2                   NA                0.2296296   0.1586041   0.3006552
18 months   ki1017093-NIH-Birth        BANGLADESH    Q3                   NA                0.1282051   0.0539323   0.2024780
18 months   ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                0.1615628   0.1381148   0.1850109
18 months   ki1126311-ZVITAMBO         ZIMBABWE      Q1                   NA                0.2631579   0.1231093   0.4032065
18 months   ki1126311-ZVITAMBO         ZIMBABWE      Q2                   NA                0.3174603   0.2024826   0.4324380
18 months   ki1126311-ZVITAMBO         ZIMBABWE      Q3                   NA                0.1727273   0.1438798   0.2015748
18 months   ki1135781-COHORTS          PHILIPPINES   Q4                   NA                0.1417112   0.1167133   0.1667091
18 months   ki1135781-COHORTS          PHILIPPINES   Q1                   NA                0.3516484   0.3115895   0.3917072
18 months   ki1135781-COHORTS          PHILIPPINES   Q2                   NA                0.2976744   0.2365442   0.3588046
18 months   ki1135781-COHORTS          PHILIPPINES   Q3                   NA                0.2695829   0.2418376   0.2973283
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Q4                   NA                0.2727273   0.0863752   0.4590793
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Q1                   NA                0.3714286   0.2788836   0.4639736
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Q2                   NA                0.3027523   0.2163835   0.3891210
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Q3                   NA                0.3308824   0.2516958   0.4100689
24 months   ki1017093-NIH-Birth        BANGLADESH    Q4                   NA                0.1186441   0.0360350   0.2012531
24 months   ki1017093-NIH-Birth        BANGLADESH    Q1                   NA                0.3028571   0.2346993   0.3710150
24 months   ki1017093-NIH-Birth        BANGLADESH    Q2                   NA                0.2258065   0.1521286   0.2994843
24 months   ki1017093-NIH-Birth        BANGLADESH    Q3                   NA                0.0704225   0.0108393   0.1300058
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                0.2656250   0.2114627   0.3197873
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Q1                   NA                0.5000000   0.1897629   0.8102371
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Q2                   NA                0.3703704   0.1880217   0.5527190
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Q3                   NA                0.2926829   0.2229709   0.3623949
24 months   ki1135781-COHORTS          INDIA         Q4                   NA                0.0593220   0.0474994   0.0711447
24 months   ki1135781-COHORTS          INDIA         Q1                   NA                0.3563579   0.3300564   0.3826594
24 months   ki1135781-COHORTS          INDIA         Q2                   NA                0.2241135   0.1933285   0.2548984
24 months   ki1135781-COHORTS          INDIA         Q3                   NA                0.1715116   0.1433411   0.1996822
24 months   ki1135781-COHORTS          PHILIPPINES   Q4                   NA                0.1438356   0.1183739   0.1692973
24 months   ki1135781-COHORTS          PHILIPPINES   Q1                   NA                0.4007491   0.3591765   0.4423216
24 months   ki1135781-COHORTS          PHILIPPINES   Q2                   NA                0.3380952   0.2741005   0.4020900
24 months   ki1135781-COHORTS          PHILIPPINES   Q3                   NA                0.3079300   0.2788878   0.3369721
24 months   kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                0.0414747          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH    Q1                   NA                0.1949434          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH    Q2                   NA                0.1735206          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH    Q3                   NA                0.1210191          NA          NA


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0319334   0.0290009   0.0348659
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0285660   0.0240448   0.0330871
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1126529          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0573110   0.0525554   0.0620665
3 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0355853   0.0307049   0.0404657
3 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0257391   0.0199497   0.0315286
3 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0834147          NA          NA
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0463699   0.0407674   0.0519723
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0659526          NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0481535   0.0433597   0.0529472
9 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0792580   0.0715700   0.0869460
9 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0722714   0.0625243   0.0820185
12 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.2255435   0.1827844   0.2683026
12 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0663008   0.0603613   0.0722403
12 months   ki1135781-COHORTS          INDIA         NA                   NA                0.1173289   0.1076561   0.1270018
12 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1330754   0.1199794   0.1461715
12 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1137500          NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2181426   0.1804842   0.2558009
18 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1738876   0.1559078   0.1918674
18 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2516051   0.2345645   0.2686458
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.2866521   0.2451477   0.3281565
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.1954297   0.1834374   0.2074219
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817996   0.2639639   0.2996353
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1551201          NA          NA


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Q4                   Q4                1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Q1                   Q4                1.8179348   1.0099391   3.272363
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Q2                   Q4                1.7187747   1.1133845   2.653339
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Q3                   Q4                1.1956694   0.9826120   1.454924
Birth       ki1135781-COHORTS          INDIA         Q4                   Q4                1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA         Q1                   Q4                2.3575207   1.5568109   3.570057
Birth       ki1135781-COHORTS          INDIA         Q2                   Q4                1.4838709   0.8705132   2.529396
Birth       ki1135781-COHORTS          INDIA         Q3                   Q4                1.5159330   0.8832986   2.601672
Birth       ki1135781-COHORTS          PHILIPPINES   Q4                   Q4                1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   Q1                   Q4                2.1123302   0.9082292   4.912789
Birth       ki1135781-COHORTS          PHILIPPINES   Q2                   Q4                1.9783715   0.6686487   5.853528
Birth       ki1135781-COHORTS          PHILIPPINES   Q3                   Q4                1.6184607   0.7355353   3.561237
Birth       kiGH5241-JiVitA-3          BANGLADESH    Q4                   Q4                1.0000000          NA         NA
Birth       kiGH5241-JiVitA-3          BANGLADESH    Q1                   Q4                3.1749193          NA         NA
Birth       kiGH5241-JiVitA-3          BANGLADESH    Q2                   Q4                3.1641870          NA         NA
Birth       kiGH5241-JiVitA-3          BANGLADESH    Q3                   Q4                2.5278335          NA         NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE      Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE      Q1                   Q4                1.4691374   0.8448191   2.554825
3 months    ki1126311-ZVITAMBO         ZIMBABWE      Q2                   Q4                1.4532834   0.9594396   2.201319
3 months    ki1126311-ZVITAMBO         ZIMBABWE      Q3                   Q4                1.0950016   0.9161827   1.308722
3 months    ki1135781-COHORTS          INDIA         Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS          INDIA         Q1                   Q4                5.0853683   3.1981121   8.086324
3 months    ki1135781-COHORTS          INDIA         Q2                   Q4                3.6276773   2.1359340   6.161259
3 months    ki1135781-COHORTS          INDIA         Q3                   Q4                3.4381836   2.0011988   5.907013
3 months    ki1135781-COHORTS          PHILIPPINES   Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS          PHILIPPINES   Q1                   Q4                2.1160714   1.1335532   3.950197
3 months    ki1135781-COHORTS          PHILIPPINES   Q2                   Q4                2.6280241   1.2599244   5.481687
3 months    ki1135781-COHORTS          PHILIPPINES   Q3                   Q4                1.0463003   0.5528038   1.980349
3 months    kiGH5241-JiVitA-3          BANGLADESH    Q4                   Q4                1.0000000          NA         NA
3 months    kiGH5241-JiVitA-3          BANGLADESH    Q1                   Q4                3.9082980          NA         NA
3 months    kiGH5241-JiVitA-3          BANGLADESH    Q2                   Q4                3.9227544          NA         NA
3 months    kiGH5241-JiVitA-3          BANGLADESH    Q3                   Q4                2.5140647          NA         NA
6 months    ki1135781-COHORTS          INDIA         Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA         Q1                   Q4                6.1729976   4.0219529   9.474477
6 months    ki1135781-COHORTS          INDIA         Q2                   Q4                4.5953714   2.8517300   7.405132
6 months    ki1135781-COHORTS          INDIA         Q3                   Q4                3.3462898   2.0091109   5.573438
6 months    ki1135781-COHORTS          PHILIPPINES   Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Q1                   Q4                2.6360430   1.5746752   4.412797
6 months    ki1135781-COHORTS          PHILIPPINES   Q2                   Q4                2.4692118   1.2936932   4.712869
6 months    ki1135781-COHORTS          PHILIPPINES   Q3                   Q4                1.9448854   1.1861569   3.188937
6 months    kiGH5241-JiVitA-3          BANGLADESH    Q4                   Q4                1.0000000          NA         NA
6 months    kiGH5241-JiVitA-3          BANGLADESH    Q1                   Q4                5.3112699          NA         NA
6 months    kiGH5241-JiVitA-3          BANGLADESH    Q2                   Q4                4.7867252          NA         NA
6 months    kiGH5241-JiVitA-3          BANGLADESH    Q3                   Q4                3.4956245          NA         NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE      Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE      Q1                   Q4                1.7938988   0.9414972   3.418038
9 months    ki1126311-ZVITAMBO         ZIMBABWE      Q2                   Q4                2.6761441   1.8139141   3.948228
9 months    ki1126311-ZVITAMBO         ZIMBABWE      Q3                   Q4                1.4432500   1.1681707   1.783105
9 months    ki1135781-COHORTS          INDIA         Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1135781-COHORTS          INDIA         Q1                   Q4                5.3435803   3.8959233   7.329161
9 months    ki1135781-COHORTS          INDIA         Q2                   Q4                3.1905683   2.2021716   4.622585
9 months    ki1135781-COHORTS          INDIA         Q3                   Q4                2.1458359   1.4221213   3.237847
9 months    ki1135781-COHORTS          PHILIPPINES   Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1135781-COHORTS          PHILIPPINES   Q1                   Q4                3.1753794   2.0485920   4.921934
9 months    ki1135781-COHORTS          PHILIPPINES   Q2                   Q4                2.9504053   1.7248525   5.046746
9 months    ki1135781-COHORTS          PHILIPPINES   Q3                   Q4                2.2991453   1.5036780   3.515426
12 months   ki1000108-CMC-V-BCS-2002   INDIA         Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA         Q1                   Q4                0.9962264   0.4265661   2.326643
12 months   ki1000108-CMC-V-BCS-2002   INDIA         Q2                   Q4                1.0280374   0.4417708   2.392328
12 months   ki1000108-CMC-V-BCS-2002   INDIA         Q3                   Q4                0.9593985   0.4157766   2.213798
12 months   ki1126311-ZVITAMBO         ZIMBABWE      Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE      Q1                   Q4                2.0177671   1.2154648   3.349652
12 months   ki1126311-ZVITAMBO         ZIMBABWE      Q2                   Q4                1.4612977   0.9346251   2.284757
12 months   ki1126311-ZVITAMBO         ZIMBABWE      Q3                   Q4                1.3187090   1.0915161   1.593191
12 months   ki1135781-COHORTS          INDIA         Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS          INDIA         Q1                   Q4                5.9143362   4.4978655   7.776883
12 months   ki1135781-COHORTS          INDIA         Q2                   Q4                3.3166815   2.4057027   4.572625
12 months   ki1135781-COHORTS          INDIA         Q3                   Q4                2.2236842   1.5577611   3.174281
12 months   ki1135781-COHORTS          PHILIPPINES   Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS          PHILIPPINES   Q1                   Q4                2.4575691   1.8163135   3.325222
12 months   ki1135781-COHORTS          PHILIPPINES   Q2                   Q4                2.1299795   1.4394692   3.151726
12 months   ki1135781-COHORTS          PHILIPPINES   Q3                   Q4                1.9039409   1.4256483   2.542696
12 months   kiGH5241-JiVitA-3          BANGLADESH    Q4                   Q4                1.0000000          NA         NA
12 months   kiGH5241-JiVitA-3          BANGLADESH    Q1                   Q4                4.7868351          NA         NA
12 months   kiGH5241-JiVitA-3          BANGLADESH    Q2                   Q4                3.8865999          NA         NA
12 months   kiGH5241-JiVitA-3          BANGLADESH    Q3                   Q4                3.0755735          NA         NA
18 months   ki1017093-NIH-Birth        BANGLADESH    Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1017093-NIH-Birth        BANGLADESH    Q1                   Q4                3.4736829   1.4564556   8.284820
18 months   ki1017093-NIH-Birth        BANGLADESH    Q2                   Q4                2.7555545   1.1256665   6.745409
18 months   ki1017093-NIH-Birth        BANGLADESH    Q3                   Q4                1.5384609   0.5544860   4.268570
18 months   ki1126311-ZVITAMBO         ZIMBABWE      Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE      Q1                   Q4                1.6288270   0.9382307   2.827745
18 months   ki1126311-ZVITAMBO         ZIMBABWE      Q2                   Q4                1.9649341   1.3301374   2.902682
18 months   ki1126311-ZVITAMBO         ZIMBABWE      Q3                   Q4                1.0691028   0.8568939   1.333865
18 months   ki1135781-COHORTS          PHILIPPINES   Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1135781-COHORTS          PHILIPPINES   Q1                   Q4                2.4814431   2.0114465   3.061259
18 months   ki1135781-COHORTS          PHILIPPINES   Q2                   Q4                2.1005704   1.6023778   2.753655
18 months   ki1135781-COHORTS          PHILIPPINES   Q3                   Q4                1.9023398   1.5509314   2.333370
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Q1                   Q4                1.3619048   0.6580878   2.818445
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Q2                   Q4                1.1100917   0.5294005   2.327734
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Q3                   Q4                1.2132353   0.5881940   2.502473
24 months   ki1017093-NIH-Birth        BANGLADESH    Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Q1                   Q4                2.5526531   1.2280043   5.306201
24 months   ki1017093-NIH-Birth        BANGLADESH    Q2                   Q4                1.9032258   0.8821557   4.106155
24 months   ki1017093-NIH-Birth        BANGLADESH    Q3                   Q4                0.5935614   0.1984220   1.775585
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Q1                   Q4                1.8823529   0.9796133   3.616991
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Q2                   Q4                1.3943355   0.8183401   2.375750
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Q3                   Q4                1.1018651   0.8053025   1.507641
24 months   ki1135781-COHORTS          INDIA         Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA         Q1                   Q4                6.0071765   4.8570478   7.429651
24 months   ki1135781-COHORTS          INDIA         Q2                   Q4                3.7779129   2.9657285   4.812519
24 months   ki1135781-COHORTS          INDIA         Q3                   Q4                2.8911960   2.2331501   3.743149
24 months   ki1135781-COHORTS          PHILIPPINES   Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Q1                   Q4                2.7861602   2.2693380   3.420684
24 months   ki1135781-COHORTS          PHILIPPINES   Q2                   Q4                2.3505669   1.8139349   3.045955
24 months   ki1135781-COHORTS          PHILIPPINES   Q3                   Q4                2.1408465   1.7517663   2.616344
24 months   kiGH5241-JiVitA-3          BANGLADESH    Q4                   Q4                1.0000000          NA         NA
24 months   kiGH5241-JiVitA-3          BANGLADESH    Q1                   Q4                4.7003027          NA         NA
24 months   kiGH5241-JiVitA-3          BANGLADESH    Q2                   Q4                4.1837732          NA         NA
24 months   kiGH5241-JiVitA-3          BANGLADESH    Q3                   Q4                2.9179049          NA         NA


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                 0.0028429    0.0005273   0.0051585
Birth       ki1135781-COHORTS          INDIA         Q4                   NA                 0.0109323    0.0052069   0.0166577
Birth       ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.0054357   -0.0003944   0.0112657
Birth       kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                 0.0736138           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                 0.0028572   -0.0008742   0.0065887
3 months    ki1135781-COHORTS          INDIA         Q4                   NA                 0.0244506    0.0188859   0.0300153
3 months    ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.0073272   -0.0007428   0.0153972
3 months    kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                 0.0577004           NA          NA
6 months    ki1135781-COHORTS          INDIA         Q4                   NA                 0.0336983    0.0274527   0.0399438
6 months    ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.0225599    0.0118076   0.0333122
6 months    kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                 0.0503884           NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                 0.0083360    0.0044494   0.0122225
9 months    ki1135781-COHORTS          INDIA         Q4                   NA                 0.0525752    0.0437689   0.0613814
9 months    ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.0388141    0.0262701   0.0513582
12 months   ki1000108-CMC-V-BCS-2002   INDIA         Q4                   NA                -0.0017292   -0.1717313   0.1682728
12 months   ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                 0.0079952    0.0032096   0.0127808
12 months   ki1135781-COHORTS          INDIA         Q4                   NA                 0.0798536    0.0689215   0.0907857
12 months   ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.0580431    0.0404309   0.0756552
12 months   kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                 0.0830896           NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH    Q4                   NA                 0.1348092    0.0637518   0.2058666
18 months   ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                 0.0123248   -0.0039048   0.0285544
18 months   ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.1098939    0.0866530   0.1331348
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Q4                   NA                 0.0579179   -0.1234965   0.2393323
24 months   ki1017093-NIH-Birth        BANGLADESH    Q4                   NA                 0.0981391    0.0176960   0.1785823
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                 0.0210271   -0.0159805   0.0580346
24 months   ki1135781-COHORTS          INDIA         Q4                   NA                 0.1361076    0.1226350   0.1495802
24 months   ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.1379640    0.1138956   0.1620324
24 months   kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                 0.1136455           NA          NA


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                 0.0890257    0.0140197   0.1583257
Birth       ki1135781-COHORTS          INDIA         Q4                   NA                 0.3827030    0.1583041   0.5472764
Birth       ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.3604082   -0.1455470   0.6428975
Birth       kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                 0.6534572           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                 0.0498550   -0.0174116   0.1126742
3 months    ki1135781-COHORTS          INDIA         Q4                   NA                 0.6870986    0.5325302   0.7905592
3 months    ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.2846702   -0.0990048   0.5343999
3 months    kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                 0.6917296           NA          NA
6 months    ki1135781-COHORTS          INDIA         Q4                   NA                 0.7267277    0.6014349   0.8126335
6 months    ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.4628202    0.2095590   0.6349353
6 months    kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                 0.7640092           NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                 0.1731124    0.0902073   0.2484627
9 months    ki1135781-COHORTS          INDIA         Q4                   NA                 0.6633421    0.5576798   0.7437636
9 months    ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.5370609    0.3474446   0.6715795
12 months   ki1000108-CMC-V-BCS-2002   INDIA         Q4                   NA                -0.0076670   -1.1289869   0.5230629
12 months   ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                 0.1205903    0.0461369   0.1892323
12 months   ki1135781-COHORTS          INDIA         Q4                   NA                 0.6805959    0.5945877   0.7483575
12 months   ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.4361669    0.2944022   0.5494490
12 months   kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                 0.7304582           NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH    Q4                   NA                 0.6179867    0.1361772   0.8310600
18 months   ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                 0.0708777   -0.0271111   0.1595182
18 months   ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.4367713    0.3399096   0.5194195
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Q4                   NA                 0.1751663   -0.6039691   0.5758331
24 months   ki1017093-NIH-Birth        BANGLADESH    Q4                   NA                 0.4527064   -0.0658244   0.7189684
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Q4                   NA                 0.0733540   -0.0650466   0.1937697
24 months   ki1135781-COHORTS          INDIA         Q4                   NA                 0.6964533    0.6343194   0.7480298
24 months   ki1135781-COHORTS          PHILIPPINES   Q4                   NA                 0.4895819    0.4006620   0.5653093
24 months   kiGH5241-JiVitA-3          BANGLADESH    Q4                   NA                 0.7326288           NA          NA
