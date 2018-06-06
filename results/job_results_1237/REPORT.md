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

**Intervention Variable:** enstunt

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0       257     210     210      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     1       257      47       0     47
Birth       ki0047075b-MAL-ED          BRAZIL                         0       191     170     170      0
Birth       ki0047075b-MAL-ED          BRAZIL                         1       191      21       0     21
Birth       ki0047075b-MAL-ED          INDIA                          0       206     173     173      0
Birth       ki0047075b-MAL-ED          INDIA                          1       206      33       0     33
Birth       ki0047075b-MAL-ED          NEPAL                          0       173     155     155      0
Birth       ki0047075b-MAL-ED          NEPAL                          1       173      18       0     18
Birth       ki0047075b-MAL-ED          PERU                           0       287     253     253      0
Birth       ki0047075b-MAL-ED          PERU                           1       287      34       0     34
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0       262     234     234      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1       262      28       0     28
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       123     105     105      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       123      18       0     18
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0        90      74      74      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1        90      16       0     16
Birth       ki1000108-IRC              INDIA                          0       388     343     343      0
Birth       ki1000108-IRC              INDIA                          1       388      45       0     45
Birth       ki1000109-EE               PAKISTAN                       0         2       1       1      0
Birth       ki1000109-EE               PAKISTAN                       1         2       1       0      1
Birth       ki1000109-ResPak           PAKISTAN                       0         7       5       5      0
Birth       ki1000109-ResPak           PAKISTAN                       1         7       2       0      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0        70      53      53      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          1        70      17       0     17
Birth       ki1017093-NIH-Birth        BANGLADESH                     0        28      27      27      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     1        28       1       0      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0        27      22      22      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1        27       5       0      5
Birth       ki1101329-Keneba           GAMBIA                         0      1541    1459    1459      0
Birth       ki1101329-Keneba           GAMBIA                         1      1541      82       0     82
Birth       ki1114097-CMIN             BANGLADESH                     0        13       7       7      0
Birth       ki1114097-CMIN             BANGLADESH                     1        13       6       0      6
Birth       ki1114097-CMIN             BRAZIL                         0       115     110     110      0
Birth       ki1114097-CMIN             BRAZIL                         1       115       5       0      5
Birth       ki1114097-CMIN             PERU                           0        10      10      10      0
Birth       ki1114097-CMIN             PERU                           1        10       0       0      0
Birth       ki1114097-CONTENT          PERU                           0         2       2       2      0
Birth       ki1114097-CONTENT          PERU                           1         2       0       0      0
Birth       ki1119695-PROBIT           BELARUS                        0      6779    6758    6758      0
Birth       ki1119695-PROBIT           BELARUS                        1      6779      21       0     21
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0     13830   12398   12398      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1     13830    1432       0   1432
Birth       ki1135781-COHORTS          GUATEMALA                      0       407     388     388      0
Birth       ki1135781-COHORTS          GUATEMALA                      1       407      19       0     19
Birth       ki1135781-COHORTS          INDIA                          0      6640    5848    5848      0
Birth       ki1135781-COHORTS          INDIA                          1      6640     792       0    792
Birth       ki1135781-COHORTS          PHILIPPINES                    0      3050    2863    2863      0
Birth       ki1135781-COHORTS          PHILIPPINES                    1      3050     187       0    187
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0      9746    6420    6420      0
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1      9746    3326       0   3326
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0       224     155     155      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1       224      69       0     69
3 months    ki0047075b-MAL-ED          BANGLADESH                     0       242     202     186     16
3 months    ki0047075b-MAL-ED          BANGLADESH                     1       242      40      14     26
3 months    ki0047075b-MAL-ED          BRAZIL                         0       185     166     157      9
3 months    ki0047075b-MAL-ED          BRAZIL                         1       185      19      16      3
3 months    ki0047075b-MAL-ED          INDIA                          0       196     165     156      9
3 months    ki0047075b-MAL-ED          INDIA                          1       196      31      12     19
3 months    ki0047075b-MAL-ED          NEPAL                          0       171     153     153      0
3 months    ki0047075b-MAL-ED          NEPAL                          1       171      18      11      7
3 months    ki0047075b-MAL-ED          PERU                           0       277     244     202     42
3 months    ki0047075b-MAL-ED          PERU                           1       277      33       6     27
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       237     212     182     30
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       237      25      11     14
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       119     102      95      7
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       119      17       7     10
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0        96      81      65     16
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1        96      15       6      9
3 months    ki1000108-IRC              INDIA                          0       407     359     295     64
3 months    ki1000108-IRC              INDIA                          1       407      48      21     27
3 months    ki1000109-EE               PAKISTAN                       0         9       6       4      2
3 months    ki1000109-EE               PAKISTAN                       1         9       3       0      3
3 months    ki1000109-ResPak           PAKISTAN                       0        83      65      31     34
3 months    ki1000109-ResPak           PAKISTAN                       1        83      18       6     12
3 months    ki1000304b-SAS-CompFeed    INDIA                          0       411     305     262     43
3 months    ki1000304b-SAS-CompFeed    INDIA                          1       411     106      39     67
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          0        96      58      58      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        96      38       0     38
3 months    ki1017093-NIH-Birth        BANGLADESH                     0       565     476     401     75
3 months    ki1017093-NIH-Birth        BANGLADESH                     1       565      89      35     54
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0        26      21      15      6
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1        26       5       1      4
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        20      19      17      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        20       1       0      1
3 months    ki1101329-Keneba           GAMBIA                         0      2189    1981    1783    198
3 months    ki1101329-Keneba           GAMBIA                         1      2189     208      90    118
3 months    ki1112895-Guatemala BSC    GUATEMALA                      0        23      19      19      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      1        23       4       0      4
3 months    ki1113344-GMS-Nepal        NEPAL                          0        51      41      39      2
3 months    ki1113344-GMS-Nepal        NEPAL                          1        51      10       2      8
3 months    ki1114097-CMIN             BRAZIL                         0        88      83      77      6
3 months    ki1114097-CMIN             BRAZIL                         1        88       5       3      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  0       143     124     122      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  1       143      19       4     15
3 months    ki1114097-CMIN             PERU                           0        98      93      91      2
3 months    ki1114097-CMIN             PERU                           1        98       5       1      4
3 months    ki1114097-CONTENT          PERU                           0        55      49      47      2
3 months    ki1114097-CONTENT          PERU                           1        55       6       2      4
3 months    ki1119695-PROBIT           BELARUS                        0      6765    6744    6346    398
3 months    ki1119695-PROBIT           BELARUS                        1      6765      21      10     11
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      9082    8134    6943   1191
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9082     948     520    428
3 months    ki1135781-COHORTS          GUATEMALA                      0       415     377     281     96
3 months    ki1135781-COHORTS          GUATEMALA                      1       415      38       2     36
3 months    ki1135781-COHORTS          INDIA                          0      7000    6159    5697    462
3 months    ki1135781-COHORTS          INDIA                          1      7000     841     264    577
3 months    ki1135781-COHORTS          PHILIPPINES                    0      2870    2704    2450    254
3 months    ki1135781-COHORTS          PHILIPPINES                    1      2870     166      66    100
3 months    kiGH5241-JiVitA-3          BANGLADESH                     0     12104    8139    7320    819
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1     12104    3965    1453   2512
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0       894     653     610     43
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1       894     241      87    154
6 months    ki0047075b-MAL-ED          BANGLADESH                     0       233     195     174     21
6 months    ki0047075b-MAL-ED          BANGLADESH                     1       233      38      16     22
6 months    ki0047075b-MAL-ED          BRAZIL                         0       173     156     153      3
6 months    ki0047075b-MAL-ED          BRAZIL                         1       173      17      16      1
6 months    ki0047075b-MAL-ED          INDIA                          0       192     162     137     25
6 months    ki0047075b-MAL-ED          INDIA                          1       192      30      17     13
6 months    ki0047075b-MAL-ED          NEPAL                          0       171     153     152      1
6 months    ki0047075b-MAL-ED          NEPAL                          1       171      18      11      7
6 months    ki0047075b-MAL-ED          PERU                           0       260     229     192     37
6 months    ki0047075b-MAL-ED          PERU                           1       260      31      12     19
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       214     193     158     35
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       214      21      14      7
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       117     101      92      9
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       117      16       4     12
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0        96      81      62     19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1        96      15       9      6
6 months    ki1000108-IRC              INDIA                          0       407     361     287     74
6 months    ki1000108-IRC              INDIA                          1       407      46      20     26
6 months    ki1000109-EE               PAKISTAN                       0         8       5       4      1
6 months    ki1000109-EE               PAKISTAN                       1         8       3       0      3
6 months    ki1000109-ResPak           PAKISTAN                       0        77      61      35     26
6 months    ki1000109-ResPak           PAKISTAN                       1        77      16       8      8
6 months    ki1000304b-SAS-CompFeed    INDIA                          0       410     304     256     48
6 months    ki1000304b-SAS-CompFeed    INDIA                          1       410     106      41     65
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0        94      58      43     15
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        94      36       4     32
6 months    ki1017093-NIH-Birth        BANGLADESH                     0       533     448     361     87
6 months    ki1017093-NIH-Birth        BANGLADESH                     1       533      85      28     57
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0        27      22      18      4
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1        27       5       3      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        15      14      12      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        15       1       0      1
6 months    ki1101329-Keneba           GAMBIA                         0      2088    1891    1684    207
6 months    ki1101329-Keneba           GAMBIA                         1      2088     197     109     88
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0       294     223     198     25
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1       294      71       7     64
6 months    ki1113344-GMS-Nepal        NEPAL                          0        52      42      35      7
6 months    ki1113344-GMS-Nepal        NEPAL                          1        52      10       4      6
6 months    ki1114097-CMIN             BRAZIL                         0       104     100      91      9
6 months    ki1114097-CMIN             BRAZIL                         1       104       4       3      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0       319     279     274      5
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1       319      40      24     16
6 months    ki1114097-CMIN             PERU                           0        96      92      88      4
6 months    ki1114097-CMIN             PERU                           1        96       4       1      3
6 months    ki1114097-CONTENT          PERU                           0        55      49      45      4
6 months    ki1114097-CONTENT          PERU                           1        55       6       3      3
6 months    ki1119695-PROBIT           BELARUS                        0      6513    6494    6064    430
6 months    ki1119695-PROBIT           BELARUS                        1      6513      19      12      7
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      8198    7366    6342   1024
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      8198     832     499    333
6 months    ki1135781-COHORTS          GUATEMALA                      0       403     353     219    134
6 months    ki1135781-COHORTS          GUATEMALA                      1       403      50       2     48
6 months    ki1135781-COHORTS          INDIA                          0      6730    5933    5155    778
6 months    ki1135781-COHORTS          INDIA                          1      6730     797     319    478
6 months    ki1135781-COHORTS          PHILIPPINES                    0      2702    2547    2077    470
6 months    ki1135781-COHORTS          PHILIPPINES                    1      2702     155      53    102
6 months    ki1148112-LCNI-5           MALAWI                         0       826     523     523      0
6 months    ki1148112-LCNI-5           MALAWI                         1       826     303       0    303
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0      8181    5632    4925    707
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1      8181    2549    1123   1426
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0      1188     872     777     95
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1      1188     316     131    185
9 months    ki0047075b-MAL-ED          BANGLADESH                     0       227     190     158     32
9 months    ki0047075b-MAL-ED          BANGLADESH                     1       227      37      12     25
9 months    ki0047075b-MAL-ED          BRAZIL                         0       163     147     146      1
9 months    ki0047075b-MAL-ED          BRAZIL                         1       163      16      15      1
9 months    ki0047075b-MAL-ED          INDIA                          0       188     160     129     31
9 months    ki0047075b-MAL-ED          INDIA                          1       188      28      16     12
9 months    ki0047075b-MAL-ED          NEPAL                          0       167     150     145      5
9 months    ki0047075b-MAL-ED          NEPAL                          1       167      17      11      6
9 months    ki0047075b-MAL-ED          PERU                           0       244     213     175     38
9 months    ki0047075b-MAL-ED          PERU                           1       244      31      10     21
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       211     190     153     37
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       211      21      15      6
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       114      98      65     33
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       114      16       4     12
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0        97      82      64     18
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1        97      15       8      7
9 months    ki1000108-IRC              INDIA                          0       407     361     273     88
9 months    ki1000108-IRC              INDIA                          1       407      46      23     23
9 months    ki1000109-EE               PAKISTAN                       0         8       5       4      1
9 months    ki1000109-EE               PAKISTAN                       1         8       3       0      3
9 months    ki1000109-ResPak           PAKISTAN                       0        67      55      33     22
9 months    ki1000109-ResPak           PAKISTAN                       1        67      12       8      4
9 months    ki1000304b-SAS-CompFeed    INDIA                          0       403     295     217     78
9 months    ki1000304b-SAS-CompFeed    INDIA                          1       403     108      33     75
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          0        84      51      27     24
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        84      33       1     32
9 months    ki1017093-NIH-Birth        BANGLADESH                     0       503     423     299    124
9 months    ki1017093-NIH-Birth        BANGLADESH                     1       503      80      24     56
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0        26      21      19      2
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1        26       5       2      3
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        14      14      11      3
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        14       0       0      0
9 months    ki1101329-Keneba           GAMBIA                         0      2066    1877    1597    280
9 months    ki1101329-Keneba           GAMBIA                         1      2066     189      97     92
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0       233     176     129     47
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1       233      57      10     47
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   0       762     598     598      0
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1       762     164       0    164
9 months    ki1113344-GMS-Nepal        NEPAL                          0        51      41      30     11
9 months    ki1113344-GMS-Nepal        NEPAL                          1        51      10       2      8
9 months    ki1114097-CMIN             BRAZIL                         0       106     101      86     15
9 months    ki1114097-CMIN             BRAZIL                         1       106       5       3      2
9 months    ki1114097-CMIN             GUINEA-BISSAU                  0       343     296     281     15
9 months    ki1114097-CMIN             GUINEA-BISSAU                  1       343      47      21     26
9 months    ki1114097-CMIN             PERU                           0        87      83      75      8
9 months    ki1114097-CMIN             PERU                           1        87       4       1      3
9 months    ki1114097-CONTENT          PERU                           0        54      48      43      5
9 months    ki1114097-CONTENT          PERU                           1        54       6       3      3
9 months    ki1119695-PROBIT           BELARUS                        0      6418    6398    6125    273
9 months    ki1119695-PROBIT           BELARUS                        1      6418      20      16      4
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      7581    6794    5599   1195
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      7581     787     486    301
9 months    ki1135781-COHORTS          GUATEMALA                      0       393     335     147    188
9 months    ki1135781-COHORTS          GUATEMALA                      1       393      58       1     57
9 months    ki1135781-COHORTS          INDIA                          0      5871    5173    4100   1073
9 months    ki1135781-COHORTS          INDIA                          1      5871     698     258    440
9 months    ki1135781-COHORTS          PHILIPPINES                    0      2706    2549    1915    634
9 months    ki1135781-COHORTS          PHILIPPINES                    1      2706     157      46    111
9 months    ki1148112-LCNI-5           MALAWI                         0       654     409     375     34
9 months    ki1148112-LCNI-5           MALAWI                         1       654     245      61    184
9 months    kiGH5241-JiVitA-4          BANGLADESH                     0      1201     872     740    132
9 months    kiGH5241-JiVitA-4          BANGLADESH                     1      1201     329     132    197
12 months   ki0047075b-MAL-ED          BANGLADESH                     0       226     189     145     44
12 months   ki0047075b-MAL-ED          BANGLADESH                     1       226      37       9     28
12 months   ki0047075b-MAL-ED          BRAZIL                         0       161     145     144      1
12 months   ki0047075b-MAL-ED          BRAZIL                         1       161      16      14      2
12 months   ki0047075b-MAL-ED          INDIA                          0       184     156     115     41
12 months   ki0047075b-MAL-ED          INDIA                          1       184      28      11     17
12 months   ki0047075b-MAL-ED          NEPAL                          0       167     150     139     11
12 months   ki0047075b-MAL-ED          NEPAL                          1       167      17      10      7
12 months   ki0047075b-MAL-ED          PERU                           0       235     206     164     42
12 months   ki0047075b-MAL-ED          PERU                           1       235      29       7     22
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       214     192     154     38
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       214      22      14      8
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       111      95      50     45
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       111      16       3     13
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0        97      81      50     31
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1        97      16       6     10
12 months   ki1000108-IRC              INDIA                          0       406     360     264     96
12 months   ki1000108-IRC              INDIA                          1       406      46      23     23
12 months   ki1000109-EE               PAKISTAN                       0         7       4       3      1
12 months   ki1000109-EE               PAKISTAN                       1         7       3       0      3
12 months   ki1000109-ResPak           PAKISTAN                       0        59      49      29     20
12 months   ki1000109-ResPak           PAKISTAN                       1        59      10       7      3
12 months   ki1000304b-SAS-CompFeed    INDIA                          0       413     301     199    102
12 months   ki1000304b-SAS-CompFeed    INDIA                          1       413     112      31     81
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          0        91      56      14     42
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        91      35       4     31
12 months   ki1017093-NIH-Birth        BANGLADESH                     0       488     409     280    129
12 months   ki1017093-NIH-Birth        BANGLADESH                     1       488      79      25     54
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0        25      21      16      5
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1        25       4       3      1
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        11      11       8      3
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        11       0       0      0
12 months   ki1101329-Keneba           GAMBIA                         0      1947    1753    1382    371
12 months   ki1101329-Keneba           GAMBIA                         1      1947     194      82    112
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0       196     145      91     54
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1       196      51       7     44
12 months   ki1113344-GMS-Nepal        NEPAL                          0        50      40      28     12
12 months   ki1113344-GMS-Nepal        NEPAL                          1        50      10       2      8
12 months   ki1114097-CMIN             BRAZIL                         0       111     106      84     22
12 months   ki1114097-CMIN             BRAZIL                         1       111       5       3      2
12 months   ki1114097-CMIN             GUINEA-BISSAU                  0       209     176     162     14
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1       209      33      16     17
12 months   ki1114097-CMIN             PERU                           0        82      78      66     12
12 months   ki1114097-CMIN             PERU                           1        82       4       1      3
12 months   ki1114097-CONTENT          PERU                           0        55      49      42      7
12 months   ki1114097-CONTENT          PERU                           1        55       6       3      3
12 months   ki1119695-PROBIT           BELARUS                        0      6612    6592    6377    215
12 months   ki1119695-PROBIT           BELARUS                        1      6612      20      17      3
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      6665    5944    4628   1316
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      6665     721     411    310
12 months   ki1135781-COHORTS          GUATEMALA                      0       468     368     136    232
12 months   ki1135781-COHORTS          GUATEMALA                      1       468     100       3     97
12 months   ki1135781-COHORTS          INDIA                          0      5243    4622    3282   1340
12 months   ki1135781-COHORTS          INDIA                          1      5243     621     195    426
12 months   ki1135781-COHORTS          PHILIPPINES                    0      2581    2431    1551    880
12 months   ki1135781-COHORTS          PHILIPPINES                    1      2581     150      30    120
12 months   ki1148112-LCNI-5           MALAWI                         0       614     386     326     60
12 months   ki1148112-LCNI-5           MALAWI                         1       614     228      48    180
12 months   kiGH5241-JiVitA-3          BANGLADESH                     0      7080    4880    3540   1340
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1      7080    2200     743   1457
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0      1197     868     690    178
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1197     329     116    213
18 months   ki0047075b-MAL-ED          BANGLADESH                     0       215     182     108     74
18 months   ki0047075b-MAL-ED          BANGLADESH                     1       215      33       7     26
18 months   ki0047075b-MAL-ED          BRAZIL                         0       148     134     128      6
18 months   ki0047075b-MAL-ED          BRAZIL                         1       148      14      13      1
18 months   ki0047075b-MAL-ED          INDIA                          0       184     156      97     59
18 months   ki0047075b-MAL-ED          INDIA                          1       184      28       8     20
18 months   ki0047075b-MAL-ED          NEPAL                          0       167     150     128     22
18 months   ki0047075b-MAL-ED          NEPAL                          1       167      17       9      8
18 months   ki0047075b-MAL-ED          PERU                           0       211     184     109     75
18 months   ki0047075b-MAL-ED          PERU                           1       211      27       9     18
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       204     184     127     57
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       204      20       9     11
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       107      92      32     60
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       107      15       0     15
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0        97      81      29     52
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1        97      16       5     11
18 months   ki1000108-IRC              INDIA                          0       405     358     241    117
18 months   ki1000108-IRC              INDIA                          1       405      47      20     27
18 months   ki1000109-EE               PAKISTAN                       0         7       4       1      3
18 months   ki1000109-EE               PAKISTAN                       1         7       3       0      3
18 months   ki1000109-ResPak           PAKISTAN                       0         1       0       0      0
18 months   ki1000109-ResPak           PAKISTAN                       1         1       1       1      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          0       394     282     161    121
18 months   ki1000304b-SAS-CompFeed    INDIA                          1       394     112      27     85
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0        82      51      10     41
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        82      31       0     31
18 months   ki1017093-NIH-Birth        BANGLADESH                     0       460     382     179    203
18 months   ki1017093-NIH-Birth        BANGLADESH                     1       460      78      11     67
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0        25      20      13      7
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1        25       5       3      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0         7       6       5      1
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1         7       1       0      1
18 months   ki1101329-Keneba           GAMBIA                         0      1922    1740    1244    496
18 months   ki1101329-Keneba           GAMBIA                         1      1922     182      58    124
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0       611     475     359    116
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       611     136      11    125
18 months   ki1113344-GMS-Nepal        NEPAL                          0        49      39      23     16
18 months   ki1113344-GMS-Nepal        NEPAL                          1        49      10       1      9
18 months   ki1114097-CMIN             BRAZIL                         0       111     106      80     26
18 months   ki1114097-CMIN             BRAZIL                         1       111       5       3      2
18 months   ki1114097-CMIN             GUINEA-BISSAU                  0       287     243     208     35
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1       287      44      17     27
18 months   ki1114097-CMIN             PERU                           0        55      53      44      9
18 months   ki1114097-CMIN             PERU                           1        55       2       0      2
18 months   ki1114097-CONTENT          PERU                           0        54      48      42      6
18 months   ki1114097-CONTENT          PERU                           1        54       6       3      3
18 months   ki1119695-PROBIT           BELARUS                        0       763     759     683     76
18 months   ki1119695-PROBIT           BELARUS                        1       763       4       2      2
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      1688    1423     782    641
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1688     265     105    160
18 months   ki1135781-COHORTS          GUATEMALA                      0       376     291      54    237
18 months   ki1135781-COHORTS          GUATEMALA                      1       376      85       4     81
18 months   ki1135781-COHORTS          PHILIPPINES                    0      2490    2350    1012   1338
18 months   ki1135781-COHORTS          PHILIPPINES                    1      2490     140      14    126
18 months   ki1148112-LCNI-5           MALAWI                         0       713     457     331    126
18 months   ki1148112-LCNI-5           MALAWI                         1       713     256      55    201
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0      1163     845     561    284
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1163     318      94    224
24 months   ki0047075b-MAL-ED          BANGLADESH                     0       206     174     105     69
24 months   ki0047075b-MAL-ED          BANGLADESH                     1       206      32       8     24
24 months   ki0047075b-MAL-ED          BRAZIL                         0       139     126     121      5
24 months   ki0047075b-MAL-ED          BRAZIL                         1       139      13      12      1
24 months   ki0047075b-MAL-ED          INDIA                          0       183     155     100     55
24 months   ki0047075b-MAL-ED          INDIA                          1       183      28      10     18
24 months   ki0047075b-MAL-ED          NEPAL                          0       165     148     122     26
24 months   ki0047075b-MAL-ED          NEPAL                          1       165      17       7     10
24 months   ki0047075b-MAL-ED          PERU                           0       190     166     113     53
24 months   ki0047075b-MAL-ED          PERU                           1       190      24       8     16
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       201     182     118     64
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       201      19      11      8
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       101      87      38     49
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       101      14       1     13
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0        98      82      22     60
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1        98      16       5     11
24 months   ki1000108-IRC              INDIA                          0       409     362     219    143
24 months   ki1000108-IRC              INDIA                          1       409      47      20     27
24 months   ki1017093-NIH-Birth        BANGLADESH                     0       426     352     177    175
24 months   ki1017093-NIH-Birth        BANGLADESH                     1       426      74      13     61
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0        19      16      13      3
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1        19       3       2      1
24 months   ki1101329-Keneba           GAMBIA                         0      1724    1548    1083    465
24 months   ki1101329-Keneba           GAMBIA                         1      1724     176      64    112
24 months   ki1113344-GMS-Nepal        NEPAL                          0        44      38      22     16
24 months   ki1113344-GMS-Nepal        NEPAL                          1        44       6       2      4
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0       176     151     126     25
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1       176      25       2     23
24 months   ki1114097-CMIN             PERU                           0        41      39      33      6
24 months   ki1114097-CMIN             PERU                           1        41       2       0      2
24 months   ki1114097-CONTENT          PERU                           0        46      40      36      4
24 months   ki1114097-CONTENT          PERU                           1        46       6       3      3
24 months   ki1119695-PROBIT           BELARUS                        0      1618    1612    1452    160
24 months   ki1119695-PROBIT           BELARUS                        1      1618       6       5      1
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0       447     350     137    213
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1       447      97      18     79
24 months   ki1135781-COHORTS          GUATEMALA                      0       462     317      71    246
24 months   ki1135781-COHORTS          GUATEMALA                      1       462     145       5    140
24 months   ki1135781-COHORTS          INDIA                          0      5237    4607    2647   1960
24 months   ki1135781-COHORTS          INDIA                          1      5237     630     157    473
24 months   ki1135781-COHORTS          PHILIPPINES                    0      2443    2308     921   1387
24 months   ki1135781-COHORTS          PHILIPPINES                    1      2443     135      14    121
24 months   ki1148112-LCNI-5           MALAWI                         0       570     371     270    101
24 months   ki1148112-LCNI-5           MALAWI                         1       570     199      47    152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0      4208    2872    1783   1089
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1      4208    1336     404    932
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0      1178     863     618    245
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1178     315     106    209


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
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 36 rows containing missing values (geom_errorbar).
```

![](/tmp/2668e715-e340-484b-b5d5-aa0d49c1afc1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 120 rows containing missing values (geom_errorbar).
```

