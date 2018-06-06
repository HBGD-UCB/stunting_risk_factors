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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A         n      nA    nAY0   nAY1
----------  -------------------------  -----------------------------  ---  ------  ------  ------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0       257     257     248      9
Birth       ki0047075b-MAL-ED          BANGLADESH                     1       257       0       0      0
Birth       ki0047075b-MAL-ED          BRAZIL                         0       191     166     160      6
Birth       ki0047075b-MAL-ED          BRAZIL                         1       191      25      23      2
Birth       ki0047075b-MAL-ED          INDIA                          0       205     205     198      7
Birth       ki0047075b-MAL-ED          INDIA                          1       205       0       0      0
Birth       ki0047075b-MAL-ED          NEPAL                          0       173     173     167      6
Birth       ki0047075b-MAL-ED          NEPAL                          1       173       0       0      0
Birth       ki0047075b-MAL-ED          PERU                           0       287     253     247      6
Birth       ki0047075b-MAL-ED          PERU                           1       287      34      32      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0       262     146     146      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1       262     116     114      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       123     117     111      6
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       123       6       6      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0     13772   12902   12496    406
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1     13772     870     838     32
Birth       ki1135781-COHORTS          GUATEMALA                      0       363     334     332      2
Birth       ki1135781-COHORTS          GUATEMALA                      1       363      29      29      0
Birth       ki1135781-COHORTS          INDIA                          0      4778    4771    4630    141
Birth       ki1135781-COHORTS          INDIA                          1      4778       7       7      0
Birth       ki1135781-COHORTS          PHILIPPINES                    0      3010    2936    2893     43
Birth       ki1135781-COHORTS          PHILIPPINES                    1      3010      74      72      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     0       250     250     243      7
3 months    ki0047075b-MAL-ED          BANGLADESH                     1       250       0       0      0
3 months    ki0047075b-MAL-ED          BRAZIL                         0       225     191     191      0
3 months    ki0047075b-MAL-ED          BRAZIL                         1       225      34      33      1
3 months    ki0047075b-MAL-ED          INDIA                          0       239     239     229     10
3 months    ki0047075b-MAL-ED          INDIA                          1       239       0       0      0
3 months    ki0047075b-MAL-ED          NEPAL                          0       236     236     233      3
3 months    ki0047075b-MAL-ED          NEPAL                          1       236       0       0      0
3 months    ki0047075b-MAL-ED          PERU                           0       291     257     239     18
3 months    ki0047075b-MAL-ED          PERU                           1       291      34      32      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       281     159     155      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       281     122     116      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       254     245     232     13
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       254       9       9      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2274    2059    2037     22
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2274     215     214      1
3 months    ki1112895-Guatemala BSC    GUATEMALA                      0        21      19      17      2
3 months    ki1112895-Guatemala BSC    GUATEMALA                      1        21       2       2      0
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      9158    8584    8113    471
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9158     574     521     53
3 months    ki1135781-COHORTS          GUATEMALA                      0       434     394     361     33
3 months    ki1135781-COHORTS          GUATEMALA                      1       434      40      32      8
3 months    ki1135781-COHORTS          INDIA                          0      5087    5079    4891    188
3 months    ki1135781-COHORTS          INDIA                          1      5087       8       8      0
3 months    ki1135781-COHORTS          PHILIPPINES                    0      2839    2770    2698     72
3 months    ki1135781-COHORTS          PHILIPPINES                    1      2839      69      68      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     0       241     241     233      8
6 months    ki0047075b-MAL-ED          BANGLADESH                     1       241       0       0      0
6 months    ki0047075b-MAL-ED          BRAZIL                         0       209     179     179      0
6 months    ki0047075b-MAL-ED          BRAZIL                         1       209      30      30      0
6 months    ki0047075b-MAL-ED          INDIA                          0       234     234     225      9
6 months    ki0047075b-MAL-ED          INDIA                          1       234       0       0      0
6 months    ki0047075b-MAL-ED          NEPAL                          0       236     236     235      1
6 months    ki0047075b-MAL-ED          NEPAL                          1       236       0       0      0
6 months    ki0047075b-MAL-ED          PERU                           0       273     240     231      9
6 months    ki0047075b-MAL-ED          PERU                           1       273      33      30      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       254     140     139      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       254     114     109      5
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       247     239     225     14
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       247       8       8      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2013    1835    1818     17
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2013     178     176      2
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0       277     248     230     18
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1       277      29      22      7
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      8265    7775    7466    309
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      8265     490     454     36
6 months    ki1135781-COHORTS          GUATEMALA                      0       428     389     330     59
6 months    ki1135781-COHORTS          GUATEMALA                      1       428      39      31      8
6 months    ki1135781-COHORTS          INDIA                          0      4971    4962    4720    242
6 months    ki1135781-COHORTS          INDIA                          1      4971       9       9      0
6 months    ki1135781-COHORTS          PHILIPPINES                    0      2676    2608    2482    126
6 months    ki1135781-COHORTS          PHILIPPINES                    1      2676      68      64      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     0       234     234     223     11
9 months    ki0047075b-MAL-ED          BANGLADESH                     1       234       0       0      0
9 months    ki0047075b-MAL-ED          BRAZIL                         0       199     171     171      0
9 months    ki0047075b-MAL-ED          BRAZIL                         1       199      28      28      0
9 months    ki0047075b-MAL-ED          INDIA                          0       230     230     220     10
9 months    ki0047075b-MAL-ED          INDIA                          1       230       0       0      0
9 months    ki0047075b-MAL-ED          NEPAL                          0       231     231     230      1
9 months    ki0047075b-MAL-ED          NEPAL                          1       231       0       0      0
9 months    ki0047075b-MAL-ED          PERU                           0       256     225     218      7
9 months    ki0047075b-MAL-ED          PERU                           1       256      31      26      5
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       250     138     135      3
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       250     112     106      6
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       238     230     201     29
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       238       8       8      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1777    1622    1589     33
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1777     155     154      1
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0       232     207     182     25
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1       232      25      20      5
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      7645    7173    6845    328
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      7645     472     433     39
9 months    ki1135781-COHORTS          GUATEMALA                      0       427     388     290     98
9 months    ki1135781-COHORTS          GUATEMALA                      1       427      39      30      9
9 months    ki1135781-COHORTS          INDIA                          0      4345    4337    3975    362
9 months    ki1135781-COHORTS          INDIA                          1      4345       8       8      0
9 months    ki1135781-COHORTS          PHILIPPINES                    0      2679    2610    2421    189
9 months    ki1135781-COHORTS          PHILIPPINES                    1      2679      69      65      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     0       233     233     216     17
12 months   ki0047075b-MAL-ED          BANGLADESH                     1       233       0       0      0
12 months   ki0047075b-MAL-ED          BRAZIL                         0       195     168     168      0
12 months   ki0047075b-MAL-ED          BRAZIL                         1       195      27      27      0
12 months   ki0047075b-MAL-ED          INDIA                          0       226     226     208     18
12 months   ki0047075b-MAL-ED          INDIA                          1       226       0       0      0
12 months   ki0047075b-MAL-ED          NEPAL                          0       231     231     226      5
12 months   ki0047075b-MAL-ED          NEPAL                          1       231       0       0      0
12 months   ki0047075b-MAL-ED          PERU                           0       246     216     207      9
12 months   ki0047075b-MAL-ED          PERU                           1       246      30      26      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       252     138     132      6
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       252     114     108      6
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       231     224     188     36
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       231       7       6      1
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1438    1306    1276     30
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1438     132     129      3
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0       200     179     151     28
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1       200      21      14      7
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      6724    6313    5912    401
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      6724     411     367     44
12 months   ki1135781-COHORTS          GUATEMALA                      0       489     440     290    150
12 months   ki1135781-COHORTS          GUATEMALA                      1       489      49      32     17
12 months   ki1135781-COHORTS          INDIA                          0      3880    3872    3395    477
12 months   ki1135781-COHORTS          INDIA                          1      3880       8       6      2
12 months   ki1135781-COHORTS          PHILIPPINES                    0      2555    2493    2160    333
12 months   ki1135781-COHORTS          PHILIPPINES                    1      2555      62      53      9
18 months   ki0047075b-MAL-ED          BANGLADESH                     0       221     221     190     31
18 months   ki0047075b-MAL-ED          BANGLADESH                     1       221       0       0      0
18 months   ki0047075b-MAL-ED          BRAZIL                         0       180     157     157      0
18 months   ki0047075b-MAL-ED          BRAZIL                         1       180      23      23      0
18 months   ki0047075b-MAL-ED          INDIA                          0       226     226     194     32
18 months   ki0047075b-MAL-ED          INDIA                          1       226       0       0      0
18 months   ki0047075b-MAL-ED          NEPAL                          0       229     229     222      7
18 months   ki0047075b-MAL-ED          NEPAL                          1       229       0       0      0
18 months   ki0047075b-MAL-ED          PERU                           0       222     193     178     15
18 months   ki0047075b-MAL-ED          PERU                           1       222      29      24      5
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       241     133     121     12
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       241     108      94     14
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       225     218     152     66
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       225       7       4      3
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0       977     889     854     35
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       977      88      83      5
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      1706    1599    1329    270
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1706     107      79     28
18 months   ki1135781-COHORTS          GUATEMALA                      0       411     373     185    188
18 months   ki1135781-COHORTS          GUATEMALA                      1       411      38      20     18
18 months   ki1135781-COHORTS          PHILIPPINES                    0      2461    2400    1793    607
18 months   ki1135781-COHORTS          PHILIPPINES                    1      2461      61      46     15
24 months   ki0047075b-MAL-ED          BANGLADESH                     0       212     212     186     26
24 months   ki0047075b-MAL-ED          BANGLADESH                     1       212       0       0      0
24 months   ki0047075b-MAL-ED          BRAZIL                         0       169     148     148      0
24 months   ki0047075b-MAL-ED          BRAZIL                         1       169      21      20      1
24 months   ki0047075b-MAL-ED          INDIA                          0       225     225     197     28
24 months   ki0047075b-MAL-ED          INDIA                          1       225       0       0      0
24 months   ki0047075b-MAL-ED          NEPAL                          0       228     228     221      7
24 months   ki0047075b-MAL-ED          NEPAL                          1       228       0       0      0
24 months   ki0047075b-MAL-ED          PERU                           0       201     176     165     11
24 months   ki0047075b-MAL-ED          PERU                           1       201      25      21      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       238     131     120     11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       238     107      92     15
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       214     208     142     66
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       214       6       3      3
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0         6       6       5      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1         6       0       0      0
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0       456     413     302    111
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1       456      43      24     19
24 months   ki1135781-COHORTS          GUATEMALA                      0       486     435     217    218
24 months   ki1135781-COHORTS          GUATEMALA                      1       486      51      26     25
24 months   ki1135781-COHORTS          INDIA                          0      3756    3747    2972    775
24 months   ki1135781-COHORTS          INDIA                          1      3756       9       6      3
24 months   ki1135781-COHORTS          PHILIPPINES                    0      2416    2357    1684    673
24 months   ki1135781-COHORTS          PHILIPPINES                    1      2416      59      46     13


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8da00986-ef94-43e6-becb-6c3a09063102/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 25 rows containing missing values (geom_errorbar).
```

![](/tmp/8da00986-ef94-43e6-becb-6c3a09063102/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/8da00986-ef94-43e6-becb-6c3a09063102/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8da00986-ef94-43e6-becb-6c3a09063102/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0314680   0.0284555   0.0344805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0367816   0.0242738   0.0492894
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0548695   0.0500518   0.0596872
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0923345   0.0686502   0.1160188
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0837563   0.0563712   0.1111415
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2000000   0.0758979   0.3241021
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0725806   0.0402320   0.1049293
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2413793   0.0853534   0.3974052
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0397428   0.0354002   0.0440853
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0734694   0.0503669   0.0965719
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1516710   0.1159836   0.1873583
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2051282   0.0782506   0.3320058
9 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.0311111   0.0083810   0.0538412
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.1612903   0.0315643   0.2910163
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1207729   0.0762856   0.1652603
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2000000   0.0428639   0.3571361
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0457270   0.0408926   0.0505615
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0826271   0.0577878   0.1074664
9 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2525773   0.2092939   0.2958608
9 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2307692   0.0983832   0.3631553
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0434783   0.0093860   0.0775705
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0526316   0.0115600   0.0937032
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1564246   0.1030758   0.2097734
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.3333333   0.1312080   0.5354586
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0635197   0.0575029   0.0695365
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1070560   0.0771624   0.1369495
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3409091   0.2965729   0.3852453
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3469388   0.2135258   0.4803517
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1335740   0.1202173   0.1469307
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1451613   0.0574602   0.2328623
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0777202   0.0398630   0.1155774
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1724138   0.0346224   0.3102052
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0902256   0.0414326   0.1390185
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1296296   0.0661487   0.1931106
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0393701   0.0265798   0.0521604
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0568182   0.0084265   0.1052098
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1688555   0.1504882   0.1872229
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2616822   0.1783732   0.3449913
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.5040214   0.4532197   0.5548232
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4736842   0.3147370   0.6326314
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2529167   0.2355225   0.2703108
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2459016   0.1378165   0.3539868
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0839695   0.0363765   0.1315624
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1401869   0.0742655   0.2061083
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2687651   0.2259631   0.3115672
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4418605   0.2932653   0.5904556
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.5011494   0.4541146   0.5481843
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4901961   0.3528562   0.6275360
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2855325   0.2672945   0.3037705
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2203390   0.1145573   0.3261207


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0318037   0.0317821   0.0318252
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0572177   0.0570317   0.0574037
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0944700   0.0913029   0.0976371
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0902527   0.0841558   0.0963496
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417423   0.0415706   0.0419140
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1565421   0.1550829   0.1580012
9 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.0468750   0.0416624   0.0520876
9 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1293103   0.1261424   0.1324783
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0480052   0.0478061   0.0482043
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2505855   0.2499889   0.2511821
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0476190   0.0470554   0.0481827
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1750000   0.1674651   0.1825349
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0661808   0.0659315   0.0664301
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3415133   0.3413527   0.3416739
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1338552   0.1337860   0.1339243
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0900901   0.0858829   0.0942973
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1078838   0.1054047   0.1103630
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0409417   0.0406283   0.0412550
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1746776   0.1736093   0.1757459
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5012165   0.5003659   0.5020672
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2527428   0.2526997   0.2527859
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1092437   0.1056833   0.1128041
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2850877   0.2804397   0.2897358
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5000000   0.4997012   0.5002988
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2839404   0.2835391   0.2843417


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1688579   0.8209872    1.664129
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6828011   1.2831818    2.206873
3 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 2.3878788   1.1841474    4.815250
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 3.3256705   1.5166712    7.292342
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8486229   1.3251777    2.578829
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.3524555   0.6977815    2.621359
9 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000    1.000000
9 months    ki0047075b-MAL-ED          PERU                           1                    0                 5.1843318   1.7490000   15.367236
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.6560000   0.6953507    3.943817
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8069644   1.3138734    2.485110
9 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9136578   0.5020676    1.662666
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2105263   0.4004350    3.659455
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 2.1309524   1.0627528    4.272826
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6853972   1.2550051    2.263388
12 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0176871   0.6781360    1.527256
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.0867480   0.5890807    2.004855
18 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          PERU                           1                    0                 2.2183908   0.8700985    5.655978
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.4367284   0.6926723    2.980036
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.4431818   0.5800157    3.590892
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.5497404   1.1070044    2.169545
18 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9398096   0.6620301    1.334142
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9722635   0.6231159    1.517047
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.6694987   0.7993654    3.486798
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6440394   1.1332162    2.385128
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9781436   0.7279126    1.314395
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.7716775   0.4754445    1.252483


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0003357   -0.0026769   0.0033482
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0023482   -0.0024731   0.0071695
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0107137   -0.0168540   0.0382814
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0176721   -0.0152461   0.0505902
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0019995   -0.0023464   0.0063455
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0048711   -0.0308461   0.0405883
9 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0157639   -0.0075562   0.0390840
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0085374   -0.0360626   0.0531374
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0022782   -0.0025604   0.0071168
9 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0019918   -0.0452794   0.0412957
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0041408   -0.0299561   0.0382377
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0185754   -0.0353028   0.0724537
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0026611   -0.0033608   0.0086831
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0006042   -0.0437323   0.0449407
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0002812   -0.0130757   0.0136380
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0123699   -0.0257204   0.0504601
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0176583   -0.0311976   0.0665141
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0015716   -0.0112226   0.0143657
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0058221   -0.0125763   0.0242205
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0028049   -0.0536138   0.0480040
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0001739   -0.0175681   0.0172204
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0252742   -0.0224517   0.0730001
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0163226   -0.0267311   0.0593763
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0011494   -0.0481852   0.0458864
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0015921   -0.0198345   0.0166504


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0105545   -0.0888521   0.1008857
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0410399   -0.0470293   0.1217013
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1134084   -0.2315894   0.3617641
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.1958065   -0.2622143   0.4876248
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0479016   -0.0621100   0.1465184
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0311169   -0.2261363   0.2343963
9 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.3362963   -0.3897242   0.6830287
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0660225   -0.3510281   0.3543333
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0474573   -0.0588522   0.1430933
9 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0079487   -0.1963807   0.1508049
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0869565   -1.0001835   0.5832140
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.1061453   -0.2605476   0.3661673
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0402099   -0.0552289   0.1270168
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0017692   -0.1368746   0.1235051
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0021006   -0.1028449   0.0970597
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1373057   -0.4072455   0.4711360
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1636784   -0.4369663   0.5132567
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0383858   -0.3308553   0.3051823
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0333304   -0.0779369   0.1331124
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0055962   -0.1122530   0.0908330
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0006880   -0.0719316   0.0658206
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.2313564   -0.3560782   0.5643224
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0572546   -0.1064181   0.1967152
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0022989   -0.1009264   0.0874931
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0056070   -0.0719513   0.0566311
