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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0       257     257     210     47
Birth       ki0047075b-MAL-ED          BANGLADESH                     1       257       0       0      0
Birth       ki0047075b-MAL-ED          BRAZIL                         0       191     166     151     15
Birth       ki0047075b-MAL-ED          BRAZIL                         1       191      25      19      6
Birth       ki0047075b-MAL-ED          INDIA                          0       205     205     173     32
Birth       ki0047075b-MAL-ED          INDIA                          1       205       0       0      0
Birth       ki0047075b-MAL-ED          NEPAL                          0       173     173     155     18
Birth       ki0047075b-MAL-ED          NEPAL                          1       173       0       0      0
Birth       ki0047075b-MAL-ED          PERU                           0       287     253     226     27
Birth       ki0047075b-MAL-ED          PERU                           1       287      34      27      7
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0       262     146     133     13
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1       262     116     101     15
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       123     117     100     17
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       123       6       5      1
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0     13772   12902   11582   1320
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1     13772     870     763    107
Birth       ki1135781-COHORTS          GUATEMALA                      0       363     334     318     16
Birth       ki1135781-COHORTS          GUATEMALA                      1       363      29      28      1
Birth       ki1135781-COHORTS          INDIA                          0      4778    4771    4206    565
Birth       ki1135781-COHORTS          INDIA                          1      4778       7       7      0
Birth       ki1135781-COHORTS          PHILIPPINES                    0      3010    2936    2760    176
Birth       ki1135781-COHORTS          PHILIPPINES                    1      3010      74      68      6
3 months    ki0047075b-MAL-ED          BANGLADESH                     0       250     250     207     43
3 months    ki0047075b-MAL-ED          BANGLADESH                     1       250       0       0      0
3 months    ki0047075b-MAL-ED          BRAZIL                         0       225     191     181     10
3 months    ki0047075b-MAL-ED          BRAZIL                         1       225      34      30      4
3 months    ki0047075b-MAL-ED          INDIA                          0       239     239     205     34
3 months    ki0047075b-MAL-ED          INDIA                          1       239       0       0      0
3 months    ki0047075b-MAL-ED          NEPAL                          0       236     236     223     13
3 months    ki0047075b-MAL-ED          NEPAL                          1       236       0       0      0
3 months    ki0047075b-MAL-ED          PERU                           0       291     257     196     61
3 months    ki0047075b-MAL-ED          PERU                           1       291      34      22     12
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       281     159     136     23
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       281     122      91     31
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       254     245     203     42
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       254       9       8      1
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2274    2059    1936    123
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2274     215     203     12
3 months    ki1112895-Guatemala BSC    GUATEMALA                      0        21      19      15      4
3 months    ki1112895-Guatemala BSC    GUATEMALA                      1        21       2       2      0
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      9158    8584    7088   1496
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9158     574     440    134
3 months    ki1135781-COHORTS          GUATEMALA                      0       434     394     278    116
3 months    ki1135781-COHORTS          GUATEMALA                      1       434      40      21     19
3 months    ki1135781-COHORTS          INDIA                          0      5087    5079    4294    785
3 months    ki1135781-COHORTS          INDIA                          1      5087       8       6      2
3 months    ki1135781-COHORTS          PHILIPPINES                    0      2839    2770    2432    338
3 months    ki1135781-COHORTS          PHILIPPINES                    1      2839      69      58     11
6 months    ki0047075b-MAL-ED          BANGLADESH                     0       241     241     196     45
6 months    ki0047075b-MAL-ED          BANGLADESH                     1       241       0       0      0
6 months    ki0047075b-MAL-ED          BRAZIL                         0       209     179     175      4
6 months    ki0047075b-MAL-ED          BRAZIL                         1       209      30      28      2
6 months    ki0047075b-MAL-ED          INDIA                          0       234     234     190     44
6 months    ki0047075b-MAL-ED          INDIA                          1       234       0       0      0
6 months    ki0047075b-MAL-ED          NEPAL                          0       236     236     224     12
6 months    ki0047075b-MAL-ED          NEPAL                          1       236       0       0      0
6 months    ki0047075b-MAL-ED          PERU                           0       273     240     192     48
6 months    ki0047075b-MAL-ED          PERU                           1       273      33      21     12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       254     140     121     19
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       254     114      83     31
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       247     239     183     56
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       247       8       6      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2013    1835    1654    181
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2013     178     164     14
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0       277     248     173     75
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1       277      29      18     11
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      8265    7775    6498   1277
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      8265     490     393     97
6 months    ki1135781-COHORTS          GUATEMALA                      0       428     389     219    170
6 months    ki1135781-COHORTS          GUATEMALA                      1       428      39      17     22
6 months    ki1135781-COHORTS          INDIA                          0      4971    4962    3991    971
6 months    ki1135781-COHORTS          INDIA                          1      4971       9       7      2
6 months    ki1135781-COHORTS          PHILIPPINES                    0      2676    2608    2055    553
6 months    ki1135781-COHORTS          PHILIPPINES                    1      2676      68      54     14
9 months    ki0047075b-MAL-ED          BANGLADESH                     0       234     234     176     58
9 months    ki0047075b-MAL-ED          BANGLADESH                     1       234       0       0      0
9 months    ki0047075b-MAL-ED          BRAZIL                         0       199     171     169      2
9 months    ki0047075b-MAL-ED          BRAZIL                         1       199      28      26      2
9 months    ki0047075b-MAL-ED          INDIA                          0       230     230     178     52
9 months    ki0047075b-MAL-ED          INDIA                          1       230       0       0      0
9 months    ki0047075b-MAL-ED          NEPAL                          0       231     231     213     18
9 months    ki0047075b-MAL-ED          NEPAL                          1       231       0       0      0
9 months    ki0047075b-MAL-ED          PERU                           0       256     225     175     50
9 months    ki0047075b-MAL-ED          PERU                           1       256      31      18     13
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       250     138     116     22
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       250     112      81     31
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       238     230     143     87
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       238       8       5      3
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1777    1622    1380    242
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1777     155     134     21
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0       232     207     127     80
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1       232      25      11     14
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      7645    7173    5788   1385
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      7645     472     347    125
9 months    ki1135781-COHORTS          GUATEMALA                      0       427     388     148    240
9 months    ki1135781-COHORTS          GUATEMALA                      1       427      39      15     24
9 months    ki1135781-COHORTS          INDIA                          0      4345    4337    3157   1180
9 months    ki1135781-COHORTS          INDIA                          1      4345       8       4      4
9 months    ki1135781-COHORTS          PHILIPPINES                    0      2679    2610    1890    720
9 months    ki1135781-COHORTS          PHILIPPINES                    1      2679      69      51     18
12 months   ki0047075b-MAL-ED          BANGLADESH                     0       233     233     158     75
12 months   ki0047075b-MAL-ED          BANGLADESH                     1       233       0       0      0
12 months   ki0047075b-MAL-ED          BRAZIL                         0       195     168     165      3
12 months   ki0047075b-MAL-ED          BRAZIL                         1       195      27      24      3
12 months   ki0047075b-MAL-ED          INDIA                          0       226     226     152     74
12 months   ki0047075b-MAL-ED          INDIA                          1       226       0       0      0
12 months   ki0047075b-MAL-ED          NEPAL                          0       231     231     205     26
12 months   ki0047075b-MAL-ED          NEPAL                          1       231       0       0      0
12 months   ki0047075b-MAL-ED          PERU                           0       246     216     158     58
12 months   ki0047075b-MAL-ED          PERU                           1       246      30      19     11
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       252     138     107     31
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       252     114      85     29
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       231     224     103    121
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       231       7       3      4
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1438    1306    1089    217
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1438     132     111     21
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0       200     179      95     84
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1       200      21       5     16
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      6724    6313    4788   1525
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      6724     411     290    121
12 months   ki1135781-COHORTS          GUATEMALA                      0       489     440     134    306
12 months   ki1135781-COHORTS          GUATEMALA                      1       489      49      14     35
12 months   ki1135781-COHORTS          INDIA                          0      3880    3872    2468   1404
12 months   ki1135781-COHORTS          INDIA                          1      3880       8       4      4
12 months   ki1135781-COHORTS          PHILIPPINES                    0      2555    2493    1525    968
12 months   ki1135781-COHORTS          PHILIPPINES                    1      2555      62      37     25
18 months   ki0047075b-MAL-ED          BANGLADESH                     0       221     221     116    105
18 months   ki0047075b-MAL-ED          BANGLADESH                     1       221       0       0      0
18 months   ki0047075b-MAL-ED          BRAZIL                         0       180     157     152      5
18 months   ki0047075b-MAL-ED          BRAZIL                         1       180      23      21      2
18 months   ki0047075b-MAL-ED          INDIA                          0       226     226     123    103
18 months   ki0047075b-MAL-ED          INDIA                          1       226       0       0      0
18 months   ki0047075b-MAL-ED          NEPAL                          0       229     229     184     45
18 months   ki0047075b-MAL-ED          NEPAL                          1       229       0       0      0
18 months   ki0047075b-MAL-ED          PERU                           0       222     193     110     83
18 months   ki0047075b-MAL-ED          PERU                           1       222      29      13     16
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       241     133      92     41
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       241     108      67     41
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       225     218      67    151
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       225       7       2      5
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0       977     889     672    217
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       977      88      69     19
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      1706    1599     847    752
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1706     107      47     60
18 months   ki1135781-COHORTS          GUATEMALA                      0       411     373      59    314
18 months   ki1135781-COHORTS          GUATEMALA                      1       411      38       8     30
18 months   ki1135781-COHORTS          PHILIPPINES                    0      2461    2400     983   1417
18 months   ki1135781-COHORTS          PHILIPPINES                    1      2461      61      27     34
24 months   ki0047075b-MAL-ED          BANGLADESH                     0       212     212     114     98
24 months   ki0047075b-MAL-ED          BANGLADESH                     1       212       0       0      0
24 months   ki0047075b-MAL-ED          BRAZIL                         0       169     148     145      3
24 months   ki0047075b-MAL-ED          BRAZIL                         1       169      21      18      3
24 months   ki0047075b-MAL-ED          INDIA                          0       225     225     131     94
24 months   ki0047075b-MAL-ED          INDIA                          1       225       0       0      0
24 months   ki0047075b-MAL-ED          NEPAL                          0       228     228     179     49
24 months   ki0047075b-MAL-ED          NEPAL                          1       228       0       0      0
24 months   ki0047075b-MAL-ED          PERU                           0       201     176     111     65
24 months   ki0047075b-MAL-ED          PERU                           1       201      25      16      9
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       238     131      85     46
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       238     107      69     38
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       214     208      61    147
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       214       6       0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0         6       6       5      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1         6       0       0      0
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0       456     413     150    263
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1       456      43       9     34
24 months   ki1135781-COHORTS          GUATEMALA                      0       486     435      70    365
24 months   ki1135781-COHORTS          GUATEMALA                      1       486      51       8     43
24 months   ki1135781-COHORTS          INDIA                          0      3756    3747    1900   1847
24 months   ki1135781-COHORTS          INDIA                          1      3756       9       3      6
24 months   ki1135781-COHORTS          PHILIPPINES                    0      2416    2357     895   1462
24 months   ki1135781-COHORTS          PHILIPPINES                    1      2416      59      24     35


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/4bd33e52-a288-41a6-888d-7e94e6831ca9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 43 rows containing missing values (geom_errorbar).
```

![](/tmp/4bd33e52-a288-41a6-888d-7e94e6831ca9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/4bd33e52-a288-41a6-888d-7e94e6831ca9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4bd33e52-a288-41a6-888d-7e94e6831ca9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.0903614   0.0466334   0.1340895
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2400000   0.0721465   0.4078535
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                0.1067194   0.0686074   0.1448313
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                0.2058824   0.0697321   0.3420326
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0890411   0.0427554   0.1353268
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1293103   0.0681320   0.1904887
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1023097   0.0970803   0.1075392
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1229885   0.1011643   0.1448127
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0599455   0.0513574   0.0685336
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0810811   0.0188793   0.1432829
3 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2373541   0.1852480   0.2894602
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3529412   0.1920326   0.5138497
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1446541   0.0898819   0.1994263
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2540984   0.1767085   0.3314882
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0597377   0.0494986   0.0699769
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0558140   0.0251220   0.0865059
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1742777   0.1662524   0.1823031
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2334495   0.1988410   0.2680580
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2944162   0.2493599   0.3394726
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4750000   0.3200665   0.6299335
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1220217   0.1098305   0.1342128
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1594203   0.0730307   0.2458099
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2000000   0.1493010   0.2506990
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3636364   0.1992089   0.5280638
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1357143   0.0788706   0.1925580
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2719298   0.1900895   0.3537701
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0986376   0.0849915   0.1122837
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0786517   0.0390957   0.1182076
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.3024194   0.2451517   0.3596870
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.3793103   0.2023936   0.5562271
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1642444   0.1560085   0.1724802
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1979592   0.1626764   0.2332419
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4370180   0.3876690   0.4863670
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5641026   0.4082927   0.7199124
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2120399   0.1963494   0.2277304
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2058824   0.1097595   0.3020052
9 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2222222   0.1677935   0.2766510
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.4193548   0.2453091   0.5934006
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1594203   0.0982219   0.2206187
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2767857   0.1937596   0.3598118
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1491985   0.1318548   0.1665422
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1354839   0.0815906   0.1893772
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.3864734   0.3199955   0.4529514
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.5600000   0.3649992   0.7550008
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1930852   0.1839501   0.2022203
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2648305   0.2250213   0.3046397
9 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.6185567   0.5701678   0.6669456
9 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6153846   0.4625184   0.7682509
9 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2758621   0.2587120   0.2930121
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2608696   0.1572416   0.3644975
12 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.2685185   0.2092950   0.3277421
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.3666667   0.1938746   0.5394588
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2246377   0.1548682   0.2944072
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2543860   0.1742804   0.3344915
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1661562   0.1459619   0.1863505
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1590909   0.0966730   0.2215088
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.4692737   0.3959814   0.5425661
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.7619048   0.5792830   0.9445266
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2415650   0.2310056   0.2521244
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2944039   0.2503373   0.3384705
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.6954545   0.6524091   0.7384999
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7142857   0.5876674   0.8409040
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.3882872   0.3691525   0.4074219
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4032258   0.2810975   0.5253541
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4300518   0.3600470   0.5000566
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5517241   0.3703133   0.7331349
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3082707   0.2296278   0.3869135
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3796296   0.2879137   0.4713455
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2440945   0.2158436   0.2723454
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2159091   0.1298993   0.3019189
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4702939   0.4458228   0.4947650
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5607477   0.4666835   0.6548118
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.8418231   0.8047461   0.8789001
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7894737   0.6596938   0.9192535
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5904167   0.5707387   0.6100947
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5573770   0.4327068   0.6820473
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3693182   0.2978389   0.4407975
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.3600000   0.1713737   0.5486263
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3511450   0.2692337   0.4330563
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3551402   0.2642738   0.4460065
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6368039   0.5903712   0.6832365
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7906977   0.6689718   0.9124235
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.8390805   0.8045138   0.8736471
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8431373   0.7432249   0.9430496
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6202800   0.6006833   0.6398768
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5932203   0.4678486   0.7185921


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1099476   0.1027713   0.1171240
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1184669   0.1147530   0.1221808
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1068702   0.1044436   0.1092969
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1036160   0.1035320   0.1037001
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0604651   0.0603482   0.0605821
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2508591   0.2465857   0.2551325
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1921708   0.1858170   0.1985246
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0593668   0.0593196   0.0594140
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1779865   0.1776927   0.1782802
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3110599   0.3061398   0.3159800
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1229306   0.1227187   0.1231425
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.2134409   0.2261196
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1885021   0.2051987
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0968703   0.0966224   0.0971183
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3104693   0.3076921   0.3132466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662432   0.1660715   0.1664149
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4485981   0.4451292   0.4520670
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2118834   0.2118467   0.2119201
9 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2460938   0.2382003   0.2539872
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2120000   0.2047507   0.2192493
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1480023   0.1478223   0.1481822
9 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4051724   0.3982338   0.4121111
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1975147   0.1971276   0.1979018
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6182670   0.6181802   0.6183538
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2754759   0.2753860   0.2755659
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2804878   0.2764662   0.2845094
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2380952   0.2362635   0.2399270
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1655076   0.1654022   0.1656131
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5000000   0.4875363   0.5124637
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2447948   0.2444922   0.2450973
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6973415   0.6968398   0.6978432
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3886497   0.3885606   0.3887389
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4459459   0.4405400   0.4513519
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3402490   0.3357593   0.3447386
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2415558   0.2410496   0.2420620
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4759672   0.4749262   0.4770082
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8369830   0.8355152   0.8384508
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5895977   0.5893947   0.5898007
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3677330   0.3685854
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.3526882   0.3531942
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6513158   0.6471833   0.6554482
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8395062   0.8393955   0.8396168
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6196192   0.6194526   0.6197858


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                 2.6560000   1.1346616   6.217128
Birth       ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 1.9291939   0.9098576   4.090518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.4522546   0.7190881   2.932942
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2021195   0.9994220   1.445927
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3525799   0.6197717   2.951849
3 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.4869817   0.8964970   2.466394
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.7565930   1.0805209   2.855677
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9343165   0.5252236   1.662049
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3395256   1.1469198   1.564476
3 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.6133621   1.1252751   2.313156
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3064917   0.7530031   2.266818
6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.8181818   1.0826943   3.053295
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 2.0036934   1.1962950   3.356018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7973803   0.4732978   1.343373
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.2542529   0.7581664   2.074941
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2052722   1.0015548   1.450426
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.2907994   0.9577791   1.739611
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9709605   0.6052100   1.557747
9 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
9 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.8870968   1.1654702   3.055534
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.7362013   1.0666471   2.826047
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9080778   0.5999874   1.374371
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.4490000   0.9826420   2.136690
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3715735   1.1715991   1.605681
9 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9948718   0.7667643   1.290840
9 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9456522   0.6325751   1.413679
12 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          PERU                           1                    0                 1.3655172   0.8115761   2.297551
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.1324278   0.7276530   1.762369
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9574780   0.6349637   1.443806
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.6235828   1.2196330   2.161323
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2187356   1.0427704   1.424395
12 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0270775   0.8512551   1.239215
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.0384731   0.7640594   1.411443
18 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          PERU                           1                    0                 1.2829248   0.8889158   1.851577
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2314815   0.8666378   1.749920
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8845308   0.5841887   1.339284
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1923345   1.0002805   1.421263
18 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9378143   0.7910539   1.111802
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9440402   0.7529705   1.183595
24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.9747692   0.5575963   1.704056
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0113775   0.7153936   1.429820
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2416659   1.0471916   1.472256
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0048348   0.8863582   1.139148
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9563751   0.7723678   1.184220


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0195862   -0.0247268   0.0638992
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0117475   -0.0265450   0.0500400
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0178291   -0.0285201   0.0641784
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0013063   -0.0039238   0.0065365
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0005196   -0.0080693   0.0091085
3 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0135050   -0.0387761   0.0657861
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0475167   -0.0076227   0.1026562
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003710   -0.0106103   0.0098683
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0037087   -0.0043220   0.0117395
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0166437   -0.0286805   0.0619679
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0009089   -0.0112841   0.0131020
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0197802   -0.0313136   0.0708740
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0611361    0.0036827   0.1185895
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017673   -0.0154156   0.0118811
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0080500   -0.0492850   0.0653849
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0019988   -0.0062388   0.0102365
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0115801   -0.0378906   0.0610509
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0001565   -0.0158470   0.0155341
9 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0238715   -0.0311266   0.0788697
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0525797   -0.0090466   0.1142060
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011963   -0.0185409   0.0161483
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0186990   -0.0481401   0.0855380
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0044295   -0.0047138   0.0135729
9 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0002897   -0.0486787   0.0480993
9 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0003861   -0.0175364   0.0167641
12 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0119693   -0.0473907   0.0713292
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0134576   -0.0563360   0.0832511
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0006486   -0.0208431   0.0195460
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0307263   -0.0436183   0.1050708
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0032297   -0.0073340   0.0137935
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0018870   -0.0411614   0.0449353
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0003625   -0.0187724   0.0194974
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0158941   -0.0543191   0.0861074
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0319783   -0.0467926   0.1107492
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0025387   -0.0307941   0.0257167
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0056732   -0.0188200   0.0301665
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0048401   -0.0419461   0.0322660
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0008189   -0.0204980   0.0188601
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0011590   -0.0726395   0.0703216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0017961   -0.0801156   0.0837078
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0145119   -0.0321042   0.0611281
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0004257   -0.0341411   0.0349925
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0006608   -0.0202583   0.0189366


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1781411   -0.3392623   0.4956537
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0991630   -0.2892565   0.3705618
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1668297   -0.4018633   0.5048214
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0126072   -0.0391812   0.0618148
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0085936   -0.1441333   0.1409334
3 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0538351   -0.1792170   0.2408284
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.2472630   -0.1008073   0.4852750
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0062490   -0.1943872   0.1522540
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0208372   -0.0253372   0.0649322
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0535063   -0.1039123   0.1884769
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0073940   -0.0969167   0.1017853
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0900000   -0.1744736   0.2949181
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.3105714   -0.0503227   0.5474612
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0182436   -0.1693508   0.1133372
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0259284   -0.1773968   0.1941412
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0120235   -0.0387917   0.0603529
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0258141   -0.0909332   0.1300675
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0007385   -0.0775998   0.0706407
9 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0970018   -0.1560233   0.2946459
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.2480175   -0.1055674   0.4885181
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0080828   -0.1323581   0.1025535
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0461507   -0.1338426   0.1975707
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0224264   -0.0249771   0.0676375
9 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0004686   -0.0818769   0.0748139
9 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0014017   -0.0656347   0.0589595
12 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0426731   -0.1941228   0.2325121
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0565217   -0.2872396   0.3084806
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0039186   -0.1336590   0.1109739
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0614525   -0.0993701   0.1987490
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0131937   -0.0309167   0.0554166
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0027059   -0.0609767   0.0625662
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0009327   -0.0495350   0.0489737
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0356414   -0.1353500   0.1808803
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0939850   -0.1697049   0.2982305
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0105098   -0.1345221   0.0999470
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0119194   -0.0409029   0.0620612
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0057828   -0.0511079   0.0375878
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0013890   -0.0353286   0.0314380
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0031480   -0.2173672   0.1733752
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0050891   -0.2562966   0.2120907
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0222809   -0.0519628   0.0912848
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0005071   -0.0415280   0.0408457
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0010665   -0.0331996   0.0300673