![](/tmp/2668e715-e340-484b-b5d5-aa0d49c1afc1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 18 rows containing missing values (geom_errorbar).
```

![](/tmp/2668e715-e340-484b-b5d5-aa0d49c1afc1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 18 rows containing missing values (geom_errorbar).
```

![](/tmp/2668e715-e340-484b-b5d5-aa0d49c1afc1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0792079   0.0418883   0.1165275
3 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.6500000   0.5018820   0.7981180
3 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0545455   0.0198065   0.0892844
3 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.6129032   0.4410001   0.7848063
3 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1721311   0.1246797   0.2195825
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.8181818   0.6863501   0.9500136
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1415094   0.0944920   0.1885269
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.5600000   0.3650081   0.7549919
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0686275   0.0193565   0.1178984
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5882353   0.3532957   0.8231749
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1975309   0.1103721   0.2846896
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6000000   0.3507806   0.8492194
3 months    ki1000108-IRC              INDIA                          0                    NA                0.1782730   0.1386323   0.2179137
3 months    ki1000108-IRC              INDIA                          1                    NA                0.5625000   0.4219885   0.7030115
3 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.5230769   0.4009165   0.6452373
3 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.6666667   0.4475690   0.8857643
3 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1409836          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6320755          NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1575630   0.1248044   0.1903216
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6067416   0.5051685   0.7083147
3 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0999495   0.0867387   0.1131603
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.5673077   0.4999613   0.6346541
3 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0590154          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.5238095          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1464224   0.1387392   0.1541057
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4514768   0.4197969   0.4831566
3 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0750122   0.0684332   0.0815911
3 months    ki1135781-COHORTS          INDIA                          1                    NA                0.6860880   0.6547208   0.7174551
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0939349   0.0829369   0.1049329
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6024096   0.5279478   0.6768715
3 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1006266          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6335435          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0658499          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6390041          NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1076923   0.0640895   0.1512951
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.5789474   0.4216295   0.7362652
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1543210   0.0985460   0.2100960
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.4333333   0.2555479   0.6111188
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1615721   0.1138100   0.2093341
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.6129032   0.4411085   0.7846979
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1813472   0.1268603   0.2358340
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3333333   0.1312413   0.5354254
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2345679   0.1418066   0.3273292
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4000000   0.1507806   0.6492194
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2049861   0.1632917   0.2466806
6 months    ki1000108-IRC              INDIA                          1                    NA                0.5652174   0.4217850   0.7086498
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4262295   0.3013151   0.5511439
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.5000000   0.2533980   0.7466020
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1578947          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6132075          NA          NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1941964   0.1575314   0.2308615
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6705882   0.5705781   0.7705984
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1094659   0.0953902   0.1235416
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.4467005   0.3772609   0.5161401
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1121076   0.0706281   0.1535871
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.9014084   0.8319477   0.9708692
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0179211   0.0023298   0.0335125
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.4000000   0.2479433   0.5520567
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0662150          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.3684211          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1390171   0.1311160   0.1469183
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4002404   0.3669467   0.4335341
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1311310   0.1225414   0.1397206
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.5997491   0.5657316   0.6337665
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1845308   0.1694629   0.1995987
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6580645   0.5833734   0.7327556
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1255327          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5594351          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1089450          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5854430          NA          NA
9 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1684211   0.1150900   0.2217521
9 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.6756757   0.5245059   0.8268454
9 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1937500   0.1323453   0.2551547
9 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.4285714   0.2447823   0.6123605
9 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0333333   0.0045206   0.0621461
9 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3529412   0.1250902   0.5807921
9 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.1784038   0.1268831   0.2299244
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.6774194   0.5125245   0.8423142
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1947368   0.1382957   0.2511780
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2857143   0.0920400   0.4793886
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2195122   0.1294580   0.3095664
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4666667   0.2128878   0.7204455
9 months    ki1000108-IRC              INDIA                          0                    NA                0.2437673   0.1994224   0.2881123
9 months    ki1000108-IRC              INDIA                          1                    NA                0.5000000   0.3553317   0.6446683
9 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2644068          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6944444          NA          NA
9 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2931442   0.2497216   0.3365668
9 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7000000   0.5994818   0.8005182
9 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1491742   0.1330534   0.1652951
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.4867725   0.4154970   0.5580480
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2670455   0.2015431   0.3325478
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.8245614   0.7256107   0.9235121
9 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0506757   0.0256524   0.0756989
9 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.5531915   0.4108500   0.6955330
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1758905   0.1668368   0.1849442
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3824651   0.3485091   0.4164210
9 months    ki1135781-COHORTS          INDIA                          0                    NA                0.2074232   0.1963731   0.2184732
9 months    ki1135781-COHORTS          INDIA                          1                    NA                0.6303725   0.5945597   0.6661853
9 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2487250   0.2319407   0.2655093
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7070064   0.6357999   0.7782128
9 months    ki1148112-LCNI-5           MALAWI                         0                    NA                0.0831296   0.0563533   0.1099059
9 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.7510204   0.6968322   0.8052087
9 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1513761          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5987842          NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2328042   0.1724193   0.2931892
12 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7567568   0.6182061   0.8953075
12 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2628205   0.1935600   0.3320810
12 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.6071429   0.4257521   0.7885336
12 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0733333   0.0314907   0.1151760
12 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.4117647   0.1771107   0.6464187
12 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.2038835   0.1487495   0.2590175
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.7586207   0.6025442   0.9146972
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1979167   0.1414275   0.2544059
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3636364   0.1621525   0.5651202
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3827160   0.2763173   0.4891148
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6250000   0.3865518   0.8634482
12 months   ki1000108-IRC              INDIA                          0                    NA                0.2666667   0.2209297   0.3124036
12 months   ki1000108-IRC              INDIA                          1                    NA                0.5000000   0.3553313   0.6446687
12 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3388704          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.7232143          NA          NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3154034   0.2703236   0.3604833
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6835443   0.5808799   0.7862087
12 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2116372   0.1925110   0.2307634
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.5773196   0.5077895   0.6468497
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.3724138   0.2935234   0.4513042
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.8627451   0.7680606   0.9574296
12 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0795455   0.0394734   0.1196176
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.5151515   0.3442275   0.6860755
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2213997   0.2108440   0.2319554
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4299584   0.3938191   0.4660977
12 months   ki1135781-COHORTS          INDIA                          0                    NA                0.2899178   0.2768360   0.3029995
12 months   ki1135781-COHORTS          INDIA                          1                    NA                0.6859903   0.6494835   0.7224972
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.3619910   0.3428835   0.3810984
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.8000000   0.7359754   0.8640246
12 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1554404   0.1192657   0.1916152
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.7894737   0.7365126   0.8424347
12 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2745902          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6622727          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2050691          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6474164          NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4065934   0.3350646   0.4781222
18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7878788   0.6480730   0.9276846
18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3782051   0.3018995   0.4545107
18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.7142857   0.5465002   0.8820712
18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1466667   0.0898819   0.2034514
18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.4705882   0.2326057   0.7085708
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4076087   0.3364387   0.4787787
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6666667   0.4884323   0.8449011
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3097826   0.2428053   0.3767599
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.5500000   0.3314314   0.7685686
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6419753   0.5370280   0.7469227
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6875000   0.4592033   0.9157967
18 months   ki1000108-IRC              INDIA                          0                    NA                0.3268156   0.2781680   0.3754633
18 months   ki1000108-IRC              INDIA                          1                    NA                0.5744681   0.4329425   0.7159937
18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4290780          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.7589286          NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5314136   0.4813179   0.5815093
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.8589744   0.7816507   0.9362980
18 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2850575   0.2638403   0.3062747
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6813187   0.6136046   0.7490327
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                0.2442105          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.9191176          NA          NA
18 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1440329   0.0998085   0.1882574
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.6136364   0.4695133   0.7577594
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4504568   0.4245984   0.4763152
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6037736   0.5448672   0.6626800
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5693617   0.5493377   0.5893857
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.9000000   0.8502959   0.9497041
18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.2757112   0.2347117   0.3167106
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.7851562   0.7348094   0.8355031
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3360947          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.7044025          NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.3965517   0.3236899   0.4694136
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7500000   0.5996060   0.9003940
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3548387   0.2793083   0.4303691
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.6428571   0.4648911   0.8208232
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1756757   0.1141803   0.2371710
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.5882353   0.3535727   0.8228978
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3192771   0.2481707   0.3903836
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6666667   0.4775708   0.8557626
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3516484   0.2821051   0.4211916
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.4210526   0.1984952   0.6436100
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7317073   0.6353152   0.8280994
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6875000   0.4592154   0.9157846
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3950276   0.3446072   0.4454481
24 months   ki1000108-IRC              INDIA                          1                    NA                0.5744681   0.4329442   0.7159920
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4971591   0.4448653   0.5494529
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.8243243   0.7375188   0.9111299
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3003876   0.2775443   0.3232309
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6363636   0.5652744   0.7074529
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6085714   0.5573817   0.6597611
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.8144330   0.7369821   0.8918839
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7760252   0.7300815   0.8219690
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.9655172   0.9357858   0.9952487
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.4254395   0.4111616   0.4397175
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.7507937   0.7170137   0.7845736
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6009532   0.5809706   0.6209358
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.8962963   0.8448572   0.9477354
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.2722372   0.2269045   0.3175698
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.7638191   0.7047554   0.8228828
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3791783          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6976048          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2838934          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6634921          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1735537   0.1257388   0.2213687
3 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1428571   0.0937428   0.1919715
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2490975   0.1980740   0.3001209
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1856540   0.1360463   0.2352617
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428571   0.0797200   0.2059942
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2604167   0.1721668   0.3486666
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.2235872   0.1830592   0.2641152
3 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5542169   0.4466341   0.6617997
3 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2676399          NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2283186   0.1936770   0.2629602
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1443582   0.1296319   0.1590844
3 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0604582          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1782647   0.1703928   0.1861366
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1484286   0.1400994   0.1567577
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1233449   0.1113124   0.1353775
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2751983          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2203579          NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1845494   0.1346311   0.2344676
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1979167   0.1414123   0.2544211
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2153846   0.1653196   0.2654496
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1962617   0.1429241   0.2495993
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2604167   0.1721668   0.3486666
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4415584   0.3299173   0.5531996
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2756098          NA          NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2701689   0.2324359   0.3079018
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1412835   0.1263398   0.1562272
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3027211   0.2501147   0.3553275
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0658307   0.0385748   0.0930867
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0670966          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1655282   0.1574825   0.1735739
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1866270   0.1773180   0.1959361
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2116950   0.1962891   0.2271010
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2607261          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2356902          NA          NA
9 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2511013   0.1945647   0.3076379
9 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2287234   0.1685246   0.2889222
9 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0658683   0.0281340   0.1036026
9 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2418033   0.1879680   0.2956386
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2037915   0.1493105   0.2582724
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2577320   0.1702382   0.3452257
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.2727273   0.2294063   0.3160482
9 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3796526          NA          NA
9 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3578529   0.3159189   0.3997868
9 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1800581   0.1634857   0.1966305
9 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4034335   0.3403058   0.4665611
9 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1195335   0.0851511   0.1539159
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1973354   0.1883760   0.2062949
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2577074   0.2465187   0.2688961
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2753141   0.2584814   0.2921468
9 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3333333   0.2971769   0.3694897
9 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2739384          NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3185841   0.2577040   0.3794641
12 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3152174   0.2479036   0.3825312
12 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1077844   0.0606100   0.1549589
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2723404   0.2153029   0.3293779
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2149533   0.1597864   0.2701201
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4226804   0.3238645   0.5214963
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.2931034   0.2487723   0.3374346
12 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4430993          NA          NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3750000   0.3320029   0.4179971
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2480740   0.2288849   0.2672631
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5000000   0.4298220   0.5701780
12 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.1483254   0.1000238   0.1966269
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2439610   0.2336497   0.2542723
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3368301   0.3240357   0.3496244
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3874467   0.3686485   0.4062449
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3908795   0.3522525   0.4295065
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3950565          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3266500          NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4651163   0.3982893   0.5319432
18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4293478   0.3576323   0.5010633
18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1796407   0.1212426   0.2380388
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4407583   0.3736095   0.5079071
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3333333   0.2684857   0.3981809
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6494845   0.5540401   0.7449289
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.3555556   0.3088785   0.4022327
18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5228426          NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5869565   0.5419119   0.6320011
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3225806   0.3016765   0.3434848
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3944354          NA          NA
18 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.2160279   0.1683332   0.2637226
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4745261   0.4506976   0.4983545
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5879518   0.5686152   0.6072884
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4586255   0.4220251   0.4952259
18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4368014          NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4514563   0.3833347   0.5195779
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3989071   0.3277662   0.4700480
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2181818   0.1549714   0.2813922
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3631579   0.2945963   0.4317195
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3582090   0.2917585   0.4246594
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7244898   0.6355805   0.8133991
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5539906   0.5067324   0.6012488
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3346868   0.3124056   0.3569679
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6532438   0.6090735   0.6974142
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8354978   0.8016558   0.8693398
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4645790   0.4510699   0.4780880
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6172738   0.5979960   0.6365517
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4438596   0.4030365   0.4846828
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4802757          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3853990          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level      estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  8.2062500   4.8623624   13.849757
3 months    ki0047075b-MAL-ED          INDIA                          0                    0                  1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          INDIA                          1                    0                 11.2365591   5.6028137   22.535152
3 months    ki0047075b-MAL-ED          PERU                           0                    0                  1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          PERU                           1                    0                  4.7532468   3.4539629    6.541285
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  3.9573333   2.4455819    6.403583
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  8.5714286   3.7692270   19.491898
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.0000000   1.0000000    1.000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  3.0375000   1.6570617    5.567932
3 months    ki1000108-IRC              INDIA                          0                    0                  1.0000000   1.0000000    1.000000
3 months    ki1000108-IRC              INDIA                          1                    0                  3.1552734   2.2583756    4.408368
3 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.0000000   1.0000000    1.000000
3 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.2745098   0.8516210    1.907392
3 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.0000000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  4.4833260          NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.0000000   1.0000000    1.000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.8507865   2.9486537    5.028924
3 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.0000000   1.0000000    1.000000
3 months    ki1101329-Keneba           GAMBIA                         1                    0                  5.6759420   4.7520563    6.779448
3 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.0000000          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        1                    0                  8.8758076          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.0000000   1.0000000    1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.0833856   2.8247185    3.365740
3 months    ki1135781-COHORTS          INDIA                          0                    0                  1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          INDIA                          1                    0                  9.1463548   8.2850211   10.097235
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  6.4130538   5.4090915    7.603358
3 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  6.2959835          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.0000000          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  9.7039467          NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  5.3759398   3.3013081    8.754327
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  2.8080000   1.6253261    4.851250
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                  3.7933740   2.5241025    5.700912
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.0000000   1.0000000    1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  1.8380952   0.9343423    3.616013
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.7052632   0.8152716    3.566814
6 months    ki1000108-IRC              INDIA                          0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  2.7573443   1.9918162    3.817093
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.1730769   0.6609503    2.082016
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.0000000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.8836478          NA          NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.4531440   2.7147063    4.392447
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                  4.0807278   3.3352095    4.992892
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  8.0405634   5.5099916   11.733350
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 22.3199992   8.6370441   57.679730
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  1.0000000          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  5.5640147          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.8790729   2.6031481    3.184245
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                  4.5736647   4.1940497    4.987640
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  3.5661496   3.1008147    4.101317
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  4.4564899          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.0000000          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.3737508          NA          NA
9 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.0000000   1.0000000    1.000000
9 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                  4.0118243   2.7224405    5.911877
9 months    ki0047075b-MAL-ED          INDIA                          0                    0                  1.0000000   1.0000000    1.000000
9 months    ki0047075b-MAL-ED          INDIA                          1                    0                  2.2119816   1.2977680    3.770214
9 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  1.0000000   1.0000000    1.000000
9 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 10.5882353   3.5998393   31.143259
9 months    ki0047075b-MAL-ED          PERU                           0                    0                  1.0000000   1.0000000    1.000000
9 months    ki0047075b-MAL-ED          PERU                           1                    0                  3.7971138   2.6027067    5.539646
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.0000000   1.0000000    1.000000
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  1.4671815   0.7019595    3.066589
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.0000000   1.0000000    1.000000
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.1259259   1.0757383    4.201357
9 months    ki1000108-IRC              INDIA                          0                    0                  1.0000000   1.0000000    1.000000
9 months    ki1000108-IRC              INDIA                          1                    0                  2.0511364   1.4573519    2.886853
9 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.0000000          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                  2.6264245          NA          NA
9 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.0000000   1.0000000    1.000000
9 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  2.3879032   1.9427613    2.935040
9 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.0000000   1.0000000    1.000000
9 months    ki1101329-Keneba           GAMBIA                         1                    0                  3.2631141   2.7201756    3.914421
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.0000000   1.0000000    1.000000
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  3.0877193   2.3498822    4.057229
9 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.0000000   1.0000000    1.000000
9 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 10.9163120   6.2554130   19.050040
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.0000000   1.0000000    1.000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.1744499   1.9623669    2.409454
9 months    ki1135781-COHORTS          INDIA                          0                    0                  1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          INDIA                          1                    0                  3.0390651   2.8113588    3.285215
9 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.8425225   2.5179860    3.208888
9 months    ki1148112-LCNI-5           MALAWI                         0                    0                  1.0000000   1.0000000    1.000000
9 months    ki1148112-LCNI-5           MALAWI                         1                    0                  9.0343337   6.4944417   12.567545
9 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.0000000          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.9556047          NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  3.2506143   2.3663679    4.465279
12 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          INDIA                          1                    0                  2.3101045   1.5510229    3.440686
12 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  5.6149733   2.5068146   12.576887
12 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          PERU                           1                    0                  3.7208539   2.6489606    5.226485
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  1.8373206   0.9851467    3.426644
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.0000000   1.0000000    1.000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.6330645   1.0185643    2.618293
12 months   ki1000108-IRC              INDIA                          0                    0                  1.0000000   1.0000000    1.000000
12 months   ki1000108-IRC              INDIA                          1                    0                  1.8750000   1.3394459    2.624686
12 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.0000000          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  2.1341912          NA          NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.0000000   1.0000000    1.000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  2.1672064   1.7613964    2.666511
12 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.0000000   1.0000000    1.000000
12 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.7278740   2.3465595    3.171152
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.0000000   1.0000000    1.000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                  2.3166304   1.8249214    2.940826
12 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.0000000   1.0000000    1.000000
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  6.4761905   3.5428108   11.838352
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.0000000   1.0000000    1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.9420005   1.7631205    2.139029
12 months   ki1135781-COHORTS          INDIA                          0                    0                  1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          INDIA                          1                    0                  2.3661547   2.2066909    2.537142
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.2100000   2.0079662    2.432362
12 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.0000000   1.0000000    1.000000
12 months   ki1148112-LCNI-5           MALAWI                         1                    0                  5.0789474   3.9864618    6.470827
12 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.4118589          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.0000000          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.1570643          NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  1.9377559   1.5093201    2.487808
18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          INDIA                          1                    0                  1.8886199   1.3856858    2.574094
18 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  3.2085561   1.6970954    6.066148
18 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          PERU                           1                    0                  1.6355556   1.1884686    2.250831
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.0000000   1.0000000    1.000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  1.7754386   1.1293501    2.791147
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.0000000   1.0000000    1.000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.0709135   0.7396233    1.550594
18 months   ki1000108-IRC              INDIA                          0                    0                  1.0000000   1.0000000    1.000000
18 months   ki1000108-IRC              INDIA                          1                    0                  1.7577741   1.3181260    2.344063
18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.0000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                  1.7687426          NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.0000000   1.0000000    1.000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.6163951   1.4188589    1.841433
18 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.0000000   1.0000000    1.000000
18 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.3901099   2.1110197    2.706098
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    0                  1.0000000          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    0                  3.7636283          NA          NA
18 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.0000000   1.0000000    1.000000
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  4.2603896   2.8944288    6.270985
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.0000000   1.0000000    1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.3403585   1.1969039    1.501007
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.5807175   1.4805366    1.687677
18 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.0000000   1.0000000    1.000000
18 months   ki1148112-LCNI-5           MALAWI                         1                    0                  2.8477493   2.4219871    3.348356
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.0000000          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  2.0958455          NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  1.8913043   1.4409347    2.482439
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  1.8116883   1.2776855    2.568875
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  3.3484163   1.9694504    5.692904
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  2.0880503   1.4558659    2.994750
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  1.1973684   0.6809730    2.105357
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.9395833   0.6573448    1.343004
24 months   ki1000108-IRC              INDIA                          0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  1.4542479   1.1018945    1.919274
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.6580695   1.4287713    1.924167
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.1184751   1.8506884    2.425009
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.3382702   1.1787066    1.519434
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.2441828   1.1638642    1.330044
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  1.7647481   1.6684208    1.866637
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  1.4914577   1.3957423    1.593737
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  2.8057117   2.3351121    3.371152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.0000000          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  1.8397805          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.0000000          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  2.3371169          NA          NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0943458    0.0575500   0.1311416
3 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0883117    0.0484724   0.1281509
3 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0769663    0.0471628   0.1067698
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0441446    0.0173740   0.0709151
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0742297    0.0267716   0.1216878
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0628858    0.0122365   0.1135351
3 months    ki1000108-IRC              INDIA                          0                    NA                 0.0453142    0.0242958   0.0663327
3 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0311399   -0.0247492   0.0870290
3 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1266563           NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0707556    0.0491917   0.0923194
3 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0444086    0.0357194   0.0530979
3 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0014428           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0318423    0.0279361   0.0357485
3 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0734164    0.0673756   0.0794572
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0294100    0.0232604   0.0355597
3 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1745717           NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1545080           NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0768570    0.0420611   0.1116530
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0435957    0.0111298   0.0760616
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0538126    0.0260769   0.0815482
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0149145   -0.0065038   0.0363329
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0258488   -0.0174217   0.0691193
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0407141    0.0205129   0.0609153
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0153289   -0.0425049   0.0731627
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1177150           NA          NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0759724    0.0534286   0.0985163
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0318176    0.0239073   0.0397280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.1906135    0.1472787   0.2339482
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0479096    0.0242292   0.0715900
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0008816           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0265111    0.0226412   0.0303810
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0554961    0.0499868   0.0610054
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0271642    0.0211351   0.0331933
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1351934           NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1267453           NA          NA
9 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0826803    0.0469119   0.1184486
9 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0349734    0.0037246   0.0662222
9 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0325349    0.0049175   0.0601523
9 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0633995    0.0330955   0.0937035
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0090546   -0.0113580   0.0294672
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0382198   -0.0070966   0.0835361
9 months    ki1000108-IRC              INDIA                          0                    NA                 0.0289600    0.0101254   0.0477945
9 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1152458           NA          NA
9 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0647087    0.0429670   0.0864504
9 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0308839    0.0229901   0.0387776
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.1363880    0.0940349   0.1787411
9 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0688579    0.0418840   0.0958317
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0214450    0.0175307   0.0253592
9 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0502842    0.0446170   0.0559515
9 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0265891    0.0207311   0.0324472
9 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.2502037    0.2166256   0.2837819
9 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1225622           NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0857798    0.0503683   0.1211913
12 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0523969    0.0178412   0.0869525
12 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0344511    0.0056227   0.0632795
12 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0684569    0.0374126   0.0995013
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0170366   -0.0055122   0.0395854
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0399644   -0.0067105   0.0866392
12 months   ki1000108-IRC              INDIA                          0                    NA                 0.0264368    0.0077981   0.0450754
12 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1042288           NA          NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0595966    0.0378130   0.0813801
12 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0364368    0.0277586   0.0451150
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.1275862    0.0835395   0.1716329
12 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0687799    0.0336466   0.1039133
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0225613    0.0182016   0.0269209
12 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0469123    0.0411589   0.0526657
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0254558    0.0199137   0.0309979
12 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.2354391    0.2014493   0.2694288
12 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1204663           NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1215808           NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0585229    0.0281901   0.0888556
18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0511427    0.0180875   0.0841979
18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0329741    0.0039514   0.0619967
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0331496    0.0059448   0.0603544
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0235507   -0.0009207   0.0480221
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0075092   -0.0340739   0.0490923
18 months   ki1000108-IRC              INDIA                          0                    NA                 0.0287399    0.0097283   0.0477515
18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0937646           NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0555429    0.0362942   0.0747916
18 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0375232    0.0290338   0.0460125
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.1502248           NA          NA
18 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0719950    0.0416853   0.1023046
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0240693    0.0136249   0.0345136
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0185901    0.0143439   0.0228363
18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.1829144    0.1534913   0.2123374
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1007067           NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0549046    0.0235828   0.0862263
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0440684    0.0108731   0.0772636
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0425061    0.0109922   0.0740201
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0438808    0.0135180   0.0742436
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0065606   -0.0156592   0.0287804
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0072175   -0.0478053   0.0333702
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0206203    0.0024848   0.0387558
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0568315    0.0356476   0.0780154
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0342992    0.0252893   0.0433090
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0446724    0.0230416   0.0663032
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0594726    0.0405139   0.0784313
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0391394    0.0338780   0.0444008
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0163206    0.0122632   0.0203781
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.1716225    0.1392741   0.2039708
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1010974           NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1015056           NA          NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.5436115    0.3466105   0.6812155
3 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.6181818    0.3623178   0.7713828
3 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.3089808    0.1894969   0.4108504
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.2377787    0.0903791   0.3612930
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5196078    0.1797053   0.7186662
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2414815    0.0303075   0.4066672
3 months    ki1000108-IRC              INDIA                          0                    NA                 0.2026692    0.1073480   0.2878116
3 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0561873   -0.0511215   0.1525409
3 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.4732340           NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.3098984    0.2168959   0.3918557
3 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.3076282    0.2519449   0.3591665
3 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0238647           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1786236    0.1573746   0.1993366
3 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.4946244    0.4616278   0.5255987
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.2384373    0.1916622   0.2825057
3 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.6343487           NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.7011684           NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.4164580    0.2298684   0.5578401
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.2202729    0.0470266   0.3620238
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.2498440    0.1187439   0.3614410
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0759931   -0.0386324   0.1779683
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0992593   -0.0817107   0.2499530
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.1657064    0.0817735   0.2419671
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0347155   -0.1057401   0.1573299
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.4271076           NA          NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.2812035    0.1976972   0.3560182
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.2252041    0.1713369   0.2755697
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.6296670    0.4999462   0.7257364
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.7277692    0.4216174   0.8718675
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0131394           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1601605    0.1373581   0.1823601
6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.2973636    0.2699658   0.3237330
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.1283177    0.1002203   0.1555377
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.5185266           NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.5377621           NA          NA
9 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.3292705    0.1841127   0.4486027
9 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1529070    0.0081472   0.2765393
9 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.4939394    0.0504117   0.7303070
9 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.2621946    0.1343423   0.3711639
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0444308   -0.0607711   0.1391994
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1482927   -0.0433562   0.3047385
9 months    ki1000108-IRC              INDIA                          0                    NA                 0.1061865    0.0351253   0.1720142
9 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.3035560           NA          NA
9 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1808248    0.1181061   0.2390831
9 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.1715217    0.1284462   0.2124683
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.3380682    0.2259484   0.4339476
9 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.5760547    0.3770217   0.7114994
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1086726    0.0889703   0.1279488
9 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.1951214    0.1735791   0.2161021
9 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0965774    0.0753117   0.1173541
9 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.7506112    0.6672550   0.8130858
9 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.4474080           NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.2692534    0.1536583   0.3690603
12 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1662246    0.0505979   0.2677692
12 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.3196296    0.0390646   0.5182779
12 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.2513653    0.1345912   0.3523824
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0792572   -0.0307527   0.1775261
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0945498   -0.0237039   0.1991434
12 months   ki1000108-IRC              INDIA                          0                    NA                 0.0901961    0.0247166   0.1512793
12 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2352268           NA          NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1589242    0.0987533   0.2150778
12 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.1468786    0.1120189   0.1803699
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.2551724    0.1577142   0.3413540
12 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.4637097    0.2302484   0.6263635
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0924790    0.0746131   0.1099999
12 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.1392758    0.1221296   0.1560871
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0657014    0.0512217   0.0799601
12 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.6023316    0.5181798   0.6717860
12 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3049344           NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3722053           NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1258242    0.0567225   0.1898636
18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1191172    0.0377544   0.1936003
18 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1835556    0.0136899   0.3241664
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0752104    0.0108629   0.1353718
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0706522   -0.0056412   0.1411575
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0115618   -0.0546460   0.0736133
18 months   ki1000108-IRC              INDIA                          0                    NA                 0.0808310    0.0257591   0.1327898
18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1793362           NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0946287    0.0599453   0.1280324
18 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.1163218    0.0897858   0.1420843
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.3808604           NA          NA
18 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.3332670    0.1927390   0.4493318
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0507228    0.0283481   0.0725823
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0316184    0.0242375   0.0389435
18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.3988316    0.3309655   0.4598135
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2305549           NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1216166    0.0482610   0.1893183
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1104728    0.0227791   0.1902971
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1948198    0.0440108   0.3218384
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1208312    0.0331097   0.2005941
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0183150   -0.0457265   0.0784346
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0099622   -0.0676284   0.0445893
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0496100    0.0048238   0.0923807
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1025857    0.0622552   0.1411817
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.1024814    0.0752400   0.1289204
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0683855    0.0338471   0.1016893
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0711822    0.0466773   0.0950573
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0842471    0.0726947   0.0956555
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0264399    0.0197336   0.0331002
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.3866593    0.3094782   0.4552136
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2104987           NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2633779           NA          NA
