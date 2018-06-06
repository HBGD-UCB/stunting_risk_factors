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
Birth       ki1119695-PROBIT           BELARUS                        0      6779    6540    6535      5
Birth       ki1119695-PROBIT           BELARUS                        1      6779     239     239      0
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
3 months    ki1119695-PROBIT           BELARUS                        0      8057    7763    7703     60
3 months    ki1119695-PROBIT           BELARUS                        1      8057     294     288      6
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
6 months    ki1119695-PROBIT           BELARUS                        0      7665    7385    7250    135
6 months    ki1119695-PROBIT           BELARUS                        1      7665     280     269     11
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
9 months    ki1119695-PROBIT           BELARUS                        0      7483    7215    7139     76
9 months    ki1119695-PROBIT           BELARUS                        1      7483     268     260      8
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
12 months   ki1119695-PROBIT           BELARUS                        0      7736    7455    7394     61
12 months   ki1119695-PROBIT           BELARUS                        1      7736     281     280      1
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
18 months   ki1119695-PROBIT           BELARUS                        0       764     734     715     19
18 months   ki1119695-PROBIT           BELARUS                        1       764      30      29      1
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
24 months   ki1119695-PROBIT           BELARUS                        0      1619    1576    1545     31
24 months   ki1119695-PROBIT           BELARUS                        1      1619      43      43      0
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
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 6 rows containing missing values (geom_errorbar).
```

![](/tmp/2cb10109-c95a-430a-a0bd-a1294b04d650/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 31 rows containing missing values (geom_errorbar).
```

![](/tmp/2cb10109-c95a-430a-a0bd-a1294b04d650/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 3 rows containing missing values (geom_errorbar).
```

![](/tmp/2cb10109-c95a-430a-a0bd-a1294b04d650/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 3 rows containing missing values (geom_errorbar).
```

![](/tmp/2cb10109-c95a-430a-a0bd-a1294b04d650/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0314680   0.0284555   0.0344805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0367816   0.0242738   0.0492894
3 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0077290          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0204082          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0548695   0.0500518   0.0596872
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0923345   0.0686502   0.1160188
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0837563   0.0563712   0.1111415
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2000000   0.0758979   0.3241021
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0725806   0.0402320   0.1049293
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2413793   0.0853534   0.3974052
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0182803          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0392857          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0397428   0.0354002   0.0440853
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0734694   0.0503669   0.0965719
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1516710   0.1159836   0.1873583
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2051282   0.0782506   0.3320058
9 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.0311111   0.0083810   0.0538412
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.1612903   0.0315643   0.2910163
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1207729   0.0762856   0.1652603
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.2000000   0.0428639   0.3571361
9 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0105336          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0298507          NA          NA
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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0318037   0.0288729   0.0347345
3 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0081916          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0572177   0.0524606   0.0619748
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0944700   0.0669213   0.1220188
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.0902527   0.0564475   0.1240580
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0190476          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417423   0.0374303   0.0460543
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1565421   0.1220768   0.1910073
9 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.0468750   0.0209318   0.0728182
9 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1293103   0.0860400   0.1725807
9 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0112254          NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0480052   0.0432129   0.0527976
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2505855   0.2094343   0.2917367
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0476190   0.0212735   0.0739646
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1750000   0.1222081   0.2277919
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0661808   0.0602384   0.0721233
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3415133   0.2994391   0.3835875
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1338552   0.1206498   0.1470606
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0900901   0.0523425   0.1278377
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1078838   0.0686346   0.1471331
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0409417   0.0285100   0.0533733
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1746776   0.1566551   0.1927002
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5012165   0.4528188   0.5496143
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2527428   0.2355694   0.2699161
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1092437   0.0695290   0.1489584
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2850877   0.2436059   0.3265696
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5000000   0.4555013   0.5444987
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2839404   0.2659568   0.3019240


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1688579   0.8209872    1.664129
3 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        1                    0                 2.6404762          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6828011   1.2831818    2.206873
3 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 2.3878788   1.1841474    4.815250
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 3.3256705   1.5166712    7.292342
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 2.1490740          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8486229   1.3251777    2.578829
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.3524555   0.6977815    2.621359
9 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000    1.000000
9 months    ki0047075b-MAL-ED          PERU                           1                    0                 5.1843318   1.7490000   15.367236
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.6560000   0.6953507    3.943817
9 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        1                    0                 2.8338570          NA          NA
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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0003357   -0.0004774   0.0011487
3 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0004627           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0023482    0.0008220   0.0038745
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0107137   -0.0014201   0.0228475
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0176721   -0.0000894   0.0354335
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0007673           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0019995    0.0005953   0.0034037
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0048711   -0.0072271   0.0169693
9 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0157639   -0.0010147   0.0325424
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0085374   -0.0093438   0.0264186
9 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0006918           NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0022782    0.0007032   0.0038532
9 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0019918   -0.0147271   0.0107435
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0041408   -0.0200128   0.0282943
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0185754   -0.0046318   0.0417826
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0026611    0.0007807   0.0045416
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0006042   -0.0134842   0.0146926
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0002812   -0.0018726   0.0024350
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0123699   -0.0067651   0.0315049
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0176583   -0.0183075   0.0536240
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0015716   -0.0029477   0.0060909
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0058221    0.0003659   0.0112783
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0028049   -0.0182565   0.0126467
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0001739   -0.0028878   0.0025400
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0252742   -0.0114524   0.0620009
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0163226    0.0010177   0.0316274
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0011494   -0.0163863   0.0140875
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0015921   -0.0042440   0.0010598


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0105545   -0.0153247   0.0357739
3 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0564800           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0410399    0.0141900   0.0671584
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1134084   -0.0207429   0.2299289
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.1958065   -0.0121457   0.3610334
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0402844           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0479016    0.0140083   0.0806298
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0311169   -0.0491224   0.1052193
9 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.3362963   -0.0578997   0.5836065
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0660225   -0.0815351   0.1934484
9 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0616309           NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0474573    0.0143987   0.0794071
9 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0079487   -0.0600683   0.0416083
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0869565   -0.5876967   0.4749322
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.1061453   -0.0340042   0.2272988
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0402099    0.0115759   0.0680143
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0017692   -0.0403479   0.0421812
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0021006   -0.0141195   0.0180613
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1373057   -0.0951625   0.3204283
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1636784   -0.2395807   0.4357497
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0383858   -0.0779473   0.1421642
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0333304    0.0017000   0.0639586
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0055962   -0.0369069   0.0247690
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0006880   -0.0114835   0.0099923
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.2313564   -0.1770382   0.4980512
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0572546    0.0021819   0.1092876
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0022989   -0.0332413   0.0277170
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0056070   -0.0149888   0.0036880
